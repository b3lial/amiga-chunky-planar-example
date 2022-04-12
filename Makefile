CC=m68k-amigaos-gcc
VASM=vasmm68k_mot
VASMFLAGS=-Faout -devpac 
CFLAGS = -D__far="" -DDEMO_DEBUG -Wall -O2 -I. -m68000
LDFLAGS = -noixemul 
SOURCES=main.c chunkyconverter/chunkytests.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=cp-example.exe

all: c2p.o p2c.o example.o $(SOURCES) $(EXECUTABLE) 

example.o: chunkyconverter/example.s
	$(VASM) $(VASMFLAGS) -o example.o chunkyconverter/example.s

c2p.o: chunkyconverter/c2p.s
	$(VASM) $(VASMFLAGS) -o c2p.o chunkyconverter/c2p.s

p2c.o: chunkyconverter/p2c.s
	$(VASM) $(VASMFLAGS) -o p2c.o chunkyconverter/p2c.s

$(EXECUTABLE): $(OBJECTS) example.o p2c.o c2p.o
	$(CC) $(LDFLAGS) $(OBJECTS) example.o p2c.o c2p.o -o $@
	
clean: 
	rm *.o *.lnk *.info *.uaem cp-example.exe
