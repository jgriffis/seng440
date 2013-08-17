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
	.file	"dec.c"
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
	.text
	.align	2
	.global	huffman_decode
	.type	huffman_decode, %function
huffman_decode:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L6:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L4
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #7
	mov	r3, r2, asl r3
	strb	r3, [fp, #-7]
	b	.L5
.L4:
	ldrb	r3, [fp, #-7]
	mov	r3, r3, asl #1
	strb	r3, [fp, #-7]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-7]
	orr	r3, r2, r3
	strb	r3, [fp, #-7]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-20]
	cmp	r3, #6
	ble	.L6
.L5:
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r3, .L9
	ldrb	r3, [r3, r2]
	strb	r3, [fp, #-6]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r2, r3, r2
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	mov	r3, r3, lsr #4
	and	r3, r3, #255
	add	r3, r3, #65
	and	r3, r3, #255
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
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L3
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L10:
	.align	2
.L9:
	.word	HD_LUT
	.size	huffman_decode, .-huffman_decode
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%s\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1040
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1040
	sub	r3, fp, #520
	ldr	r0, .L15
	mov	r1, r3
	bl	scanf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L12
.L13:
	ldr	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L15+4
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	and	r1, r3, #255
	ldr	r2, .L15+8
	sub	ip, fp, #4
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15+4
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r2, fp, #520
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	huffman_decode
	sub	r3, fp, #520
	mov	r0, r3
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L16:
	.align	2
.L15:
	.word	.LC0
	.word	-516
	.word	-1028
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
