.section .text.start
.global bootup

bootup:
  la sp, stack_top
  j demo1

demo1:
  # Use a globally declared region of memory as a "some_data_t",
  # and pass its address to C.
  # C equivalent: add(&sample_struct)
  la a0, sample_struct
  call add
  j demo2

demo2:
  # Construct a "some_data_t" on the stack and pass its address to C.
  # C equivalent:
  # some_data_t data = {.a = 0x1111, .b = 0x2222, .c = 0x3333, .d = 0x4444};
  # add(&data)
  addi sp, sp, -0x20
  li t0, 0x1111
  li t1, 0x2222
  li t2, 0x3333
  li t3, 0x4444
  sd t0, 0x00(sp)
  sd t1, 0x08(sp)
  sd t2, 0x10(sp)
  sd t3, 0x18(sp)
  mv a0, sp
  call add
  j infloop

infloop:
  j infloop

sample_struct:
  .quad 0x1111111111111111
  .quad 0x2222222222222222
  .quad 0x3333333333333333
  .quad 0x4444444444444444

.balign 0x10
stack_bottom:
  .rept 512
  .quad 0
  .endr
stack_top:
  .quad 0
