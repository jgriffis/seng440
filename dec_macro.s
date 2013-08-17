	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"dec_macro.c"
	.global	HD_LUT
	.data
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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%s\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1056
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1056
	sub	r3, fp, #536
	ldr	r0, .L11
	mov	r1, r3
	bl	scanf
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L2
.L3:
	ldr	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r2, .L11+4
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	and	r1, r3, #255
	ldr	r2, .L11+8
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L2:
	ldr	r3, [fp, #-24]
	ldr	r2, .L11+4
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L8:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L6
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #7
	mov	r3, r2, asl r3
	strb	r3, [fp, #-7]
	b	.L7
.L6:
	ldrb	r3, [fp, #-7]
	mov	r3, r3, asl #1
	strb	r3, [fp, #-7]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, .L11+8
	sub	ip, fp, #4
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-7]
	orr	r3, r2, r3
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L5:
	ldr	r3, [fp, #-20]
	cmp	r3, #6
	ble	.L8
.L7:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r3, .L11+12
	ldrb	r3, [r3, r2]
	strb	r3, [fp, #-6]
	ldr	r0, [fp, #-12]
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	add	r3, r3, #65
	and	r1, r3, #255
	ldr	r2, .L11+4
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldrb	r3, [fp, #-6]
	and	r3, r3, #15
	strb	r3, [fp, #-5]
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	rsb	r3, r3, #7
	str	r3, [fp, #-20]
.L4:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L5
	ldr	r3, [fp, #-12]
	ldr	r2, .L11+4
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	sub	r3, fp, #536
	mov	r0, r3
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	-532
	.word	-1044
	.word	HD_LUT
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
