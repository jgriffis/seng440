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
	sub	r1, fp, #536
	ldr	r0, .L11
	bl	scanf
	mov	r4, #0
    mov r5, #0
	b	.L2
.L3:
	sub	r1, fp, #4
	ldr	r2, .L11+4
	add	r3, r1, r4
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	and	r1, r3, #255
	ldr	r2, .L11+8
	sub	ip, fp, #4
	add	r3, ip, r4
	add	r2, r3, r2
	strb	r1, [r2]
	add	r4, r4, #1
.L2:
	ldr	r2, .L11+4
	sub	r1, fp, #4
	add	r3, r1, r4
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	mov	r6, #0
	str	r6, [fp, #-12]
	b	.L4
.L8:
	add	r2, r6, r5
	cmp	r2, r4
	blt	.L6
	rsb	r3, r5, #7
	mov	r7, r7, asl r3
	b	.L7
.L6:
	mov	r7, r7, asl #1
	add	r3, r6, r5
	ldr	r2, .L11+8
	add	r3, ip, r3
	sub	ip, fp, #4
	add	r3, r3, r2
	add	r5, r5, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	orr	r7, r2, r7
.L5:
	cmp	r5, #6
	ble	.L8
.L7:
	and	r2, r7, #127
	ldr	r3, .L11+12
	ldrb	r3, [r3, r2]
	strb	r3, [fp, #-6]
	ldr	r0, [fp, #-12]
	mov	r3, r3, lsr #4
	add	r3, r3, #65
	and	r1, r3, #255
	ldr	r2, .L11+4
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	strb	r1, [r2]
	add	r3, r0, #1
	str	r3, [fp, #-12]
	ldrb	r3, [fp, #-6]
	and	r3, r3, #15
	add	r6, r6, r3
	rsb	r5, r3, #7
.L4:
	cmp	r6, r4
	blt	.L5
	ldr	r3, [fp, #-12]
	sub	r1, fp, #4
	ldr	r2, .L11+4
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2]
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
