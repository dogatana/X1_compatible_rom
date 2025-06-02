AS = ailz80asm
ASFLAG = -om bin -gap 0 -f


all: IPLROM.X1 IPLROM.X1T


IPLROM.X1: X1_compatible_rom.z80
	$(AS) $(ASFLAG) -o $@ -lst iplrom-x1.lst  -i $<
	fc /b $@ X1_compatible_rom.bin

IPLROM.X1T: X1_compatible_rom.z80
	$(AS) $(ASFLAG) -o $@ -lst iplrom-x1t.lst -dl TURBO -i $<
	-grep " ORG_" iplrom-x1t.lst
