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
	.file	"dec_comp.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #1024
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
	ldr	r8, .L14+4
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
	add	r2, sp, #1024
	add	r3, r2, lr
	add	ip, ip, #1
	mov	r2, r1, asl #1
	ldrb	r1, [r3, #-1024]	@ zero_extendqisi2
	add	r0, r0, #1
	and	r2, r2, #255
	cmp	ip, #6
	mov	lr, r0
	orr	r1, r2, r1
	ble	.L7
.L6:
	and	r2, r1, #127
	ldrb	r3, [r8, r2]	@ zero_extendqisi2
	and	r2, r3, #15
	add	r5, r5, r2
	mov	r3, r3, lsr #4
	add	r3, r3, #65
	cmp	r5, r4
	strb	r3, [r7, r6]
	add	r6, r6, #1
	bge	.L8
	rsb	ip, r2, #7
	b	.L4
.L9:
	rsb	r3, ip, #7
	mov	r3, r1, asl r3
	and	r1, r3, #255
	b	.L6
.L8:
	add	r3, sp, #1024
	add	r2, r3, r6
	mov	r3, #0
	mov	r0, r7
	strb	r3, [r2, #-512]
	bl	puts
	add	sp, sp, #1024
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L15:
	.align	2
.L14:
	.word	.LC0
	.word	.LANCHOR0
	.size	main, .-main
	.global	HD_LUT
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	HD_LUT, %object
	.size	HD_LUT, 128
HD_LUT:
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-77
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	-61
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-124
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-108
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-45
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-29
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	-92
	.byte	70
	.byte	70
	.byte	54
	.byte	54
	.byte	7
	.byte	23
	.byte	38
	.byte	38
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.byte	-13
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
