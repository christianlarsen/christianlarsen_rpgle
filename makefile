
BIN_LIB=CMPSYS
LIBLIST=$(BIN_LIB) CLV1
SHELL=/QOpenSys/usr/bin/qsh

all: test11.rpgle test11b.rpgle

%.rpgle:
system -s "CHGATR OBJ('/home/CLV/test11/qrpglesrc/$*.rpgle') ATR(*CCSID) VALUE(1252)"
liblist -a $(LIBLIST);\
system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCSTMF('/home/CLV/test11/qrpglesrc/$*.rpgle')"
