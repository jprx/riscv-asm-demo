ENTRY(bootup);

SECTIONS {
  . = 0x80000000;
  .text.start : { *(.text.start); }
  .text     : { *(.text); }
  .data     : { *(.data); }
  .rodata   : { *(.rodata); }
  .bss      : { *(.bss); }
}
