CFLAGS=		-O3 -w -std=c89 $(DEFS)
CC=		cc
APPEND=		.native

fish: src/fish.c
	$(CC) $(CFLAGS) -o bin/fish$(APPEND) src/fish.c

morse: src/morse.c
	$(CC) $(CFLAGS) -o bin/morse$(APPEND) src/morse.c

number: src/number.c
	$(CC) $(CFLAGS) -o bin/number$(APPEND) src/number.c

clean:
	rm -f bin/*$(APPEND)
