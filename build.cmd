REM オリジナルと同じ40桁
ailz80asm -o IPLROM.X1 -om bin -gap 0 -lst iplrom-40.lst -f -i X1_compatible_rom.z80

REM Turbo 高解像度 640x400 80桁
ailz80asm -o IPLROM.X1T -om bin -gap 0 -lst iplrom.lst -dl TURBO -f -i X1_compatible_rom.z80
