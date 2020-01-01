.SUFFIXES:

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

#### Tools ####
ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  MIPS_BINUTILS_PREFIX := mips-linux-gnu-
else
  MIPS_BINUTILS_PREFIX := mips64-elf-
endif

# check that either QEMU_IRIX is set or qemu-irix package installed
ifndef QEMU_IRIX
  QEMU_IRIX := $(shell which qemu-irix)
  ifeq (, $(QEMU_IRIX))
    $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
  endif
endif

AS         := $(MIPS_BINUTILS_PREFIX)as
LD         := $(MIPS_BINUTILS_PREFIX)ld
OBJCOPY    := $(MIPS_BINUTILS_PREFIX)objcopy
OBJDUMP    := $(MIPS_BINUTILS_PREFIX)objdump

# Be sure to grab ido7.1_compiler and put it in tools/ first.
CC         := $(QEMU_IRIX) -L tools/ido7.1_compiler tools/ido7.1_compiler/usr/bin/cc

CPP        := cpp
MKLDSCRIPT := tools/mkldscript
ELF2ROM    := tools/elf2rom
ZAP2        := tools/ZAP2/ZAP2.out

OPTIMIZATION := -O2
ASFLAGS := -march=vr4300 -32 -I include

# we support Microsoft extensions such as anonymous structs, which the compiler does support but warns for their usage. Surpress the warnings with -woff.
CFLAGS  := -mips2 -G 0 -non_shared -Xfullwarn -Xcpluscomm -I include -Wab,-r4300_mul -woff 649,838

#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
# description of ROM segments
SPEC := spec

# baserom files
include baserom_files.mk

SRC_DIRS := src src/libultra_boot src/libultra_code src/boot src/code
ASM_DIRS := asm data assets/textures asm/overlays asm/overlays/actors

include overlays.mk
include overlays_asm.mk

TEXTURE_DIRS = assets/textures
TEXTURE_BIN_DIRS = assets/textures/icon_item_24_static assets/textures/icon_item_dungeon_static \
assets/textures/icon_item_field_static assets/textures/icon_item_gameover_static assets/textures/icon_item_nes_static assets/textures/icon_item_static

# source code
C_FILES       := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
TEXTURE_FILES := $(foreach dir,$(TEXTURE_DIRS),$(wildcard $(dir)/*.xml))
O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
                 $(foreach f,$(C_FILES:.c=.o),build/$f) \
                 $(foreach f,$(BASEROM_FILES),build/$f.o) 
#		         $(foreach f,$(TEXTURE_FILES:.xml=.o),build/$f)

TEXTURE_FILES_RGBA32 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.rgba32.png))
TEXTURE_FILES_RGBA16 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.rgb5a1.png))
TEXTURE_FILES_GRAY4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.i4.png))
TEXTURE_FILES_GRAY8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.i8.png))
TEXTURE_FILES_GRAYA4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia4.png))
TEXTURE_FILES_GRAYA8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia8.png))
TEXTURE_FILES_GRAYA16 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia16.png))
TEXTURE_FILES_CI4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ci4.png))
TEXTURE_FILES_CI8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ci8.png))
TEXTURE_FILES_OUT := $(foreach f,$(TEXTURE_FILES_RGBA32:.rgba32.png=.rgba32),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_RGBA16:.rgb5a1.png=.rgb5a1),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_GRAY4:.i4.png=.i4),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_GRAY8:.i8.png=.i8),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_GRAYA4:.ia4.png=.ia4),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_GRAYA8:.ia8.png=.ia8),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_GRAYA16:.ia16.png=.ia16),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_CI4:.ci4.png=.ci4),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_CI8:.ci8.png=.ci8),build/$f) \

# create build directories
$(shell mkdir -p build/baserom)
$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(TEXTURE_DIRS) $(TEXTURE_BIN_DIRS),$(shell mkdir -p build/$(dir)))

build/src/libultra_boot/%.o: OPTIMIZATION := -O1
build/src/code/fault.o: CFLAGS += -trapuv
build/src/code/fault.o: OPTIMIZATION := -O2 -g3
build/src/code/fault_drawer.o: CFLAGS += -trapuv
build/src/code/fault_drawer.o: OPTIMIZATION := -O2 -g3

#### Main Targets ###

compare: $(ROM)
	@md5sum $(ROM)
	@md5sum -c checksum.md5

$(ROM): $(ELF)
	$(ELF2ROM) -cic 6105 $< $@

$(ELF): $(TEXTURE_FILES_OUT) $(O_FILES) build/ldscript.txt build/undefined_syms.txt
	$(LD) -T build/undefined_syms.txt -T build/ldscript.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/z64.map -o $@

build/ldscript.txt: $(SPEC)
	$(CPP) -P $< > build/spec
	$(MKLDSCRIPT) build/spec $@

build/undefined_syms.txt: undefined_syms.txt
	$(CPP) -P $< > build/undefined_syms.txt

clean:
	$(RM) $(ROM) $(ELF) -r build


#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.o: asm/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/data/%.o: data/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/assets/%.o: assets/%.s
	$(AS) $(ASFLAGS) $^ -o $@
	$(OBJCOPY) -O binary $@ $@.bin


#build/src/boot/%.o: src/boot/%.c
#	$(CC) -c $(CFLAGS) $(OPTIMIZATION) -o $@ $^
#	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/overlays/%.o: src/overlays/%.c
	$(CC) -c $(CFLAGS) $(OPTIMIZATION) -o $@ $^
	$(ZAP2) bovl $@ $^ $(@:.o=_reloc.s)
	$(AS) $(ASFLAGS) $(@:.o=_reloc.s) -o $(@:.o=_reloc.o)
	@$(OBJDUMP) -d $@ > $(@:.o=.s)
    
build/asm/overlays/%.o: asm/overlays/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $(OPTIMIZATION) -o $@ $^
	@$(OBJDUMP) -d $@ > $(@:.o=.s)


build/src/boot/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/code/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/actors/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

build/assets/textures/%.o: assets/textures/%.zdata
	$(OBJCOPY) -I binary -O elf32-big $< $@

#textures/%.zdata: textures/%
#	$(ZAP2) $<.xml b

#build/assets/%.s: assets/%.xml
#	$(ZAP2) e rgba32 $< $@

build/assets/%.rgba32: assets/%.rgba32.png
	$(ZAP2) btex rgba32 $< $@

build/assets/%.rgb5a1: assets/%.rgb5a1.png
	$(ZAP2) btex rgb5a1 $< $@

build/assets/%.i4: assets/%.i4.png
	$(ZAP2) btex i4 $< $@

build/assets/%.i8: assets/%.i8.png
	$(ZAP2) btex i8 $< $@

build/assets/%.ia4: assets/%.ia4.png
	$(ZAP2) btex ia4 $< $@

build/assets/%.ia8: assets/%.ia8.png
	$(ZAP2) btex ia8 $< $@

build/assets/%.ci4: assets/%.ci4.png
	$(ZAP2) btex ci4 $< $@

build/assets/%.ci8: assets/%.ci8.png
	$(ZAP2) btex ci8 $< $@
