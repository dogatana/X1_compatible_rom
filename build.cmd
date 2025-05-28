REM オリジナルと同じ40桁
ailz80asm -o IPLROM-40.X1 -om bin -gap 0 -lst iplrom-40.lst -dl WIDTH=40 -f -i X1_compatible_rom.z80

REM 80桁
ailz80asm -o IPLROM-80.X1 -om bin -gap 0 -lst iplrom-80.lst -dl WIDTH=80 -f -i X1_compatible_rom.z80

REM Turbo 高解像度 640x400 80桁
ailz80asm -o IPLROM.X1T -om bin -gap 0 -lst iplrom.lst -dl TURBO -f -i X1_compatible_rom.z80
