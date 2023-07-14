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
	.file	"main.c"
	.text
	.align	2
	.global	updateGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	ands	r3, r3, #1
	bne	.L2
	ldr	r2, .L42+4
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L37
.L2:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #2
	bne	.L4
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L38
.L4:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bne	.L6
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L39
.L6:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bne	.L7
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L40
.L7:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L8
	ldr	r2, .L42+4
	ldrh	r2, [r2]
	tst	r2, #32
	ldrne	r2, .L42+8
	strne	r3, [r2]
.L8:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L9
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #16
	movne	r2, #8
	ldrne	r3, .L42+8
	strne	r2, [r3]
.L9:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L10
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L41
.L10:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bxne	lr
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #128
	bxeq	lr
	ldr	r2, .L42+12
	ldr	r3, [r2, #4]
	cmp	r3, #1
	subgt	r3, r3, #1
	strgt	r3, [r2, #4]
	bx	lr
.L41:
	ldr	r2, .L42+12
	ldr	r3, [r2, #4]
	cmp	r3, #4
	addle	r3, r3, #1
	strle	r3, [r2, #4]
	b	.L10
.L40:
	ldr	r2, .L42+8
	ldr	r3, [r2, #4]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2, #4]
	b	.L7
.L39:
	ldr	r2, .L42+12
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L6
.L38:
	ldr	r2, .L42+8
	ldr	r3, [r2]
	cmp	r3, #0
	moveq	r3, #8
	subne	r3, r3, #1
	str	r3, [r2]
	b	.L4
.L37:
	ldr	r1, .L42+8
	ldr	r2, [r1]
	cmp	r2, #8
	addne	r2, r2, #1
	streq	r3, [r1]
	strne	r2, [r1]
	b	.L2
.L43:
	.align	2
.L42:
	.word	67109120
	.word	oldButtons
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	updateGame, .-updateGame
	.align	2
	.global	drawClean
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawClean, %function
drawClean:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L46
	sub	sp, sp, #8
	ldr	r5, .L46+4
	str	r3, [sp]
	mov	r2, #34
	mov	r3, #6
	mov	r1, #47
	mov	r0, #15
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #15
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #48
	mov	r0, #17
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mvn	r1, #32768
	ldr	r6, .L46+8
	ldr	r3, [r6]
	add	r3, r3, #20480
	add	r0, r3, #2592
	add	r2, r3, #3552
	strh	r4, [r0]	@ movhi
	mov	r3, #5
	strh	r1, [r2]	@ movhi
	mov	r0, #19
	mov	r2, #1
	mov	r1, #48
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #21
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	add	r3, r2, #23040
	add	r2, r2, #24832
	strh	r4, [r3, #40]	@ movhi
	mov	r1, #48
	strh	r4, [r2, #168]	@ movhi
	mov	r3, #1
	mov	r2, #3
	mov	r0, #23
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #52
	mov	r0, #23
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #49
	mov	r0, #24
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #27
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	mov	r2, #1
	mov	r1, #49
	mov	r0, #28
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #29
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #30
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #48
	mov	r0, #32
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #33
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #36
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #48
	mov	r0, #37
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #50
	mov	r0, #37
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #52
	mov	r0, #37
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #48
	mov	r0, #40
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #48
	mov	r0, #42
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r1, [r6]
	add	r3, r1, #20480
	add	r0, r3, #2640
	add	r2, r3, #4080
	add	r1, r1, #24832
	strh	r4, [r0, #2]	@ movhi
	mov	r3, #1
	strh	r4, [r2, #2]	@ movhi
	mov	r0, #44
	strh	r4, [r1, #212]	@ movhi
	mov	r2, #3
	mov	r1, #48
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #50
	mov	r0, #44
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #52
	mov	r0, #44
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, #48
	ldr	r3, [r6]
	add	r3, r3, #20480
	add	r2, r3, #3120
	add	r3, r3, #4080
	strh	r4, [r2, #8]	@ movhi
	mov	r0, r1
	strh	r4, [r3, #12]	@ movhi
	mov	r2, #1
	mov	r3, #3
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	add	r3, r3, #24832
	strh	r4, [r3, #224]	@ movhi
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	32767
	.word	drawRect
	.word	videoBuffer
	.size	drawClean, .-drawClean
	.align	2
	.global	drawP
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawP, %function
drawP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	mov	r4, #31
	ldr	r5, .L50
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #15
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #15
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #47
	mov	r0, #17
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L50+4
	ldr	r3, [r3]
	add	r2, r3, #22528
	add	r3, r3, #23552
	strh	r4, [r2, #64]	@ movhi
	strh	r4, [r3]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	drawRect
	.word	videoBuffer
	.size	drawP, .-drawP
	.align	2
	.global	drawO
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawO, %function
drawO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r4, .L54
	ldr	r5, .L54+4
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #19
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #19
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #21
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L54+8
	ldr	r3, [r3]
	add	r3, r3, #20480
	add	r2, r3, #2112
	add	r3, r3, #4032
	strh	r4, [r2, #8]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	5759
	.word	drawRect
	.word	videoBuffer
	.size	drawO, .-drawO
	.align	2
	.global	drawI
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawI, %function
drawI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r5, .L58
	ldr	r4, .L58+4
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #23
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #3
	mov	r1, #47
	mov	r0, #23
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #3
	mov	r1, #51
	mov	r0, #23
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #1
	mov	r1, #48
	mov	r0, #24
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	1023
	.word	drawRect
	.size	drawI, .-drawI
	.align	2
	.global	drawN
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawN, %function
drawN:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	mov	r5, #992
	ldr	r4, .L62
	str	r3, [sp]
	mov	r2, #4
	mov	r3, #6
	mov	r1, #47
	mov	r0, #27
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #27
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #1
	mov	r1, #48
	mov	r0, #28
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #1
	mov	r1, #49
	mov	r0, #29
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	drawRect
	.size	drawN, .-drawN
	.align	2
	.global	drawT
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawT, %function
drawT:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r5, .L66
	ldr	r4, .L66+4
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #3
	mov	r1, #47
	mov	r0, #32
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #33
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	32736
	.word	drawRect
	.size	drawT, .-drawT
	.align	2
	.global	drawE
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawE, %function
drawE:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	mov	r5, #31744
	ldr	r4, .L70
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #36
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #36
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #47
	mov	r0, #37
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #49
	mov	r0, #37
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #51
	mov	r0, #37
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	drawRect
	.size	drawE, .-drawE
	.align	2
	.global	drawR
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawR, %function
drawR:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r4, .L74
	ldr	r5, .L74+4
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #40
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r2, #1
	mov	r1, #47
	mov	r0, #40
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #47
	mov	r0, #42
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L74+8
	ldr	r3, [r3]
	add	r3, r3, #20480
	add	r1, r3, #2160
	add	r2, r3, #3600
	add	r3, r3, #4080
	strh	r4, [r1, #2]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	31923
	.word	drawRect
	.word	videoBuffer
	.size	drawR, .-drawR
	.align	2
	.global	drawS
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawS, %function
drawS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r4, .L78
	ldr	r5, .L78+4
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #6
	mov	r1, #47
	mov	r0, #44
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #47
	mov	r0, #44
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #49
	mov	r0, #44
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #51
	mov	r0, #44
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L78+8
	ldr	r3, [r3]
	add	r3, r3, #20480
	add	r2, r3, #2640
	add	r3, r3, #3600
	strh	r4, [r2, #8]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	31775
	.word	drawRect
	.word	videoBuffer
	.size	drawS, .-drawS
	.align	2
	.global	drawX
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawX, %function
drawX:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawClean
	mov	r3, #0
	ldr	r4, .L82
	str	r3, [sp]
	ldr	r5, .L82+4
	mov	r3, #6
	mov	r2, #1
	mov	r1, #47
	mov	r0, #48
	mov	lr, pc
	bx	r5
	mov	r3, #3
	mov	r2, #1
	mov	r1, #47
	mov	r0, #48
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L82+8
	ldr	r3, [r3]
	add	r3, r3, #24576
	strh	r4, [r3]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	24127
	.word	drawRect
	.word	videoBuffer
	.size	drawX, .-drawX
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L96
	ldr	r3, [r3]
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L84
.L87:
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L86
.L86:
	b	drawX
.L95:
	b	drawP
.L94:
	b	drawO
.L93:
	b	drawI
.L92:
	b	drawN
.L91:
	b	drawT
.L90:
	b	drawE
.L89:
	b	drawR
.L88:
	b	drawS
.L84:
	bx	lr
.L97:
	.align	2
.L96:
	.word	.LANCHOR0
	.size	draw, .-draw
	.align	2
	.global	drawClair
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawClair, %function
drawClair:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r7, .L100
	ldr	r2, [r7]
	ldr	ip, .L100+4
	add	r0, r2, #45056
	add	r3, r2, #40960
	add	r1, r0, #1680
	add	r5, r0, #2640
	add	r6, r0, #3136
	add	r8, r0, #3120
	strh	ip, [r6, #8]	@ movhi
	add	lr, r2, #44288
	strh	ip, [r1, #10]	@ movhi
	strh	ip, [r1, #8]	@ movhi
	add	r4, r2, #40448
	strh	ip, [r5, #8]	@ movhi
	add	r2, r3, #1936
	strh	ip, [r8, #8]	@ movhi
	add	r1, r3, #2416
	strh	ip, [r5, #6]	@ movhi
	add	r6, r3, #2896
	add	r5, r3, #1456
	sub	sp, sp, #12
	strh	ip, [r6, #4]	@ movhi
	add	r9, r3, #3312
	strh	ip, [r1, #4]	@ movhi
	add	r8, r0, #668
	strh	ip, [r2, #4]	@ movhi
	add	r6, r0, #672
	strh	ip, [r1, #2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	ip, [r2, #6]	@ movhi
	strh	ip, [r1, #6]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	add	r1, r3, #3792
	strh	ip, [r5, #8]	@ movhi
	strh	ip, [r5, #6]	@ movhi
	ldr	r5, .L100+8
	strh	ip, [r3, #14]	@ movhi
	strh	ip, [r3, #16]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	mov	r2, #8
	strh	ip, [r4, #50]	@ movhi
	strh	ip, [r4, #52]	@ movhi
	strh	ip, [r4, #54]	@ movhi
	mov	r3, #3
	ldr	r4, .L100+40
	strh	ip, [r9, #12]	@ movhi
	strh	ip, [r9, #14]	@ movhi
	strh	ip, [lr]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	strh	ip, [r1, #14]	@ movhi
	strh	ip, [r1, #10]	@ movhi
	strh	ip, [r0, #188]	@ movhi
	strh	ip, [r0, #190]	@ movhi
	mov	r1, #96
	strh	ip, [r0, #186]	@ movhi
	strh	ip, [r0, #184]	@ movhi
	strh	ip, [r8]	@ movhi
	strh	ip, [r8, #2]	@ movhi
	mov	r0, #59
	strh	ip, [r6]	@ movhi
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #6
	mov	r2, #4
	mov	r1, #71
	mov	r0, #82
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #72
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #70
	mov	r0, #84
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #2
	mov	r1, #75
	mov	r0, #86
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #1
	mov	r1, #72
	mov	r0, #86
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #77
	mov	r0, #85
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #77
	mov	r0, #84
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #37120
	add	r3, r3, #32768
	add	r0, r3, #3392
	add	r1, r3, #2912
	strh	r5, [r2, #6]	@ movhi
	mov	r3, #4
	strh	r5, [r0, #2]	@ movhi
	mov	r2, #3
	strh	r5, [r1, #2]	@ movhi
	mov	r0, #72
	str	r5, [sp]
	mov	r1, #49
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #71
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #75
	mov	lr, pc
	bx	r4
	mov	r3, #3
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #37
	mov	r0, #73
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #2
	mov	r1, #38
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #5
	mov	r1, #43
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #45
	mov	r0, #74
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, [r7]
	ldr	r6, .L100+12
	add	r1, r2, #20480
	add	r2, r2, #16384
	add	lr, r1, #1744
	add	ip, r2, #3920
	add	r0, r2, #3440
	add	r1, r1, #316
	strh	r5, [lr, #6]	@ movhi
	mov	r2, r3
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r0, #10]	@ movhi
	mov	r1, #72
	strh	r5, [ip, #10]	@ movhi
	mov	r0, #73
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #32768
	add	r3, r3, #36864
	add	ip, r3, #2192
	add	lr, r3, #1712
	add	r8, r2, #1456
	add	r5, r2, #3376
	add	r1, r3, #2656
	add	r0, r3, #1232
	add	r2, r2, #1936
	strh	r6, [r8, #2]	@ movhi
	mov	r3, #2
	strh	r6, [r5, #4]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	strh	r6, [r1, #14]	@ movhi
	mov	r2, #1
	strh	r6, [r0]	@ movhi
	mov	r1, #41
	strh	r6, [lr]	@ movhi
	mov	r0, #73
	strh	r6, [ip]	@ movhi
	strh	r6, [ip, #2]	@ movhi
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #70
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #43
	mov	r0, #80
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #20480
	add	ip, r3, #20224
	add	lr, r2, #1264
	add	r0, r3, #24576
	add	r1, r2, #1744
	strh	r6, [ip, #88]	@ movhi
	mov	r3, #1
	strh	r6, [lr, #14]	@ movhi
	mov	r2, #2
	strh	r6, [r1, #12]	@ movhi
	strh	r6, [r0, #64]	@ movhi
	mov	r1, #47
	str	r6, [sp]
	mov	r0, #76
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	ldr	r5, .L100+16
	add	r1, r2, #32768
	add	r3, r2, #36864
	add	r6, r1, #3856
	add	ip, r1, #2912
	strh	r5, [r6, #4]	@ movhi
	strh	r5, [ip]	@ movhi
	add	r6, r1, #3872
	add	ip, r3, #260
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [ip]	@ movhi
	add	r6, r3, #740
	add	ip, r3, #1216
	strh	r5, [r6, #2]	@ movhi
	add	lr, r2, #15936
	strh	r5, [ip, #8]	@ movhi
	add	r0, r2, #16384
	add	r6, r3, #2176
	add	r2, r2, #20480
	add	ip, r3, #2656
	strh	r5, [r6, #10]	@ movhi
	add	r9, r0, #2960
	strh	r5, [ip, #12]	@ movhi
	add	r8, r0, #3440
	add	ip, r2, #1744
	add	r6, r2, #796
	add	r1, r1, #1952
	add	r3, r3, #752
	add	r0, r0, #3936
	strh	r5, [r1, #12]	@ movhi
	mov	r2, #2
	strh	r5, [r3]	@ movhi
	mov	r1, #52
	strh	r5, [lr, #36]	@ movhi
	mov	r3, #1
	strh	r5, [r9, #6]	@ movhi
	strh	r5, [r8, #8]	@ movhi
	strh	r5, [r0]	@ movhi
	strh	r5, [r6, #2]	@ movhi
	mov	r0, #70
	strh	r5, [ip, #14]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #46
	mov	r0, #73
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #32
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #34
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #50
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #52
	mov	r0, #75
	mov	lr, pc
	bx	r4
	ldr	ip, [r7]
	ldr	r6, .L100+20
	add	r3, ip, #20480
	add	lr, r3, #3184
	add	ip, ip, #15936
	add	r8, r3, #2224
	add	r2, r3, #2704
	add	r1, r3, #2688
	add	r0, r3, #2208
	strh	r5, [r8, #6]	@ movhi
	mov	r3, #2
	strh	r5, [lr, #6]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r1, #12]	@ movhi
	mov	r2, #1
	strh	r5, [r0, #14]	@ movhi
	mov	r1, #34
	strh	r6, [ip, #38]	@ movhi
	mov	r0, #66
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #46
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #47
	mov	r0, #72
	mov	lr, pc
	bx	r4
	mvn	ip, #32768
	ldr	r3, [r7]
	ldr	r5, .L100+24
	add	r2, r3, #20480
	add	r3, r3, #16384
	add	lr, r2, #2704
	add	r8, r2, #2688
	add	r1, r3, #3440
	add	r2, r2, #3184
	add	r0, r3, #3920
	strh	r6, [r8, #14]	@ movhi
	mov	r3, #4
	strh	r6, [lr, #6]	@ movhi
	strh	ip, [r2, #12]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	strh	ip, [r1, #6]	@ movhi
	mov	r2, #5
	strh	ip, [r0, #6]	@ movhi
	mov	r1, #65
	str	r5, [sp]
	mov	r0, #75
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #64
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #52
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #53
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #41
	mov	r0, #63
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #38
	mov	r0, #58
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #31
	mov	r0, #56
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #48
	mov	r0, #60
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #31
	mov	r0, #56
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #50
	mov	r0, #63
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #51
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #6
	mov	r1, #30
	mov	r0, #58
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #2
	mov	r1, #32
	mov	r0, #56
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #6
	mov	r2, #2
	mov	r1, #32
	mov	r0, #54
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #5
	mov	r2, #1
	mov	r1, #33
	mov	r0, #53
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #2
	mov	r1, #35
	mov	r0, #51
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #16384
	add	r1, r3, #30208
	add	r3, r3, #32768
	add	lr, r3, #992
	add	ip, r3, #504
	add	r6, r2, #996
	add	r0, r3, #1456
	strh	r5, [r6]	@ movhi
	mov	r3, #2
	strh	r5, [r2, #40]	@ movhi
	strh	r5, [r1, #186]	@ movhi
	mov	r2, #3
	strh	r5, [r0, #14]	@ movhi
	mov	r1, #69
	strh	r5, [lr, #2]	@ movhi
	mov	r0, #78
	strh	r5, [ip, #2]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #67
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #54
	mov	r0, #83
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #49
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #60
	mov	lr, pc
	bx	r4
	ldr	ip, [r7]
	add	r3, ip, #24576
	add	lr, r3, #504
	add	r0, ip, #20736
	add	r2, r3, #500
	add	ip, ip, #15936
	add	r1, r3, #2464
	strh	r5, [lr, #2]	@ movhi
	mov	r3, #1
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	mov	r2, #6
	strh	r5, [r0, #48]	@ movhi
	mov	r1, #37
	strh	r5, [ip, #34]	@ movhi
	mov	r0, #58
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #38
	mov	r0, #53
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #39
	mov	r0, #55
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #31
	mov	r0, #64
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #33
	mov	r0, #64
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #6
	mov	r1, #40
	mov	r0, #66
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #41
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #5
	mov	r1, #43
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #39
	mov	r0, #70
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #34
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #6
	mov	r2, #3
	mov	r1, #33
	mov	r0, #69
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #4
	mov	r1, #32
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #5
	mov	r1, #32
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #2
	mov	r1, #36
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #36
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #40
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #31
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	r2, [r7]
	add	r2, r2, #16384
	add	r0, r2, #1040
	add	r1, r2, #560
	strh	r5, [r0, #12]	@ movhi
	mov	r2, r3
	strh	r5, [r1]	@ movhi
	mov	r0, #76
	str	r5, [sp]
	mov	r1, #33
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #35
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #35
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #44
	mov	r0, #70
	mov	lr, pc
	bx	r4
	ldr	ip, [r7]
	ldr	r5, .L100+28
	add	r3, ip, #32768
	add	lr, r3, #1472
	add	r0, ip, #33280
	strh	r5, [r0, #2]	@ movhi
	add	r1, ip, #28672
	strh	r5, [lr]	@ movhi
	add	r0, r3, #984
	add	lr, r3, #504
	strh	r5, [r0, #2]	@ movhi
	add	r6, ip, #16384
	strh	r5, [lr]	@ movhi
	add	r0, r3, #1456
	add	lr, r1, #1712
	add	r8, r1, #2192
	add	r3, r3, #980
	strh	r5, [r0, #8]	@ movhi
	strh	r5, [lr, #4]	@ movhi
	add	r0, r1, #280
	strh	r5, [r8, #6]	@ movhi
	add	r1, r6, #568
	strh	r5, [r3, #2]	@ movhi
	add	r3, r6, #1040
	strh	r5, [r3, #4]	@ movhi
	strh	r5, [r3]	@ movhi
	add	r2, ip, #21248
	strh	r5, [r1, #2]	@ movhi
	add	ip, ip, #12288
	add	r8, r6, #2912
	add	r1, r6, #516
	strh	r5, [r2, #16]	@ movhi
	add	r3, ip, #1248
	strh	r5, [r8, #14]	@ movhi
	add	r2, ip, #760
	strh	r5, [r1]	@ movhi
	add	r1, ip, #3152
	add	ip, ip, #2192
	strh	r5, [r6, #38]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	strh	r5, [r2]	@ movhi
	mov	r3, #2
	strh	r5, [r1, #8]	@ movhi
	mov	r2, #1
	strh	r5, [r0, #2]	@ movhi
	mov	r1, #32
	strh	r5, [lr, #8]	@ movhi
	mov	r0, #45
	strh	r5, [ip, #10]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #2
	mov	r1, #66
	mov	r0, #72
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #64
	mov	r0, #73
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #63
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #63
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #70
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #68
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #75
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #58
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #37
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #5
	mov	r1, #45
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #36
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #7
	mov	r1, #30
	mov	r0, #46
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #29
	mov	r0, #50
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #28
	mov	r0, #44
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #29
	mov	r0, #44
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #38
	mov	r0, #49
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #4
	mov	r1, #39
	mov	r0, #51
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #4
	mov	r1, #38
	mov	r0, #49
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #35
	mov	r0, #47
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #37
	mov	r0, #48
	ldr	r6, .L100+32
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #34
	mov	r0, #47
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #40
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #26
	mov	r0, #43
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	b	.L101
.L102:
	.align	2
.L100:
	.word	videoBuffer
	.word	16803
	.word	24415
	.word	16027
	.word	12791
	.word	18303
	.word	27402
	.word	26217
	.word	17827
	.word	11492
	.word	drawRect
	.word	videoBuffer
	.word	23047
	.word	9414
.L101:
	mov	r1, #28
	mov	r0, #46
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #34
	mov	r0, #49
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #33
	mov	r0, #51
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #29
	mov	r0, #48
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #27
	mov	r0, #49
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #31
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #32
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #31
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #30
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #31
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #42
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #41
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #39
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #49
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #51
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #52
	mov	r0, #64
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #39
	mov	r0, #66
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #36
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #37
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #35
	mov	r0, #73
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #37
	mov	r0, #78
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #57
	mov	r0, #78
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #60
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #66
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #70
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #71
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #65
	mov	r0, #83
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #30
	mov	r0, #53
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #56
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #32
	mov	r0, #69
	mov	lr, pc
	bx	r4
	mov	ip, r6
	ldr	r3, [r7]
	add	r2, r3, #24576
	add	r1, r3, #20480
	add	r4, r2, #504
	strh	r6, [r2, #22]	@ movhi
	add	r5, r1, #3632
	strh	r6, [r4]	@ movhi
	add	r4, r1, #2672
	strh	r6, [r5, #10]	@ movhi
	add	lr, r3, #16384
	strh	r6, [r4, #12]	@ movhi
	add	r5, r1, #3648
	add	r4, r1, #776
	strh	r6, [r5, #4]	@ movhi
	add	r9, lr, #3920
	strh	r6, [r4, #2]	@ movhi
	add	r5, lr, #2960
	add	r4, lr, #2944
	add	r1, r1, #304
	strh	r6, [r9]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r6, [r9, #4]	@ movhi
	add	r1, r3, #15040
	strh	r6, [r5, #4]	@ movhi
	strh	r6, [r4, #2]	@ movhi
	add	r4, lr, #1040
	strh	r6, [r4, #6]	@ movhi
	strh	r6, [r4, #10]	@ movhi
	strh	r6, [r1, #6]	@ movhi
	add	r1, lr, #2976
	strh	r6, [r9, #14]	@ movhi
	strh	r6, [r1]	@ movhi
	add	r1, r3, #21760
	strh	r6, [r1, #4]	@ movhi
	add	r1, r2, #540
	strh	r6, [r2, #60]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	add	r1, r2, #548
	strh	r6, [r2, #68]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	add	r1, r3, #25600
	strh	r6, [r1, #8]	@ movhi
	add	r1, r2, #2928
	strh	r6, [r1, #8]	@ movhi
	add	r7, r3, #28672
	add	r1, r2, #3888
	strh	r6, [r1, #10]	@ movhi
	add	r1, r7, #1232
	strh	r6, [r1, #12]	@ movhi
	add	r8, r3, #32768
	add	r1, r2, #3904
	add	r4, r7, #1248
	add	r2, r2, #2944
	add	r0, r3, #12288
	strh	r6, [r1]	@ movhi
	add	r9, r8, #516
	strh	r6, [r2]	@ movhi
	add	r1, r7, #1728
	strh	r6, [r4, #2]	@ movhi
	add	r7, r8, #500
	add	r4, r8, #1472
	ldr	r5, .L100+36
	strh	r6, [r1, #4]	@ movhi
	add	r2, r0, #760
	strh	r6, [r8, #40]	@ movhi
	add	r1, r3, #14016
	strh	ip, [r9, #2]	@ movhi
	add	r6, r0, #756
	strh	ip, [r4, #2]	@ movhi
	strh	ip, [r7, #2]	@ movhi
	add	r4, r0, #1248
	add	r7, r0, #2192
	strh	ip, [r6, #2]	@ movhi
	add	r8, r0, #2672
	strh	ip, [r2, #2]	@ movhi
	add	r6, r0, #2224
	strh	ip, [r4, #6]	@ movhi
	add	r2, r0, #3152
	strh	ip, [r1, #8]	@ movhi
	add	r0, r3, #14528
	strh	ip, [r7, #8]	@ movhi
	add	r1, lr, #1456
	add	r7, r3, #14976
	strh	ip, [r8, #10]	@ movhi
	mov	r3, #2
	strh	ip, [r2, #6]	@ movhi
	strh	ip, [lr, #28]	@ movhi
	mov	r2, #1
	strh	ip, [r1, #14]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	r1, #28
	strh	ip, [r4, #2]	@ movhi
	mov	r0, #43
	ldr	r4, .L100+40
	strh	ip, [r7, #14]	@ movhi
	strh	ip, [r6, #2]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #33
	mov	r0, #43
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #35
	mov	r0, #46
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #6
	mov	r1, #29
	mov	r0, #58
	ldr	r7, .L100+44
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #30
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #34
	mov	r0, #67
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	add	r1, r2, #12288
	add	r3, r2, #16384
	add	ip, r1, #2672
	add	r0, r1, #3168
	strh	r5, [ip, #8]	@ movhi
	add	lr, r1, #3680
	strh	r5, [r3, #26]	@ movhi
	add	ip, r3, #1504
	strh	r5, [r0, #10]	@ movhi
	add	r8, r1, #2224
	add	r6, r3, #2928
	add	r1, r3, #2448
	add	r0, r3, #1968
	add	r2, r2, #14976
	strh	r5, [r2, #12]	@ movhi
	mov	r3, #1
	strh	r5, [r8]	@ movhi
	mov	r2, #3
	strh	r5, [r6]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	strh	r5, [r0, #8]	@ movhi
	mov	r1, #40
	strh	r5, [ip]	@ movhi
	mov	r0, #62
	strh	r5, [lr, #8]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #41
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #46
	mov	r0, #68
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #45
	mov	r0, #67
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #38
	mov	r0, #60
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #49
	mov	r0, #60
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #52
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #47
	mov	r0, #60
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	ip, r3, #20480
	add	r2, r3, #24576
	add	r0, ip, #2672
	add	lr, ip, #3632
	strh	r5, [r0, #6]	@ movhi
	add	r1, r3, #16384
	strh	r5, [r2, #26]	@ movhi
	add	r3, r3, #21760
	strh	r5, [lr, #12]	@ movhi
	add	r6, r2, #988
	add	r0, ip, #3648
	add	lr, ip, #1760
	strh	r5, [r6]	@ movhi
	add	r8, r1, #2016
	strh	r5, [r2, #32]	@ movhi
	add	r6, r1, #3456
	strh	r5, [r0, #2]	@ movhi
	add	r2, r1, #2976
	strh	r5, [r3, #2]	@ movhi
	add	r0, r1, #3936
	strh	r5, [lr, #4]	@ movhi
	add	lr, ip, #804
	add	ip, ip, #324
	strh	r5, [r3, #6]	@ movhi
	mov	r1, #54
	strh	r5, [r8, #4]	@ movhi
	mov	r3, #1
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r6, #10]	@ movhi
	mov	r2, #2
	strh	r5, [r0, #8]	@ movhi
	strh	r5, [lr]	@ movhi
	mov	r0, #79
	strh	r5, [ip]	@ movhi
	strh	r5, [ip, #2]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #55
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #56
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #59
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #62
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #64
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #65
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #67
	mov	r0, #83
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #68
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #69
	mov	r0, #84
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #70
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #71
	mov	r0, #77
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	add	r3, r2, #20480
	add	lr, r2, #25600
	add	ip, r3, #1264
	add	r1, r2, #20224
	add	r6, r3, #776
	add	r2, r3, #292
	add	r0, r3, #784
	strh	r5, [r1, #64]	@ movhi
	mov	r3, #3
	strh	r5, [r2, #2]	@ movhi
	mov	r1, #39
	strh	r5, [r6]	@ movhi
	mov	r2, #1
	strh	r5, [r0, #2]	@ movhi
	strh	r5, [ip, #2]	@ movhi
	mov	r0, #78
	strh	r5, [lr, #2]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #63
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #65
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #69
	mov	r0, #82
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #54
	mov	r0, #84
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #60
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #67
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #60
	mov	r0, #81
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #56
	mov	r0, #83
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #58
	mov	r0, #77
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #28928
	add	r3, r3, #24576
	add	r0, r3, #2944
	add	r1, r3, #3424
	strh	r5, [r2, #22]	@ movhi
	mov	r3, #4
	strh	r5, [r0, #2]	@ movhi
	mov	r2, #1
	strh	r5, [r1]	@ movhi
	mov	r0, #91
	str	r5, [sp]
	mov	r1, #94
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #90
	mov	r0, #93
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #93
	mov	r0, #94
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #92
	mov	r0, #90
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #99
	mov	r2, r3
	mov	r0, r1
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r0, r3, #40960
	add	ip, r3, #45056
	add	r2, r0, #1456
	strh	r5, [r2, #4]	@ movhi
	add	r6, r0, #2896
	add	r2, ip, #1680
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	add	r6, ip, #732
	add	r2, ip, #1216
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r2]	@ movhi
	add	r6, ip, #1696
	add	r2, ip, #2176
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	add	r6, ip, #3136
	add	r2, ip, #2640
	strh	r5, [r2, #14]	@ movhi
	add	r1, r3, #23040
	strh	r5, [r6, #2]	@ movhi
	add	r6, ip, #1616
	strh	r5, [r2, #10]	@ movhi
	add	r8, ip, #1152
	strh	r5, [r1, #126]	@ movhi
	add	r2, ip, #2112
	strh	r5, [r6, #10]	@ movhi
	add	r1, r0, #3808
	add	r6, ip, #672
	strh	r5, [r2]	@ movhi
	add	lr, r3, #33536
	strh	r5, [r8, #4]	@ movhi
	add	r3, r3, #44288
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r1]	@ movhi
	add	r6, r0, #2832
	add	r1, r0, #3312
	add	r0, r0, #3792
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r2, #6]	@ movhi
	mov	r3, #1
	strh	r5, [r6, #12]	@ movhi
	mov	r2, #4
	strh	r5, [r1, #10]	@ movhi
	strh	r5, [r0, #8]	@ movhi
	mov	r1, #95
	strh	r5, [ip, #182]	@ movhi
	mov	r0, #58
	strh	r5, [lr, #216]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #96
	mov	r0, #62
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	r1, [r7]
	add	r2, r1, #20480
	add	r5, r5, #75
	add	ip, r1, #19200
	add	r0, r1, #32768
	add	r6, r1, #36864
	add	lr, r1, #24576
	add	r1, r2, #2240
	strh	r5, [r1, #4]	@ movhi
	add	r1, r2, #2720
	strh	r5, [r1, #2]	@ movhi
	add	r1, lr, #1012
	strh	r5, [lr, #66]	@ movhi
	add	r2, r2, #2224
	strh	r5, [r1]	@ movhi
	add	r1, r0, #1472
	strh	r5, [r2, #12]	@ movhi
	strh	r5, [r1, #12]	@ movhi
	add	r2, r0, #2912
	add	r1, r6, #1712
	strh	r5, [r2, #14]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	add	r2, r6, #2192
	add	r1, r6, #1696
	add	lr, lr, #1968
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r1, #8]	@ movhi
	add	r2, r0, #3392
	add	r1, r0, #3376
	add	r0, r0, #1936
	strh	r5, [r2]	@ movhi
	strh	r5, [r6, #244]	@ movhi
	mov	r2, r3
	strh	r5, [r1, #6]	@ movhi
	strh	r5, [r0, #10]	@ movhi
	mov	r1, #56
	strh	r5, [lr, #4]	@ movhi
	mov	r0, #74
	strh	r5, [ip, #146]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #2
	mov	r1, #57
	mov	r0, #73
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #46
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #48
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #42
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #45
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #73
	mov	r0, #76
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #72
	mov	r0, #79
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	r6, .L100+48
	mov	r2, r3
	str	r6, [sp]
	mov	r1, #63
	mov	r0, #80
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #66
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #55
	mov	r0, #79
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #54
	mov	r0, #81
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #53
	mov	r0, #79
	mov	lr, pc
	bx	r4
	mov	r1, #91
	ldr	r3, [r7]
	add	r0, r3, #32256
	add	r2, r3, #43264
	add	r3, r3, #45056
	add	lr, r3, #1696
	add	ip, r3, #2656
	add	r5, r3, #732
	strh	r6, [r0, #68]	@ movhi
	mov	r3, #3
	strh	r6, [r2, #120]	@ movhi
	mov	r0, r1
	strh	r6, [r5]	@ movhi
	mov	r2, #2
	strh	r6, [lr]	@ movhi
	strh	r6, [ip, #4]	@ movhi
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #4
	mov	r2, #2
	mov	r1, #93
	mov	r0, #92
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #2
	mov	r1, #96
	mov	r0, #94
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #98
	mov	r0, #96
	ldr	r5, .L100+52
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #98
	mov	r0, #91
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #100
	mov	r0, #98
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #82
	mov	r0, #84
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #5
	mov	r1, #83
	mov	r0, #85
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #4
	mov	r1, #82
	mov	r0, #88
	mov	lr, pc
	bx	r4
	mov	r1, #87
	str	r5, [sp]
	mov	r0, r1
	mov	r3, #1
	mov	r2, #4
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #85
	mov	r0, #90
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	add	r3, r2, #36864
	add	r0, r2, #41216
	add	r1, r2, #23552
	add	lr, r3, #1712
	add	r2, r2, #24576
	add	ip, r3, #2192
	strh	r5, [lr, #4]	@ movhi
	add	r9, r2, #540
	strh	r5, [ip, #6]	@ movhi
	add	lr, r2, #2928
	add	ip, r2, #2448
	add	r8, r2, #544
	add	r6, r2, #1016
	add	r3, r3, #3632
	strh	r5, [r3, #8]	@ movhi
	strh	r5, [r0, #236]	@ movhi
	mov	r3, #1
	strh	r5, [r1, #122]	@ movhi
	mov	r0, #78
	strh	r5, [r9]	@ movhi
	mov	r1, #48
	strh	r5, [r2, #62]	@ movhi
	strh	r5, [r8]	@ movhi
	mov	r2, #2
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [ip, #12]	@ movhi
	strh	r5, [ip, #10]	@ movhi
	strh	r5, [lr, #10]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #50
	mov	r0, #77
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #54
	mov	r0, #76
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #52
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #54
	mov	r0, #64
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #49
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #49
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, [r7]
	add	r1, r2, #20480
	add	r2, r2, #24576
	add	lr, r2, #516
	add	ip, r2, #1488
	add	r8, r1, #1744
	add	r6, r1, #3168
	add	r0, r1, #2688
	strh	r5, [r8]	@ movhi
	mov	r2, r3
	strh	r5, [r6, #10]	@ movhi
	mov	r1, #54
	strh	r5, [r0]	@ movhi
	strh	r5, [lr]	@ movhi
	mov	r0, #73
	strh	r5, [ip, #4]	@ movhi
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #54
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #9
	mov	r2, #1
	mov	r1, #53
	mov	r0, #71
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #35
	mov	r2, #1
	mov	r1, #53
	mov	r0, #70
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #34
	mov	r2, #1
	mov	r1, #55
	mov	r0, #69
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #35
	mov	r2, #1
	mov	r1, #57
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #32
	mov	r2, #1
	mov	r1, #59
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #30
	mov	r2, #1
	mov	r1, #61
	mov	r0, #66
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #28
	mov	r2, #1
	mov	r1, #63
	mov	r0, #65
	mov	lr, pc
	bx	r4
	mov	r1, #64
	str	r5, [sp]
	mov	r0, r1
	mov	r3, #27
	mov	r2, #1
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #25
	mov	r2, #1
	mov	r1, #66
	mov	r0, #63
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #23
	mov	r2, #1
	mov	r1, #67
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #21
	mov	r2, #1
	mov	r1, #69
	mov	r0, #61
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #19
	mov	r2, #1
	mov	r1, #70
	mov	r0, #60
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #18
	mov	r2, #1
	mov	r1, #71
	mov	r0, #59
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #17
	mov	r2, #1
	mov	r1, #71
	mov	r0, #58
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #15
	mov	r2, #1
	mov	r1, #72
	mov	r0, #57
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #13
	mov	r2, #1
	mov	r1, #73
	mov	r0, #56
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #12
	mov	r2, #1
	mov	r1, #74
	mov	r0, #55
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #10
	mov	r2, #1
	mov	r1, #75
	mov	r0, #54
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #76
	mov	r0, #53
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r1, #78
	mov	r0, #52
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #5
	mov	r2, #1
	mov	r1, #79
	mov	r0, #51
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #80
	mov	r0, #50
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #81
	mov	r0, #49
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #81
	mov	r0, #48
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #85
	mov	r0, #47
	mov	lr, pc
	bx	r4
	mov	r1, #71
	str	r5, [sp]
	mov	r0, r1
	mov	r3, #15
	mov	r2, #1
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #13
	mov	r2, #1
	mov	r1, #74
	mov	r0, #72
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #10
	mov	r2, #1
	mov	r1, #77
	mov	r0, #73
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #80
	mov	r0, #74
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #1
	mov	r1, #82
	mov	r0, #75
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r1, #84
	mov	r0, #76
	ldr	r6, .L103
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #1
	mov	r1, #86
	mov	r0, #77
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #7
	mov	r2, #1
	mov	r1, #88
	mov	r0, #78
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #48
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	r1, #49
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #50
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #83
	mov	r0, #48
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r1, #84
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #10
	mov	r2, #1
	mov	r1, #81
	mov	r0, #66
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #12
	mov	r2, #1
	mov	r1, #79
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #12
	mov	r2, #1
	mov	r1, #78
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #9
	mov	r2, #1
	mov	r1, #79
	mov	r0, #69
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r1, #82
	mov	r0, #70
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #85
	mov	r0, #71
	mov	lr, pc
	bx	r4
	ldr	r1, [r7]
	add	r2, r1, #36864
	add	r3, r1, #24576
	add	ip, r1, #42240
	add	r0, r1, #29184
	add	r5, r3, #2432
	add	r1, r3, #2912
	add	lr, r2, #2128
	add	r3, r3, #3392
	strh	r6, [r5, #12]	@ movhi
	add	r8, r2, #2608
	strh	r6, [r1, #10]	@ movhi
	add	r7, r2, #3568
	strh	r6, [r3, #8]	@ movhi
	strh	r6, [r3, #12]	@ movhi
	add	r5, r2, #3552
	strh	r6, [r1, #14]	@ movhi
	add	r3, r2, #3088
	strh	r6, [lr, #4]	@ movhi
	add	lr, r2, #4048
	strh	r6, [r8, #2]	@ movhi
	add	r1, r2, #1152
	strh	r6, [r3, #4]	@ movhi
	strh	r6, [r3]	@ movhi
	add	r8, r2, #676
	strh	r6, [r7, #2]	@ movhi
	strh	r6, [r5, #14]	@ movhi
	add	r7, r2, #1632
	strh	r6, [lr]	@ movhi
	add	r5, r2, #3056
	add	lr, r2, #3536
	strh	r6, [r0, #242]	@ movhi
	mov	r3, #2
	strh	r6, [r2, #200]	@ movhi
	mov	r0, #71
	strh	r6, [r8, #2]	@ movhi
	mov	r2, #1
	strh	r6, [r1, #4]	@ movhi
	strh	r6, [r7, #2]	@ movhi
	mov	r1, #59
	strh	r6, [r5, #14]	@ movhi
	strh	r6, [lr, #14]	@ movhi
	strh	r6, [ip, #138]	@ movhi
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #12
	mov	r2, #1
	mov	r1, #59
	mov	r0, #70
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #10
	mov	r2, #1
	mov	r1, #59
	mov	r0, #69
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #59
	mov	r0, #68
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #61
	mov	r0, #67
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #63
	mov	r0, #66
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #64
	mov	r0, #65
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #66
	mov	r0, #64
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #67
	mov	r0, #63
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #69
	mov	r0, #62
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #70
	mov	r0, #61
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #71
	mov	r0, #60
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #5
	mov	r2, #1
	mov	r1, #72
	mov	r0, #59
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #10
	mov	r2, #1
	mov	r1, #72
	mov	r0, #58
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #73
	mov	r0, #57
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #74
	mov	r0, #56
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #75
	mov	r0, #55
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #76
	mov	r0, #54
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #8
	mov	r2, #1
	mov	r1, #77
	mov	r0, #53
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #6
	mov	r2, #1
	mov	r1, #78
	mov	r0, #52
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #5
	mov	r2, #1
	mov	r1, #79
	mov	r0, #51
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #4
	mov	r2, #1
	mov	r1, #80
	mov	r0, #50
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #3
	mov	r2, #1
	mov	r1, #81
	mov	r0, #49
	ldr	r5, .L103+4
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #83
	mov	r0, #48
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #2
	mov	r2, #1
	mov	r1, #87
	mov	r0, #70
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #1
	mov	r1, #61
	mov	r0, #72
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r6, #0
	mov	r2, r3
	mov	r1, #90
	mov	r0, #69
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #1
	mov	r1, #92
	mov	r0, #73
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r7, .L103+8
	mov	r3, #1
	mov	r2, #3
	mov	r1, #92
	mov	r0, #66
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #89
	mov	r0, #71
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	add	r2, r3, #29696
	add	r3, r3, #40960
	add	ip, r3, #1424
	add	r1, r3, #2848
	add	r0, r3, #2832
	strh	r5, [r2, #210]	@ movhi
	mov	r3, #1
	strh	r5, [ip]	@ movhi
	mov	r2, #4
	strh	r5, [r1, #8]	@ movhi
	strh	r5, [r0, #10]	@ movhi
	mov	r1, #85
	mov	r0, #49
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #7
	mov	r1, #86
	mov	r0, #48
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #7
	mov	r1, #87
	mov	r0, #50
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #6
	mov	r1, #88
	mov	r0, #52
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #4
	mov	r1, #89
	mov	r0, #55
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #90
	mov	r0, #58
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #45
	mov	r0, #77
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #1
	mov	r1, #99
	mov	r0, #58
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #94
	mov	r0, #66
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	add	r3, r2, #45056
	add	r1, r3, #1616
	add	r2, r2, #43264
	add	r3, r3, #2096
	strh	r6, [r3, #6]	@ movhi
	strh	r6, [r3, #10]	@ movhi
	strh	r6, [r3, #14]	@ movhi
	strh	r6, [r1, #12]	@ movhi
	strh	r6, [r3, #12]	@ movhi
	strh	r6, [r2, #72]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	12583
	.word	7305
	.word	videoBuffer
	.size	drawClair, .-drawClair
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Debug logs initialized!\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r3, .L114
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r0, .L114+4
	ldr	r3, .L114+8
	mov	lr, pc
	bx	r3
	mov	fp, #0
	mov	r3, #67108864
	ldr	r2, .L114+12
	ldr	r7, .L114+16
	strh	r2, [r3]	@ movhi
	ldr	r6, .L114+20
	strh	fp, [r7]	@ movhi
	ldr	r4, .L114+24
	ldrh	r2, [r6, #48]
	ldr	r3, .L114+28
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+32
	str	fp, [sp, #4]
	ldr	r10, .L114+36
	mov	lr, pc
	bx	r3
	ldr	r9, .L114+40
	ldr	r5, .L114+44
	ldr	fp, .L114+48
	ldr	r8, .L114+52
	b	.L111
.L113:
	cmp	r2, #40
	str	r2, [fp, #8]
	ble	.L107
	cmp	r0, #0
	moveq	r3, #8
	streq	r0, [fp, #8]
	moveq	r0, r3
	ldrne	r3, [sp, #4]
	subne	r0, r0, #1
	streq	r3, [fp]
	strne	r0, [fp]
	strne	r3, [fp, #8]
.L107:
	mov	lr, pc
	bx	r8
.L111:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrh	r2, [r6, #48]
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r5]
	cmp	r2, #0
	ldreq	r0, [fp]
	beq	.L107
	ldmib	fp, {r1, r2}
	ldr	r0, [r5, #4]
	cmp	r1, #0
	add	r2, r2, r0
	ldr	r0, [fp]
	bne	.L113
	cmp	r2, #40
	str	r2, [fp, #8]
	ble	.L107
	cmp	r0, #8
	addne	r0, r0, #1
	moveq	r0, r1
	streq	r1, [fp]
	streq	r1, [fp, #8]
	strne	r0, [fp]
	strne	r1, [fp, #8]
	b	.L107
.L115:
	.align	2
.L114:
	.word	mgba_open
	.word	.LC0
	.word	mgba_printf
	.word	1027
	.word	oldButtons
	.word	67109120
	.word	buttons
	.word	drawClair
	.word	drawClean
	.word	updateGame
	.word	waitForVBlank
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	draw
	.size	main, .-main
	.global	skipperMySon
	.global	currFrame
	.global	skipFrames
	.global	isBackwards
	.global	isLooping
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	isLooping, %object
	.size	isLooping, 4
isLooping:
	.word	1
	.type	skipperMySon, %object
	.size	skipperMySon, 4
skipperMySon:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	currFrame, %object
	.size	currFrame, 4
currFrame:
	.space	4
	.type	isBackwards, %object
	.size	isBackwards, 4
isBackwards:
	.space	4
	.type	skipFrames, %object
	.size	skipFrames, 4
skipFrames:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
