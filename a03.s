.section .bss
buf1:
	.space 100,0
.section .data
.section .text
.globl	trunoff
trunoff:
	pushl %ebp
	movl  %esp,%ebp
	movl  8(%ebp),%esi
	movl  12(%ebp),%ecx
	movl  $buf1,%ebx
	leal  (%ebx,%ecx,1),%eax
	decl  %eax
	movl  %eax,%ebx
0:
	lodsb
	movb  %al,(%ebx)
	decl  %ebx
	loop  0b
	movl  $buf1,%esi
	movl  8(%ebp),%edi
	movl  12(%ebp),%ecx
1:
	movsb
	loop  1b
	xorl  %eax,%eax
	leave
	ret

