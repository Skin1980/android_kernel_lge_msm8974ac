cmd_.tmp_kallsyms1.o := /home/skin1980/kkkernel/scripts/gcc-wrapper.py ../arm-eabi-4.8/bin/arm-eabi-gcc -Wp,-MD,./..tmp_kallsyms1.o.d -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables  -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15  -include asm/unified.h -msoft-float -gdwarf-2 -fgcse-lm -fgcse-sm -fsched-spec-load -fforce-addr -ffast-math -fsingle-precision-constant -mtune=cortex-a15 -marm -mfpu=neon -ftree-vectorize -mvectorize-with-neon-quad -funroll-loops -fgraphite -ftree-loop-linear -floop-interchange -floop-strip-mine -floop-block   -nostdinc -isystem /home/skin1980/arm-eabi-4.8/bin/../lib/gcc/arm-eabi/4.8/include -I/home/skin1980/kkkernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /home/skin1980/kkkernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-msm/include    -c -o .tmp_kallsyms1.o .tmp_kallsyms1.S

source_.tmp_kallsyms1.o := .tmp_kallsyms1.S

deps_.tmp_kallsyms1.o := \
  /home/skin1980/kkkernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/skin1980/kkkernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \

.tmp_kallsyms1.o: $(deps_.tmp_kallsyms1.o)

$(deps_.tmp_kallsyms1.o):
