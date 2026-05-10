CFLAGS=		-O3 -w -std=c89 $(DEFS)
CC=		cc
APPEND=		.native

fish: src/fish.c
	$(CC) $(CFLAGS) -o bin/fish$(APPEND) src/fish.c

morse: src/morse.c
	$(CC) $(CFLAGS) -o bin/morse$(APPEND) src/morse.c

number: src/number.c
	$(CC) $(CFLAGS) -o bin/number$(APPEND) src/number.c

arithmetic: src/arithmetic.c
	$(CC) $(CFLAGS) -o bin/arithmetic$(APPEND) src/arithmetic.c

ppt: src/ppt.c
	$(CC) $(CFLAGS) -o bin/ppt$(APPEND) src/ppt.c

banner: src/banner.c
	$(CC) $(CFLAGS) -o bin/banner$(APPEND) src/banner.c

bcd: src/bcd.c
	$(CC) $(CFLAGS) -o bin/bcd$(APPEND) src/bcd.c

clean:
	rm -f bin/*$(APPEND)
