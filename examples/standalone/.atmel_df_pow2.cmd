cmd_examples/standalone/atmel_df_pow2 := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-ld.bfd   -g -Ttext 0x42000000 -o examples/standalone/atmel_df_pow2 -e atmel_df_pow2 examples/standalone/atmel_df_pow2.o examples/standalone/libstubs.o arch/arm/lib/lib.a
