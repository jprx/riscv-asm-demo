# riscv-asm-demo

A sample bare metal `riscv64` project that shows how to:
1. Setup a stack
2. Call C code from assembly and pass arguments
3. Construct a data structure on the stack in assembly and pass it via a pointer to C

# Usage

1. `./dev.sh`
2. `make`
3. On host, use `./run.sh`. In dev container, `./gdb.sh`
4. Step through the code and see what it does!
