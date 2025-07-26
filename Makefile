CC      := riscv64-elf-gcc
OBJCOPY := riscv64-elf-objcopy
MKDIR   := mkdir
CFLAGS  := -ffreestanding -nostdlib -g -O2
OBJS    := start.o main.o

.PHONY: all
all: kernel

kernel: $(OBJS)
	$(CC) $(CFLAGS) -T link.ld $(OBJS) -o $@

%.o: %.s
	$(CC) $(CFLAGS) $< -c -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -c -o $@

.PHONY: clean
clean:
	rm -rf kernel $(OBJS)
