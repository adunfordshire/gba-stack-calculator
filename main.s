	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	init
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1040
	add	r2, r2, #4
	mov	r0, #67108864
	strh	r2, [r0, #0]	@ movhi
	mov	r3, #83886080
	mvn	r2, #32768
	strh	r2, [r3, #2]	@ movhi
	ldr	r2, .L2
	mov	r1, #0
	strh	r1, [r3, #0]	@ movhi
	str	r1, [r2, #0]
	mov	r2, #31	@ movhi
	strh	r2, [r3, #4]	@ movhi
	mov	r2, #992	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	init, .-init
	.align	2
	.global	drawBin
	.type	drawBin, %function
drawBin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r7, .L5
	sub	sp, sp, #12
	ldrh	r0, [r7, #0]
	ldr	r6, .L5+4
	mov	r0, r0, asl #16
	ldr	r4, .L5+8
	mov	r1, r6
	mov	r0, r0, asr #16
	mov	lr, pc
	bx	r4
	ldrh	r3, [r7, #2]
	ldr	r5, .L5+12
	ldr	r2, .L5+16
	mov	r3, r3, asl #16
	str	r0, [r2, #0]
	mov	r1, r5
	mov	r0, r3, asr #16
	mov	lr, pc
	bx	r4
	ldrh	r3, [r7, #4]
	ldr	r8, .L5+20
	ldr	r2, .L5+24
	mov	r3, r3, asl #16
	str	r0, [r2, #0]
	mov	r1, r8
	mov	r0, r3, asr #16
	mov	lr, pc
	bx	r4
	ldrh	r3, [r7, #6]
	ldr	sl, .L5+28
	ldr	r2, .L5+32
	mov	r3, r3, asl #16
	str	r0, [r2, #0]
	mov	r1, sl
	mov	r0, r3, asr #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L5+36
	mov	r9, #0
	str	r0, [r3, #0]
	ldr	fp, .L5+40
	mov	r1, #70
	mov	r0, #100
	mov	r2, #38
	mov	r3, #96
	str	r9, [sp, #0]
	ldr	r4, .L5+44
	mov	lr, pc
	bx	fp
	mov	r2, r6
	mov	r0, #130
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r0, #120
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r0, #110
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	ldr	r7, .L5+48
	mov	r2, sl
	mov	r0, #100
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	mov	r3, #96
	str	r9, [sp, #0]
	mov	lr, pc
	bx	fp
	mov	r2, r6
	mov	r0, #130
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r0, #120
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r0, #110
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	r0, #100
	mov	r1, #70
	mov	r2, sl
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	stack
	.word	binbuff0
	.word	short2bin
	.word	binbuff1
	.word	stackbin0
	.word	binbuff2
	.word	stackbin1
	.word	binbuff3
	.word	stackbin2
	.word	stackbin3
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.size	drawBin, .-drawBin
	.align	2
	.global	goToBin
	.type	goToBin, %function
goToBin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L8
	bl	drawBin
	ldr	r4, .L8+4
	mov	r0, #82
	mov	r1, #157
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r6, .L8+8
	mov	r0, #82
	mov	r1, #10
	mov	r2, r5
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #82
	mov	r1, #157
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r3, #2
	mov	r0, #82
	mov	r1, #10
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldr	r3, .L8+12
	mov	r2, #2
	str	r2, [r3, #0]
	ldr	r3, .L8+16
	mov	r2, #0
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	drawString4
	.word	flipPage
	.word	factor
	.word	base
	.size	goToBin, .-goToBin
	.global	__aeabi_i2d
	.global	__aeabi_dadd
	.global	__aeabi_d2uiz
	.global	__aeabi_dsub
	.align	2
	.global	updateHex
	.type	updateHex, %function
updateHex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L18
	sub	sp, sp, #12
	ldr	r3, [r4, #0]
	tst	r3, #256
	beq	.L11
	ldr	r2, .L18+4
	ldr	r2, [r2, #0]
	tst	r2, #256
	beq	.L15
.L11:
	tst	r3, #64
	beq	.L12
	ldr	r2, .L18+4
	ldr	r5, [r2, #0]
	ands	r5, r5, #64
	beq	.L16
.L12:
	tst	r3, #128
	beq	.L10
	ldr	r3, .L18+4
	ldr	r5, [r3, #0]
	ands	r5, r5, #128
	beq	.L17
.L10:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L17:
	ldr	r3, .L18+8
	ldr	r6, .L18+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L18+16
	mov	r8, r0
	ldr	r0, [r3, #24]
	mov	r9, r1
	mov	lr, pc
	bx	r6
	ldr	r4, .L18+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L18+24
	mov	r0, r8
	mov	r1, r9
	ldrh	r7, [r4, #0]
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r9, r1
	mov	r0, r7
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L18+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L18+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r4, #0]	@ movhi
	mov	r3, #96
	ldr	r7, .L18+36
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r6, .L18+40
	ldrh	r2, [r4, #0]
	ldr	r1, .L18+44
	ldr	r0, .L18+48
	mov	lr, pc
	bx	r6
	ldr	sl, .L18+52
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L18+48
	mov	r3, #3
	ldr	r8, .L18+56
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r4, #0]
	ldr	r1, .L18+44
	ldr	r0, .L18+48
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L18+48
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	b	.L10
.L16:
	ldr	r3, .L18+8
	ldr	r7, .L18+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r7
	ldr	r3, .L18+16
	mov	sl, r0
	ldr	r0, [r3, #24]
	mov	fp, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L18+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L18+24
	mov	r0, sl
	mov	r1, fp
	ldrh	r8, [r6, #0]
	mov	lr, pc
	bx	ip
	mov	sl, r0
	mov	fp, r1
	mov	r0, r8
	mov	lr, pc
	bx	r7
	mov	r2, sl
	ldr	ip, .L18+60
	mov	r3, fp
	mov	lr, pc
	bx	ip
	ldr	r3, .L18+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r6, #0]	@ movhi
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	ldr	r7, .L18+36
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r8, .L18+40
	ldrh	r2, [r6, #0]
	ldr	r1, .L18+64
	ldr	r0, .L18+48
	mov	lr, pc
	bx	r8
	ldr	sl, .L18+56
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L18+48
	mov	r3, #3
	ldr	r9, .L18+52
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r6, #0]
	ldr	r1, .L18+64
	ldr	r0, .L18+48
	mov	lr, pc
	bx	r8
	mov	r3, #3
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L18+48
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	ldr	r3, [r4, #0]
	b	.L12
.L15:
	bl	goToBin
	ldr	r3, [r4, #0]
	b	.L11
.L19:
	.align	2
.L18:
	.word	oldButtons
	.word	buttons
	.word	factor
	.word	__aeabi_i2d
	.word	cursor
	.word	stack
	.word	pow
	.word	__aeabi_dsub
	.word	__aeabi_d2uiz
	.word	drawRect4
	.word	sprintf
	.word	.LC2
	.word	buffer
	.word	flipPage
	.word	drawString4
	.word	__aeabi_dadd
	.word	.LC1
	.size	updateHex, .-updateHex
	.align	2
	.global	drawOct
	.type	drawOct, %function
drawOct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L21
	ldr	r7, .L21+4
	ldr	r6, .L21+8
	sub	sp, sp, #12
	mov	r3, #96
	mov	sl, #0
	ldr	r9, .L21+12
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	ldr	r5, .L21+16
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	ldr	r8, .L21+20
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	ldr	fp, .L21+24
	mov	r2, r4
	mov	r0, #100
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	mov	r3, #96
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r0, #100
	mov	r1, #70
	mov	r2, r4
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	buffer
	.word	stack
	.word	.LC3
	.word	drawRect4
	.word	sprintf
	.word	drawString4
	.word	flipPage
	.size	drawOct, .-drawOct
	.align	2
	.global	goToOct
	.type	goToOct, %function
goToOct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L24
	bl	drawOct
	ldr	r4, .L24+4
	mov	r0, #82
	mov	r1, #10
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r6, .L24+8
	mov	r0, #82
	mov	r1, #60
	mov	r2, r5
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #82
	mov	r1, #10
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r3, #2
	mov	r0, #82
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldr	r3, .L24+12
	mov	r2, #8
	str	r2, [r3, #0]
	ldr	r3, .L24+16
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LC0
	.word	drawString4
	.word	flipPage
	.word	factor
	.word	base
	.size	goToOct, .-goToOct
	.align	2
	.global	updateBin
	.type	updateBin, %function
updateBin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L33
	sub	sp, sp, #12
	ldr	r3, [r4, #0]
	tst	r3, #256
	beq	.L27
	ldr	r2, .L33+4
	ldr	r2, [r2, #0]
	tst	r2, #256
	beq	.L30
.L27:
	tst	r3, #64
	beq	.L28
	ldr	r2, .L33+4
	ldr	r5, [r2, #0]
	ands	r5, r5, #64
	beq	.L31
.L28:
	tst	r3, #128
	beq	.L26
	ldr	r3, .L33+4
	ldr	r4, [r3, #0]
	ands	r4, r4, #128
	beq	.L32
.L26:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L32:
	ldr	r3, .L33+8
	ldr	r6, .L33+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L33+16
	mov	r8, r0
	ldr	r0, [r3, #24]
	mov	r9, r1
	mov	lr, pc
	bx	r6
	ldr	r5, .L33+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L33+24
	mov	r0, r8
	mov	r1, r9
	ldrh	r7, [r5, #0]
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r9, r1
	mov	r0, r7
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L33+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L33+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r5, #0]	@ movhi
	mov	r2, #8
	ldr	r6, .L33+36
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r6
	ldrh	r0, [r5, #0]
	mov	r0, r0, asl #16
	ldr	r1, .L33+40
	ldr	r3, .L33+44
	mov	r0, r0, asr #16
	mov	lr, pc
	bx	r3
	ldr	ip, .L33+48
	mov	r1, #70
	str	r0, [ip, #0]
	ldr	r2, .L33+40
	mov	r3, #3
	ldr	r5, .L33+52
	mov	r0, #130
	ldr	r7, .L33+56
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	mov	r3, #96
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L33+40
	mov	r3, #3
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r5
	b	.L26
.L31:
	ldr	r3, .L33+8
	ldr	r6, .L33+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L33+16
	mov	sl, r0
	ldr	r0, [r3, #24]
	mov	fp, r1
	mov	lr, pc
	bx	r6
	ldr	r7, .L33+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L33+24
	mov	r0, sl
	mov	r1, fp
	ldrh	r8, [r7, #0]
	mov	lr, pc
	bx	ip
	mov	sl, r0
	mov	fp, r1
	mov	r0, r8
	mov	lr, pc
	bx	r6
	mov	r2, sl
	ldr	ip, .L33+60
	mov	r3, fp
	mov	lr, pc
	bx	ip
	ldr	r3, .L33+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r7, #0]	@ movhi
	mov	r2, #8
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	ldr	r8, .L33+36
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r8
	ldrh	r0, [r7, #0]
	mov	r0, r0, asl #16
	ldr	r1, .L33+40
	ldr	r3, .L33+44
	mov	r0, r0, asr #16
	mov	lr, pc
	bx	r3
	ldr	ip, .L33+48
	mov	r1, #70
	str	r0, [ip, #0]
	ldr	r2, .L33+40
	mov	r3, #3
	mov	r0, #130
	ldr	r7, .L33+56
	ldr	r6, .L33+52
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	mov	r3, #96
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r8
	mov	r3, #3
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L33+40
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #0]
	b	.L28
.L30:
	bl	goToOct
	ldr	r3, [r4, #0]
	b	.L27
.L34:
	.align	2
.L33:
	.word	oldButtons
	.word	buttons
	.word	factor
	.word	__aeabi_i2d
	.word	cursor
	.word	stack
	.word	pow
	.word	__aeabi_dsub
	.word	__aeabi_d2uiz
	.word	drawRect4
	.word	binbuff0
	.word	short2bin
	.word	stackbin0
	.word	flipPage
	.word	drawString4
	.word	__aeabi_dadd
	.size	updateBin, .-updateBin
	.align	2
	.global	drawDec
	.type	drawDec, %function
drawDec:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L36
	ldr	r7, .L36+4
	ldr	r6, .L36+8
	sub	sp, sp, #12
	mov	r3, #96
	mov	sl, #0
	ldr	r9, .L36+12
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	ldr	r5, .L36+16
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	ldr	r8, .L36+20
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	ldr	fp, .L36+24
	mov	r2, r4
	mov	r0, #100
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	mov	r3, #96
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r0, #100
	mov	r1, #70
	mov	r2, r4
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	buffer
	.word	stack
	.word	.LC2
	.word	drawRect4
	.word	sprintf
	.word	drawString4
	.word	flipPage
	.size	drawDec, .-drawDec
	.align	2
	.global	goToDec
	.type	goToDec, %function
goToDec:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L39
	bl	drawDec
	ldr	r4, .L39+4
	mov	r0, #82
	mov	r1, #60
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r6, .L39+8
	mov	r0, #82
	mov	r1, #103
	mov	r2, r5
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #82
	mov	r1, #60
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r3, #2
	mov	r0, #82
	mov	r1, #103
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldr	r3, .L39+12
	mov	r2, #10
	str	r2, [r3, #0]
	ldr	r3, .L39+16
	mov	r2, #2
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LC0
	.word	drawString4
	.word	flipPage
	.word	factor
	.word	base
	.size	goToDec, .-goToDec
	.align	2
	.global	updateOct
	.type	updateOct, %function
updateOct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L48
	sub	sp, sp, #12
	ldr	r3, [r4, #0]
	tst	r3, #256
	beq	.L42
	ldr	r2, .L48+4
	ldr	r2, [r2, #0]
	tst	r2, #256
	beq	.L45
.L42:
	tst	r3, #64
	beq	.L43
	ldr	r2, .L48+4
	ldr	r5, [r2, #0]
	ands	r5, r5, #64
	beq	.L46
.L43:
	tst	r3, #128
	beq	.L41
	ldr	r3, .L48+4
	ldr	r5, [r3, #0]
	ands	r5, r5, #128
	beq	.L47
.L41:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L47:
	ldr	r3, .L48+8
	ldr	r6, .L48+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L48+16
	mov	r8, r0
	ldr	r0, [r3, #24]
	mov	r9, r1
	mov	lr, pc
	bx	r6
	ldr	r4, .L48+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L48+24
	mov	r0, r8
	mov	r1, r9
	ldrh	r7, [r4, #0]
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r9, r1
	mov	r0, r7
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L48+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L48+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r4, #0]	@ movhi
	mov	r3, #96
	ldr	r7, .L48+36
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r6, .L48+40
	ldrh	r2, [r4, #0]
	ldr	r1, .L48+44
	ldr	r0, .L48+48
	mov	lr, pc
	bx	r6
	ldr	sl, .L48+52
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L48+48
	mov	r3, #3
	ldr	r8, .L48+56
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r4, #0]
	ldr	r1, .L48+44
	ldr	r0, .L48+48
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L48+48
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	b	.L41
.L46:
	ldr	r3, .L48+8
	ldr	r7, .L48+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r7
	ldr	r3, .L48+16
	mov	sl, r0
	ldr	r0, [r3, #24]
	mov	fp, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L48+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L48+24
	mov	r0, sl
	mov	r1, fp
	ldrh	r8, [r6, #0]
	mov	lr, pc
	bx	ip
	mov	sl, r0
	mov	fp, r1
	mov	r0, r8
	mov	lr, pc
	bx	r7
	mov	r2, sl
	ldr	ip, .L48+60
	mov	r3, fp
	mov	lr, pc
	bx	ip
	ldr	r3, .L48+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r6, #0]	@ movhi
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	ldr	r7, .L48+36
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r8, .L48+40
	ldrh	r2, [r6, #0]
	ldr	r1, .L48+44
	ldr	r0, .L48+48
	mov	lr, pc
	bx	r8
	ldr	sl, .L48+56
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L48+48
	mov	r3, #3
	ldr	r9, .L48+52
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r6, #0]
	ldr	r1, .L48+44
	ldr	r0, .L48+48
	mov	lr, pc
	bx	r8
	mov	r3, #3
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L48+48
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	ldr	r3, [r4, #0]
	b	.L43
.L45:
	bl	goToDec
	ldr	r3, [r4, #0]
	b	.L42
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.word	factor
	.word	__aeabi_i2d
	.word	cursor
	.word	stack
	.word	pow
	.word	__aeabi_dsub
	.word	__aeabi_d2uiz
	.word	drawRect4
	.word	sprintf
	.word	.LC3
	.word	buffer
	.word	flipPage
	.word	drawString4
	.word	__aeabi_dadd
	.size	updateOct, .-updateOct
	.align	2
	.global	drawHex
	.type	drawHex, %function
drawHex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L51
	ldr	r7, .L51+4
	ldr	r6, .L51+8
	sub	sp, sp, #12
	mov	r3, #96
	mov	sl, #0
	ldr	r9, .L51+12
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	ldr	r5, .L51+16
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	ldr	r8, .L51+20
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	ldr	fp, .L51+24
	mov	r2, r4
	mov	r0, #100
	mov	r1, #70
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	mov	r3, #96
	mov	r0, #100
	mov	r1, #70
	mov	r2, #38
	str	sl, [sp, #0]
	mov	lr, pc
	bx	r9
	ldrh	r2, [r7, #0]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #130
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #2]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #120
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #4]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, r4
	mov	r0, #110
	mov	r1, #70
	mov	lr, pc
	bx	r8
	ldrh	r2, [r7, #6]
	mov	r1, r6
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r0, #100
	mov	r1, #70
	mov	r2, r4
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	fp
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	buffer
	.word	stack
	.word	.LC1
	.word	drawRect4
	.word	sprintf
	.word	drawString4
	.word	flipPage
	.size	drawHex, .-drawHex
	.align	2
	.global	goToHex
	.type	goToHex, %function
goToHex:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L54
	bl	drawHex
	ldr	r4, .L54+4
	mov	r0, #82
	mov	r1, #103
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r6, .L54+8
	mov	r0, #82
	mov	r1, #157
	mov	r2, r5
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #82
	mov	r1, #103
	mov	r2, r5
	mov	r3, #0
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r3, #2
	mov	r0, #82
	mov	r1, #157
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldr	r3, .L54+12
	mov	r2, #16
	str	r2, [r3, #0]
	ldr	r3, .L54+16
	mov	r2, #3
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	.LC0
	.word	drawString4
	.word	flipPage
	.word	factor
	.word	base
	.size	goToHex, .-goToHex
	.align	2
	.global	updateDec
	.type	updateDec, %function
updateDec:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L63
	sub	sp, sp, #12
	ldr	r3, [r4, #0]
	tst	r3, #256
	beq	.L57
	ldr	r2, .L63+4
	ldr	r2, [r2, #0]
	tst	r2, #256
	beq	.L60
.L57:
	tst	r3, #64
	beq	.L58
	ldr	r2, .L63+4
	ldr	r5, [r2, #0]
	ands	r5, r5, #64
	beq	.L61
.L58:
	tst	r3, #128
	beq	.L56
	ldr	r3, .L63+4
	ldr	r5, [r3, #0]
	ands	r5, r5, #128
	beq	.L62
.L56:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L62:
	ldr	r3, .L63+8
	ldr	r6, .L63+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L63+16
	mov	r8, r0
	ldr	r0, [r3, #24]
	mov	r9, r1
	mov	lr, pc
	bx	r6
	ldr	r4, .L63+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L63+24
	mov	r0, r8
	mov	r1, r9
	ldrh	r7, [r4, #0]
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r9, r1
	mov	r0, r7
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L63+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L63+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r4, #0]	@ movhi
	mov	r3, #96
	ldr	r7, .L63+36
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r6, .L63+40
	ldrh	r2, [r4, #0]
	ldr	r1, .L63+44
	ldr	r0, .L63+48
	mov	lr, pc
	bx	r6
	ldr	sl, .L63+52
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L63+48
	mov	r3, #3
	ldr	r8, .L63+56
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r4, #0]
	ldr	r1, .L63+44
	ldr	r0, .L63+48
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L63+48
	mov	r3, #3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	sl
	b	.L56
.L61:
	ldr	r3, .L63+8
	ldr	r7, .L63+12
	ldr	r0, [r3, #0]
	mov	lr, pc
	bx	r7
	ldr	r3, .L63+16
	mov	sl, r0
	ldr	r0, [r3, #24]
	mov	fp, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L63+20
	mov	r2, r0
	mov	r3, r1
	ldr	ip, .L63+24
	mov	r0, sl
	mov	r1, fp
	ldrh	r8, [r6, #0]
	mov	lr, pc
	bx	ip
	mov	sl, r0
	mov	fp, r1
	mov	r0, r8
	mov	lr, pc
	bx	r7
	mov	r2, sl
	ldr	ip, .L63+60
	mov	r3, fp
	mov	lr, pc
	bx	ip
	ldr	r3, .L63+32
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	ip, r0, lsr #16
	strh	ip, [r6, #0]	@ movhi
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	ldr	r7, .L63+36
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldr	r8, .L63+40
	ldrh	r2, [r6, #0]
	ldr	r1, .L63+44
	ldr	r0, .L63+48
	mov	lr, pc
	bx	r8
	ldr	sl, .L63+56
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L63+48
	mov	r3, #3
	ldr	r9, .L63+52
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	mov	r3, #96
	mov	r0, #130
	mov	r1, #70
	mov	r2, #8
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r7
	ldrh	r2, [r6, #0]
	ldr	r1, .L63+44
	ldr	r0, .L63+48
	mov	lr, pc
	bx	r8
	mov	r3, #3
	mov	r0, #130
	mov	r1, #70
	ldr	r2, .L63+48
	mov	lr, pc
	bx	sl
	mov	lr, pc
	bx	r9
	ldr	r3, [r4, #0]
	b	.L58
.L60:
	bl	goToHex
	ldr	r3, [r4, #0]
	b	.L57
.L64:
	.align	2
.L63:
	.word	oldButtons
	.word	buttons
	.word	factor
	.word	__aeabi_i2d
	.word	cursor
	.word	stack
	.word	pow
	.word	__aeabi_dsub
	.word	__aeabi_d2uiz
	.word	drawRect4
	.word	sprintf
	.word	.LC2
	.word	buffer
	.word	flipPage
	.word	drawString4
	.word	__aeabi_dadd
	.size	updateDec, .-updateDec
	.align	2
	.global	drawCursor
	.type	drawCursor, %function
drawCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r4, .L66
	sub	sp, sp, #12
	ldr	r5, .L66+4
	ldr	r0, [r4, #0]
	add	r1, r4, #8
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	mov	r7, #0
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r5
	ldrb	ip, [r4, #20]	@ zero_extendqisi2
	ldmia	r4, {r0, r1}	@ phole ldm
	add	r2, r4, #12
	ldmia	r2, {r2, r3}	@ phole ldm
	ldr	r6, .L66+8
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r6
	ldr	r0, [r4, #0]
	add	r1, r4, #8
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r5
	ldrb	ip, [r4, #20]	@ zero_extendqisi2
	ldmia	r4, {r0, r1}	@ phole ldm
	add	r2, r4, #12
	ldmia	r2, {r2, r3}	@ phole ldm
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	cursor
	.word	drawRect4
	.word	flipPage
	.size	drawCursor, .-drawCursor
	.align	2
	.global	draw
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L76
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L69
	ldr	r3, .L76+4
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L70
.L75:
	.word	.L71
	.word	.L72
	.word	.L73
	.word	.L74
.L74:
	bl	drawHex
.L70:
	mov	r3, #0
	str	r3, [r4, #0]
.L69:
	ldmfd	sp!, {r4, lr}
	b	drawCursor
.L71:
	bl	drawBin
	b	.L70
.L72:
	bl	drawOct
	b	.L70
.L73:
	bl	drawDec
	b	.L70
.L77:
	.align	2
.L76:
	.word	.LANCHOR0
	.word	base
	.size	draw, .-draw
	.align	2
	.global	updateCursor
	.type	updateCursor, %function
updateCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L83
	ldr	r3, [r3, #0]
	tst	r3, #16
	beq	.L79
	ldr	r2, .L83+4
	ldr	r2, [r2, #0]
	tst	r2, #16
	beq	.L81
.L79:
	tst	r3, #32
	bxeq	lr
.L82:
	ldr	r3, .L83+4
	ldr	r3, [r3, #0]
	tst	r3, #32
	bxne	lr
	ldr	r3, .L83+8
	ldr	r2, [r3, #4]
	cmp	r2, #71
	bxle	lr
	ldr	r1, [r3, #24]
	sub	r0, r2, #6
	add	r1, r1, #1
	stmib	r3, {r0, r2}	@ phole stm
	str	r1, [r3, #24]
	bx	lr
.L81:
	ldr	r2, .L83+8
	ldr	r1, [r2, #4]
	cmp	r1, #160
	bgt	.L79
	ldr	r0, [r2, #24]
	add	ip, r1, #6
	sub	r0, r0, #1
	tst	r3, #32
	str	r1, [r2, #8]
	str	ip, [r2, #4]
	str	r0, [r2, #24]
	bne	.L82
	bx	lr
.L84:
	.align	2
.L83:
	.word	oldButtons
	.word	buttons
	.word	cursor
	.size	updateCursor, .-updateCursor
	.align	2
	.global	opUpdate
	.type	opUpdate, %function
opUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L92
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L86
	ldr	r2, .L92+4
	ldr	r2, [r2, #0]
	ands	r1, r2, #8
	beq	.L89
.L86:
	tst	r3, #4
	beq	.L87
	ldr	r2, .L92+4
	ldr	r2, [r2, #0]
	ands	r1, r2, #4
	beq	.L90
.L87:
	tst	r3, #512
	bxeq	lr
.L91:
	ldr	r3, .L92+4
	ldr	r3, [r3, #0]
	tst	r3, #512
	bxne	lr
	ldr	r3, .L92+8
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #0]
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, .L92+12
	mov	r0, #1
	str	r0, [r1, #0]
	strh	r2, [r3, #0]	@ movhi
	bx	lr
.L90:
	ldr	r2, .L92+8
	ldrh	r0, [r2, #4]
	strh	r0, [r2, #6]	@ movhi
	ldrh	r0, [r2, #2]
	strh	r0, [r2, #4]	@ movhi
	ldrh	r0, [r2, #0]
	strh	r0, [r2, #2]	@ movhi
	ldr	r0, .L92+12
	mov	ip, #1
	tst	r3, #512
	str	ip, [r0, #0]
	strh	r1, [r2, #0]	@ movhi
	bne	.L91
	bx	lr
.L89:
	ldr	r2, .L92+8
	ldrh	r0, [r2, #2]
	strh	r0, [r2, #0]	@ movhi
	ldrh	r0, [r2, #4]
	strh	r0, [r2, #2]	@ movhi
	ldrh	r0, [r2, #6]
	strh	r0, [r2, #4]	@ movhi
	ldr	r0, .L92+12
	mov	ip, #1
	str	ip, [r0, #0]
	strh	r1, [r2, #6]	@ movhi
	b	.L86
.L93:
	.align	2
.L92:
	.word	oldButtons
	.word	buttons
	.word	stack
	.word	.LANCHOR0
	.size	opUpdate, .-opUpdate
	.align	2
	.global	computeAdd
	.type	computeAdd, %function
computeAdd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L95
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #0]
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L95+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L96:
	.align	2
.L95:
	.word	stack
	.word	.LANCHOR0
	.size	computeAdd, .-computeAdd
	.align	2
	.global	computeSub
	.type	computeSub, %function
computeSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L98
	ldrh	r1, [r3, #2]
	ldrh	r2, [r3, #0]
	rsb	r2, r2, r1
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L98+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L99:
	.align	2
.L98:
	.word	stack
	.word	.LANCHOR0
	.size	computeSub, .-computeSub
	.align	2
	.global	computeMulti
	.type	computeMulti, %function
computeMulti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101
	ldrh	r1, [r3, #2]
	ldrh	r2, [r3, #0]
	mul	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L101+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L102:
	.align	2
.L101:
	.word	stack
	.word	.LANCHOR0
	.size	computeMulti, .-computeMulti
	.global	__aeabi_uidiv
	.align	2
	.global	computeDiv
	.type	computeDiv, %function
computeDiv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L104
	ldr	r3, .L104+4
	ldrh	r0, [r4, #2]
	ldrh	r1, [r4, #0]
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r4, #0]	@ movhi
	ldrh	r3, [r4, #4]
	strh	r3, [r4, #2]	@ movhi
	ldrh	r3, [r4, #6]
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, .L104+8
	mov	r2, #1
	str	r2, [r3, #0]
	mov	r3, #0	@ movhi
	strh	r3, [r4, #6]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	stack
	.word	__aeabi_uidiv
	.word	.LANCHOR0
	.size	computeDiv, .-computeDiv
	.align	2
	.global	computeBoolAnd
	.type	computeBoolAnd, %function
computeBoolAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L109
	ldrh	r2, [r3, #2]
	cmp	r2, #0
	beq	.L107
	ldrh	r2, [r3, #0]
	subs	r2, r2, #0
	movne	r2, #1
.L107:
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	ldr	r1, .L109+4
	strh	r2, [r3, #4]	@ movhi
	mov	r0, #1
	mov	r2, #0	@ movhi
	str	r0, [r1, #0]
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L110:
	.align	2
.L109:
	.word	stack
	.word	.LANCHOR0
	.size	computeBoolAnd, .-computeBoolAnd
	.align	2
	.global	computeBoolOr
	.type	computeBoolOr, %function
computeBoolOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L114
	ldrh	r2, [r3, #2]
	cmp	r2, #0
	movne	r2, #1
	bne	.L112
	ldrh	r2, [r3, #0]
	subs	r2, r2, #0
	movne	r2, #1
.L112:
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	ldr	r1, .L114+4
	strh	r2, [r3, #4]	@ movhi
	mov	r0, #1
	mov	r2, #0	@ movhi
	str	r0, [r1, #0]
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L115:
	.align	2
.L114:
	.word	stack
	.word	.LANCHOR0
	.size	computeBoolOr, .-computeBoolOr
	.align	2
	.global	computeBoolNot
	.type	computeBoolNot, %function
computeBoolNot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L117
	ldrh	r2, [r3, #0]
	rsbs	r2, r2, #1
	movcc	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L117+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L118:
	.align	2
.L117:
	.word	stack
	.word	.LANCHOR0
	.size	computeBoolNot, .-computeBoolNot
	.align	2
	.global	computeBitAnd
	.type	computeBitAnd, %function
computeBitAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L120
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #0]
	and	r2, r1, r2
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L120+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L121:
	.align	2
.L120:
	.word	stack
	.word	.LANCHOR0
	.size	computeBitAnd, .-computeBitAnd
	.align	2
	.global	computeBitOr
	.type	computeBitOr, %function
computeBitOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L123
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #0]
	orr	r2, r1, r2
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L123+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L124:
	.align	2
.L123:
	.word	stack
	.word	.LANCHOR0
	.size	computeBitOr, .-computeBitOr
	.align	2
	.global	computeBitXor
	.type	computeBitXor, %function
computeBitXor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L126
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #0]
	eor	r2, r1, r2
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L126+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L127:
	.align	2
.L126:
	.word	stack
	.word	.LANCHOR0
	.size	computeBitXor, .-computeBitXor
	.align	2
	.global	computeComp
	.type	computeComp, %function
computeComp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L129
	ldrh	r2, [r3, #0]
	mvn	r2, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L129+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L130:
	.align	2
.L129:
	.word	stack
	.word	.LANCHOR0
	.size	computeComp, .-computeComp
	.align	2
	.global	computeSLeft
	.type	computeSLeft, %function
computeSLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L132
	ldrh	r1, [r3, #2]
	ldrh	r2, [r3, #0]
	mov	r2, r1, asl r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L132+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L133:
	.align	2
.L132:
	.word	stack
	.word	.LANCHOR0
	.size	computeSLeft, .-computeSLeft
	.align	2
	.global	computeSRight
	.type	computeSRight, %function
computeSRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L135
	ldrh	r1, [r3, #2]
	ldrh	r2, [r3, #0]
	mov	r2, r1, asr r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L135+4
	mov	r1, #1
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L136:
	.align	2
.L135:
	.word	stack
	.word	.LANCHOR0
	.size	computeSRight, .-computeSRight
	.align	2
	.global	flow
	.type	flow, %function
flow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L138
	ldrh	r2, [r3, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #4]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L139:
	.align	2
.L138:
	.word	stack
	.size	flow, .-flow
	.align	2
	.global	goToAdd
	.type	goToAdd, %function
goToAdd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L141
	ldr	r5, .L141+4
	sub	sp, sp, #8
	mov	r0, r5
	ldr	r1, [r3, #0]
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r7, .L141+12
	ldr	r8, .L141+16
	ldr	r6, .L141+20
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r7
	mov	r0, #130
	mov	r1, #52
	mov	r2, r5
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r7
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	r2, r5
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r6
	ldr	r3, .L141+24
	str	r4, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToAdd, .-goToAdd
	.align	2
	.global	initCalc
	.type	initCalc, %function
initCalc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, .L144
	mov	lr, #140
	sub	sp, sp, #4
	ldr	r7, .L144+4
	str	lr, [ip, #0]
	mov	lr, #161
	str	lr, [ip, #4]
	mov	r5, #2
	ldr	r8, .L144+8
	mov	lr, #5
	str	lr, [ip, #16]
	ldr	r4, .L144+12
	mov	lr, #0
	mov	r0, r5
	mov	r2, r7
	ldr	fp, .L144+16
	mov	r1, #20
	mov	r3, #1
	str	r5, [ip, #12]
	strb	r5, [ip, #20]
	str	lr, [ip, #24]
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r0, #12
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	sl, .L144+20
	mov	r2, fp
	mov	r0, #22
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r9, .L144+24
	mov	r0, #32
	mov	r1, #10
	ldr	r2, .L144+28
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r2, sl
	mov	r0, #42
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r6, .L144+32
	mov	r2, r9
	mov	r1, #20
	mov	r3, #3
	mov	r0, #82
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	r2, r7
	mov	r1, #20
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r0, #12
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r2, fp
	mov	r0, #22
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r0, #32
	mov	r1, #10
	ldr	r2, .L144+28
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r2, sl
	mov	r0, #42
	mov	r1, #10
	mov	r3, #1
	mov	lr, pc
	bx	r4
	mov	r0, #82
	mov	r1, #20
	mov	r2, r9
	mov	r3, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	bl	goToBin
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	goToAdd
.L145:
	.align	2
.L144:
	.word	cursor
	.word	.LC4
	.word	.LC5
	.word	drawString4
	.word	.LC6
	.word	.LC8
	.word	.LC9
	.word	.LC7
	.word	flipPage
	.size	initCalc, .-initCalc
	.align	2
	.global	goToSub
	.type	goToSub, %function
goToSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L147
	ldr	r4, .L147+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #4]
	ldr	r3, .L147+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L147+12
	ldr	r8, .L147+16
	ldr	r5, .L147+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L147+24
	mov	r2, #1
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L148:
	.align	2
.L147:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToSub, .-goToSub
	.align	2
	.global	goToMulti
	.type	goToMulti, %function
goToMulti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L150
	ldr	r4, .L150+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #8]
	ldr	r3, .L150+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L150+12
	ldr	r8, .L150+16
	ldr	r5, .L150+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L150+24
	mov	r2, #2
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToMulti, .-goToMulti
	.align	2
	.global	goToDiv
	.type	goToDiv, %function
goToDiv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L153
	ldr	r4, .L153+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #12]
	ldr	r3, .L153+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L153+12
	ldr	r8, .L153+16
	ldr	r5, .L153+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L153+24
	mov	r2, #3
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L154:
	.align	2
.L153:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToDiv, .-goToDiv
	.align	2
	.global	goToBoolAnd
	.type	goToBoolAnd, %function
goToBoolAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L156
	ldr	r4, .L156+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #16]
	ldr	r3, .L156+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L156+12
	ldr	r8, .L156+16
	ldr	r5, .L156+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L156+24
	mov	r2, #4
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBoolAnd, .-goToBoolAnd
	.align	2
	.global	goToBoolOr
	.type	goToBoolOr, %function
goToBoolOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L159
	ldr	r4, .L159+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #20]
	ldr	r3, .L159+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L159+12
	ldr	r8, .L159+16
	ldr	r5, .L159+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L159+24
	mov	r2, #5
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBoolOr, .-goToBoolOr
	.align	2
	.global	goToBoolNot
	.type	goToBoolNot, %function
goToBoolNot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L162
	ldr	r4, .L162+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #24]
	ldr	r3, .L162+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L162+12
	ldr	r8, .L162+16
	ldr	r5, .L162+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L162+24
	mov	r2, #6
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L163:
	.align	2
.L162:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBoolNot, .-goToBoolNot
	.align	2
	.global	goToBitAnd
	.type	goToBitAnd, %function
goToBitAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L165
	ldr	r4, .L165+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #28]
	ldr	r3, .L165+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L165+12
	ldr	r8, .L165+16
	ldr	r5, .L165+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L165+24
	mov	r2, #7
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBitAnd, .-goToBitAnd
	.align	2
	.global	goToBitOr
	.type	goToBitOr, %function
goToBitOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L168
	ldr	r4, .L168+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #32]
	ldr	r3, .L168+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L168+12
	ldr	r8, .L168+16
	ldr	r5, .L168+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L168+24
	mov	r2, #8
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L169:
	.align	2
.L168:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBitOr, .-goToBitOr
	.align	2
	.global	goToBitXor
	.type	goToBitXor, %function
goToBitXor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L171
	ldr	r4, .L171+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #36]
	ldr	r3, .L171+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L171+12
	ldr	r8, .L171+16
	ldr	r5, .L171+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L171+24
	mov	r2, #9
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L172:
	.align	2
.L171:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToBitXor, .-goToBitXor
	.align	2
	.global	goToComp
	.type	goToComp, %function
goToComp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L174
	ldr	r4, .L174+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #40]
	ldr	r3, .L174+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L174+12
	ldr	r8, .L174+16
	ldr	r5, .L174+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L174+24
	mov	r2, #10
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L175:
	.align	2
.L174:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToComp, .-goToComp
	.align	2
	.global	goToSLeft
	.type	goToSLeft, %function
goToSLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L177
	ldr	r4, .L177+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #44]
	ldr	r3, .L177+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L177+12
	ldr	r8, .L177+16
	ldr	r5, .L177+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L177+24
	mov	r2, #11
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L178:
	.align	2
.L177:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToSLeft, .-goToSLeft
	.align	2
	.global	goToSRight
	.type	goToSRight, %function
goToSRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L180
	ldr	r4, .L180+4
	sub	sp, sp, #8
	mov	r0, r4
	ldr	r1, [r3, #48]
	ldr	r3, .L180+8
	mov	lr, pc
	bx	r3
	mov	r7, #0
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	ldr	r6, .L180+12
	ldr	r8, .L180+16
	ldr	r5, .L180+20
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #52
	mov	r2, r4
	mov	r3, #2
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #52
	mov	r2, #8
	mov	r3, #12
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, r4
	mov	r3, #2
	mov	r0, #130
	mov	r1, #52
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L180+24
	mov	r2, #12
	str	r2, [r3, #0]
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L181:
	.align	2
.L180:
	.word	.LANCHOR1
	.word	buffer
	.word	strcpy
	.word	drawRect4
	.word	drawString4
	.word	flipPage
	.word	operation
	.size	goToSRight, .-goToSRight
	.align	2
	.global	updateAdd
	.type	updateAdd, %function
updateAdd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L187
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L183
	ldr	r2, .L187+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L185
.L183:
	tst	r3, #2
	beq	.L182
	ldr	r3, .L187+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L186
.L182:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L185:
	bl	computeAdd
	ldr	r3, [r4, #0]
	b	.L183
.L186:
	ldmfd	sp!, {r4, lr}
	b	goToSub
.L188:
	.align	2
.L187:
	.word	oldButtons
	.word	buttons
	.size	updateAdd, .-updateAdd
	.align	2
	.global	updateSub
	.type	updateSub, %function
updateSub:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L194
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L190
	ldr	r2, .L194+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L192
.L190:
	tst	r3, #2
	beq	.L189
	ldr	r3, .L194+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L193
.L189:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L192:
	bl	computeSub
	ldr	r3, [r4, #0]
	b	.L190
.L193:
	ldmfd	sp!, {r4, lr}
	b	goToMulti
.L195:
	.align	2
.L194:
	.word	oldButtons
	.word	buttons
	.size	updateSub, .-updateSub
	.align	2
	.global	updateMulti
	.type	updateMulti, %function
updateMulti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L201
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L197
	ldr	r2, .L201+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L199
.L197:
	tst	r3, #2
	beq	.L196
	ldr	r3, .L201+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L200
.L196:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L199:
	bl	computeMulti
	ldr	r3, [r4, #0]
	b	.L197
.L200:
	ldmfd	sp!, {r4, lr}
	b	goToDiv
.L202:
	.align	2
.L201:
	.word	oldButtons
	.word	buttons
	.size	updateMulti, .-updateMulti
	.align	2
	.global	updateDiv
	.type	updateDiv, %function
updateDiv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L208
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L204
	ldr	r2, .L208+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L206
.L204:
	tst	r3, #2
	beq	.L203
	ldr	r3, .L208+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L207
.L203:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L206:
	bl	computeDiv
	ldr	r3, [r4, #0]
	b	.L204
.L207:
	ldmfd	sp!, {r4, lr}
	b	goToBoolAnd
.L209:
	.align	2
.L208:
	.word	oldButtons
	.word	buttons
	.size	updateDiv, .-updateDiv
	.align	2
	.global	updateBoolAnd
	.type	updateBoolAnd, %function
updateBoolAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L215
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L211
	ldr	r2, .L215+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L213
.L211:
	tst	r3, #2
	beq	.L210
	ldr	r3, .L215+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L214
.L210:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L213:
	bl	computeBoolAnd
	ldr	r3, [r4, #0]
	b	.L211
.L214:
	ldmfd	sp!, {r4, lr}
	b	goToBoolOr
.L216:
	.align	2
.L215:
	.word	oldButtons
	.word	buttons
	.size	updateBoolAnd, .-updateBoolAnd
	.align	2
	.global	updateBoolOr
	.type	updateBoolOr, %function
updateBoolOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L222
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L218
	ldr	r2, .L222+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L220
.L218:
	tst	r3, #2
	beq	.L217
	ldr	r3, .L222+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L221
.L217:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L220:
	bl	computeBoolOr
	ldr	r3, [r4, #0]
	b	.L218
.L221:
	ldmfd	sp!, {r4, lr}
	b	goToBoolNot
.L223:
	.align	2
.L222:
	.word	oldButtons
	.word	buttons
	.size	updateBoolOr, .-updateBoolOr
	.align	2
	.global	updateBoolNot
	.type	updateBoolNot, %function
updateBoolNot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L229
	ldr	r3, [r3, #0]
	tst	r3, #1
	beq	.L225
	ldr	r2, .L229+4
	ldr	r2, [r2, #0]
	ands	r1, r2, #1
	beq	.L227
.L225:
	tst	r3, #2
	bxeq	lr
.L228:
	ldr	r3, .L229+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	bxne	lr
	b	goToBitAnd
.L227:
	ldr	r2, .L229+8
	ldrh	r0, [r2, #0]
	rsbs	r0, r0, #1
	movcc	r0, #0
	strh	r0, [r2, #0]	@ movhi
	ldrh	r0, [r2, #4]
	strh	r0, [r2, #2]	@ movhi
	ldrh	r0, [r2, #6]
	strh	r0, [r2, #4]	@ movhi
	ldr	r0, .L229+12
	mov	ip, #1
	tst	r3, #2
	str	ip, [r0, #0]
	strh	r1, [r2, #6]	@ movhi
	bne	.L228
	bx	lr
.L230:
	.align	2
.L229:
	.word	oldButtons
	.word	buttons
	.word	stack
	.word	.LANCHOR0
	.size	updateBoolNot, .-updateBoolNot
	.align	2
	.global	updateBitAnd
	.type	updateBitAnd, %function
updateBitAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L236
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L232
	ldr	r2, .L236+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L234
.L232:
	tst	r3, #2
	beq	.L231
	ldr	r3, .L236+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L235
.L231:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L234:
	bl	computeBitAnd
	ldr	r3, [r4, #0]
	b	.L232
.L235:
	ldmfd	sp!, {r4, lr}
	b	goToBitOr
.L237:
	.align	2
.L236:
	.word	oldButtons
	.word	buttons
	.size	updateBitAnd, .-updateBitAnd
	.align	2
	.global	updateBitOr
	.type	updateBitOr, %function
updateBitOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L243
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L239
	ldr	r2, .L243+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L241
.L239:
	tst	r3, #2
	beq	.L238
	ldr	r3, .L243+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L242
.L238:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L241:
	bl	computeBitOr
	ldr	r3, [r4, #0]
	b	.L239
.L242:
	ldmfd	sp!, {r4, lr}
	b	goToBitXor
.L244:
	.align	2
.L243:
	.word	oldButtons
	.word	buttons
	.size	updateBitOr, .-updateBitOr
	.align	2
	.global	updateBitXor
	.type	updateBitXor, %function
updateBitXor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L250
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L246
	ldr	r2, .L250+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L248
.L246:
	tst	r3, #2
	beq	.L245
	ldr	r3, .L250+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L249
.L245:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L248:
	bl	computeBitXor
	ldr	r3, [r4, #0]
	b	.L246
.L249:
	ldmfd	sp!, {r4, lr}
	b	goToComp
.L251:
	.align	2
.L250:
	.word	oldButtons
	.word	buttons
	.size	updateBitXor, .-updateBitXor
	.align	2
	.global	updateComp
	.type	updateComp, %function
updateComp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L257
	ldr	r3, [r3, #0]
	tst	r3, #1
	beq	.L253
	ldr	r2, .L257+4
	ldr	r2, [r2, #0]
	ands	r1, r2, #1
	beq	.L255
.L253:
	tst	r3, #2
	bxeq	lr
.L256:
	ldr	r3, .L257+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	bxne	lr
	b	goToSLeft
.L255:
	ldr	r2, .L257+8
	ldrh	r0, [r2, #0]
	mvn	r0, r0
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r2, #0]	@ movhi
	ldrh	r0, [r2, #4]
	strh	r0, [r2, #2]	@ movhi
	ldrh	r0, [r2, #6]
	strh	r0, [r2, #4]	@ movhi
	ldr	r0, .L257+12
	mov	ip, #1
	tst	r3, #2
	str	ip, [r0, #0]
	strh	r1, [r2, #6]	@ movhi
	bne	.L256
	bx	lr
.L258:
	.align	2
.L257:
	.word	oldButtons
	.word	buttons
	.word	stack
	.word	.LANCHOR0
	.size	updateComp, .-updateComp
	.align	2
	.global	updateSLeft
	.type	updateSLeft, %function
updateSLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L264
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L260
	ldr	r2, .L264+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L262
.L260:
	tst	r3, #2
	beq	.L259
	ldr	r3, .L264+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L263
.L259:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L262:
	bl	computeSLeft
	ldr	r3, [r4, #0]
	b	.L260
.L263:
	ldmfd	sp!, {r4, lr}
	b	goToSRight
.L265:
	.align	2
.L264:
	.word	oldButtons
	.word	buttons
	.size	updateSLeft, .-updateSLeft
	.align	2
	.global	updateSRight
	.type	updateSRight, %function
updateSRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L271
	ldr	r3, [r4, #0]
	tst	r3, #1
	beq	.L267
	ldr	r2, .L271+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L269
.L267:
	tst	r3, #2
	beq	.L266
	ldr	r3, .L271+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	beq	.L270
.L266:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L269:
	bl	computeSRight
	ldr	r3, [r4, #0]
	b	.L267
.L270:
	ldmfd	sp!, {r4, lr}
	b	goToAdd
.L272:
	.align	2
.L271:
	.word	oldButtons
	.word	buttons
	.size	updateSRight, .-updateSRight
	.align	2
	.global	operations
	.type	operations, %function
operations:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L289
	ldr	r3, [r3, #0]
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L273
.L288:
	.word	.L275
	.word	.L276
	.word	.L277
	.word	.L278
	.word	.L279
	.word	.L280
	.word	.L281
	.word	.L282
	.word	.L283
	.word	.L284
	.word	.L285
	.word	.L286
	.word	.L287
.L287:
	b	updateSRight
.L273:
	bx	lr
.L275:
	b	updateAdd
.L276:
	b	updateSub
.L277:
	b	updateMulti
.L278:
	b	updateDiv
.L279:
	b	updateBoolAnd
.L280:
	b	updateBoolOr
.L281:
	b	updateBoolNot
.L282:
	b	updateBitAnd
.L283:
	b	updateBitOr
.L284:
	b	updateBitXor
.L285:
	b	updateComp
.L286:
	b	updateSLeft
.L290:
	.align	2
.L289:
	.word	operation
	.size	operations, .-operations
	.align	2
	.global	update
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L298
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L292
.L297:
	.word	.L293
	.word	.L294
	.word	.L295
	.word	.L296
.L296:
	bl	updateHex
	bl	operations
.L292:
	bl	opUpdate
	ldmfd	sp!, {r4, lr}
	b	updateCursor
.L295:
	bl	updateDec
	bl	operations
	b	.L292
.L294:
	bl	updateOct
	bl	operations
	b	.L292
.L293:
	bl	updateBin
	bl	operations
	b	.L292
.L299:
	.align	2
.L298:
	.word	base
	.size	update, .-update
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1040
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	add	r2, r2, #4
	mov	r5, #67108864
	strh	r2, [r5, #0]	@ movhi
	mov	r3, #83886080
	mvn	r2, #32768
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #31	@ movhi
	mov	r1, #0
	strh	r2, [r3, #4]	@ movhi
	mov	r2, #992	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, .L302
	str	r1, [r3, #0]
	bl	initCalc
	ldr	r7, .L302+4
	ldr	r4, .L302+8
	ldr	r6, .L302+12
.L301:
	ldr	r2, [r4, #0]
	ldr	r3, [r5, #304]
	str	r2, [r7, #0]
	str	r3, [r4, #0]
	bl	update
	mov	lr, pc
	bx	r6
	bl	draw
	b	.L301
.L303:
	.align	2
.L302:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.size	main, .-main
	.global	opSign
	.global	changed
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	base,4,4
	.comm	operation,4,4
	.comm	buffer,41,4
	.comm	binbuff0,41,4
	.comm	binbuff1,41,4
	.comm	binbuff2,41,4
	.comm	binbuff3,41,4
	.comm	stackbin0,4,4
	.comm	stackbin1,4,4
	.comm	stackbin2,4,4
	.comm	stackbin3,4,4
	.comm	stack,8,4
	.comm	factor,4,4
	.comm	cursor,28,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	opSign, %object
	.size	opSign, 52
opSign:
	.word	.LC10
	.word	.LC11
	.word	.LC0
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"*\000"
	.space	2
.LC1:
	.ascii	"%016x\000"
	.space	2
.LC2:
	.ascii	"%016d\000"
	.space	2
.LC3:
	.ascii	"%016o\000"
	.space	2
.LC4:
	.ascii	"  Hi, I am a stack calculator!\000"
	.space	1
.LC5:
	.ascii	"Direction Pad: move the cursor\000"
	.space	1
.LC6:
	.ascii	"R: change base   L: swap\000"
	.space	3
.LC7:
	.ascii	"A: operate    B: change operation\000"
	.space	2
.LC8:
	.ascii	"Start: roll down    Select: roll up\000"
.LC9:
	.ascii	"Binary  Octal  Decimal  Hexadecimal\000"
.LC10:
	.ascii	"+\000"
	.space	2
.LC11:
	.ascii	"-\000"
	.space	2
.LC12:
	.ascii	"/\000"
	.space	2
.LC13:
	.ascii	"&&\000"
	.space	1
.LC14:
	.ascii	"||\000"
	.space	1
.LC15:
	.ascii	"!\000"
	.space	2
.LC16:
	.ascii	"&\000"
	.space	2
.LC17:
	.ascii	"|\000"
	.space	2
.LC18:
	.ascii	"^\000"
	.space	2
.LC19:
	.ascii	"~\000"
	.space	2
.LC20:
	.ascii	"<<\000"
	.space	1
.LC21:
	.ascii	">>\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	changed, %object
	.size	changed, 4
changed:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
