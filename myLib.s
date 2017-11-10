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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r0, r0, r0, asl #4
	add	r0, r1, r0, asl #4
	ldr	r3, [r3, #0]
	mov	r0, r0, asl #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4
	add	r3, r1, r0, asl #4
	ldr	r0, .L7
	add	r3, r3, r3, lsr #31
	ldr	ip, [r0, #0]
	bic	r3, r3, #1
	tst	r1, #1
	ldrh	r1, [ip, r3]
	andne	r1, r1, #255
	biceq	r1, r1, #255
	orrne	r2, r1, r2, asl #8
	orreq	r2, r2, r1
	strneh	r2, [ip, r3]	@ movhi
	streqh	r2, [ip, r3]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r0, asl #1
	mov	r0, r0, asl #2
	add	r0, r0, #67108864
	add	ip, r0, #176
	orr	r3, r3, #-2147483648
	str	r1, [r0, #176]
	str	r2, [ip, #4]
	str	r3, [ip, #8]
	bx	lr
	.size	DMANow, .-DMANow
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	sub	sp, sp, #12
	ldrh	ip, [sp, #16]
	cmp	r2, #0
	strh	ip, [sp, #6]	@ movhi
	ble	.L10
	ldr	ip, .L15
	rsb	r0, r0, r0, asl #4
	ldr	ip, [ip, #0]
	add	r1, r1, r0, asl #4
	orr	r4, r3, #-2130706432
	add	r1, ip, r1, asl #1
	mov	r0, #0
	add	r3, sp, #6
	mov	ip, #67108864
.L12:
	add	r0, r0, #1
	cmp	r0, r2
	str	r3, [ip, #212]
	str	r1, [ip, #216]
	str	r4, [ip, #220]
	add	r1, r1, #480
	bne	.L12
.L10:
	add	sp, sp, #12
	ldmfd	sp!, {r4}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r2, #0
	mov	r9, r0
	mov	r4, r1
	mov	r7, r3
	movgt	sl, #0
	ble	.L17
.L21:
	cmp	r7, #0
	addgt	r8, sl, r9
	movgt	r6, #0
	ble	.L22
.L20:
	add	r1, r6, r4
	ldrb	r2, [sp, #32]	@ zero_extendqisi2
	mov	r0, r8
	add	r6, r6, #1
	bl	setPixel4
	cmp	r7, r6
	bgt	.L20
.L22:
	add	sl, sl, #1
	cmp	r5, sl
	bgt	.L21
.L17:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
	.size	drawRect4, .-drawRect4
	.align	2
	.global	drawBackgroundImage3
	.type	drawBackgroundImage3, %function
drawBackgroundImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	mov	r2, #-2147483648
	ldr	r1, [r3, #0]
	add	r2, r2, #38400
	mov	r3, #67108864
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	drawBackgroundImage3, .-drawBackgroundImage3
	.align	2
	.global	drawImage3
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	cmp	r3, #0
	ldr	r4, [sp, #8]
	ble	.L28
	ldr	ip, .L32
	rsb	r1, r1, r1, asl #4
	ldr	ip, [ip, #0]
	add	r1, r2, r1, asl #4
	orr	r5, r4, #-2147483648
	add	r1, ip, r1, asl #1
	mov	r4, r4, asl #1
	mov	ip, #0
	mov	r2, #67108864
.L30:
	add	ip, ip, #1
	cmp	ip, r3
	str	r0, [r2, #212]
	str	r1, [r2, #216]
	add	r0, r0, r4
	str	r5, [r2, #220]
	add	r1, r1, #480
	bne	.L30
.L28:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #-2147483648
	mov	r3, #67108864
	add	r2, r2, #256
	mov	r1, #83886080
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
	.size	loadPalette, .-loadPalette
	.align	2
	.global	fillScreen
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	ldr	r2, .L36
	add	r3, sp, #8
	strh	r0, [r3, #-2]!	@ movhi
	mov	r1, #-2130706432
	ldr	r0, [r2, #0]
	add	r1, r1, #38400
	mov	r2, #67108864
	str	r3, [r2, #212]
	str	r0, [r2, #216]
	str	r1, [r2, #220]
	add	sp, sp, #8
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	fillScreen4
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	ldr	r2, .L39
	add	r3, sp, #8
	orr	r0, r0, r0, asl #8
	strh	r0, [r3, #-2]!	@ movhi
	mov	r1, #-2130706432
	ldr	r0, [r2, #0]
	add	r1, r1, #19200
	mov	r2, #67108864
	str	r3, [r2, #212]
	str	r0, [r2, #216]
	str	r1, [r2, #220]
	add	sp, sp, #8
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	tst	r2, #16
	ldrne	r1, .L44
	ldreq	r1, .L44
	ldrne	r0, [r1, #4]
	ldreq	r0, [r1, #8]
	bicne	r2, r2, #16
	orreq	r2, r2, #16
	strneh	r2, [r3, #0]	@ movhi
	streqh	r2, [r3, #0]	@ movhi
	strne	r0, [r1, #0]
	streq	r0, [r1, #0]
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	waitForVBlank
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L47:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L47
	mov	r2, #67108864
.L49:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L49
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	short2bin
	.type	short2bin, %function
short2bin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	stmfd	sp!, {r4, r5}
	mov	r2, r1
	strb	r3, [r1, #16]
	mov	ip, #1
	mov	r3, #16
	mov	r5, #48
	mov	r4, #49
	b	.L56
.L57:
	mov	ip, ip, asl #1
.L56:
	tst	ip, r0
	strneb	r4, [r2, #15]
	streqb	r5, [r2, #15]
	subs	r3, r3, #1
	sub	r2, r2, #1
	bne	.L57
	mov	r0, r1
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	short2bin, .-short2bin
	.global	videoBuffer
	.global	frontBuffer
	.global	backBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 31) 4.5.0"
