REM �I���W�i���Ɠ���40��
ailz80asm -o IPLROM-40.X1 -om bin -gap 0 -lst iplrom-40.lst -dl WIDTH=40 -f -i X1_compatible_rom.z80

REM 80��
ailz80asm -o IPLROM-80.X1 -om bin -gap 0 -lst iplrom-80.lst -dl WIDTH=80 -f -i X1_compatible_rom.z80

REM Turbo ���𑜓x 640x400 80��
ailz80asm -o IPLROM.X1T -om bin -gap 0 -lst iplrom.lst -dl TURBO -f -i X1_compatible_rom.z80
