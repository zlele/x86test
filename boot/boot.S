.code16

start:
   //Now cs=0x0, ds=0x0, ip=0x7c00
   xor %ax,%ax
   mov $0x7c0, %ax
   mov %ax, %es
   mov $hello, %bp
   //mov %ax, %bp
   mov $0x13, %ah
   mov $0x1, %al
   mov $0xc, %cx
   mov $0x0, %dx
   mov $0x0, %bh
   mov $0xa, %bl
   int $0x10
   hlt

hello: .asciz "Hello world!"
.org 510
   .byte 0x55
   .byte 0xaa
