	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dec_asminline.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #1024
	sub	sp, sp, #4
	add	r7, sp, #512
	ldr	r0, .L14
	mov	r1, r7
	bl	scanf
	ldrb	r3, [sp, #512]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r6, r3
	beq	.L8
	mov	r4, #0
	mov	r2, sp
.L3:
	sub	r3, r3, #48
	strb	r3, [r2, r4]
	add	r4, r4, #1
	ldrb	r3, [r7, r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	mov	ip, r3
	mov	r5, r3
	mov	r6, r3
.L4:
	cmp	ip, #7
	beq	.L6
	add	lr, ip, r5
	cmp	r4, lr
	movgt	r0, lr
	bgt	.L5
	b	.L9
.L7:
	cmp	r0, r4
	bge	.L9
.L5:
	add	r1, sp, #1024
	add	r3, r1, lr
	mov	r2, r2, asl #1
	ldrb	r1, [r3, #-1024]	@ zero_extendqisi2
	add	ip, ip, #1
	add	r0, r0, #1
	and	r2, r2, #255
	cmp	ip, #6
	mov	lr, r0
	orr	r2, r2, r1
	ble	.L7
.L6:
#APP
@ 34 "dec_asminline.c" 1
	huffman r3, r2
@ 0 "" 2
	and	r1, r3, #15
	and	r3, r3, #255
	mov	r3, r3, lsr #4
	add	r5, r5, r1
	add	r3, r3, #65
	cmp	r5, r4
	strb	r3, [r7, r6]
	add	r6, r6, #1
	bge	.L8
	rsb	ip, r1, #7
	b	.L4
.L9:
	rsb	r3, ip, #7
	mov	r3, r2, asl r3
	and	r2, r3, #255
	b	.L6
.L8:
	add	r3, sp, #1024
	add	r2, r3, r6
	mov	r3, #0
	mov	r0, r7
	strb	r3, [r2, #-512]
	bl	puts
	add	sp, sp, #4
	add	sp, sp, #1024
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L15:
	.align	2
.L14:
	.word	.LC0
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
