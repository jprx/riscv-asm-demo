#!/bin/bash
qemu-system-riscv64 -kernel kernel -M virt -bios none -nographic -s -S
