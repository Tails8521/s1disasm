@echo off

IF EXIST s1built.bin move /Y s1built.bin s1built.prev.bin >NUL
asm68k /k /p /o ae- /o c+ sonic.asm, s1built.bin >errors.txt, , sonic.lst
fixheadr.exe s1built.bin