
BIN_LIB=CMPSYS
LIBLIST=$(BIN_LIB) CLV1
SHELL=/QOpenSys/usr/bin/qsh

all: test11.rpgle

%.rpgle:
system -s "CHGATR OBJ('./qrpglesrc/$*.rpgle') ATR(*CCSID) VALUE(1252)"
liblist -a $(LIBLIST);\
system "CRTBNDRPG OBJ($(BIN_LIB)/$*) SRCSTMF('./qrpglesrc/$*.rpgle')
