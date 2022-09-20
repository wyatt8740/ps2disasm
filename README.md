# ps2disasm

Phantasy star II Disassembly for Mega Drive/Genesis

DISCLAIMER: Any and all content presented in this repository is presented for informational and educational purposes only. Commercial usage is expressly prohibited. I do not claim ownership of any code in this repository. You assume any and all responsibility for using this content responsibly. I do not claim responsibility or warranty.

----

My (Wyatt's) version of the linux build script uses [ips.pl](https://github.com/koitsu/ips.pl.git ), a perl script partially by Jeremy Chadwick (Koitsu).
This will need to be in your `$PATH` somewhere, or else the `build.sh` script edited appropriately. It also requires you to compile fixheader.cpp and put the
resulting binary in your `$PATH` with the name `fixheader` (or the `build.sh` script can be edited appropriately).

The reason for this is that I was having issues with the prior version of this build script (I cannot remember what they were anymore).

### 'soundrev': sound engine revision setting
This version includes a new setting in `ps2.asm`: `soundrev`. Here's how it works.

1. If `soundrev` is `0`, defer to the default sound engine for whatever `revision` you are building (JP, US v1, US v2, PT-BR). Note that `revision` is another definition in `ps2.asm`.
2. If `soundrev` is `1`, force the use of the Japanese sound engine and instrumentation, regardless of `revision`.
3. If `soundrev` is `2`, force the use of the Japanese sound engine, but use my own modified, quieter snare drum sample, regardless of `revision`. Sort of a middle ground.
4. If `soundrev` is `3` (or anything else, actually), force the use of the US/PT-BR sound engine, regardless of `revision`.
