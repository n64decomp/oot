#! /usr/bin/python3

import os
import re
import sys


def try_text(text_bytes):
    bad_bytes = 0
    for byte in text_bytes:
        if byte < 32:
            bad_bytes += 1

    if bad_bytes / len(text_bytes) >= 0.3:
        return None

    null_blocks = 0
    align = 4
    idx = len(text_bytes)
    while idx - align > 0:
        idx = idx - align
        if text_bytes[idx:idx + align] == b'\x00\x00\x00\x00':
            null_blocks += 1
        else:
            break

    try:
        text = text_bytes.decode("EUC-JP")
    except UnicodeDecodeError:
        return None

    text = text.strip(" \0")
    if len(text) > 0 and bool(re.search('[a-zA-Z]', text)):
        text = text.replace("\\x00", "")
        text = text.replace("\n", "\\n")
        text = text.replace("\"", "\\\"")
        ret = "\n    .asciz \"" + text + "\"\n    .balign 4\n"
        if null_blocks > 0:
            ret += "\n.balign " + str(pow(2, 2 * null_blocks)) + "\n"
        return ret


def word_convert(match):
    match = match.group()

    try:
        words = match[6:].split(",")
        byte_array = b""
        for word in words:
            data = word.strip()[2:]
            byte_array += bytearray.fromhex(data)
    except ValueError:
        return match

    if len(words) > 1:
        res = try_text(byte_array)
        if res is not None:
            return res

    return match


def process_data_file(file_path):
    with open(file_path) as f:
        file_text = f.read()

    rodata_start = file_text.find(".section .rodata")

    until_rodata = file_text[:rodata_start]
    rodata_replaced = re.sub(" \\.word 0x.*", word_convert, file_text[rodata_start:])

    new_file_text = until_rodata + rodata_replaced

    if new_file_text != file_text:
        with open(file_path, "w") as f:
            f.write(new_file_text)
        return True
    return False


def main():
    if len(sys.argv) != 3:
        print("Usage: bootstrap_data_reloc.py baserom_path.z64 asm_file_dir/")
        exit(1)

    baserom_path = sys.argv[1]
    asm_path = sys.argv[2]

    # process_data_file(asm_path)

    skip_list = ['z_file_choose.s', 'z_kaleido_scope.s', 'z_en_kanban.s', 'z_demo_tre_lgt.s', 'z_en_light.s']

    i = 0
    for root, dirs, files in os.walk(asm_path):
        for file in files:
            if i == 10:
                return
            if file.endswith(".s") and file not in skip_list:
                path = os.path.join(root, file)
                if process_data_file(path):
                    print("Processed " + path)
                    i += 1


main()
