# elksgames
Various UNIX games ported to ELKS and modern platforms as well.

# Compilation

First, go into the top level directory, with all the Makefiles and stuff, then run `mkdir bin`. After that, you can run `make` to compile the program you want. It is reccomended to go into the Makefile to check if all the things you want are in there, or do things such as change the file appention and the `CFLAGS`, which by default use `-O3`, but you can also use `-flto` if you want. The default C compiler is set as `cc`, which is usually GCC on Linux systems, but you can change it to `clang` or `tcc` if you want. After this, the binaries will end up in `bin/`.

# Files and their origins

 - `fish` - Go fish game from 2.11BSD
 - `morse` - Morse code translator from 2.11BSD
