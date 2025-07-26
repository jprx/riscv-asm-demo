#!/bin/bash
riscv64-elf-gdb kernel -ex "target remote host.docker.internal:1234" -ex "set confirm off" -ex "tui new-layout custom {-horizontal src 1 asm 1} 2 status 0 cmd 1" -ex "tui layout custom" -ex "tui focus cmd" -ex "b bootup" -ex "c"
