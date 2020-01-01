import os

def ExtractFile(xmlPath, outputPath):
	execStr = "tools/ZAP2/ZAP2.out e %s baserom/ %s 0" % (xmlPath, outputPath)

	print(execStr)
	os.system(execStr)

ExtractFile("assets/textures/xml/icon_item_24_static.xml", "assets/textures/icon_item_24_static")
ExtractFile("assets/textures/xml/icon_item_dungeon_static.xml", "assets/textures/icon_item_dungeon_static")
ExtractFile("assets/textures/xml/icon_item_field_static.xml", "assets/textures/icon_item_field_static")
ExtractFile("assets/textures/xml/icon_item_gameover_static.xml", "assets/textures/icon_item_gameover_static")
ExtractFile("assets/textures/xml/icon_item_nes_static.xml", "assets/textures/icon_item_nes_static")
ExtractFile("assets/textures/xml/icon_item_static.xml", "assets/textures/icon_item_static")
