	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawRect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	rsb	r1, r1, r1, lsl #4
	add	r3, r2, r1, lsl #4
	add	r3, r3, r0
	mov	r0, #0
	ldr	r4, .L10
	ldr	r1, [r4]
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L3:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L6
.L4:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L14:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L14
	mov	r2, #67108864
.L15:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L15
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.comm	oldButtons,2,2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
