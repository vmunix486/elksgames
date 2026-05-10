# nixgames
Various UNIX games ported to ELKS and modern platforms as well.

# Compilation

First, go into the top level directory, with all the Makefiles and stuff, then run `mkdir bin`. After that, you can run `make` to compile the program you want. It is reccomended to go into the Makefile to check if all the things you want are in there, or do things such as change the file appention and the `CFLAGS`, which by default use `-O3`, but you can also use `-flto` if you want. The default C compiler is set as `cc`, which is usually GCC on Linux systems, but you can change it to `clang` or `tcc` if you want. After this, the binaries will end up in `bin/`.

If you want to cross compile to ELKS, use the `Makefile.elks` Makefile to compile. By default, it will use `ia16-elf-gcc` from your `$PATH`, but you <i>could</i> probably compile with BCC, but I have not tried it yet.

Tip: If you want to transfer the executable to your ELKS machine, enable networking on the ELKS machine, then get and start [copyparty](https://github.com/9001/copyparty) on your host machine, then you can use the `urlget` command on the ELKS machine to download it. An example for my system would be:
```
urlget http://192.168.1.90:3923/src/elksgames/bin/fish.elks >> fish
```

# Files and their origins

 - `fish` - Go fish game from 2.11BSD
 - `morse` - Morse code translator from 2.11BSD
 - `number` - Changes numbers to Long form, eg. 1000 turns into one thousand. From 2.11BSD
 - `arithmetic` - Simple math problems. From 2.11BSD. Does not compile for ELKS, see Issue #1.
