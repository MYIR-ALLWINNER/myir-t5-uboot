/*
 * Copyright 2000-2019
 * SPDX-License-Identifier: GPL-2.0
 */
	.arch armv7-a
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 2
	.file	"nftl.c"
	.section	.text._nand_sector_read,"ax",%progbits
	.align	1
	.global	_nand_sector_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_sector_read, %function
_nand_sector_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_sector_read, .-_nand_sector_read
	.section	.text._nand_flush_sector_write_cache,"ax",%progbits
	.align	1
	.global	_nand_flush_sector_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_flush_sector_write_cache, %function
_nand_flush_sector_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_flush_sector_write_cache, .-_nand_flush_sector_write_cache
	.section	.text._shutdown_op,"ax",%progbits
	.align	1
	.global	_shutdown_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_shutdown_op, %function
_shutdown_op:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_shutdown_op, .-_shutdown_op
	.section	.text._nftl_nand_erase_superblk,"ax",%progbits
	.align	1
	.global	_nftl_nand_erase_superblk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_erase_superblk, %function
_nftl_nand_erase_superblk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #84]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_erase_superblk, .-_nftl_nand_erase_superblk
	.section	.text._nftl_nand_is_blk_good,"ax",%progbits
	.align	1
	.global	_nftl_nand_is_blk_good
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_is_blk_good, %function
_nftl_nand_is_blk_good:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #96]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_is_blk_good, .-_nftl_nand_is_blk_good
	.section	.text._nftl_nand_mark_bad_blk,"ax",%progbits
	.align	1
	.global	_nftl_nand_mark_bad_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_mark_bad_blk, %function
_nftl_nand_mark_bad_blk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #100]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_mark_bad_blk, .-_nftl_nand_mark_bad_blk
	.section	.text.dumphex,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	dumphex, %function
dumphex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	ldr	r7, .L10
	sub	sp, sp, #56
	mov	r4, r0
	movs	r5, #0
	ldr	r8, .L10+8
.L8:
	cmp	r5, r6
	add	r4, r4, #16
	bcc	.L9
	ldr	r0, .L10+4
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	NAND_Print
.L9:
	mov	r1, r5
	mov	r0, r7
	bl	NAND_Print
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2
	adds	r5, r5, #16
	ldrb	r3, [r4, #-14]	@ zero_extendqisi2
	ldrb	r2, [r4, #-15]	@ zero_extendqisi2
	ldrb	r1, [r4, #-16]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [r4, #-2]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [r4, #-3]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [r4, #-4]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [r4, #-5]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [r4, #-6]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #-7]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #-8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #-9]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #-10]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #-11]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #-12]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #-13]	@ zero_extendqisi2
	str	r0, [sp]
	mov	r0, r8
	bl	NAND_Print
	b	.L8
.L11:
	.align	2
.L10:
	.word	.LC5
	.word	.LC7
	.word	.LC6
	.size	dumphex, .-dumphex
	.section	.text._nftl_nand_read_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_page, %function
_nftl_nand_read_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r2, [r4, #1968]
	sub	sp, sp, #20
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #80]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #80]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #88]
	blx	r3
	adds	r3, r0, #2
	itttt	eq
	ldreq	r2, [r4, #1968]
	ldreq	r3, [r2, #132]
	addeq	r3, r3, #1
	streq	r3, [r2, #132]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_read_page, .-_nftl_nand_read_page
	.section	.text._nftl_nand_write_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_write_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_write_page, %function
_nftl_nand_write_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0]
	sub	sp, sp, #20
	ldr	r2, [r4, #1968]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #88]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #88]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #92]
	blx	r3
	cbz	r0, .L14
	ldr	r2, [r4, #1968]
	ldr	r3, [r2, #136]
	adds	r3, r3, #1
	str	r3, [r2, #136]
.L14:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_write_page, .-_nftl_nand_write_page
	.section	.text._nand_sector_write,"ax",%progbits
	.align	1
	.global	_nand_sector_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_sector_write, %function
_nand_sector_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_sector_write, .-_nand_sector_write
	.section	.text.print_all_nftl_blk,"ax",%progbits
	.align	1
	.global	print_all_nftl_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_all_nftl_blk, %function
print_all_nftl_blk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L23
	ldr	r5, .L23+4
.L21:
	ldr	r3, [r4, #8]
	cbnz	r3, .L22
	pop	{r3, r4, r5, pc}
.L22:
	ldr	r1, [r3]
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r4, [r4, #8]
	b	.L21
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	.LC8
	.size	print_all_nftl_blk, .-print_all_nftl_blk
	.section	.text.get_nftl_num,"ax",%progbits
	.align	1
	.global	get_nftl_num
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_num, %function
get_nftl_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	movs	r0, #0
.L26:
	ldr	r3, [r3, #8]
	cbnz	r3, .L27
	bx	lr
.L27:
	adds	r0, r0, #1
	b	.L26
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.size	get_nftl_num, .-get_nftl_num
	.section	.text.get_nftl_cap,"ax",%progbits
	.align	1
	.global	get_nftl_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_cap, %function
get_nftl_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L33
	movs	r0, #0
.L31:
	ldr	r3, [r3, #8]
	cbnz	r3, .L32
	bx	lr
.L32:
	ldr	r2, [r3]
	add	r0, r0, r2
	b	.L31
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	get_nftl_cap, .-get_nftl_cap
	.section	.text.get_first_nftl_cap,"ax",%progbits
	.align	1
	.global	get_first_nftl_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_first_nftl_cap, %function
get_first_nftl_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r3, [r3, #8]
	ldr	r0, [r3]
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	get_first_nftl_cap, .-get_first_nftl_cap
	.section	.text.nftl_read,"ax",%progbits
	.align	1
	.global	nftl_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_read, %function
nftl_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r2
	push	{r4, r5, r6, lr}
	mov	r2, r1
	cbnz	r1, .L47
.L39:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L42:
	ldr	r4, [r4, #8]
	subs	r0, r0, r1
	cbnz	r4, .L41
	mov	r1, r0
	ldr	r0, .L48
	bl	NAND_Print
	movs	r2, #1
	b	.L39
.L47:
	ldr	r1, .L48+4
	ldr	r4, [r1, #8]
.L41:
	ldr	r1, [r4]
	cmp	r1, r0
	bls	.L42
	ldr	r5, [r4, #44]
	mov	r1, r0
	mov	r0, r4
	mov	ip, r5
	pop	{r4, r5, r6, lr}
	bx	ip
.L49:
	.align	2
.L48:
	.word	.LC9
	.word	.LANCHOR0
	.size	nftl_read, .-nftl_read
	.section	.text.nftl_read_history,"ax",%progbits
	.align	1
	.global	nftl_read_history
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_read_history, %function
nftl_read_history:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r8, r2
	mov	r5, r1
	cbz	r1, .L51
	ldr	r3, .L58
	ldr	r0, .L58+4
	ldr	r4, [r3, #8]
	ldr	r1, [r4]
	bl	NAND_Print
.L52:
	ldr	r1, [r4]
	cmp	r1, r6
	bls	.L53
	ldr	r7, [r4, #40]
	mov	r3, r8
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	mov	ip, r7
	pop	{r4, r5, r6, r7, r8, lr}
	bx	ip
.L53:
	ldr	r4, [r4, #8]
	subs	r6, r6, r1
	cmp	r4, #0
	bne	.L52
	mov	r2, r5
	movs	r5, #1
	mov	r1, r6
	ldr	r0, .L58+8
	bl	NAND_Print
.L51:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.word	.LC10
	.word	.LC9
	.size	nftl_read_history, .-nftl_read_history
	.section	.text.nftl_write,"ax",%progbits
	.align	1
	.global	nftl_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_write, %function
nftl_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r2
	push	{r4, r5, r6, lr}
	mov	r2, r1
	cbnz	r1, .L69
.L61:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L64:
	ldr	r4, [r4, #8]
	subs	r0, r0, r1
	cbnz	r4, .L63
	mov	r1, r0
	ldr	r0, .L70
	bl	NAND_Print
	movs	r2, #1
	b	.L61
.L69:
	ldr	r1, .L70+4
	ldr	r4, [r1, #8]
.L63:
	ldr	r1, [r4]
	cmp	r1, r0
	bls	.L64
	ldr	r5, [r4, #48]
	mov	r1, r0
	mov	r0, r4
	mov	ip, r5
	pop	{r4, r5, r6, lr}
	bx	ip
.L71:
	.align	2
.L70:
	.word	.LC9
	.word	.LANCHOR0
	.size	nftl_write, .-nftl_write
	.section	.text.nftl_discard,"ax",%progbits
	.align	1
	.global	nftl_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_discard, %function
nftl_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, r1
	cbnz	r1, .L81
.L73:
	mov	r0, r2
	pop	{r4, pc}
.L76:
	ldr	r3, [r3, #8]
	subs	r0, r0, r1
	cbnz	r3, .L75
	mov	r1, r0
	ldr	r0, .L82
	bl	NAND_Print
	movs	r2, #1
	b	.L73
.L81:
	ldr	r3, .L82+4
	ldr	r3, [r3, #8]
.L75:
	ldr	r1, [r3]
	cmp	r1, r0
	bls	.L76
	ldr	r4, [r3, #56]
	mov	r1, r0
	mov	r0, r3
	mov	r3, r4
	pop	{r4, lr}
	bx	r3
.L83:
	.align	2
.L82:
	.word	.LC9
	.word	.LANCHOR0
	.size	nftl_discard, .-nftl_discard
	.section	.text.nftl_flush_write_cache,"ax",%progbits
	.align	1
	.global	nftl_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_flush_write_cache, %function
nftl_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	push	{r4, lr}
	ldr	r4, [r3, #8]
.L85:
	cbnz	r4, .L86
	mov	r0, r4
	pop	{r4, pc}
.L86:
	ldr	r3, [r4, #52]
	mov	r0, r4
	movw	r1, #65535
	blx	r3
	ldr	r4, [r4, #8]
	b	.L85
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
	.size	nftl_flush_write_cache, .-nftl_flush_write_cache
	.section	.text.nftl_malloc,"ax",%progbits
	.align	1
	.global	nftl_malloc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_malloc, %function
nftl_malloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1572864
	push	{r4, lr}
	mov	r4, r0
	bls	.L90
	mov	r1, r0
	ldr	r0, .L91
	bl	NAND_Print
.L90:
	mov	r0, r4
	pop	{r4, lr}
	b	NAND_Malloc
.L92:
	.align	2
.L91:
	.word	.LC11
	.size	nftl_malloc, .-nftl_malloc
	.section	.text.nftl_free,"ax",%progbits
	.align	1
	.global	nftl_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_free, %function
nftl_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #0
	b	NAND_Free
	.size	nftl_free, .-nftl_free
	.section	.text.add_nftl_blk_list,"ax",%progbits
	.align	1
	.global	add_nftl_blk_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_nftl_blk_list, %function
add_nftl_blk_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r1, #8]
.L95:
	ldr	r3, [r0, #8]
	cbnz	r3, .L96
	str	r1, [r0, #8]
	bx	lr
.L96:
	mov	r0, r3
	b	.L95
	.size	add_nftl_blk_list, .-add_nftl_blk_list
	.section	.text.del_last_nftl_blk,"ax",%progbits
	.align	1
	.global	del_last_nftl_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_last_nftl_blk, %function
del_last_nftl_blk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L98:
	ldr	r3, [r0, #8]
	cbz	r3, .L97
	ldr	r2, [r3, #8]
	cbnz	r2, .L101
	str	r2, [r0, #8]
.L97:
	mov	r0, r3
	bx	lr
.L101:
	mov	r0, r3
	b	.L98
	.size	del_last_nftl_blk, .-del_last_nftl_blk
	.section	.text.nftl_support_boot_check_crc_from_dts,"ax",%progbits
	.align	1
	.global	nftl_support_boot_check_crc_from_dts
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_support_boot_check_crc_from_dts, %function
nftl_support_boot_check_crc_from_dts:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nand_get_support_boot_check_crc
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	nftl_support_boot_check_crc_from_dts, .-nftl_support_boot_check_crc_from_dts
	.section	.text._nftl_nand_read_history_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_history_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_history_page, %function
_nftl_nand_read_history_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r2, [r4, #1968]
	sub	sp, sp, #20
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #80]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #80]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #88]
	blx	r3
	adds	r3, r0, #2
	itttt	eq
	ldreq	r2, [r4, #1968]
	ldreq	r3, [r2, #132]
	addeq	r3, r3, #1
	streq	r3, [r2, #132]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_read_history_page, .-_nftl_nand_read_history_page
	.section	.text.is_on_panic,"ax",%progbits
	.align	1
	.global	is_on_panic
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_on_panic, %function
is_on_panic:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L106
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L107:
	.align	2
.L106:
	.word	.LANCHOR1
	.size	is_on_panic, .-is_on_panic
	.section	.text.panic_mark_enable,"ax",%progbits
	.align	1
	.global	panic_mark_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_mark_enable, %function
panic_mark_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L109
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L110:
	.align	2
.L109:
	.word	.LANCHOR2
	.size	panic_mark_enable, .-panic_mark_enable
	.section	.text.is_panic_enable,"ax",%progbits
	.align	1
	.global	is_panic_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_enable, %function
is_panic_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L112
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L113:
	.align	2
.L112:
	.word	.LANCHOR2
	.size	is_panic_enable, .-is_panic_enable
	.section	.text.panic_init_part,"ax",%progbits
	.align	1
	.global	panic_init_part
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_init_part, %function
panic_init_part:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r3, r2
	cbz	r0, .L118
	cbz	r2, .L118
	ldr	r5, .L119
	ldr	r4, [r5, #8]
	cbnz	r4, .L118
	str	r2, [r5, #8]
	ldr	r2, .L119+4
	strd	r0, r1, [r5]
	movs	r5, #1
	str	r5, [r2]
	mov	r2, r1
	mov	r1, r0
	ldr	r0, .L119+8
	bl	NAND_Print
	mov	r0, r4
.L114:
	pop	{r3, r4, r5, pc}
.L118:
	mov	r0, #-1
	b	.L114
.L120:
	.align	2
.L119:
	.word	.LANCHOR3
	.word	.LANCHOR2
	.word	.LC12
	.size	panic_init_part, .-panic_init_part
	.section	.text.panic_read,"ax",%progbits
	.align	1
	.global	panic_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_read, %function
panic_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r3
	ldr	r3, .L127
	mov	r6, r0
	mov	r5, r2
	ldr	r3, [r3]
	cbz	r3, .L125
	ldr	r3, .L127+4
	movs	r2, #1
	mov	r4, r1
	sub	fp, r8, r1
	str	r2, [r3]
	bic	r3, r5, #32640
	bic	r3, r3, #127
	add	r10, r3, r1
.L123:
	cmp	r4, r10
	add	r3, fp, r4
	bne	.L124
	ubfx	r2, r5, #0, #15
	bic	r5, r5, #32640
	bic	r5, r5, #127
	add	r3, r8, r5
	cbz	r2, .L126
	ldr	r5, [r6, #44]
	mov	r1, r4
	mov	r0, r6
	blx	r5
	movs	r0, #0
.L121:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L124:
	mov	r1, r4
	ldr	r7, [r6, #44]
	mov	r2, #32768
	mov	r0, r6
	blx	r7
	add	r4, r4, #32768
	b	.L123
.L125:
	mov	r0, #-1
	b	.L121
.L126:
	mov	r0, r2
	b	.L121
.L128:
	.align	2
.L127:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.size	panic_read, .-panic_read
	.section	.text.is_panic_data_page,"ax",%progbits
	.align	1
	.global	is_panic_data_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_data_page, %function
is_panic_data_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L131
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #99
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L131:
	movs	r0, #0
	bx	lr
	.size	is_panic_data_page, .-is_panic_data_page
	.section	.text.is_panic_dummy_page,"ax",%progbits
	.align	1
	.global	is_panic_dummy_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_dummy_page, %function
is_panic_dummy_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L134
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #98
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L134:
	movs	r0, #0
	bx	lr
	.size	is_panic_dummy_page, .-is_panic_dummy_page
	.section	.text.panic_recover_info,"ax",%progbits
	.align	1
	.global	panic_recover_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_recover_info, %function
panic_recover_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	cmp	r4, #2
	bhi	.L136
	ldrh	r1, [r1]
	ldr	r0, .L138
	bl	NAND_Print
	ldr	r3, .L138+4
	movs	r0, #0
	str	r5, [r3, r4, lsl #2]
.L135:
	pop	{r3, r4, r5, pc}
.L136:
	mov	r1, r4
	ldr	r0, .L138+8
	bl	NAND_Print
	mov	r0, #-1
	b	.L135
.L139:
	.align	2
.L138:
	.word	.LC13
	.word	.LANCHOR4
	.word	.LC14
	.size	panic_recover_info, .-panic_recover_info
	.section	.text.samsung_vender_set_param,"ax",%progbits
	.align	1
	.global	samsung_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_vender_set_param, %function
samsung_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	str	r3, [sp, #8]
	movs	r3, #1
	mov	r4, r1
	strd	r1, r3, [sp]
	mov	r3, r2
	ldr	r1, .L141
	movs	r2, #0
	bl	set_cmd_with_nand_bus
	mov	r5, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L141+4
	bl	NAND_Print_DBG
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L142:
	.align	2
.L141:
	.word	.LANCHOR5
	.word	.LC15
	.size	samsung_vender_set_param, .-samsung_vender_set_param
	.section	.text.samsung_set_readretry,"ax",%progbits
	.align	1
	.global	samsung_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_set_readretry, %function
samsung_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #176]
	movs	r3, #4
	ldr	r1, .L148
	ldr	r2, .L148+4
	add	r1, r1, r0, lsl #2
	mov	r0, r4
	bl	samsung_vender_set_param
	mov	r5, r0
	cbz	r0, .L144
	ldr	r1, [r4, #176]
	ldr	r0, .L148+8
	bl	NAND_Print
.L144:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L149:
	.align	2
.L148:
	.word	.LANCHOR7
	.word	.LANCHOR6
	.word	.LC16
	.size	samsung_set_readretry, .-samsung_set_readretry
	.section	.text.samsung_read_page_end,"ax",%progbits
	.align	1
	.global	samsung_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_read_page_end, %function
samsung_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L160
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L150
	ldr	r8, .L160+12
	movs	r7, #1
	ldr	r0, .L160+4
	bl	NAND_Print_DBG
.L152:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L155
	str	r7, [r5, #176]
	mov	r0, r5
	bl	samsung_set_readretry
	mov	r4, r0
	cbnz	r0, .L153
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L154
	cbnz	r4, .L153
.L154:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L160+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L155:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	samsung_set_readretry
.L150:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L153:
	adds	r7, r7, #1
	b	.L152
.L161:
	.align	2
.L160:
	.word	g_nsi
	.word	.LC17
	.word	.LC18
	.word	.LANCHOR8
	.size	samsung_read_page_end, .-samsung_read_page_end
	.section	.text.samsung_readretry_init,"ax",%progbits
	.align	1
	.global	samsung_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_readretry_init, %function
samsung_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	str	r3, [r0, #176]
	movs	r1, #15
	ldr	r3, [r0, #264]
	ldr	r4, .L165
	ldr	r0, .L165+4
	ldrh	r3, [r3, #54]
	strb	r3, [r4]
	ldr	r3, .L165+8
	strb	r1, [r3]
	bl	NAND_Print_DBG
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #32
	ite	ne
	mvnne	r0, #99
	moveq	r0, #0
	pop	{r4, pc}
.L166:
	.align	2
.L165:
	.word	.LANCHOR9
	.word	.LC19
	.word	.LANCHOR8
	.size	samsung_readretry_init, .-samsung_readretry_init
	.section	.text.samsung_readretry_exit,"ax",%progbits
	.align	1
	.global	samsung_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_readretry_exit, %function
samsung_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	samsung_readretry_exit, .-samsung_readretry_exit
	.section	.text.samsung_special_init,"ax",%progbits
	.align	1
	.global	samsung_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_special_init, %function
samsung_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L173
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L169:
	cbnz	r5, .L170
	ldr	r3, .L173+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L173+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbnz	r4, .L171
	ldr	r0, .L173+12
	ldr	r3, .L173+16
	str	r0, [r3]
	ldr	r0, .L173+20
	bl	NAND_Print_DBG
.L168:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L170:
	mov	r0, r5
	bl	samsung_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L169
.L171:
	ldr	r0, .L173+24
	bl	NAND_Print
	b	.L168
.L174:
	.align	2
.L173:
	.word	g_nsi
	.word	.LANCHOR9
	.word	.LANCHOR8
	.word	samsung_read_page_end
	.word	df_read_page_end
	.word	.LC20
	.word	.LC21
	.size	samsung_special_init, .-samsung_special_init
	.section	.text.samsung_special_exit,"ax",%progbits
	.align	1
	.global	samsung_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_special_exit, %function
samsung_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L178
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L176:
	cbnz	r4, .L177
	ldr	r0, .L178+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L177:
	ldr	r4, [r4]
	b	.L176
.L179:
	.align	2
.L178:
	.word	g_nsi
	.word	.LC22
	.size	samsung_special_exit, .-samsung_special_exit
	.section	.text.hynix20nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_set_param, %function
hynix20nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r2
	sub	sp, sp, #28
	mov	r7, r3
	mov	r6, r0
	movs	r3, #54
	add	r8, sp, #24
	add	r7, r7, r4
	mov	r10, #1
	mov	r5, r1
	strb	r3, [r8, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L181:
	cmp	r4, r7
	bne	.L182
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L182:
	mov	r3, r4
	str	r5, [sp]
	movs	r2, #0
	mov	r1, r8
	strd	r10, r10, [sp, #4]
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r6
	adds	r4, r4, #1
	bl	set_one_cmd
	adds	r5, r5, #1
	b	.L181
	.size	hynix20nm_vender_set_param, .-hynix20nm_vender_set_param
	.section	.text.hynix20nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix20nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_set_readretry, %function
hynix20nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L190
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L189
	ldr	r5, .L190+4
	lsls	r1, r1, #3
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L185:
	cmp	r3, r2
	bhi	.L186
	ldr	r7, .L190+8
	mov	r1, sp
	ldr	r2, .L190+12
	movs	r4, #0
	bl	hynix20nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L190+16
	bl	NAND_Print_DBG
.L187:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L188
	ldr	r0, .L190+20
	bl	NAND_Print_DBG
.L183:
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L186:
	adds	r4, r1, r2
	add	r4, r4, r0
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L185
.L188:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L187
.L189:
	mvn	r6, #91
	b	.L183
.L191:
	.align	2
.L190:
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	.LC24
	.word	.LANCHOR12
	.word	.LC23
	.word	.LC7
	.size	hynix20nm_set_readretry, .-hynix20nm_set_readretry
	.section	.text.hynix20nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_get_param, %function
hynix20nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r7, r3
	sub	sp, sp, #20
	mov	r4, r2
	mov	r6, r0
	mov	r5, r1
	add	r7, r7, r4
	mov	r10, #1
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	add	r8, sp, #16
	bl	ndfc_disable_randomize
	movs	r3, #55
	strb	r3, [r8, #-1]!
.L193:
	cmp	r4, r7
	bne	.L194
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L194:
	mov	r3, r5
	mov	r2, r4
	str	r10, [sp]
	mov	r1, r8
	mov	r0, r6
	adds	r4, r4, #1
	bl	get_data_with_nand_bus_one_cmd
	adds	r5, r5, #1
	b	.L193
	.size	hynix20nm_vender_get_param, .-hynix20nm_vender_get_param
	.section	.text.hynix20nm_lsb_init,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_init, %function
hynix20nm_lsb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #264]
	ldr	r1, .L199
	ldr	r2, [r3, #52]
	ubfx	r3, r2, #16, #8
	strb	r3, [r1]
	lsrs	r0, r2, #8
	ldr	r1, .L199+4
	cmp	r3, #2
	strb	r0, [r1]
	ldr	r1, .L199+8
	strb	r2, [r1]
	bne	.L196
	ldr	r3, .L199+12
	movs	r2, #4
	strb	r2, [r3]
	movs	r2, #176
	ldr	r3, .L199+16
	strb	r2, [r3]
	movs	r2, #177
	strb	r2, [r3, #1]
	movs	r2, #160
	strb	r2, [r3, #2]
	movs	r2, #161
.L198:
	strb	r2, [r3, #3]
	movs	r2, #10
	ldr	r3, .L199+20
	strb	r2, [r3]
	strb	r2, [r3, #1]
	strb	r2, [r3, #2]
	strb	r2, [r3, #3]
.L197:
	movs	r0, #0
	bx	lr
.L196:
	cmp	r3, #3
	bne	.L197
	ldr	r3, .L199+12
	movs	r2, #4
	strb	r2, [r3]
	movs	r2, #160
	ldr	r3, .L199+16
	strb	r2, [r3]
	movs	r2, #161
	strb	r2, [r3, #1]
	movs	r2, #167
	strb	r2, [r3, #2]
	movs	r2, #168
	b	.L198
.L200:
	.align	2
.L199:
	.word	.LANCHOR13
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	.LANCHOR14
	.word	.LANCHOR15
	.word	.LANCHOR16
	.size	hynix20nm_lsb_init, .-hynix20nm_lsb_init
	.section	.text.hynix20nm_lsb_enable,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_enable, %function
hynix20nm_lsb_enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r4, .L204
	ldr	r2, .L204+4
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r1, .L204+8
	bl	hynix20nm_vender_get_param
	ldr	r6, .L204+12
	movs	r2, #0
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r1, sp, #4
	ldr	r4, .L204+8
.L202:
	cmp	r3, r2
	bhi	.L203
	ldr	r2, .L204+4
	mov	r0, r5
	bl	hynix20nm_vender_set_param
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L203:
	ldrb	r0, [r2, r4]	@ zero_extendqisi2
	ldrb	r7, [r2, r6]	@ zero_extendqisi2
	add	r0, r0, r7
	strb	r0, [r1, r2]
	adds	r2, r2, #1
	b	.L202
.L205:
	.align	2
.L204:
	.word	.LANCHOR14
	.word	.LANCHOR15
	.word	.LANCHOR17
	.word	.LANCHOR16
	.size	hynix20nm_lsb_enable, .-hynix20nm_lsb_enable
	.section	.text.hynix20nm_lsb_disable,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_disable, %function
hynix20nm_lsb_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L207
	ldr	r2, .L207+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L207+8
	bl	hynix20nm_vender_set_param
	movs	r0, #0
	pop	{r3, pc}
.L208:
	.align	2
.L207:
	.word	.LANCHOR14
	.word	.LANCHOR15
	.word	.LANCHOR17
	.size	hynix20nm_lsb_disable, .-hynix20nm_lsb_disable
	.section	.text.hynix20nm_lsb_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_exit, %function
hynix20nm_lsb_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r2, #1
	movs	r1, #48
	mov	r0, r4
	bl	set_one_cmd
	ldr	r0, .L210
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L211:
	.align	2
.L210:
	.word	.LC25
	.size	hynix20nm_lsb_exit, .-hynix20nm_lsb_exit
	.section	.text.hynix20nm_vender_get_param_otp_hynix,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_get_param_otp_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_get_param_otp_hynix, %function
hynix20nm_vender_get_param_otp_hynix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r3, #0
	sub	sp, sp, #36
	mov	r4, r0
	strh	r3, [sp, #28]	@ movhi
	ldr	r3, .L230
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L213
	movw	r3, #52479
	strh	r3, [sp, #24]	@ movhi
	movw	r3, #19776
	strh	r3, [sp, #28]	@ movhi
.L214:
	mov	r0, #1024
	movs	r6, #1
	bl	nand_get_temp_buf
	mov	r5, r0
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #54
	movs	r2, #0
	strb	r3, [sp, #20]
	add	r3, sp, #28
	str	r3, [sp]
	add	r1, sp, #20
	add	r3, sp, #24
	strd	r6, r6, [sp, #4]
	mov	r0, r4
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	add	r3, sp, #29
	mov	r1, r2
	str	r3, [sp]
	strd	r6, r6, [sp, #4]
	add	r3, sp, #25
	mov	r0, r4
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #23
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #4
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #25
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #2
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r3, #48
	movs	r2, #0
	strb	r3, [sp, #20]
	movs	r3, #2
	str	r3, [sp]
	add	r1, sp, #20
	mov	r3, r5
	mov	r0, r4
	bl	get_data_with_nand_bus_one_cmd
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L216
	cmp	r2, #8
	beq	.L225
.L216:
	mvn	r6, #95
	ldr	r0, .L230+4
	bl	NAND_Print
.L217:
	mov	r3, #1024
	movs	r2, #0
	str	r3, [sp]
	mov	r1, r2
	mov	r3, r5
	mov	r0, r4
	bl	get_data_with_nand_bus_one_cmd
	movs	r1, #0
	add	ip, r4, #112
.L218:
	add	r2, r5, r1, lsl #7
	add	r3, r4, #48
.L220:
	ldrb	r7, [r2], #1	@ zero_extendqisi2
	strb	r7, [r3], #1
	ldrb	r0, [r2, #63]	@ zero_extendqisi2
	add	r0, r0, r7
	cmp	r0, #255
	bne	.L219
	cmp	r3, ip
	bne	.L220
	ldr	r0, .L230+8
	bl	NAND_Print_DBG
	b	.L222
.L213:
	cmp	r3, #3
	bne	.L224
	movw	r3, #45230
	strh	r3, [sp, #24]	@ movhi
	movs	r3, #77
	strb	r3, [sp, #29]
	b	.L214
.L225:
	movs	r6, #0
	b	.L217
.L224:
	mvn	r6, #96
	b	.L212
.L219:
	adds	r1, r1, #1
	cmp	r1, #8
	bne	.L218
	mvn	r6, #94
	ldr	r0, .L230+12
	bl	NAND_Print_DBG
.L222:
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r1, #56
	movs	r2, #1
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	mov	r1, #1024
	mov	r0, r5
	bl	nand_free_temp_buf
.L212:
	mov	r0, r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L231:
	.align	2
.L230:
	.word	.LANCHOR13
	.word	.LC26
	.word	.LC28
	.word	.LC27
	.size	hynix20nm_vender_get_param_otp_hynix, .-hynix20nm_vender_get_param_otp_hynix
	.section	.text.hynix20nm_saveotpvalue,"ax",%progbits
	.align	1
	.global	hynix20nm_saveotpvalue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_saveotpvalue, %function
hynix20nm_saveotpvalue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #1
	adds	r0, r0, #48
	adds	r1, r1, #63
.L233:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0], #1
	bne	.L233
	bx	lr
	.size	hynix20nm_saveotpvalue, .-hynix20nm_saveotpvalue
	.section	.text.hynix20nm_getotpparam,"ax",%progbits
	.align	1
	.global	hynix20nm_getotpparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_getotpparam, %function
hynix20nm_getotpparam:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r8, .L245+4
	mov	r5, r1
	movs	r6, #0
.L238:
	mov	r1, r6
	mov	r0, r8
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix20nm_vender_get_param_otp_hynix
	mov	r7, r0
	cbnz	r0, .L236
	mov	r0, r4
	mov	r1, r5
	add	r2, r4, #64
.L237:
	movs	r3, #0
.L240:
	adds	r4, r0, r3
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [r1, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L240
	adds	r0, r0, #8
	adds	r1, r1, #8
	cmp	r2, r0
	bne	.L237
.L235:
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
.L236:
	adds	r6, r6, #1
	cmp	r6, #5
	bne	.L238
	ldr	r0, .L245
	bl	NAND_Print
	b	.L235
.L246:
	.align	2
.L245:
	.word	.LC30
	.word	.LC29
	.size	hynix20nm_getotpparam, .-hynix20nm_getotpparam
	.section	.text.hynix20nm_set_default_param,"ax",%progbits
	.align	1
	.global	hynix20nm_set_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_set_default_param, %function
hynix20nm_set_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L252
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L248:
	cmp	r3, r2
	bhi	.L249
	ldr	r7, .L252+4
	mov	r1, sp
	ldr	r2, .L252+8
	movs	r4, #0
	bl	hynix20nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L252+12
	bl	NAND_Print_DBG
.L250:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L251
	ldr	r0, .L252+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L249:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L248
.L251:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L250
.L253:
	.align	2
.L252:
	.word	.LANCHOR11
	.word	.LC32
	.word	.LANCHOR12
	.word	.LC31
	.word	.LC7
	.size	hynix20nm_set_default_param, .-hynix20nm_set_default_param
	.section	.text.hynix20nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_readretry_exit, %function
hynix20nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L255
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix20nm_set_default_param
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L256:
	.align	2
.L255:
	.word	.LC33
	.size	hynix20nm_readretry_exit, .-hynix20nm_readretry_exit
	.section	.text.hynix20nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_special_exit, %function
hynix20nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L260
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L258:
	cbnz	r4, .L259
	ldr	r0, .L260+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L259:
	mov	r0, r4
	bl	hynix20nm_readretry_exit
	ldr	r4, [r4]
	b	.L258
.L261:
	.align	2
.L260:
	.word	g_nsi
	.word	.LC34
	.size	hynix20nm_special_exit, .-hynix20nm_special_exit
	.section	.text.micron_intel_set_feature,"ax",%progbits
	.align	1
	.global	micron_intel_set_feature
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_intel_set_feature, %function
micron_intel_set_feature:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r4, #0
	mov	r7, r0
	mov	r6, r2
	mov	r5, r1
	strb	r1, [sp, #7]
	add	r1, sp, #7
	strb	r2, [sp, #8]
	add	r2, sp, #8
	strb	r4, [sp, #9]
	strb	r4, [sp, #10]
	strb	r4, [sp, #11]
	bl	nand_set_feature
	add	r2, sp, #12
	add	r1, sp, #7
	mov	r0, r7
	bl	nand_get_feature
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L264
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L265
	bl	NAND_Print
	mvn	r0, #71
.L262:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L264:
	mov	r0, r4
	b	.L262
.L266:
	.align	2
.L265:
	.word	.LC35
	.size	micron_intel_set_feature, .-micron_intel_set_feature
	.section	.text.micron_set_readretry,"ax",%progbits
	.align	1
	.global	micron_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_set_readretry, %function
micron_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, .L278
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #64
	cmp	r2, #2
	bls	.L268
	cmp	r3, #80
	bne	.L276
.L268:
	ldrb	r6, [r4, #176]	@ zero_extendqisi2
	ldr	r7, .L278+4
	cmp	r6, #255
	it	eq
	moveq	r6, #0
	cmp	r3, #80
	bne	.L271
	ldr	r3, [r7]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	cbz	r3, .L272
.L274:
	ldr	r3, [r4, #176]
	cmp	r3, #255
	bne	.L271
	movs	r2, #0
	movs	r1, #137
	mov	r0, r4
	bl	micron_intel_set_feature
	movs	r2, #0
	mov	r5, r0
	movs	r1, #147
	mov	r0, r4
	bl	micron_intel_set_feature
	orrs	r5, r5, r0
	b	.L269
.L272:
	movs	r2, #1
	movs	r1, #147
	mov	r0, r4
	bl	micron_intel_set_feature
	mov	r5, r0
	cmp	r0, #0
	beq	.L274
.L269:
	ldr	r3, [r4, #176]
	mov	r0, r4
	cmp	r3, #255
	itt	eq
	moveq	r3, #0
	streq	r3, [r4, #176]
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L271:
	ldr	r3, [r7]
	movs	r1, #137
	mov	r0, r4
	ldrb	r2, [r3, r6]	@ zero_extendqisi2
	bl	micron_intel_set_feature
	mov	r5, r0
	b	.L269
.L276:
	movs	r5, #0
	b	.L269
.L279:
	.align	2
.L278:
	.word	.LANCHOR18
	.word	.LANCHOR19
	.size	micron_set_readretry, .-micron_set_readretry
	.section	.text.micron_read_page_end,"ax",%progbits
	.align	1
	.global	micron_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_read_page_end, %function
micron_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L290
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L280
	ldr	r8, .L290+12
	movs	r7, #0
	ldr	r0, .L290+4
	bl	NAND_Print_DBG
.L282:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L285
	str	r7, [r5, #176]
	mov	r0, r5
	bl	micron_set_readretry
	mov	r4, r0
	cbnz	r0, .L283
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L284
	cbnz	r4, .L283
.L284:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L290+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L285:
	movs	r3, #255
	mov	r0, r5
	str	r3, [r5, #176]
	bl	micron_set_readretry
.L280:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L283:
	adds	r7, r7, #1
	b	.L282
.L291:
	.align	2
.L290:
	.word	g_nsi
	.word	.LC36
	.word	.LC37
	.word	.LANCHOR20
	.size	micron_read_page_end, .-micron_read_page_end
	.section	.text.micron_readretry_init,"ax",%progbits
	.align	1
	.global	micron_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_readretry_init, %function
micron_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r10, lr}
	movs	r7, #0
	ldr	r3, [r0, #264]
	movs	r1, #137
	mov	r6, r0
	ldr	r10, .L300+28
	ldr	r3, [r3, #52]
	ldr	r5, .L300
	ldr	r8, .L300+32
	ldr	r4, .L300+4
	lsrs	r2, r3, #16
	lsrs	r3, r3, #8
	str	r7, [r0, #176]
	strb	r2, [r10]
	mov	r2, r7
	strb	r3, [r4]
	str	r8, [r5]
	bl	micron_intel_set_feature
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #65
	bne	.L293
	movs	r3, #12
	str	r8, [r5]
	strb	r3, [r4]
.L294:
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L300+8
	bl	NAND_Print_DBG
	movs	r0, #0
	b	.L292
.L293:
	cmp	r3, #64
	bne	.L295
	ldr	r3, .L300+12
	str	r3, [r5]
	movs	r3, #10
.L299:
	strb	r3, [r4]
	b	.L294
.L295:
	cmp	r3, #80
	bne	.L296
	ldr	r3, .L300+16
	mov	r2, r7
	movs	r1, #147
	mov	r0, r6
	str	r3, [r5]
	movs	r3, #7
	strb	r3, [r4]
	bl	micron_intel_set_feature
	b	.L294
.L296:
	cmp	r3, #66
	bne	.L297
	ldr	r3, .L300+20
	str	r3, [r5]
	movs	r3, #18
	b	.L299
.L297:
	ldr	r0, .L300+24
	bl	NAND_Print
	mvn	r0, #70
.L292:
	pop	{r3, r4, r5, r6, r7, r8, r10, pc}
.L301:
	.align	2
.L300:
	.word	.LANCHOR19
	.word	.LANCHOR20
	.word	.LC39
	.word	.LANCHOR22
	.word	.LANCHOR23
	.word	.LANCHOR24
	.word	.LC38
	.word	.LANCHOR18
	.word	.LANCHOR21
	.size	micron_readretry_init, .-micron_readretry_init
	.section	.text.micron_readretry_exit,"ax",%progbits
	.align	1
	.global	micron_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_readretry_exit, %function
micron_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L303
	movs	r0, #0
	strb	r0, [r3]
	ldr	r3, .L303+4
	strb	r0, [r3]
	bx	lr
.L304:
	.align	2
.L303:
	.word	.LANCHOR18
	.word	.LANCHOR20
	.size	micron_readretry_exit, .-micron_readretry_exit
	.section	.text.micron_special_init,"ax",%progbits
	.align	1
	.global	micron_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_special_init, %function
micron_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L310
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L306:
	cbnz	r5, .L307
	ldr	r3, .L310+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L310+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbnz	r4, .L308
	ldr	r0, .L310+12
	ldr	r3, .L310+16
	str	r0, [r3]
	ldr	r0, .L310+20
	bl	NAND_Print_DBG
.L305:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L307:
	mov	r0, r5
	bl	micron_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L306
.L308:
	ldr	r0, .L310+24
	bl	NAND_Print
	b	.L305
.L311:
	.align	2
.L310:
	.word	g_nsi
	.word	.LANCHOR18
	.word	.LANCHOR20
	.word	micron_read_page_end
	.word	df_read_page_end
	.word	.LC40
	.word	.LC41
	.size	micron_special_init, .-micron_special_init
	.section	.text.micron_special_exit,"ax",%progbits
	.align	1
	.global	micron_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_special_exit, %function
micron_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r5, #0
	ldr	r3, .L319
	ldr	r2, .L319+4
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r0, [r3, #8]
	ldr	r3, .L319+8
	ldrb	r4, [r3]	@ zero_extendqisi2
.L313:
	cbnz	r0, .L314
	cbz	r5, .L315
	strb	r1, [r2]
	strb	r4, [r3]
.L315:
	ldr	r0, .L319+12
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L314:
	movs	r1, #0
	ldr	r0, [r0]
	movs	r5, #1
	mov	r4, r1
	b	.L313
.L320:
	.align	2
.L319:
	.word	g_nsi
	.word	.LANCHOR18
	.word	.LANCHOR20
	.word	.LC42
	.size	micron_special_exit, .-micron_special_exit
	.section	.text.toshiba_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	toshiba_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_retry_clock_save, %function
toshiba_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L322
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L322+4
	ldr	r1, .L322+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L322+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L323:
	.align	2
.L322:
	.word	NAND_GetClk
	.word	.LANCHOR25
	.word	.LANCHOR26
	.word	NAND_SetClk
	.size	toshiba_read_retry_clock_save, .-toshiba_read_retry_clock_save
	.section	.text.toshiba_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	toshiba_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_retry_clock_recover, %function
toshiba_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L325
	ldr	r2, .L325+4
	ldr	r1, .L325+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L326:
	.align	2
.L325:
	.word	NAND_SetClk
	.word	.LANCHOR25
	.word	.LANCHOR26
	.size	toshiba_read_retry_clock_recover, .-toshiba_read_retry_clock_recover
	.section	.text.toshiba_vender_set_param,"ax",%progbits
	.align	1
	.global	toshiba_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_vender_set_param, %function
toshiba_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r3
	ldr	r7, .L336
	mov	r6, r0
	mov	r4, r1
	mov	r8, r2
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #18
	bne	.L334
	mov	fp, #1
	mov	r3, r2
	strd	r1, fp, [sp]
	movs	r2, #0
	str	r10, [sp, #8]
	ldr	r1, .L336+4
	bl	set_cmd_with_nand_bus
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r0
	cbnz	r3, .L328
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbnz	r3, .L328
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cbnz	r3, .L328
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cbnz	r3, .L328
	ldr	r3, .L336+8
	ldr	r3, [r3]
	cbnz	r3, .L328
.L335:
	ldr	r3, .L336+12
	movs	r2, #1
	mov	r0, r6
	ldrb	r1, [r3]	@ zero_extendqisi2
	bl	set_one_cmd
	orrs	r5, r5, r0
.L327:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L334:
	movs	r5, #0
.L328:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #17
	bne	.L330
	mov	fp, #1
	mov	r3, r8
	str	r10, [sp, #8]
	movs	r2, #0
	strd	r4, fp, [sp]
	mov	r0, r6
	ldr	r1, .L336+4
	bl	set_cmd_with_nand_bus
	ldrb	r3, [r4]	@ zero_extendqisi2
	orrs	r5, r5, r0
	cmp	r3, #0
	bne	.L331
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbnz	r3, .L330
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cbnz	r3, .L330
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
.L330:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #16
	bne	.L332
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L333
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L333
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L333
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L335
.L333:
	movs	r3, #1
	str	r10, [sp, #8]
	strd	r4, r3, [sp]
	movs	r2, #0
	mov	r3, r8
	ldr	r1, .L336+16
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	orrs	r5, r5, r0
.L332:
	ldr	r7, .L336+20
	movs	r2, #0
	mov	r0, r6
	ldrb	r1, [r7]	@ zero_extendqisi2
	bl	set_one_cmd
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	orrs	r5, r5, r0
	movs	r2, #0
	mov	r0, r6
	bl	set_one_cmd
	orrs	r5, r5, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L336+24
	bl	NAND_Print_DBG
	b	.L327
.L331:
	cmp	r3, #2
	bne	.L330
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L330
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #126
	bne	.L330
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #124
	bne	.L330
	ldr	r3, .L336+28
	mov	r0, r6
	ldrb	r1, [r3]	@ zero_extendqisi2
	bl	set_one_cmd
	orrs	r5, r5, r0
	b	.L330
.L337:
	.align	2
.L336:
	.word	.LANCHOR27
	.word	.LANCHOR28
	.word	.LANCHOR29
	.word	.LANCHOR30
	.word	.LANCHOR32
	.word	.LANCHOR33
	.word	.LC43
	.word	.LANCHOR31
	.size	toshiba_vender_set_param, .-toshiba_vender_set_param
	.section	.text.toshiba_vender_pre_condition,"ax",%progbits
	.align	1
	.global	toshiba_vender_pre_condition
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_vender_pre_condition, %function
toshiba_vender_pre_condition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	movs	r3, #0
	movs	r2, #2
	str	r3, [sp]
	strd	r3, r2, [sp, #4]
	mov	r2, r3
	ldr	r1, .L343
	bl	set_cmd_with_nand_bus
	mov	r4, r0
	cbz	r0, .L338
	ldr	r0, .L343+4
	bl	NAND_Print
.L338:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L344:
	.align	2
.L343:
	.word	.LANCHOR34
	.word	.LC44
	.size	toshiba_vender_pre_condition, .-toshiba_vender_pre_condition
	.section	.text.toshiba_set_readretry,"ax",%progbits
	.align	1
	.global	toshiba_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_set_readretry, %function
toshiba_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L358
	ldrb	r2, [r6]	@ zero_extendqisi2
	subs	r2, r2, #16
	cmp	r2, #2
	bhi	.L353
	bl	toshiba_read_retry_clock_save
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, [r4, #176]
	cbnz	r3, .L347
	mov	r0, r4
	bl	toshiba_vender_pre_condition
.L347:
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r5, .L358+4
	cbz	r0, .L348
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L348:
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldr	r1, [r4, #176]
	cmp	r2, #17
	lsl	r3, r1, #2
	bne	.L349
	add	r3, r3, r1
	ldr	r1, .L358+8
.L357:
	ldr	r2, .L358+12
	add	r1, r1, r3
	movs	r3, #5
.L350:
	mov	r0, r4
	bl	toshiba_vender_set_param
	ldr	r3, [r5]
	mov	r6, r0
	cmp	r3, #1
	bne	.L352
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L352:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r4
	bl	toshiba_read_retry_clock_recover
.L345:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L349:
	cmp	r2, #18
	bne	.L351
	add	r3, r3, r1
	ldr	r1, .L358+16
	b	.L357
.L351:
	ldr	r1, .L358+20
	ldr	r2, .L358+24
	add	r1, r1, r3
	movs	r3, #4
	b	.L350
.L353:
	mvn	r6, #88
	b	.L345
.L359:
	.align	2
.L358:
	.word	.LANCHOR27
	.word	.LANCHOR37
	.word	.LANCHOR38
	.word	.LANCHOR35
	.word	.LANCHOR39
	.word	.LANCHOR40
	.word	.LANCHOR36
	.size	toshiba_set_readretry, .-toshiba_set_readretry
	.section	.text.toshiba_readretry_init,"ax",%progbits
	.align	1
	.global	toshiba_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_readretry_init, %function
toshiba_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L361
	push	{r4, lr}
	movs	r4, #0
	ldr	r3, [r3, #52]
	str	r4, [r0, #176]
	ldr	r0, .L361+4
	lsrs	r1, r3, #16
	strb	r1, [r2]
	lsrs	r1, r3, #8
	ldr	r2, .L361+8
	strb	r1, [r2]
	uxtb	r1, r1
	ldr	r2, .L361+12
	strb	r3, [r2]
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L362:
	.align	2
.L361:
	.word	.LANCHOR27
	.word	.LC45
	.word	.LANCHOR41
	.word	.LANCHOR42
	.size	toshiba_readretry_init, .-toshiba_readretry_init
	.section	.text.toshiba_readretry_exit,"ax",%progbits
	.align	1
	.global	toshiba_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_readretry_exit, %function
toshiba_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	toshiba_readretry_exit, .-toshiba_readretry_exit
	.section	.text.toshiba_exit_readretry,"ax",%progbits
	.align	1
	.global	toshiba_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_exit_readretry, %function
toshiba_exit_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, .L375
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r2, r2, #16
	cmp	r2, #2
	bhi	.L369
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r6, .L375+4
	cbz	r0, .L366
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r6]
.L366:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #17
	beq	.L370
	ldr	r1, .L375+8
	cmp	r3, #18
	ldr	r0, .L375+12
	it	eq
	moveq	r3, #5
	ldr	r2, .L375+16
	itt	ne
	movne	r3, #0
	movne	r2, r1
	ldr	r1, .L375+20
	it	ne
	movne	r1, r0
.L367:
	mov	r0, r4
	bl	toshiba_vender_set_param
	ldr	r3, [r6]
	mov	r5, r0
	cmp	r3, #1
	bne	.L368
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L368:
	mov	r0, r4
	bl	nand_disable_chip
.L364:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L370:
	movs	r3, #5
	ldr	r2, .L375+16
	ldr	r1, .L375+24
	b	.L367
.L369:
	mvn	r5, #87
	b	.L364
.L376:
	.align	2
.L375:
	.word	.LANCHOR27
	.word	.LANCHOR37
	.word	.LANCHOR36
	.word	.LANCHOR40+24
	.word	.LANCHOR35
	.word	.LANCHOR39+50
	.word	.LANCHOR38+35
	.size	toshiba_exit_readretry, .-toshiba_exit_readretry
	.section	.text.toshiba_read_page_end,"ax",%progbits
	.align	1
	.global	toshiba_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_page_end, %function
toshiba_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L387
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L377
	ldr	r0, .L387+4
	movs	r7, #0
	bl	NAND_Print_DBG
	ldr	r3, .L387+8
	movs	r2, #1
	ldr	r10, .L387+16
	mov	r8, r3
	str	r2, [r3]
.L379:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L382
	str	r7, [r5, #176]
	mov	r0, r5
	bl	toshiba_set_readretry
	mov	r4, r0
	cbnz	r0, .L380
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L381
	cbnz	r4, .L380
.L381:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L387+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L382:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	str	r3, [r8]
	bl	toshiba_exit_readretry
.L377:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L380:
	adds	r7, r7, #1
	b	.L379
.L388:
	.align	2
.L387:
	.word	g_nsi
	.word	.LC46
	.word	.LANCHOR29
	.word	.LC47
	.word	.LANCHOR41
	.size	toshiba_read_page_end, .-toshiba_read_page_end
	.section	.text.toshiba_special_init,"ax",%progbits
	.align	1
	.global	toshiba_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_special_init, %function
toshiba_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L394
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L390:
	cbnz	r5, .L391
	ldr	r3, .L394+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L394+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L394+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L392
	ldr	r0, .L394+16
	ldr	r5, .L394+20
	str	r5, [r0]
	ldr	r0, .L394+24
	bl	NAND_Print_DBG
.L389:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L391:
	mov	r0, r5
	bl	toshiba_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L390
.L392:
	ldr	r0, .L394+28
	bl	NAND_Print
	b	.L389
.L395:
	.align	2
.L394:
	.word	g_nsi
	.word	.LANCHOR27
	.word	.LANCHOR41
	.word	.LANCHOR42
	.word	df_read_page_end
	.word	toshiba_read_page_end
	.word	.LC48
	.word	.LC49
	.size	toshiba_special_init, .-toshiba_special_init
	.section	.text.toshiba_special_exit,"ax",%progbits
	.align	1
	.global	toshiba_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_special_exit, %function
toshiba_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L399
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L397:
	cbnz	r4, .L398
	ldr	r0, .L399+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L398:
	ldr	r4, [r4]
	b	.L397
.L400:
	.align	2
.L399:
	.word	g_nsi
	.word	.LC50
	.size	toshiba_special_exit, .-toshiba_special_exit
	.section	.text.hynix26nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix26nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_vender_set_param, %function
hynix26nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r5, r1
	sub	sp, sp, #24
	mov	r4, r2
	mov	r7, r3
	mov	r6, r0
	movs	r3, #54
	add	r10, sp, #24
	mov	r8, r5
	add	r7, r7, r4
	mov	fp, #1
	strb	r3, [r10, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L402:
	cmp	r4, r7
	bne	.L403
	mov	r0, r6
	bl	nand_disable_chip
	ldrb	r0, [r5, #3]	@ zero_extendqisi2
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldr	r0, .L404
	bl	NAND_Print_DBG
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L403:
	mov	r3, r4
	str	r8, [sp]
	movs	r2, #0
	mov	r1, r10
	strd	fp, fp, [sp, #4]
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r6
	adds	r4, r4, #1
	bl	set_one_cmd
	add	r8, r8, #1
	b	.L402
.L405:
	.align	2
.L404:
	.word	.LC15
	.size	hynix26nm_vender_set_param, .-hynix26nm_vender_set_param
	.section	.text.hynix26nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix26nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_set_readretry, %function
hynix26nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L415
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L414
	ldr	r4, .L415+4
	movs	r6, #0
	ldr	r7, .L415+8
	add	r5, sp, #4
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r7, r7, r1, lsl #3
.L408:
	cmp	r3, r6
	bhi	.L409
	subs	r2, r1, #2
	subs	r1, r1, #5
	cmp	r2, #4
	ldr	r8, .L415+24
	it	ls
	movls	r2, #0
	mov	r6, #0
	it	ls
	strbls	r2, [sp, #4]
	cmp	r1, #1
	it	ls
	movls	r2, #0
	mov	r1, r5
	it	ls
	strbls	r2, [sp, #5]
	ldr	r2, .L415+12
	bl	hynix26nm_vender_set_param
	mov	r7, r0
	ldr	r0, .L415+16
	bl	NAND_Print_DBG
.L412:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, r6
	bhi	.L413
	ldr	r0, .L415+20
	bl	NAND_Print_DBG
.L406:
	mov	r0, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L409:
	adds	r2, r0, r6
	ldrh	ip, [r7, r6, lsl #1]
	ldrb	r2, [r2, #48]	@ zero_extendqisi2
	add	r2, r2, ip
	sxth	r2, r2
	usat	r2, #8, r2
	strb	r2, [r5, r6]
	adds	r6, r6, #1
	b	.L408
.L413:
	ldrb	r1, [r5, r6]	@ zero_extendqisi2
	mov	r0, r8
	bl	NAND_Print_DBG
	adds	r6, r6, #1
	b	.L412
.L414:
	mvn	r7, #52
	b	.L406
.L416:
	.align	2
.L415:
	.word	.LANCHOR43
	.word	.LANCHOR44
	.word	.LANCHOR45
	.word	.LANCHOR46
	.word	.LC51
	.word	.LC7
	.word	.LC24
	.size	hynix26nm_set_readretry, .-hynix26nm_set_readretry
	.section	.text.hynix26nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix26nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_read_page_end, %function
hynix26nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L430
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L417
	ldr	r7, .L430+4
	mov	r10, #0
	mov	r8, r10
	ldr	r0, .L430+8
	bl	NAND_Print_DBG
.L419:
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, r10
	ble	.L423
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, r8
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
	mov	r4, r0
	cbz	r0, .L422
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
.L423:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
.L417:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L422:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L424
	cbnz	r4, .L425
.L424:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L430+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L423
.L425:
	add	r10, r10, #1
	b	.L419
.L431:
	.align	2
.L430:
	.word	g_nsi
	.word	.LANCHOR43
	.word	.LC52
	.word	.LC53
	.size	hynix26nm_read_page_end, .-hynix26nm_read_page_end
	.section	.text.hynix26nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix26nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_vender_get_param, %function
hynix26nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r2
	sub	sp, sp, #20
	mov	r7, r3
	mov	r6, r0
	movs	r3, #55
	add	r8, sp, #16
	add	r7, r7, r4
	mov	r10, #1
	mov	r5, r1
	strb	r3, [r8, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L433:
	cmp	r4, r7
	bne	.L434
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L434:
	mov	r3, r5
	mov	r2, r4
	str	r10, [sp]
	mov	r1, r8
	mov	r0, r6
	adds	r4, r4, #1
	bl	get_data_with_nand_bus_one_cmd
	adds	r5, r5, #1
	b	.L433
	.size	hynix26nm_vender_get_param, .-hynix26nm_vender_get_param
	.section	.text.hynix26nm_lsb_init,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_init, %function
hynix26nm_lsb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #264]
	movs	r0, #0
	ldr	r2, .L436
	ldr	r3, [r3, #52]
	lsrs	r1, r3, #16
	strb	r1, [r2]
	lsrs	r1, r3, #8
	ldr	r2, .L436+4
	strb	r1, [r2]
	ldr	r2, .L436+8
	strb	r3, [r2]
	movs	r2, #5
	ldr	r3, .L436+12
	strb	r2, [r3]
	movs	r2, #164
	ldr	r3, .L436+16
	strb	r2, [r3]
	movs	r2, #165
	strb	r2, [r3, #1]
	movs	r2, #176
	strb	r2, [r3, #2]
	movs	r2, #177
	strb	r2, [r3, #3]
	movs	r2, #201
	strb	r2, [r3, #4]
	movs	r2, #37
	ldr	r3, .L436+20
	strb	r2, [r3]
	strb	r2, [r3, #1]
	strb	r2, [r3, #2]
	strb	r2, [r3, #3]
	movs	r2, #1
	strb	r2, [r3, #4]
	bx	lr
.L437:
	.align	2
.L436:
	.word	.LANCHOR47
	.word	.LANCHOR43
	.word	.LANCHOR44
	.word	.LANCHOR48
	.word	.LANCHOR49
	.word	.LANCHOR50
	.size	hynix26nm_lsb_init, .-hynix26nm_lsb_init
	.section	.text.hynix26nm_lsb_enable,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_enable, %function
hynix26nm_lsb_enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	mov	r5, r0
	ldr	r4, .L441
	ldr	r2, .L441+4
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r1, .L441+8
	bl	hynix26nm_vender_get_param
	ldrb	r3, [r4]	@ zero_extendqisi2
	movs	r2, #0
	ldr	r0, .L441+8
	ldr	r4, .L441+12
.L439:
	cmp	r3, r2
	bhi	.L440
	ldr	r2, .L441+4
	mov	r1, sp
	mov	r0, r5
	bl	hynix26nm_vender_set_param
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L440:
	ldrb	r1, [r2, r0]	@ zero_extendqisi2
	ldrb	r6, [r2, r4]	@ zero_extendqisi2
	add	r1, r1, r6
	strb	r1, [sp, r2]
	adds	r2, r2, #1
	b	.L439
.L442:
	.align	2
.L441:
	.word	.LANCHOR48
	.word	.LANCHOR49
	.word	.LANCHOR51
	.word	.LANCHOR50
	.size	hynix26nm_lsb_enable, .-hynix26nm_lsb_enable
	.section	.text.hynix26nm_lsb_disable,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_disable, %function
hynix26nm_lsb_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L444
	ldr	r2, .L444+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L444+8
	bl	hynix26nm_vender_set_param
	movs	r0, #0
	pop	{r3, pc}
.L445:
	.align	2
.L444:
	.word	.LANCHOR48
	.word	.LANCHOR49
	.word	.LANCHOR51
	.size	hynix26nm_lsb_disable, .-hynix26nm_lsb_disable
	.section	.text.hynix26nm_lsb_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_exit, %function
hynix26nm_lsb_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r2, #1
	movs	r1, #48
	mov	r0, r4
	bl	set_one_cmd
	ldr	r0, .L447
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L448:
	.align	2
.L447:
	.word	.LC54
	.size	hynix26nm_lsb_exit, .-hynix26nm_lsb_exit
	.section	.text.hynix26nm_getdefaultparam,"ax",%progbits
	.align	1
	.global	hynix26nm_getdefaultparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_getdefaultparam, %function
hynix26nm_getdefaultparam:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r4, r0, #48
	ldr	r5, .L452
	mov	r6, r1
	mov	r1, r4
	ldr	r2, .L452+4
	ldrb	r3, [r5]	@ zero_extendqisi2
	bl	hynix26nm_vender_get_param
	mov	r3, r6
.L450:
	ldrb	r1, [r5]	@ zero_extendqisi2
	subs	r2, r3, r6
	cmp	r1, r2
	bgt	.L451
	pop	{r4, r5, r6, pc}
.L451:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	strb	r2, [r3], #1
	b	.L450
.L453:
	.align	2
.L452:
	.word	.LANCHOR44
	.word	.LANCHOR46
	.size	hynix26nm_getdefaultparam, .-hynix26nm_getdefaultparam
	.section	.text.hynix26nm_setdefaultparam,"ax",%progbits
	.align	1
	.global	hynix26nm_setdefaultparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_setdefaultparam, %function
hynix26nm_setdefaultparam:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L459
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L455:
	cmp	r3, r2
	bgt	.L456
	ldr	r7, .L459+4
	mov	r1, sp
	ldr	r2, .L459+8
	movs	r4, #0
	bl	hynix26nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L459+12
	bl	NAND_Print_DBG
.L457:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bgt	.L458
	ldr	r0, .L459+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L456:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L455
.L458:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L457
.L460:
	.align	2
.L459:
	.word	.LANCHOR44
	.word	.LC32
	.word	.LANCHOR46
	.word	.LC31
	.word	.LC7
	.size	hynix26nm_setdefaultparam, .-hynix26nm_setdefaultparam
	.section	.text.hynix26nm_get_default_param,"ax",%progbits
	.align	1
	.global	hynix26nm_get_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_get_default_param, %function
hynix26nm_get_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #24
	add	r1, sp, #20
	mov	r4, r0
	bl	hynix26nm_getdefaultparam
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldr	r1, [r4, #260]
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	str	r2, [sp, #8]
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	ldr	r0, .L462
	str	r2, [sp, #4]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r2, [r4, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix26nm_setdefaultparam
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L463:
	.align	2
.L462:
	.word	.LC55
	.size	hynix26nm_get_default_param, .-hynix26nm_get_default_param
	.section	.text.hynix26nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix26nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_readretry_init, %function
hynix26nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #264]
	ldr	r4, .L479
	ldr	r2, [r3, #52]
	ldr	r3, .L479+4
	ubfx	r1, r2, #16, #8
	strb	r1, [r3]
	lsrs	r3, r2, #8
	strb	r3, [r4]
	ldr	r4, .L479+8
	strb	r2, [r4]
	cbnz	r1, .L465
	ldr	r4, .L479+12
	movs	r5, #172
	uxtb	r3, r3
	ldr	r6, .L479+16
	uxtb	r2, r2
	strb	r5, [r4]
	movs	r5, #173
	strb	r5, [r4, #1]
	movs	r5, #174
	strb	r5, [r4, #2]
	movs	r5, #175
	strb	r5, [r4, #3]
	adds	r3, r3, #1
	ldr	r5, .L479+20
.L466:
	cmp	r3, r1
	bhi	.L476
.L469:
	add	r2, r0, #48
	add	r1, r0, #176
	movs	r3, #0
	str	r3, [r0, #176]
.L475:
	strb	r3, [r2], #1
	cmp	r1, r2
	bne	.L475
	bl	hynix26nm_get_default_param
	movs	r0, #0
	b	.L464
.L467:
	ldrh	r7, [r5, r4, lsl #1]
	strh	r7, [r6, r4, lsl #1]	@ movhi
	adds	r4, r4, #1
.L468:
	cmp	r4, r2
	bcc	.L467
	adds	r1, r1, #1
	adds	r5, r5, #8
	adds	r6, r6, #8
	b	.L466
.L476:
	movs	r4, #0
	b	.L468
.L465:
	cmp	r1, #1
	bne	.L470
	ldr	r1, .L479+12
	movs	r4, #167
	uxtb	r3, r3
	ldr	r5, .L479+24
	ldr	r6, .L479+16
	uxtb	r2, r2
	strb	r4, [r1]
	movs	r4, #173
	strb	r4, [r1, #1]
	movs	r4, #174
	strb	r4, [r1, #2]
	movs	r4, #175
	strb	r4, [r1, #3]
	adds	r3, r3, #1
	movs	r4, #0
.L471:
	cmp	r3, r4
	bls	.L469
	movs	r1, #0
	b	.L473
.L472:
	ldrh	r7, [r5, r1, lsl #1]
	strh	r7, [r6, r1, lsl #1]	@ movhi
	adds	r1, r1, #1
.L473:
	cmp	r1, r2
	bcc	.L472
	adds	r4, r4, #1
	adds	r5, r5, #8
	adds	r6, r6, #8
	b	.L471
.L470:
	ldr	r0, .L479+28
	bl	NAND_Print
	mvn	r0, #53
.L464:
	pop	{r3, r4, r5, r6, r7, pc}
.L480:
	.align	2
.L479:
	.word	.LANCHOR43
	.word	.LANCHOR47
	.word	.LANCHOR44
	.word	.LANCHOR46
	.word	.LANCHOR45
	.word	.LANCHOR52
	.word	.LANCHOR53
	.word	.LC56
	.size	hynix26nm_readretry_init, .-hynix26nm_readretry_init
	.section	.text.hynix26nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_readretry_exit, %function
hynix26nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L482
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix26nm_setdefaultparam
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L483:
	.align	2
.L482:
	.word	.LC57
	.size	hynix26nm_readretry_exit, .-hynix26nm_readretry_exit
	.section	.text.hynix26nm_special_init,"ax",%progbits
	.align	1
	.global	hynix26nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_special_init, %function
hynix26nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L489
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L485:
	cbnz	r5, .L486
	ldr	r3, .L489+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L489+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L489+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L487
	ldr	r0, .L489+16
	ldr	r5, .L489+20
	str	r5, [r0]
	ldr	r0, .L489+24
	bl	NAND_Print_DBG
.L484:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L486:
	mov	r0, r5
	bl	hynix26nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L485
.L487:
	ldr	r0, .L489+28
	bl	NAND_Print
	b	.L484
.L490:
	.align	2
.L489:
	.word	g_nsi
	.word	.LANCHOR47
	.word	.LANCHOR43
	.word	.LANCHOR44
	.word	df_read_page_end
	.word	hynix26nm_read_page_end
	.word	.LC58
	.word	.LC59
	.size	hynix26nm_special_init, .-hynix26nm_special_init
	.section	.text.hynix26nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_special_exit, %function
hynix26nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L494
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L492:
	cbnz	r4, .L493
	ldr	r0, .L494+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L493:
	mov	r0, r4
	bl	hynix26nm_readretry_exit
	ldr	r4, [r4]
	b	.L492
.L495:
	.align	2
.L494:
	.word	g_nsi
	.word	.LC60
	.size	hynix26nm_special_exit, .-hynix26nm_special_exit
	.section	.text.sandisk_A19_dsp_on,"ax",%progbits
	.align	1
	.global	sandisk_A19_dsp_on
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_dsp_on, %function
sandisk_A19_dsp_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L497
	push	{r4, lr}
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #38
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L498:
	.align	2
.L497:
	.word	g_nsi
	.size	sandisk_A19_dsp_on, .-sandisk_A19_dsp_on
	.section	.text.sandisk_A19_cmd25,"ax",%progbits
	.align	1
	.global	sandisk_A19_cmd25
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_cmd25, %function
sandisk_A19_cmd25:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L500
	push	{r4, lr}
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #37
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L501:
	.align	2
.L500:
	.word	g_nsi
	.size	sandisk_A19_cmd25, .-sandisk_A19_cmd25
	.section	.text.sandisk_A19_set_lmflgfix_next,"ax",%progbits
	.align	1
	.global	sandisk_A19_set_lmflgfix_next
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_set_lmflgfix_next, %function
sandisk_A19_set_lmflgfix_next:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L507
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	sub	sp, sp, #24
	ldr	r1, [r0]
	add	r7, sp, #22
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #92
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #197
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #0
	movs	r2, #1
	strb	r3, [sp, #21]
	movs	r3, #85
	strb	r3, [sp, #23]
	add	r1, sp, #23
	add	r3, sp, #21
	strd	r2, r2, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	r2, [sp, #22]
	bl	set_cmd_with_nand_bus
	ldr	r3, .L507+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L503
	movs	r3, #34
.L506:
	strb	r5, [sp, #22]
	movs	r5, #1
	strb	r3, [sp, #21]
	mov	r8, #85
	add	r3, sp, #21
	mov	r2, r5
	add	r1, sp, #23
	strd	r5, r5, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	movs	r6, #0
	strb	r8, [sp, #23]
	bl	set_cmd_with_nand_bus
	add	r3, sp, #21
	mov	r2, r5
	add	r1, sp, #23
	strd	r5, r5, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	r6, [sp, #21]
	strb	r6, [sp, #22]
	strb	r8, [sp, #23]
	bl	set_cmd_with_nand_bus
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r6
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L503:
	cmp	r3, #53
	ite	eq
	moveq	r3, #37
	movne	r3, #35
	b	.L506
.L508:
	.align	2
.L507:
	.word	g_nsi
	.word	.LANCHOR54
	.size	sandisk_A19_set_lmflgfix_next, .-sandisk_A19_set_lmflgfix_next
	.section	.text.sandisk_A19_readretry_init,"ax",%progbits
	.align	1
	.global	sandisk_A19_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_readretry_init, %function
sandisk_A19_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L512
	push	{r4, lr}
	movs	r4, #0
	ldr	r3, [r3, #52]
	str	r4, [r0, #176]
	ubfx	r1, r3, #16, #8
	ldr	r0, .L512+4
	strb	r1, [r2]
	lsrs	r2, r3, #8
	strb	r2, [r0]
	ldr	r0, .L512+8
	strb	r3, [r0]
	sub	r3, r1, #50
	cmp	r3, #3
	bls	.L510
	ldr	r0, .L512+12
	bl	NAND_Print
	mvn	r0, #98
.L509:
	pop	{r4, pc}
.L510:
	uxtb	r1, r2
	ldr	r0, .L512+16
	bl	NAND_Print_DBG
	mov	r0, r4
	b	.L509
.L513:
	.align	2
.L512:
	.word	.LANCHOR54
	.word	.LANCHOR55
	.word	.LANCHOR56
	.word	.LC61
	.word	.LC62
	.size	sandisk_A19_readretry_init, .-sandisk_A19_readretry_init
	.section	.text.sandisk_A19_readretry_exit,"ax",%progbits
	.align	1
	.global	sandisk_A19_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_readretry_exit, %function
sandisk_A19_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	sandisk_A19_readretry_exit, .-sandisk_A19_readretry_exit
	.section	.text.sandisk_A19_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_retry_clock_save, %function
sandisk_A19_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L516
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L516+4
	ldr	r1, .L516+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L516+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L517:
	.align	2
.L516:
	.word	NAND_GetClk
	.word	.LANCHOR57
	.word	.LANCHOR58
	.word	NAND_SetClk
	.size	sandisk_A19_read_retry_clock_save, .-sandisk_A19_read_retry_clock_save
	.section	.text.sandisk_A19_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_retry_clock_recover, %function
sandisk_A19_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L519
	ldr	r2, .L519+4
	ldr	r1, .L519+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L520:
	.align	2
.L519:
	.word	NAND_SetClk
	.word	.LANCHOR57
	.word	.LANCHOR58
	.size	sandisk_A19_read_retry_clock_recover, .-sandisk_A19_read_retry_clock_recover
	.section	.text.sandisk_A19_vender_set_param,"ax",%progbits
	.align	1
	.global	sandisk_A19_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_vender_set_param, %function
sandisk_A19_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	movs	r4, #1
	movs	r3, #4
	str	r1, [sp]
	strd	r3, r4, [sp, #4]
	mov	r3, r2
	ldr	r1, .L522
	mov	r2, r4
	bl	set_cmd_with_nand_bus
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L523:
	.align	2
.L522:
	.word	.LANCHOR59
	.size	sandisk_A19_vender_set_param, .-sandisk_A19_vender_set_param
	.section	.text.sandisk_A19_set_readretry,"ax",%progbits
	.align	1
	.global	sandisk_A19_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_set_readretry, %function
sandisk_A19_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, .L529
	ldr	r1, [r4, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L525
	ldr	r3, .L529+4
	add	r1, r3, r1, lsl #2
.L526:
	movs	r3, #1
	ldr	r2, .L529+8
	mov	r0, r4
	bl	sandisk_A19_vender_set_param
	movs	r2, #0
	mov	r5, r0
	movs	r1, #93
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L525:
	cmp	r3, #53
	lsl	r1, r1, #2
	ite	eq
	ldreq	r3, .L529+12
	ldrne	r3, .L529+16
	add	r1, r1, r3
	b	.L526
.L530:
	.align	2
.L529:
	.word	.LANCHOR54
	.word	.LANCHOR60
	.word	.LANCHOR63
	.word	.LANCHOR61
	.word	.LANCHOR62
	.size	sandisk_A19_set_readretry, .-sandisk_A19_set_readretry
	.section	.text.sandisk_A19_exit_readretry,"ax",%progbits
	.align	1
	.global	sandisk_A19_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_exit_readretry, %function
sandisk_A19_exit_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	movs	r3, #0
	mov	r4, r0
	add	r5, sp, #8
	str	r3, [r5, #-4]!
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	mov	r1, r5
	movs	r3, #1
	ldr	r2, .L532
	mov	r0, r4
	bl	sandisk_A19_vender_set_param
	mov	r5, r0
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L533:
	.align	2
.L532:
	.word	.LANCHOR63
	.size	sandisk_A19_exit_readretry, .-sandisk_A19_exit_readretry
	.section	.text.sandisk_A19_special_init,"ax",%progbits
	.align	1
	.global	sandisk_A19_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_special_init, %function
sandisk_A19_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L539
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L535:
	cbnz	r5, .L536
	ldr	r3, .L539+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L539+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L539+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L537
	ldr	r0, .L539+16
	ldr	r5, .L539+20
	str	r5, [r0]
	ldr	r0, .L539+24
	bl	NAND_Print_DBG
.L534:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L536:
	mov	r0, r5
	bl	sandisk_A19_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L535
.L537:
	ldr	r0, .L539+28
	bl	NAND_Print
	b	.L534
.L540:
	.align	2
.L539:
	.word	g_nsi
	.word	.LANCHOR54
	.word	.LANCHOR55
	.word	.LANCHOR56
	.word	df_read_page_end
	.word	sandisk_A19_read_page_end
	.word	.LC63
	.word	.LC64
	.size	sandisk_A19_special_init, .-sandisk_A19_special_init
	.section	.text.sandisk_A19_special_exit,"ax",%progbits
	.align	1
	.global	sandisk_A19_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_special_exit, %function
sandisk_A19_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L552
	push	{r4, r5, r6, lr}
	movs	r6, #0
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L542:
	cbnz	r4, .L545
	ldr	r0, .L552+4
	mov	r5, r4
	bl	NAND_Print_DBG
	b	.L541
.L545:
	ldrb	r3, [r4, #254]	@ zero_extendqisi2
	cbz	r3, .L543
	str	r6, [r4, #196]
	mov	r0, r4
	bl	sandisk_toggle_vendor_specific_setting
	mov	r5, r0
	cbz	r0, .L543
	ldr	r1, .L552+8
	ldr	r0, .L552+12
	bl	NAND_Print
.L541:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L543:
	ldr	r4, [r4]
	b	.L542
.L553:
	.align	2
.L552:
	.word	g_nsi
	.word	.LC66
	.word	.LANCHOR64
	.word	.LC65
	.size	sandisk_A19_special_exit, .-sandisk_A19_special_exit
	.section	.text.sandisk_A19_check_bad_block_first_burn,"ax",%progbits
	.align	1
	.global	sandisk_A19_check_bad_block_first_burn
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_check_bad_block_first_burn, %function
sandisk_A19_check_bad_block_first_burn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L558
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r8, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	ldr	r4, [r0, #260]
	mov	r5, r0
	ldr	r2, [r0, #20]
	ldr	r1, [r8, #4]
	ldr	r3, [r4, #12]
	add	r10, r4, #32
	ldr	r0, [r0, #24]
	cmp	r2, r3
	bcs	.L555
	cmp	r1, r0
	bcc	.L556
.L555:
	strd	r1, r0, [sp]
	ldr	r1, [r4, #8]
	mvn	r4, #9
	ldr	r0, .L558+4
	bl	NAND_Print
.L554:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L556:
	mov	r0, r4
	movs	r6, #1
	bl	ndfc_disable_randomize
	mov	r0, r5
	movs	r7, #0
	bl	nand_read_chip_status_ready
	mov	r0, r5
	bl	nand_enable_chip
	mov	r0, r10
	bl	ndfc_clean_cmd_seq
	movs	r3, #162
	ldrd	r1, r2, [r8, #4]
	strd	r6, r3, [r4, #40]
	movs	r3, #128
	strd	r6, r3, [r4, #104]
	str	r7, [r4, #32]
	strd	r6, r7, [r4, #48]
	strd	r6, r7, [r4, #112]
	ldr	r0, [r5, #36]
	bl	get_row_addr
	movs	r3, #5
	mov	r2, r0
	str	r3, [r4, #136]
	add	r3, r4, #120
	str	r3, [sp]
	movs	r1, #2
	movs	r3, #3
	mov	r0, r7
	bl	fill_cmd_addr
	movs	r3, #16
	strd	r6, r6, [r4, #176]
	strd	r6, r3, [r4, #168]
	mov	r1, r10
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	mov	r0, r5
	bl	nand_read_chip_status_ready
	mov	r4, r0
	mov	r0, r5
	bl	nand_disable_chip
	b	.L554
.L559:
	.align	2
.L558:
	.word	g_nsi
	.word	.LC67
	.size	sandisk_A19_check_bad_block_first_burn, .-sandisk_A19_check_bad_block_first_burn
	.section	.text.generic_special_init,"ax",%progbits
	.align	1
	.global	generic_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	generic_special_init, %function
generic_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r2, .L561
	ldr	r3, .L561+4
	ldr	r0, .L561+8
	str	r2, [r3]
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, pc}
.L562:
	.align	2
.L561:
	.word	generic_read_page_end_not_retry
	.word	df_read_page_end
	.word	.LC68
	.size	generic_special_init, .-generic_special_init
	.section	.text.generic_special_exit,"ax",%progbits
	.align	1
	.global	generic_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	generic_special_exit, %function
generic_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, .L564
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, pc}
.L565:
	.align	2
.L564:
	.word	.LC69
	.size	generic_special_exit, .-generic_special_exit
	.section	.text.hynix16nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix16nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_vender_set_param, %function
hynix16nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	hynix26nm_vender_set_param
	.size	hynix16nm_vender_set_param, .-hynix16nm_vender_set_param
	.section	.text.hynix16nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix16nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_set_readretry, %function
hynix16nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L572
	push	{r0, r1, r4, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L571
	ldr	r3, .L572+4
	lsls	r1, r1, #2
	movs	r2, #0
	ldrb	r3, [r3]	@ zero_extendqisi2
.L569:
	cmp	r3, r2
	bhi	.L570
	ldr	r2, .L572+8
	mov	r1, sp
	bl	hynix26nm_vender_set_param
.L567:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L570:
	adds	r4, r1, r2
	add	r4, r4, r0
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L569
.L571:
	mvn	r0, #73
	b	.L567
.L573:
	.align	2
.L572:
	.word	.LANCHOR65
	.word	.LANCHOR66
	.word	.LANCHOR67
	.size	hynix16nm_set_readretry, .-hynix16nm_set_readretry
	.section	.text.hynix16nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix16nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_read_page_end, %function
hynix16nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L587
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L574
	ldr	r7, .L587+4
	mov	r10, #0
	mov	r8, r10
	ldr	r0, .L587+8
	bl	NAND_Print_DBG
.L576:
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, r10
	ble	.L580
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, r8
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
	mov	r4, r0
	cbz	r0, .L579
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
.L580:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
.L574:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L579:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L581
	cbnz	r4, .L582
.L581:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L587+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L580
.L582:
	add	r10, r10, #1
	b	.L576
.L588:
	.align	2
.L587:
	.word	g_nsi
	.word	.LANCHOR65
	.word	.LC70
	.word	.LC71
	.size	hynix16nm_read_page_end, .-hynix16nm_read_page_end
	.section	.text.hynix16nm_get_special_info,"ax",%progbits
	.align	1
	.global	hynix16nm_get_special_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_special_info, %function
hynix16nm_get_special_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r0, .L602
	mov	r8, r1
	mov	r7, r2
	mov	r10, r3
	bl	NAND_Print_DBG
	mov	r0, sp
	bl	physic_info_get_offset
	cbz	r0, .L596
	ldr	r0, .L602+4
	bl	NAND_Print
	movs	r0, #1
.L589:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L596:
	ldr	fp, .L602+8
	movs	r5, #4
	add	r6, r4, #9728
.L590:
	mov	r1, r5
	mov	r0, fp
	bl	NAND_Print_DBG
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #165
	beq	.L592
	mov	r3, r4
	add	r2, sp, #4
	ldr	r1, [sp]
	mov	r0, r5
	bl	physic_info_get_one_copy
.L592:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #165
	bne	.L593
	add	r2, r4, #9728
	add	r1, r4, #10752
	adds	r2, r2, #2
	movs	r3, #0
.L594:
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	cmp	r2, r1
	add	r3, r3, r0
	uxtb	r3, r3
	bne	.L594
	movw	r2, #9729
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L595
	mla	r1, r7, r10, r4
	mov	r0, r8
	mov	r2, r7
	add	r1, r1, #9728
	adds	r1, r1, #2
	bl	NAND_Memcpy
	movs	r0, #0
	b	.L589
.L595:
	movs	r3, #0
	strb	r3, [r6]
.L593:
	adds	r5, r5, #1
	cmp	r5, #51
	bne	.L590
	mov	r0, #-1
	b	.L589
.L603:
	.align	2
.L602:
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.size	hynix16nm_get_special_info, .-hynix16nm_get_special_info
	.section	.text.hynix20nm_init_readretry_param,"ax",%progbits
	.align	1
	.global	hynix20nm_init_readretry_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_init_readretry_param, %function
hynix20nm_init_readretry_param:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #64
	ldr	r0, [r3, #16]
	lsls	r0, r0, #9
	bl	nand_get_temp_buf
	mov	r6, r0
	cbnz	r0, .L605
	mvn	r5, #93
	ldr	r0, .L613
	bl	NAND_Print_DBG
.L604:
	mov	r0, r5
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L605:
	mov	r0, #32768
	bl	nand_get_temp_buf
	cbnz	r0, .L607
	ldr	r3, [r4, #264]
	mov	r0, r6
	mvn	r5, #75
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	ldr	r0, .L613+4
	bl	NAND_Print
	b	.L604
.L607:
	ldr	r3, [r4, #16]
	movs	r2, #64
	mov	r1, r6
	bl	hynix16nm_get_special_info
	ldr	r3, [r4, #260]
	mov	r5, r0
	cbnz	r0, .L608
	ldr	r7, .L613+8
	ldr	r8, .L613+24
	ldr	r2, [r4, #16]
	ldr	r1, [r3, #8]
	ldr	r0, .L613+12
	bl	NAND_Print_DBG
.L610:
	ldrb	r1, [r6, r5]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	and	r3, r5, #7
	cmp	r3, #7
	bne	.L609
	mov	r0, r8
	bl	NAND_Print_DBG
.L609:
	adds	r5, r5, #1
	cmp	r5, #64
	bne	.L610
	mov	r1, r6
	mov	r0, r4
	bl	hynix20nm_saveotpvalue
	mov	r0, r4
	bl	hynix20nm_set_default_param
	mov	r5, r0
.L611:
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	b	.L604
.L608:
	ldr	r1, [r3, #8]
	ldr	r0, .L613+16
	bl	NAND_Print_DBG
	mov	r1, sp
	mov	r0, r4
	bl	hynix20nm_getotpparam
	mov	r5, r0
	cmp	r0, #0
	bne	.L611
	mov	r0, r4
	bl	hynix20nm_set_default_param
	ldr	r3, [r4, #260]
	ldr	r0, .L613+20
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	b	.L611
.L614:
	.align	2
.L613:
	.word	.LC75
	.word	.LC76
	.word	.LC78
	.word	.LC77
	.word	.LC79
	.word	.LC80
	.word	.LC7
	.size	hynix20nm_init_readretry_param, .-hynix20nm_init_readretry_param
	.section	.text.hynix20nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix20nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_readretry_init, %function
hynix20nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L624
	push	{r4, lr}
	ldr	r3, [r3, #52]
	ubfx	r1, r3, #16, #8
	strb	r1, [r2]
	lsrs	r4, r3, #8
	ldr	r2, .L624+4
	cmp	r1, #2
	strb	r4, [r2]
	ldr	r2, .L624+8
	strb	r3, [r2]
	bne	.L616
	ldr	r3, .L624+12
	movs	r2, #204
	strb	r2, [r3]
	movs	r2, #191
	strb	r2, [r3, #1]
	movs	r2, #170
	strb	r2, [r3, #2]
	movs	r2, #171
	strb	r2, [r3, #3]
	movs	r2, #205
	strb	r2, [r3, #4]
	movs	r2, #173
	strb	r2, [r3, #5]
	movs	r2, #174
	strb	r2, [r3, #6]
	movs	r2, #175
.L623:
	strb	r2, [r3, #7]
	add	r1, r0, #176
	add	r2, r0, #48
	movs	r3, #0
	str	r3, [r0, #176]
.L620:
	strb	r3, [r2], #1
	cmp	r2, r1
	bne	.L620
	pop	{r4, lr}
	b	hynix20nm_init_readretry_param
.L616:
	cmp	r1, #3
	bne	.L618
	ldr	r3, .L624+12
	movs	r2, #176
	strb	r2, [r3]
	movs	r2, #177
	strb	r2, [r3, #1]
	movs	r2, #178
	strb	r2, [r3, #2]
	movs	r2, #179
	strb	r2, [r3, #3]
	movs	r2, #180
	strb	r2, [r3, #4]
	movs	r2, #181
	strb	r2, [r3, #5]
	movs	r2, #182
	strb	r2, [r3, #6]
	movs	r2, #183
	b	.L623
.L618:
	ldr	r0, .L624+16
	bl	NAND_Print
	mvn	r0, #92
	pop	{r4, pc}
.L625:
	.align	2
.L624:
	.word	.LANCHOR13
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	.LANCHOR12
	.word	.LC56
	.size	hynix20nm_readretry_init, .-hynix20nm_readretry_init
	.section	.text.hynix20nm_special_init,"ax",%progbits
	.align	1
	.global	hynix20nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_special_init, %function
hynix20nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L631
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L627:
	cbnz	r5, .L628
	ldr	r3, .L631+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L631+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L631+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L629
	ldr	r0, .L631+16
	ldr	r5, .L631+20
	str	r5, [r0]
	ldr	r0, .L631+24
	bl	NAND_Print_DBG
.L626:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L628:
	mov	r0, r5
	bl	hynix20nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L627
.L629:
	ldr	r0, .L631+28
	bl	NAND_Print
	b	.L626
.L632:
	.align	2
.L631:
	.word	g_nsi
	.word	.LANCHOR13
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	df_read_page_end
	.word	hynix20nm_read_page_end
	.word	.LC81
	.word	.LC82
	.size	hynix20nm_special_init, .-hynix20nm_special_init
	.section	.text.hynix16nm_write_page_FF,"ax",%progbits
	.align	1
	.global	hynix16nm_write_page_FF
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_write_page_FF, %function
hynix16nm_write_page_FF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L652
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	sub	sp, sp, #24
	mov	r6, r1
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	ldr	r4, [r0, #260]
	mov	r5, r0
	ldr	r2, [r0, #20]
	ldr	r1, [r10, #4]
	ldr	r3, [r4, #12]
	add	r7, r4, #32
	ldr	ip, [r0, #24]
	cmp	r2, r3
	bcs	.L634
	cmp	r1, ip
	bcc	.L635
.L634:
	strd	r1, ip, [sp]
	ldr	r1, [r4, #8]
	mvn	r4, #107
	ldr	r0, .L652+4
	bl	NAND_Print
.L633:
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L635:
	bl	nand_read_chip_status_ready
	mov	r0, r5
	bl	nand_enable_chip
	ldr	r0, [r5, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r5, #260]
	bl	ndfc_disable_ecc
	mov	r0, r7
	bl	ndfc_clean_cmd_seq
	cmp	r6, #8
	beq	.L644
	cmp	r6, #16
	beq	.L645
	movs	r3, #0
	str	r3, [sp, #12]
.L649:
	str	r3, [sp, #8]
	add	r3, r4, #56
	str	r3, [sp, #16]
	mov	r8, #0
	ldr	r3, [sp, #8]
	mov	r6, r8
	subs	r3, r3, #1
	str	r3, [sp, #20]
.L638:
	ldr	r3, [sp, #8]
	lsl	fp, r6, #10
	cmp	r6, r3
	bne	.L642
	movs	r3, #0
	movs	r1, #16
	str	r3, [r4, #32]
	movs	r3, #1
	strd	r3, r1, [r4, #40]
	mov	r1, r7
	str	r3, [r4, #48]
	str	r3, [r4, #116]
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	mov	r0, r5
	bl	nand_read_chip_status_ready
	mov	r4, r0
	cbz	r0, .L643
	ldr	r0, .L652+8
	bl	NAND_Print
.L643:
	mov	r0, r5
	bl	nand_disable_chip
	b	.L633
.L644:
	mov	r3, #832
	str	r3, [sp, #12]
	movs	r3, #9
	b	.L649
.L645:
	mov	r3, #640
	str	r3, [sp, #12]
	movs	r3, #18
	b	.L649
.L642:
	ldr	r1, [r10, #16]
	cbnz	r6, .L639
	movs	r3, #1
	movs	r0, #128
	mov	r2, #1024
	strd	r3, r0, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #88]
	strd	r3, r3, [r4, #80]
	str	r1, [r4, #100]
	str	r2, [r4, #92]
	str	r3, [r4, #76]
	ldrd	r1, r2, [r10, #4]
	str	r6, [r4, #32]
	ldr	r0, [r5, #36]
	bl	get_row_addr
	movs	r3, #5
	mov	r8, r0
	str	r3, [r4, #72]
	mov	r2, r0
	ldr	r3, [sp, #16]
	movs	r1, #2
	str	r3, [sp]
	movs	r3, #3
.L650:
	mov	r0, fp
	adds	r6, r6, #1
	bl	fill_cmd_addr
	mov	r1, r7
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	b	.L638
.L639:
	ldr	r3, [sp, #20]
	add	r1, r1, fp
	movs	r2, #133
	str	r1, [r4, #100]
	str	r2, [r4, #44]
	movs	r2, #1
	cmp	r3, r6
	str	r2, [r4, #40]
	ite	eq
	ldreq	r1, [sp, #12]
	movne	r1, #1024
	str	r2, [r4, #48]
	movs	r3, #0
	str	r2, [r4, #88]
	strd	r2, r2, [r4, #80]
	str	r2, [r4, #76]
	ldr	r2, [sp, #16]
	str	r1, [r4, #92]
	movs	r1, #2
	str	r3, [r4, #32]
	str	r1, [r4, #72]
	str	r2, [sp]
	mov	r2, r8
	b	.L650
.L653:
	.align	2
.L652:
	.word	g_nsi
	.word	.LC67
	.word	.LC83
	.size	hynix16nm_write_page_FF, .-hynix16nm_write_page_FF
	.section	.text.hynix16nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix16nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_vender_get_param, %function
hynix16nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	hynix26nm_vender_get_param
	.size	hynix16nm_vender_get_param, .-hynix16nm_vender_get_param
	.section	.text.hynix16nm_major_check_byte,"ax",%progbits
	.align	1
	.global	hynix16nm_major_check_byte
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_major_check_byte, %function
hynix16nm_major_check_byte:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	ldr	r8, [sp, #44]
	mov	r5, r2
	mov	fp, r3
	str	r1, [sp, #4]
	cmp	r2, r8, lsr #1
	bcs	.L674
	mov	r2, r8
	mov	r1, r5
	ldr	r0, .L677
	bl	NAND_Print
	mvn	r0, #106
	movs	r3, #255
	strb	r3, [r10]
.L655:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L660:
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	tst	lr, r1
	ite	ne
	addne	r2, r2, #1
	addeq	r3, r3, #1
.L671:
	cmp	ip, r0
	bne	.L660
	cmp	r5, r2
	bcs	.L661
.L676:
	orrs	r7, r7, r1
	uxtb	r7, r7
.L662:
	adds	r6, r6, #1
.L669:
	adds	r4, r4, #1
	cmp	r4, #8
	bne	.L656
	cmp	r6, #8
	iteet	ne
	movne	r3, #255
	strbeq	r7, [r10]
	moveq	r0, #0
	strbne	r3, [r10]
	it	ne
	mvnne	r0, #79
	b	.L655
.L667:
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	tst	lr, r1
	ite	ne
	addne	r3, r3, #1
	addeq	r2, r2, #1
	b	.L664
.L674:
	movs	r6, #0
	mov	r7, r6
	mov	r4, r6
.L656:
	movs	r1, #1
	movs	r3, #0
	lsls	r1, r1, r4
	mov	r0, fp
	add	ip, r8, fp
	mov	r2, r3
	b	.L671
.L661:
	cmp	r5, r3
	bcc	.L662
	ldr	r0, [sp, #4]
	cmp	r0, #1
	bne	.L663
	ldr	r0, [sp, #40]
	movs	r3, #0
	mov	r2, r3
	add	ip, r8, r0
.L664:
	cmp	r0, ip
	bne	.L667
	cmp	r5, r2
	bcc	.L676
	cmp	r5, r3
	bcc	.L662
.L663:
	mov	r1, r4
	ldr	r0, .L677+4
	bl	NAND_Print
	mov	r1, r4
	ldr	r0, .L677+8
	bl	NAND_Print
	b	.L669
.L678:
	.align	2
.L677:
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.size	hynix16nm_major_check_byte, .-hynix16nm_major_check_byte
	.section	.text.hynix16nm_get_read_retry_cfg,"ax",%progbits
	.align	1
	.global	hynix16nm_get_read_retry_cfg
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_read_retry_cfg, %function
hynix16nm_get_read_retry_cfg:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #72
	add	r4, sp, #8
	mov	fp, r0
	mov	r5, r1
	mov	r8, r2
	movs	r1, #0
	movs	r2, #32
	mov	r0, r4
	add	r7, sp, #40
	mov	r10, r3
	bl	memset
	movs	r2, #32
	movs	r1, #0
	mov	r0, r7
	bl	memset
	movs	r3, #0
.L680:
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	strb	r2, [r4, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L680
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #0
	mov	r0, fp
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L681
	ldr	r0, .L702
.L701:
	bl	NAND_Print
.L679:
	mov	r0, r6
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L681:
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldr	r0, .L702+4
	bl	NAND_Print_DBG
	add	r2, r10, #7
	movs	r3, #0
.L683:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	strb	r1, [r4, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L683
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #0
	mov	r0, r5
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L684
	ldr	r0, .L702+8
	b	.L701
.L684:
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldr	r0, .L702+12
	bl	NAND_Print_DBG
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldrb	r2, [r5]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L685
	cmp	r2, #4
	beq	.L692
.L685:
	ldr	r0, .L702+16
	mvn	r6, #80
	bl	NAND_Print
	b	.L679
.L688:
	adds	r5, r5, #1
	cmp	r5, #32
	bne	.L686
	movs	r6, #0
	b	.L689
.L692:
	movs	r5, #0
.L686:
	add	r2, r10, r5
	movs	r3, #0
.L687:
	ldrb	r1, [r2, #16]	@ zero_extendqisi2
	adds	r2, r2, #64
	strb	r1, [r4, r3]
	ldrb	r1, [r2, #-16]	@ zero_extendqisi2
	strb	r1, [r7, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L687
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #1
	add	r0, r8, r5
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L688
	mov	r1, r5
	ldr	r0, .L702+20
	bl	NAND_Print
.L689:
	ldr	r7, .L702+24
	movs	r4, #0
	ldr	r5, .L702+28
.L691:
	lsls	r3, r4, #29
	bne	.L690
	cbz	r4, .L690
	mov	r0, r7
	bl	NAND_Print_DBG
.L690:
	ldrb	r1, [r8, r4]	@ zero_extendqisi2
	mov	r0, r5
	adds	r4, r4, #1
	bl	NAND_Print_DBG
	cmp	r4, #32
	bne	.L691
	ldr	r0, .L702+24
	bl	NAND_Print_DBG
	b	.L679
.L703:
	.align	2
.L702:
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC7
	.word	.LC93
	.size	hynix16nm_get_read_retry_cfg, .-hynix16nm_get_read_retry_cfg
	.section	.text.hynix16nm_read_otp_info_hynix,"ax",%progbits
	.align	1
	.global	hynix16nm_read_otp_info_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_read_otp_info_hynix, %function
hynix16nm_read_otp_info_hynix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r8, r1
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #260]
	ldr	r0, .L709
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #1148]
	ldr	r1, [r3, #1116]
	bl	NAND_Print_DBG
	cmp	r8, #0
	bne	.L705
	mov	r0, r4
	bl	nand_disable_chip
	ldr	r0, .L709+4
	bl	NAND_Print
	mvn	r0, #78
.L704:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L705:
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	movs	r6, #1
	bl	set_one_cmd
	add	r7, sp, #20
	movs	r3, #82
	movs	r5, #56
	mov	fp, #54
	strb	r3, [sp, #20]
	movs	r2, #0
	add	r3, sp, #24
	add	r1, sp, #16
	strd	r6, r6, [sp, #4]
	mov	r0, r4
	str	r7, [sp]
	mov	r10, #48
	strb	r5, [sp, #24]
	strb	fp, [sp, #16]
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #23
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #4
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #25
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #2
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	mov	r3, #528
	movs	r2, #0
	str	r3, [sp]
	add	r1, sp, #16
	mov	r3, r8
	mov	r0, r4
	strb	r10, [sp, #16]
	bl	get_data_with_nand_bus_one_cmd
	mov	r2, r6
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	strb	r5, [sp, #24]
	movs	r5, #0
	add	r3, sp, #24
	mov	r2, r5
	add	r1, sp, #16
	strd	r6, r6, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	fp, [sp, #16]
	strb	r5, [sp, #20]
	bl	set_cmd_with_nand_bus
	mov	r2, r5
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	mov	r2, r5
	mov	r1, r5
	mov	r0, r4
	bl	set_one_cmd
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r2, r6
	mov	r1, r10
	mov	r0, r4
	bl	set_one_cmd
	ldrb	r1, [r8]	@ zero_extendqisi2
	ldrb	r2, [r8, #1]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L707
	cmp	r2, #8
	beq	.L708
.L707:
	ldr	r0, .L709+8
	bl	NAND_Print
	mov	r0, r4
	bl	nand_disable_chip
	mvn	r0, #95
	b	.L704
.L708:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	b	.L704
.L710:
	.align	2
.L709:
	.word	.LC94
	.word	.LC95
	.word	.LC26
	.size	hynix16nm_read_otp_info_hynix, .-hynix16nm_read_otp_info_hynix
	.section	.text.hynix16nm_get_rr_value_otp_hynix,"ax",%progbits
	.align	1
	.global	hynix16nm_get_rr_value_otp_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_rr_value_otp_hynix, %function
hynix16nm_get_rr_value_otp_hynix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, #528
	bl	nand_get_temp_buf
	mov	r5, r0
	cbnz	r0, .L712
	mvn	r6, #77
	ldr	r0, .L716
	bl	NAND_Print
.L711:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L712:
	mov	r1, r0
	mov	r0, r4
	bl	hynix16nm_read_otp_info_hynix
	cmp	r0, #0
	bge	.L714
	ldr	r3, [r4, #260]
	ldr	r2, [r4, #20]
	ldr	r0, .L716+4
	ldr	r1, [r3, #8]
	bl	NAND_Print
.L714:
	mov	r3, r5
	add	r2, r4, #48
	add	r1, sp, #7
	add	r0, sp, #6
	bl	hynix16nm_get_read_retry_cfg
	subs	r6, r0, #0
	bge	.L715
	ldr	r3, [r4, #260]
	ldr	r2, [r4, #20]
	ldr	r0, .L716+8
	ldr	r1, [r3, #8]
	bl	NAND_Print
.L715:
	mov	r1, #528
	mov	r0, r5
	bl	nand_free_temp_buf
	b	.L711
.L717:
	.align	2
.L716:
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.size	hynix16nm_get_rr_value_otp_hynix, .-hynix16nm_get_rr_value_otp_hynix
	.section	.text.hynix16nm_save_otp_value,"ax",%progbits
	.align	1
	.global	hynix16nm_save_otp_value
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_save_otp_value, %function
hynix16nm_save_otp_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #1
	adds	r0, r0, #48
	adds	r1, r1, #31
.L719:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0], #1
	bne	.L719
	bx	lr
	.size	hynix16nm_save_otp_value, .-hynix16nm_save_otp_value
	.section	.text.hynix16nm_get_otp_param,"ax",%progbits
	.align	1
	.global	hynix16nm_get_otp_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_otp_param, %function
hynix16nm_get_otp_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r7, .L728
	mov	r5, r1
	movs	r6, #0
.L722:
	mov	r1, r6
	mov	r0, r7
	bl	NAND_Print_DBG
	mov	r0, r4
	adds	r6, r6, #1
	bl	hynix16nm_get_rr_value_otp_hynix
	cmp	r0, #0
	bne	.L722
	mov	r0, r4
	mov	r1, r5
	adds	r4, r4, #32
.L723:
	mov	r2, r1
	movs	r3, #0
.L724:
	adds	r5, r0, r3
	adds	r3, r3, #1
	ldrb	r5, [r5, #48]	@ zero_extendqisi2
	cmp	r3, #4
	strb	r5, [r2], #1
	bne	.L724
	adds	r0, r0, #4
	adds	r1, r1, #4
	cmp	r0, r4
	bne	.L723
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L729:
	.align	2
.L728:
	.word	.LC29
	.size	hynix16nm_get_otp_param, .-hynix16nm_get_otp_param
	.section	.text.hynix16nm_set_default_param,"ax",%progbits
	.align	1
	.global	hynix16nm_set_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_set_default_param, %function
hynix16nm_set_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L735
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L731:
	cmp	r3, r2
	bhi	.L732
	ldr	r7, .L735+4
	mov	r1, sp
	ldr	r2, .L735+8
	movs	r4, #0
	bl	hynix26nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L735+12
	bl	NAND_Print_DBG
.L733:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L734
	ldr	r0, .L735+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L732:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L731
.L734:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L733
.L736:
	.align	2
.L735:
	.word	.LANCHOR66
	.word	.LC32
	.word	.LANCHOR67
	.word	.LC31
	.word	.LC7
	.size	hynix16nm_set_default_param, .-hynix16nm_set_default_param
	.section	.text.hynix16nm_init_readretry_param,"ax",%progbits
	.align	1
	.global	hynix16nm_init_readretry_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_init_readretry_param, %function
hynix16nm_init_readretry_param:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	sub	sp, sp, #68
	ldr	r0, [r3, #16]
	lsls	r0, r0, #9
	bl	nand_get_temp_buf
	mov	r6, r0
	cmp	r0, #0
	beq	.L744
	mov	r0, #32768
	bl	nand_get_temp_buf
	mov	r7, r0
	cbnz	r0, .L739
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	ldr	r0, .L746
	bl	NAND_Print
	mvn	r0, #75
.L737:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L739:
	ldr	r3, [r4, #16]
	movs	r2, #32
	mov	r1, r6
	bl	hynix16nm_get_special_info
	ldr	r3, [r4, #260]
	mov	r5, r0
	cbnz	r0, .L740
	ldr	r8, .L746+16
	mov	r2, r0
	ldr	r10, .L746+20
	ldr	r1, [r3, #8]
	ldr	r0, .L746+4
	bl	NAND_Print_DBG
.L742:
	ldrb	r1, [r6, r5]	@ zero_extendqisi2
	mov	r0, r8
	bl	NAND_Print_DBG
	and	r3, r5, #7
	cmp	r3, #7
	bne	.L741
	mov	r0, r10
	bl	NAND_Print_DBG
.L741:
	adds	r5, r5, #1
	cmp	r5, #32
	bne	.L742
	mov	r0, r4
	mov	r1, r6
	bl	hynix16nm_save_otp_value
	mov	r0, r4
	bl	hynix16nm_set_default_param
.L743:
	mov	r1, #32768
	mov	r0, r7
	bl	nand_free_temp_buf
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	movs	r0, #0
	b	.L737
.L740:
	ldr	r1, [r3, #8]
	ldr	r0, .L746+8
	bl	NAND_Print_DBG
	mov	r1, sp
	mov	r0, r4
	bl	hynix16nm_get_otp_param
	mov	r0, r4
	bl	hynix16nm_set_default_param
	ldr	r3, [r4, #260]
	movs	r2, #0
	ldr	r0, .L746+12
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	b	.L743
.L744:
	mvn	r0, #76
	b	.L737
.L747:
	.align	2
.L746:
	.word	.LC76
	.word	.LC99
	.word	.LC79
	.word	.LC100
	.word	.LC78
	.word	.LC7
	.size	hynix16nm_init_readretry_param, .-hynix16nm_init_readretry_param
	.section	.text.hynix16nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix16nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_readretry_init, %function
hynix16nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L753
	push	{r4, lr}
	ldr	r3, [r3, #52]
	ubfx	r1, r3, #16, #8
	strb	r1, [r2]
	lsrs	r4, r3, #8
	ldr	r2, .L753+4
	cmp	r1, #4
	strb	r4, [r2]
	ldr	r2, .L753+8
	strb	r3, [r2]
	bne	.L749
	ldr	r3, .L753+12
	movs	r2, #56
	add	r1, r0, #176
	strb	r2, [r3]
	movs	r2, #57
	strb	r2, [r3, #1]
	movs	r2, #58
	strb	r2, [r3, #2]
	movs	r2, #59
	strb	r2, [r3, #3]
	add	r2, r0, #48
	movs	r3, #0
	str	r3, [r0, #176]
.L750:
	strb	r3, [r2], #1
	cmp	r2, r1
	bne	.L750
	bl	hynix16nm_init_readretry_param
	movs	r0, #0
.L748:
	pop	{r4, pc}
.L749:
	ldr	r0, .L753+16
	bl	NAND_Print
	mvn	r0, #74
	b	.L748
.L754:
	.align	2
.L753:
	.word	.LANCHOR68
	.word	.LANCHOR65
	.word	.LANCHOR66
	.word	.LANCHOR67
	.word	.LC56
	.size	hynix16nm_readretry_init, .-hynix16nm_readretry_init
	.section	.text.hynix16nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix16nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_readretry_exit, %function
hynix16nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L756
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix16nm_set_default_param
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L757:
	.align	2
.L756:
	.word	.LC101
	.size	hynix16nm_readretry_exit, .-hynix16nm_readretry_exit
	.section	.text.hynix16nm_special_init,"ax",%progbits
	.align	1
	.global	hynix16nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_special_init, %function
hynix16nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L763
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L759:
	cbnz	r5, .L760
	ldr	r3, .L763+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L763+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L763+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L761
	ldr	r0, .L763+16
	ldr	r5, .L763+20
	str	r5, [r0]
	ldr	r0, .L763+24
	bl	NAND_Print_DBG
.L758:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L760:
	mov	r0, r5
	bl	hynix16nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L759
.L761:
	ldr	r0, .L763+28
	bl	NAND_Print
	b	.L758
.L764:
	.align	2
.L763:
	.word	g_nsi
	.word	.LANCHOR68
	.word	.LANCHOR65
	.word	.LANCHOR66
	.word	df_read_page_end
	.word	hynix16nm_read_page_end
	.word	.LC102
	.word	.LC103
	.size	hynix16nm_special_init, .-hynix16nm_special_init
	.section	.text.hynix16nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix16nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_special_exit, %function
hynix16nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L768
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L766:
	cbnz	r4, .L767
	ldr	r0, .L768+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L767:
	mov	r0, r4
	bl	hynix16nm_readretry_exit
	ldr	r4, [r4]
	b	.L766
.L769:
	.align	2
.L768:
	.word	g_nsi
	.word	.LC104
	.size	hynix16nm_special_exit, .-hynix16nm_special_exit
	.section	.text.sandisk_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	sandisk_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_retry_clock_save, %function
sandisk_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L771
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L771+4
	ldr	r1, .L771+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L771+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L772:
	.align	2
.L771:
	.word	NAND_GetClk
	.word	.LANCHOR69
	.word	.LANCHOR70
	.word	NAND_SetClk
	.size	sandisk_read_retry_clock_save, .-sandisk_read_retry_clock_save
	.section	.text.sandisk_vender_set_param,"ax",%progbits
	.align	1
	.global	sandisk_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_vender_set_param, %function
sandisk_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r2
	ldr	r2, .L777
	sub	sp, sp, #20
	mov	r5, r0
	mov	r7, r1
	movs	r4, #0
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r8, r2
	subs	r3, r3, #48
	cmp	r3, #1
	bhi	.L776
	movs	r3, #2
	mov	r2, r4
	strd	r4, r3, [sp, #4]
	mov	r3, r4
	ldr	r1, .L777+4
	str	r4, [sp]
	bl	set_cmd_with_nand_bus
	movs	r3, #1
	movs	r2, #3
	strd	r3, r2, [sp, #4]
	mov	r10, r0
	str	r7, [sp]
	mov	r3, r6
	mov	r2, r4
	ldr	r1, .L777+8
	mov	r0, r5
	bl	set_cmd_with_nand_bus
	orr	r0, r10, r0
.L774:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L773
	movs	r3, #4
	movs	r2, #1
	strd	r3, r2, [sp, #4]
	mov	r0, r5
	str	r7, [sp]
	mov	r3, r6
	ldr	r1, .L777+12
	bl	set_cmd_with_nand_bus
.L773:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L776:
	mov	r0, r4
	b	.L774
.L778:
	.align	2
.L777:
	.word	.LANCHOR71
	.word	.LANCHOR72
	.word	.LANCHOR73
	.word	.LANCHOR74
	.size	sandisk_vender_set_param, .-sandisk_vender_set_param
	.section	.text.sandisk_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	sandisk_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_retry_clock_recover, %function
sandisk_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L780
	ldr	r2, .L780+4
	ldr	r1, .L780+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L781:
	.align	2
.L780:
	.word	NAND_SetClk
	.word	.LANCHOR69
	.word	.LANCHOR70
	.size	sandisk_read_retry_clock_recover, .-sandisk_read_retry_clock_recover
	.section	.text.sandisk_end_one_read_retry,"ax",%progbits
	.align	1
	.global	sandisk_end_one_read_retry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_end_one_read_retry, %function
sandisk_end_one_read_retry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L789
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #20
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #1
	bhi	.L783
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r5, .L789+4
	cbz	r0, .L784
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L784:
	movs	r3, #0
	movs	r2, #1
	strd	r3, r2, [sp, #4]
	mov	r0, r4
	str	r3, [sp]
	mov	r2, r3
	ldr	r1, .L789+8
	bl	set_cmd_with_nand_bus
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L785
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L785:
	mov	r0, r4
	bl	nand_disable_chip
.L783:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L790:
	.align	2
.L789:
	.word	.LANCHOR71
	.word	.LANCHOR75
	.word	.LANCHOR76
	.size	sandisk_end_one_read_retry, .-sandisk_end_one_read_retry
	.section	.text.sandisk_set_readretry,"ax",%progbits
	.align	1
	.global	sandisk_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_set_readretry, %function
sandisk_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	ldr	r5, .L816
	bl	sandisk_read_retry_clock_save
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	cbz	r0, .L792
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L792:
	ldr	r3, .L816+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L793
	cmp	r6, #255
	ldr	r3, [r4, #176]
	ldr	r2, .L816+8
	beq	.L794
	cbz	r6, .L795
	lsls	r1, r6, #31
	bpl	.L794
.L795:
	ldr	r1, .L816+12
	add	r3, r3, r3, lsl #1
	add	r1, r1, r3
	movs	r3, #16
.L813:
	strb	r3, [r2]
	movs	r3, #3
	ldr	r2, .L816+16
.L815:
	mov	r0, r4
	bl	sandisk_vender_set_param
	movs	r2, #0
	mov	r6, r0
	movs	r1, #182
.L814:
	mov	r0, r4
	bl	set_one_cmd
.L797:
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L799
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L799:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r4
	bl	sandisk_read_retry_clock_recover
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L794:
	ldr	r1, .L816+20
	add	r3, r3, r3, lsl #1
	add	r1, r1, r3
	movs	r3, #20
	b	.L813
.L793:
	cmp	r3, #49
	bne	.L798
	ldr	r1, [r4, #176]
	movs	r3, #3
	ldr	r0, .L816+24
	ldr	r2, .L816+28
	add	r1, r1, r1, lsl #1
	add	r1, r1, r0
	b	.L815
.L798:
	cmp	r3, #50
	bne	.L800
	ldr	r0, [r4, #176]
	movs	r3, #1
	ldr	r1, .L816+32
	ldr	r2, .L816+36
	add	r1, r1, r0, lsl #2
	mov	r0, r4
	bl	sandisk_vender_set_param
	movs	r2, #0
	mov	r6, r0
	movs	r1, #93
	b	.L814
.L800:
	movs	r6, #0
	b	.L797
.L817:
	.align	2
.L816:
	.word	.LANCHOR75
	.word	.LANCHOR71
	.word	.LANCHOR78
	.word	.LANCHOR77
	.word	.LANCHOR80
	.word	.LANCHOR79
	.word	.LANCHOR82
	.word	.LANCHOR81
	.word	.LANCHOR84
	.word	.LANCHOR83
	.size	sandisk_set_readretry, .-sandisk_set_readretry
	.section	.text.sandisk_activation_seq,"ax",%progbits
	.align	1
	.global	sandisk_activation_seq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_activation_seq, %function
sandisk_activation_seq:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #9
	sub	sp, sp, #40
	mov	r6, r0
	mov	r2, r8
	add	r0, sp, #16
	ldr	r1, .L823
	movs	r4, #0
	bl	memcpy
	mov	r0, r6
	strd	r4, r4, [sp, #28]
	strb	r4, [sp, #36]
	add	r7, sp, #28
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
	movs	r3, #2
	mov	r2, r4
	strd	r4, r3, [sp, #4]
	mov	r0, r6
	mov	r3, r4
	ldr	r1, .L823+4
	str	r4, [sp]
	bl	set_cmd_with_nand_bus
	movs	r3, #1
	mov	r5, r0
	strd	r7, r3, [sp]
	mov	r2, r4
	str	r8, [sp, #8]
	add	r1, sp, #16
	ldr	r3, .L823+8
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	orrs	r5, r5, r0
	mov	r0, r6
	bl	nand_disable_chip
	cbz	r5, .L818
	mov	r1, r5
	ldr	r0, .L823+12
	bl	NAND_Print
.L818:
	mov	r0, r5
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L824:
	.align	2
.L823:
	.word	.LANCHOR85
	.word	.LANCHOR72
	.word	.LANCHOR86
	.word	.LC105
	.size	sandisk_activation_seq, .-sandisk_activation_seq
	.section	.text.sandisk_readretry_init,"ax",%progbits
	.align	1
	.global	sandisk_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_readretry_init, %function
sandisk_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r2, #0
	ldr	r3, [r0, #264]
	str	r2, [r0, #176]
	ldr	r4, [r3, #52]
	ldr	r2, .L829
	ldr	r3, .L829+4
	ubfx	r1, r4, #16, #8
	lsrs	r5, r4, #8
	strb	r1, [r2]
	subs	r1, r1, #48
	strb	r5, [r3]
	cmp	r1, #1
	ldr	r5, .L829+8
	strb	r4, [r5]
	mov	r5, r2
	mov	r4, r3
	bhi	.L826
	bl	sandisk_activation_seq
.L826:
	ldrb	r3, [r5]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #2
	bhi	.L828
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L829+12
	bl	NAND_Print_DBG
	movs	r0, #0
.L825:
	pop	{r3, r4, r5, pc}
.L828:
	mvn	r0, #98
	b	.L825
.L830:
	.align	2
.L829:
	.word	.LANCHOR71
	.word	.LANCHOR78
	.word	.LANCHOR87
	.word	.LC106
	.size	sandisk_readretry_init, .-sandisk_readretry_init
	.section	.text.sandisk_readretry_exit,"ax",%progbits
	.align	1
	.global	sandisk_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_readretry_exit, %function
sandisk_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	sandisk_readretry_exit, .-sandisk_readretry_exit
	.section	.text.sandisk_exit_readretry,"ax",%progbits
	.align	1
	.global	sandisk_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_exit_readretry, %function
sandisk_exit_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	movs	r3, #0
	mov	r4, r0
	str	r3, [sp, #4]
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r6, .L843
	cbz	r0, .L833
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r6]
.L833:
	ldr	r3, .L843+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L834
	ldr	r2, .L843+8
	movs	r3, #3
.L842:
	add	r1, sp, #4
	mov	r0, r4
	bl	sandisk_vender_set_param
	mov	r5, r0
.L835:
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L837
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L837:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L834:
	cmp	r3, #49
	bne	.L836
	movs	r3, #3
	ldr	r2, .L843+12
	b	.L842
.L836:
	cmp	r3, #50
	bne	.L838
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #1
	ldr	r2, .L843+16
	b	.L842
.L838:
	movs	r5, #0
	b	.L835
.L844:
	.align	2
.L843:
	.word	.LANCHOR75
	.word	.LANCHOR71
	.word	.LANCHOR80
	.word	.LANCHOR81
	.word	.LANCHOR83
	.size	sandisk_exit_readretry, .-sandisk_exit_readretry
	.section	.text.sandisk_special_init,"ax",%progbits
	.align	1
	.global	sandisk_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_special_init, %function
sandisk_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L850
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L846:
	cbnz	r5, .L847
	ldr	r3, .L850+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L850+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L850+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L848
	ldr	r0, .L850+16
	ldr	r5, .L850+20
	str	r5, [r0]
	ldr	r0, .L850+24
	bl	NAND_Print_DBG
.L845:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L847:
	mov	r0, r5
	bl	sandisk_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L846
.L848:
	ldr	r0, .L850+28
	bl	NAND_Print
	b	.L845
.L851:
	.align	2
.L850:
	.word	g_nsi
	.word	.LANCHOR71
	.word	.LANCHOR78
	.word	.LANCHOR87
	.word	df_read_page_end
	.word	sandisk_read_page_end
	.word	.LC107
	.word	.LC108
	.size	sandisk_special_init, .-sandisk_special_init
	.section	.text.sandisk_special_exit,"ax",%progbits
	.align	1
	.global	sandisk_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_special_exit, %function
sandisk_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L855
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L853:
	cbnz	r4, .L854
	ldr	r0, .L855+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L854:
	ldr	r4, [r4]
	b	.L853
.L856:
	.align	2
.L855:
	.word	g_nsi
	.word	.LC109
	.size	sandisk_special_exit, .-sandisk_special_exit
	.section	.text.nftl_sector_cache_init,"ax",%progbits
	.align	1
	.global	nftl_sector_cache_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_sector_cache_init, %function
nftl_sector_cache_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r3, #16
	movs	r5, #0
	mov	r4, r0
	str	r3, [r0, #1620]
	str	r5, [r0, #1624]
	mov	r0, #8192
	bl	NAND_Malloc
	str	r0, [r4, #1624]
	cbnz	r0, .L858
	ldr	r1, .L862
	ldr	r0, .L862+4
	bl	NAND_Print
	movs	r0, #1
.L857:
	pop	{r4, r5, r6, pc}
.L858:
	mov	r2, r5
	str	r5, [r4, #1960]
	str	r5, [r4, #1964]
	mov	r3, r4
	movs	r6, #255
	mov	r5, #-1
	mov	r1, r2
.L860:
	strh	r2, [r3, #1628]	@ movhi
	add	r4, r0, r2, lsl #9
	adds	r2, r2, #1
	strh	r6, [r3, #1630]	@ movhi
	cmp	r2, #16
	str	r5, [r3, #1632]
	str	r1, [r3, #1640]
	add	r3, r3, #20
	str	r1, [r3, #1624]
	str	r4, [r3, #1616]
	bne	.L860
	movs	r0, #0
	b	.L857
.L863:
	.align	2
.L862:
	.word	.LANCHOR88
	.word	.LC110
	.size	nftl_sector_cache_init, .-nftl_sector_cache_init
	.section	.text.nftl_sector_cache_exit,"ax",%progbits
	.align	1
	.global	nftl_sector_cache_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_sector_cache_exit, %function
nftl_sector_cache_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #1624]
	bl	nftl_free
	movs	r0, #0
	pop	{r3, pc}
	.size	nftl_sector_cache_exit, .-nftl_sector_cache_exit
	.section	.text.search_from_sector_cache_write_list,"ax",%progbits
	.align	1
	.global	search_from_sector_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_sector_cache_write_list, %function
search_from_sector_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #340]
.L866:
	cbnz	r0, .L868
.L865:
	bx	lr
.L868:
	ldr	r3, [r0, #4]
	cmp	r3, r1
	beq	.L865
	ldr	r0, [r0, #12]
	b	.L866
	.size	search_from_sector_cache_write_list, .-search_from_sector_cache_write_list
	.section	.text.get_empty_sector_cahce_node,"ax",%progbits
	.align	1
	.global	get_empty_sector_cahce_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_sector_cahce_node, %function
get_empty_sector_cahce_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	movs	r1, #20
	push	{r4, lr}
.L872:
	mul	r2, r1, r3
	adds	r4, r0, r2
	ldrh	r4, [r4, #10]
	cmp	r4, #255
	bne	.L870
	adds	r2, r2, #8
	add	r0, r0, r2
.L869:
	pop	{r4, pc}
.L870:
	adds	r3, r3, #1
	cmp	r3, #16
	bne	.L872
	movs	r0, #0
	b	.L869
	.size	get_empty_sector_cahce_node, .-get_empty_sector_cahce_node
	.section	.text.add_to_sector_cache_write_list_tail,"ax",%progbits
	.align	1
	.global	add_to_sector_cache_write_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_sector_cache_write_list_tail, %function
add_to_sector_cache_write_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #328
.L875:
	ldr	r3, [r2, #12]
	cbnz	r3, .L876
	str	r1, [r2, #12]
	strd	r3, r2, [r1, #12]
	movs	r2, #1
	strh	r2, [r1, #2]	@ movhi
	ldrh	r2, [r0, #2]
	adds	r2, r2, #1
	strh	r2, [r0, #2]	@ movhi
	mov	r0, r3
	bx	lr
.L876:
	mov	r2, r3
	b	.L875
	.size	add_to_sector_cache_write_list_tail, .-add_to_sector_cache_write_list_tail
	.section	.text.del_from_sector_cache_write_list,"ax",%progbits
	.align	1
	.global	del_from_sector_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_sector_cache_write_list, %function
del_from_sector_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #12]
	str	r3, [r2, #12]
	ldr	r3, [r1, #12]
	cbz	r3, .L878
	str	r2, [r3, #16]
.L878:
	movs	r3, #0
	strd	r3, r3, [r1, #12]
	movs	r3, #255
	strh	r3, [r1, #2]	@ movhi
	ldrh	r3, [r0, #2]
	subs	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_sector_cache_write_list, .-del_from_sector_cache_write_list
	.section	.text.nand_crc16,"ax",%progbits
	.align	1
	.global	nand_crc16
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_crc16, %function
nand_crc16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r2, r2, r1
	ldr	r4, .L885
.L883:
	cmp	r2, r1
	bne	.L884
	pop	{r4, pc}
.L884:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	eors	r3, r3, r0
	uxtb	r3, r3
	ldrh	r3, [r4, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
	b	.L883
.L886:
	.align	2
.L885:
	.word	.LANCHOR89
	.size	nand_crc16, .-nand_crc16
	.section	.text.new_block_init_for_write,"ax",%progbits
	.align	1
	.global	new_block_init_for_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	new_block_init_for_write, %function
new_block_init_for_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, r7, lr}
	mov	r7, r2
	ldrh	r2, [r1]
	sub	sp, sp, #20
	movs	r6, #0
	mov	r5, r1
	ldrh	r3, [r3, #28]
	mov	r1, sp
	strh	r2, [sp, #2]	@ movhi
	mov	r4, r0
	strh	r6, [sp]	@ movhi
	strh	r3, [sp, #4]	@ movhi
	strd	r6, r6, [sp, #8]
	ldr	r3, [r0, #1976]
	blx	r3
	ldrh	r3, [r5, #6]
	ldr	r2, [r4, #376]
	strh	r6, [r5, #4]	@ movhi
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r3, r2
	strh	r3, [r5, #6]	@ movhi
	bls	.L888
	ldr	r2, [r4, #4]
	ldrh	r2, [r2, #16]
	cmp	r2, r3
	it	hi
	strhi	r3, [r4, #376]
.L888:
	str	r7, [r5, #8]
	cbz	r0, .L887
	ldr	r3, [r4, #1996]
	mov	r1, sp
	mov	r0, r4
	blx	r3
	ldr	r0, .L893
	bl	NAND_Print
	movs	r0, #1
.L887:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L894:
	.align	2
.L893:
	.word	.LC111
	.size	new_block_init_for_write, .-new_block_init_for_write
	.section	.text.nftl_ops_init,"ax",%progbits
	.align	1
	.global	nftl_ops_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_ops_init, %function
nftl_ops_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L896
	str	r3, [r0, #1976]
	ldr	r3, .L896+4
	str	r3, [r0, #1980]
	ldr	r3, .L896+8
	str	r3, [r0, #1984]
	ldr	r3, .L896+12
	str	r3, [r0, #1992]
	ldr	r3, .L896+16
	str	r3, [r0, #1996]
	ldr	r3, .L896+20
	str	r3, [r0, #1988]
	ldr	r3, .L896+24
	str	r3, [r0, #2004]
	ldr	r3, .L896+28
	str	r3, [r0, #2008]
	ldr	r3, .L896+32
	str	r3, [r0, #2000]
	ldr	r3, .L896+36
	str	r3, [r0, #2012]
	bx	lr
.L897:
	.align	2
.L896:
	.word	_nftl_nand_erase_superblk
	.word	_nftl_nand_read_page
	.word	_nftl_nand_write_page
	.word	_nftl_nand_is_blk_good
	.word	_nftl_nand_mark_bad_blk
	.word	_nftl_nand_copy_page
	.word	_nftl_nand_read_logic_page
	.word	_nftl_nand_read_logic_history_page
	.word	_nftl_nand_write_logic_page
	.word	_nftl_discard_logic_page
	.size	nftl_ops_init, .-nftl_ops_init
	.section	.text.current_block_at_last_page,"ax",%progbits
	.align	1
	.global	current_block_at_last_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_at_last_page, %function
current_block_at_last_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	ldrh	r0, [r1, #28]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	subs	r3, r3, r0
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	current_block_at_last_page, .-current_block_at_last_page
	.section	.text.current_block_at_first_page,"ax",%progbits
	.align	1
	.global	current_block_at_first_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_at_first_page, %function
current_block_at_first_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r1, #28]
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
	.size	current_block_at_first_page, .-current_block_at_first_page
	.section	.text.nftl_get_boot_cnt,"ax",%progbits
	.align	1
	.global	nftl_get_boot_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_boot_cnt, %function
nftl_get_boot_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1968]
	ldr	r0, [r3, #140]
	bx	lr
	.size	nftl_get_boot_cnt, .-nftl_get_boot_cnt
	.section	.text.nftl_get_zone_cap,"ax",%progbits
	.align	1
	.global	nftl_get_zone_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_cap, %function
nftl_get_zone_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	bx	lr
	.size	nftl_get_zone_cap, .-nftl_get_zone_cap
	.section	.text.nftl_get_zone_priv,"ax",%progbits
	.align	1
	.global	nftl_get_zone_priv
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_priv, %function
nftl_get_zone_priv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	bx	lr
	.size	nftl_get_zone_priv, .-nftl_get_zone_priv
	.section	.text.nftl_get_zone_write_cache_nums,"ax",%progbits
	.align	1
	.global	nftl_get_zone_write_cache_nums
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_write_cache_nums, %function
nftl_get_zone_write_cache_nums:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #588]
	bx	lr
	.size	nftl_get_zone_write_cache_nums, .-nftl_get_zone_write_cache_nums
	.section	.text.print_smart,"ax",%progbits
	.align	1
	.global	print_smart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_smart, %function
print_smart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, lr}
	cmp	r3, #0
	beq	.L904
	ldr	r4, [r0, #1968]
	ldr	r0, .L906
	ldr	r1, [r4, #112]
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #64]
	ldr	r0, .L906+4
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #72]
	ldr	r0, .L906+8
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #80]
	ldr	r0, .L906+12
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #88]
	ldr	r0, .L906+16
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #96]
	ldr	r0, .L906+20
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #104]
	ldr	r0, .L906+24
	bl	NAND_Print_DBG
	ldr	r1, [r4, #116]
	ldr	r0, .L906+28
	bl	NAND_Print_DBG
	ldr	r1, [r4, #120]
	ldr	r0, .L906+32
	bl	NAND_Print_DBG
	ldr	r1, [r4, #124]
	ldr	r0, .L906+36
	bl	NAND_Print_DBG
	ldr	r1, [r4, #128]
	ldr	r0, .L906+40
	bl	NAND_Print_DBG
	ldr	r1, [r4, #180]
	ldr	r0, .L906+44
	bl	NAND_Print_DBG
	ldr	r1, [r4, #132]
	ldr	r0, .L906+48
	bl	NAND_Print_DBG
	ldr	r1, [r4, #136]
	ldr	r0, .L906+52
	bl	NAND_Print_DBG
	ldr	r1, [r4, #140]
	ldr	r0, .L906+56
	bl	NAND_Print_DBG
	ldr	r1, [r4, #144]
	ldr	r0, .L906+60
	bl	NAND_Print_DBG
	ldr	r1, [r4, #148]
	ldr	r0, .L906+64
	bl	NAND_Print_DBG
	ldr	r1, [r4, #152]
	ldr	r0, .L906+68
	bl	NAND_Print_DBG
	ldr	r1, [r4, #156]
	ldr	r0, .L906+72
	bl	NAND_Print_DBG
	ldr	r1, [r4, #160]
	ldr	r0, .L906+76
	bl	NAND_Print_DBG
	ldr	r1, [r4, #164]
	ldr	r0, .L906+80
	bl	NAND_Print_DBG
	ldr	r1, [r4, #168]
	ldr	r0, .L906+84
	bl	NAND_Print_DBG
	ldr	r1, [r4, #172]
	ldr	r0, .L906+88
	bl	NAND_Print_DBG
	ldr	r1, [r4, #176]
	ldr	r0, .L906+92
	pop	{r4, lr}
	b	NAND_Print_DBG
.L904:
	pop	{r4, pc}
.L907:
	.align	2
.L906:
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	.LC123
	.word	.LC124
	.word	.LC125
	.word	.LC126
	.word	.LC127
	.word	.LC128
	.word	.LC129
	.word	.LC130
	.word	.LC131
	.word	.LC132
	.word	.LC133
	.word	.LC134
	.word	.LC135
	.size	print_smart, .-print_smart
	.section	.text.dump_buf,"ax",%progbits
	.align	1
	.global	dump_buf
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	dump_buf, %function
dump_buf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r4, #0
	ldr	r7, .L913
	mov	r6, r0
	mov	r5, r1
	ldr	r8, .L913+8
	ldr	r0, .L913+4
	bl	NAND_Print
.L909:
	cmp	r4, r5
	bne	.L912
	ldr	r0, .L913+4
	pop	{r4, r5, r6, r7, r8, lr}
	b	NAND_Print
.L912:
	lsls	r2, r4, #28
	bne	.L910
	mov	r1, r4
	mov	r0, r7
	bl	NAND_Print
.L910:
	ldrb	r1, [r6, r4]	@ zero_extendqisi2
	mov	r0, r8
	adds	r4, r4, #1
	bl	NAND_Print
	lsls	r3, r4, #28
	bne	.L909
	ldr	r0, .L913+4
	bl	NAND_Print
	b	.L909
.L914:
	.align	2
.L913:
	.word	.LC5
	.word	.LC7
	.word	.LC93
	.size	dump_buf, .-dump_buf
	.global	__aeabi_uidiv
	.section	.text.init_zone_after_first_scan,"ax",%progbits
	.align	1
	.global	init_zone_after_first_scan
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_zone_after_first_scan, %function
init_zone_after_first_scan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r6, [r0, #4]
	mov	r4, r0
	ldr	r0, [r0, #24]
	ldrb	r1, [r6, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	ldrh	r1, [r6, #20]
	bl	__aeabi_uidiv
	mov	r1, r5
	mov	r6, r0
	mov	r2, r0
	ldr	r0, .L922
	bl	NAND_Print_DBG
	cmp	r6, r5
	bcc	.L916
	ldr	r0, .L922+4
	mov	r2, r6
	mov	r1, r5
.L921:
	bl	NAND_Print
	movs	r0, #1
.L915:
	pop	{r4, r5, r6, pc}
.L916:
	ldr	r1, [r4, #4]
	subs	r2, r5, r6
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	ldrh	r3, [r1, #20]
	muls	r3, r0, r3
	muls	r3, r2, r3
	str	r3, [r4, #32]
	ldr	r3, [r4, #1972]
	ldrh	r1, [r3, #12]
	subs	r1, r1, #1
	cmp	r2, r1
	bcs	.L918
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L922+8
	b	.L921
.L918:
	ldr	r0, .L922+12
	umull	r0, r1, r2, r0
	ubfx	r0, r1, #2, #16
	ldrh	r1, [r3, #14]
	strh	r0, [r4, #380]	@ movhi
	cmp	r0, r1
	ldrh	r0, [r3, #18]
	it	cc
	strhcc	r1, [r4, #380]	@ movhi
	ldrh	r1, [r3, #20]
	muls	r0, r2, r0
	bl	__aeabi_uidiv
	ldrh	r3, [r4, #380]
	strh	r0, [r4, #382]	@ movhi
	uxth	r0, r0
	adds	r2, r3, #1
	cmp	r2, r0
	mov	r0, #0
	itt	ge
	addge	r3, r3, #2
	strhge	r3, [r4, #382]	@ movhi
	movs	r3, #1
	str	r3, [r4, #384]
	b	.L915
.L923:
	.align	2
.L922:
	.word	.LC136
	.word	.LC137
	.word	.LC138
	.word	-858993459
	.size	init_zone_after_first_scan, .-init_zone_after_first_scan
	.section	.text.check_bit_nums,"ax",%progbits
	.align	1
	.global	check_bit_nums
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_bit_nums, %function
check_bit_nums:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r4, r0
.L925:
	subs	r3, r4, r0
	cmp	r3, r1
	blt	.L928
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L928:
	ldrb	r6, [r4], #1	@ zero_extendqisi2
	movs	r5, #8
	movs	r3, #1
.L927:
	tst	r6, r3
	lsl	r3, r3, #1
	it	ne
	addne	r2, r2, #1
	subs	r5, r5, #1
	uxtb	r3, r3
	bne	.L927
	b	.L925
	.size	check_bit_nums, .-check_bit_nums
	.section	.text.is_all_bit_ff,"ax",%progbits
	.align	1
	.global	is_all_bit_ff
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_all_bit_ff, %function
is_all_bit_ff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	rsb	r4, r2, r1, lsl #3
	bl	check_bit_nums
	cmp	r4, r0
	ite	gt
	movgt	r0, #0
	movle	r0, #1
	pop	{r4, pc}
	.size	is_all_bit_ff, .-is_all_bit_ff
	.section	.text.is_all_byte_ff,"ax",%progbits
	.align	1
	.global	is_all_byte_ff
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_all_byte_ff, %function
is_all_byte_ff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r2, r1, r2
	mov	r4, r0
	movs	r3, #0
.L935:
	subs	r5, r4, r0
	cmp	r1, r5
	bgt	.L937
	cmp	r3, r2
	ite	lt
	movlt	r0, #0
	movge	r0, #1
	pop	{r4, r5, pc}
.L937:
	ldrb	r5, [r4], #1	@ zero_extendqisi2
	cmp	r5, #255
	it	eq
	addeq	r3, r3, #1
	b	.L935
	.size	is_all_byte_ff, .-is_all_byte_ff
	.section	.text.do_write_error_in_build_list,"ax",%progbits
	.align	1
	.global	do_write_error_in_build_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_write_error_in_build_list, %function
do_write_error_in_build_list:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r3
	ldr	r3, [r0, #4]
	mov	r7, r2
	sub	sp, sp, #24
	movs	r5, #0
	ldrh	r2, [r2]
	mov	r10, r1
	ldrh	r3, [r3, #28]
	add	r1, sp, #8
	strh	r5, [sp, #8]	@ movhi
	mov	r4, r0
	strh	r2, [sp, #10]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	strd	r5, r5, [sp, #16]
	ldr	r3, [r0, #1976]
	blx	r3
	ldrh	r3, [r7, #6]
	strh	r5, [r7, #4]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
	cmp	r0, #0
	beq	.L943
	ldr	r0, .L948
	bl	NAND_Print
	ldr	r3, [r4, #1996]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	movs	r0, #1
.L938:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L942:
	uxth	r3, r6
	mov	r2, r7
	mov	r1, r10
	ldr	r5, [r4, #1988]
	str	r3, [sp]
	mov	r0, r4
	ldr	r3, [r4, #284]
	blx	r5
	cbz	r0, .L941
	mov	r0, fp
	bl	NAND_Print
.L941:
	adds	r6, r6, #1
.L939:
	cmp	r8, r6
	bhi	.L942
	ldr	r3, [r4, #4]
	movs	r5, #0
	ldrh	r2, [r10]
	add	r1, sp, #8
	strh	r5, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #10]	@ movhi
	strd	r5, r5, [sp, #16]
	strh	r3, [sp, #12]	@ movhi
	ldr	r3, [r4, #1996]
	blx	r3
	cmp	r8, #0
	bne	.L944
	str	r7, [r4, #292]
	mov	r0, r8
	strh	r8, [r4, #320]	@ movhi
	b	.L938
.L943:
	mov	r6, r0
	ldr	fp, .L948+4
	b	.L939
.L944:
	mov	r0, r5
	b	.L938
.L949:
	.align	2
.L948:
	.word	.LC139
	.word	.LC140
	.size	do_write_error_in_build_list, .-do_write_error_in_build_list
	.section	.text.init_nrc,"ax",%progbits
	.align	1
	.global	init_nrc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_nrc, %function
init_nrc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	movs	r0, #16
	mov	r6, r1
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L951
	movw	r2, #1399
	ldr	r1, .L971
	ldr	r0, .L971+4
	bl	NAND_Print
.L970:
	mov	r0, #-1
	b	.L950
.L951:
	movs	r2, #16
	movs	r1, #0
	bl	NAND_Memset
	ldr	r3, [r5, #4]
	ldrh	r5, [r3, #20]
	ldrh	r0, [r3, #26]
	adds	r0, r0, #64
	muls	r0, r5, r0
	bl	nftl_malloc
	str	r0, [r4, #8]
	cbnz	r0, .L953
	ldr	r1, .L971
	mov	r2, #1408
	ldr	r0, .L971+8
.L969:
.L954:
	bl	NAND_Print
	ldr	r0, [r4, #8]
	cbz	r0, .L957
	bl	nftl_free
.L957:
	ldr	r0, [r4, #12]
	cbz	r0, .L958
	bl	nftl_free
.L958:
	ldr	r0, [r4, #4]
	cbz	r0, .L959
	bl	nftl_free
.L959:
	mov	r0, r4
	bl	nftl_free
	movs	r3, #0
	str	r3, [r6]
	b	.L970
.L953:
	lsls	r7, r5, #2
	mov	r0, r7
	bl	nftl_malloc
	str	r0, [r4, #12]
	cbnz	r0, .L955
	movw	r2, #1413
	ldr	r1, .L971
	ldr	r0, .L971+12
	b	.L969
.L955:
	mov	r2, r7
	movs	r1, #255
	bl	NAND_Memset
	mov	r0, r5
	bl	nftl_malloc
	str	r0, [r4, #4]
	cbnz	r0, .L956
	movw	r2, #1419
	ldr	r1, .L971
	ldr	r0, .L971+16
	b	.L969
.L956:
	mov	r2, r5
	movs	r1, #0
	bl	NAND_Memset
	movs	r0, #0
	str	r4, [r6]
.L950:
	pop	{r3, r4, r5, r6, r7, pc}
.L972:
	.align	2
.L971:
	.word	.LANCHOR90
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	.LC144
	.size	init_nrc, .-init_nrc
	.section	.text.free_nrc,"ax",%progbits
	.align	1
	.global	free_nrc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	free_nrc, %function
free_nrc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L974
	ldr	r0, [r0, #8]
	bl	nftl_free
	ldr	r0, [r4, #4]
	bl	nftl_free
	ldr	r0, [r4, #12]
	bl	nftl_free
	mov	r0, r4
	bl	nftl_free
.L974:
	movs	r0, #0
	pop	{r4, pc}
	.size	free_nrc, .-free_nrc
	.section	.text.nftl_check_pattern,"ax",%progbits
	.align	1
	.global	nftl_check_pattern
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_check_pattern, %function
nftl_check_pattern:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, lr}
.L979:
	subs	r4, r3, r0
	cmp	r2, r4
	bgt	.L981
	movs	r0, #0
.L978:
	pop	{r4, pc}
.L981:
	ldrb	r4, [r3], #1	@ zero_extendqisi2
	cmp	r4, r1
	beq	.L979
	movs	r0, #1
	b	.L978
	.size	nftl_check_pattern, .-nftl_check_pattern
	.section	.text.is_last_phy_block,"ax",%progbits
	.align	1
	.global	is_last_phy_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_last_phy_block, %function
is_last_phy_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #4]
	ldrh	r0, [r0]
	ldrh	r3, [r3, #24]
	subs	r3, r3, #1
	subs	r3, r3, r0
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_last_phy_block, .-is_last_phy_block
	.section	.text.get_vaild_blocks,"ax",%progbits
	.align	1
	.global	get_vaild_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_vaild_blocks, %function
get_vaild_blocks:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
	movs	r4, #36
	ldr	r3, [r0, #4]
	sub	r8, r2, r1
	mov	r7, r0
	mov	r5, r1
	mov	r6, r8
	ldr	r3, [r3, #32]
	mla	r4, r4, r1, r3
.L985:
	cmp	r5, r8
	bcc	.L988
.L984:
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L988:
	ldrh	r3, [r4]
	mov	r1, sp
	mov	r0, r7
	strh	r3, [sp, #2]	@ movhi
	ldr	r3, [r7, #1992]
	blx	r3
	cmp	r0, #159
	bne	.L986
	subs	r6, r6, #1
	beq	.L984
.L986:
	mov	r1, r7
	mov	r0, r4
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L984
	adds	r4, r4, #36
	adds	r5, r5, #1
	b	.L985
	.size	get_vaild_blocks, .-get_vaild_blocks
	.section	.text.is_phy_block_valid,"ax",%progbits
	.align	1
	.global	is_phy_block_valid
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_phy_block_valid, %function
is_phy_block_valid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #4]
	ldrh	r0, [r0]
	ldrh	r3, [r3, #24]
	cmp	r0, r3
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
	.size	is_phy_block_valid, .-is_phy_block_valid
	.section	.text.get_phy_block_addr,"ax",%progbits
	.align	1
	.global	get_phy_block_addr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_phy_block_addr, %function
get_phy_block_addr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	movs	r0, #36
	ldr	r3, [r3, #32]
	mla	r0, r0, r1, r3
	bx	lr
	.size	get_phy_block_addr, .-get_phy_block_addr
	.section	.text.check_cross_talk,"ax",%progbits
	.align	1
	.global	check_cross_talk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_cross_talk, %function
check_cross_talk:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, #0
	sub	sp, sp, #36
	mov	r5, r0
	mov	r6, r1
	mov	r7, r4
.L998:
	ldr	r3, [r5, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	bls	.L1000
	ldrh	r3, [r3, #28]
	add	r1, sp, #16
	ldrh	r2, [r6]
	mov	r0, r5
	strh	r4, [sp, #16]	@ movhi
	strh	r3, [sp, #20]	@ movhi
	strh	r2, [sp, #18]	@ movhi
	str	r7, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r5, #1980]
	blx	r3
	cbnz	r0, .L999
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #99
	bhi	.L999
	ldr	r2, [r5, #1968]
	ldr	r1, [r2, #168]
	cmp	r1, r3
	bhi	.L999
	str	r3, [r2, #168]
.L1000:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L999:
	adds	r4, r4, #1
	b	.L998
	.size	check_cross_talk, .-check_cross_talk
	.section	.text.nftl_get_bad_block_cnt,"ax",%progbits
	.align	1
	.global	nftl_get_bad_block_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_bad_block_cnt, %function
nftl_get_bad_block_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ldrh	r0, [r3, #20]
	bx	lr
	.size	nftl_get_bad_block_cnt, .-nftl_get_bad_block_cnt
	.section	.text.print_nftl_zone,"ax",%progbits
	.align	1
	.global	print_nftl_zone
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_nftl_zone, %function
print_nftl_zone:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	mov	r4, r0
	ldr	r3, [r0, #356]
	cmp	r3, #0
	beq	.L1003
	ldr	r0, .L1009
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L1009+4
	ldrh	r1, [r3, #24]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L1009+8
	ldrh	r1, [r3, #26]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L1009+12
	ldrh	r1, [r3, #20]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L1009+16
	ldrh	r1, [r3, #16]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L1009+20
	ldrh	r1, [r3, #30]
	bl	NAND_Print_DBG
	ldr	r1, [r4, #356]
	ldr	r0, .L1009+24
	bl	NAND_Print_DBG
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	ldr	r0, .L1009+28
	bl	NAND_Print_DBG
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	ldr	r0, .L1009+32
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #18]
	ldr	r0, .L1009+36
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #20]
	ldr	r0, .L1009+40
	bl	NAND_Print_DBG
	ldr	r1, [r4, #24]
	ldr	r0, .L1009+44
	bl	NAND_Print_DBG
	ldr	r1, [r4, #32]
	ldr	r0, .L1009+48
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #22]
	ldr	r0, .L1009+52
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #380]
	ldr	r0, .L1009+56
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #382]
	ldr	r0, .L1009+60
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #388]
	ldr	r0, .L1009+64
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #384]
	ldr	r0, .L1009+68
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #394]
	ldr	r0, .L1009+72
	bl	NAND_Print_DBG
	ldr	r3, [r4, #40]
	ldr	r0, .L1009+76
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #44]
	ldr	r0, .L1009+80
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	add	r3, r4, #272
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #260
	stm	sp, {r0, r1, r2}
	ldr	r0, .L1009+84
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	add	r3, r4, #308
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #296
	stm	sp, {r0, r1, r2}
	ldr	r0, .L1009+88
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	ldr	r1, [r4, #292]
	ldr	r0, .L1009+92
	bl	NAND_Print_DBG
	ldr	r3, [r4, #292]
	ldr	r0, .L1009+96
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #320]
	ldr	r0, .L1009+100
	bl	NAND_Print_DBG
	ldr	r3, [r4, #292]
	ldr	r0, .L1009+104
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #48]
	ldr	r0, .L1009+108
	ldrh	r2, [r3, #6]
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L1005
	add	r3, r4, #340
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #328
	stm	sp, {r0, r1, r2}
	ldr	r0, .L1009+112
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	ldr	r1, [r4, #324]
	ldr	r0, .L1009+116
	bl	NAND_Print_DBG
	ldr	r3, [r4, #324]
	ldr	r0, .L1009+120
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #352]
	ldr	r0, .L1009+124
	bl	NAND_Print_DBG
	ldr	r3, [r4, #324]
	ldr	r0, .L1009+128
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
.L1005:
	ldr	r1, [r4, #360]
	ldr	r0, .L1009+132
	bl	NAND_Print_DBG
	ldr	r1, [r4, #284]
	ldr	r0, .L1009+136
	bl	NAND_Print_DBG
	ldr	r1, [r4, #376]
	ldr	r0, .L1009+140
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #584]
	ldr	r0, .L1009+144
	bl	NAND_Print_DBG
	ldr	r1, [r4, #368]
	ldr	r0, .L1009+148
	bl	NAND_Print_DBG
	ldr	r1, [r4, #372]
	ldr	r0, .L1009+152
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+156
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+160
	ldrh	r1, [r3, #2]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+164
	ldrh	r1, [r3, #4]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+168
	ldrh	r1, [r3, #6]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+172
	ldrh	r1, [r3, #10]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+176
	ldrh	r1, [r3, #12]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+180
	ldrh	r1, [r3, #14]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+184
	ldrh	r1, [r3, #16]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+188
	ldrh	r1, [r3, #18]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+192
	ldrh	r1, [r3, #20]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+196
	ldrh	r1, [r3, #22]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+200
	ldrh	r1, [r3, #24]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+204
	ldrh	r1, [r3, #26]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L1009+208
	ldr	r1, [r3, #32]
	bl	NAND_Print_DBG
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	print_smart
.L1003:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L1010:
	.align	2
.L1009:
	.word	.LC145
	.word	.LC146
	.word	.LC147
	.word	.LC148
	.word	.LC149
	.word	.LC150
	.word	.LC151
	.word	.LC152
	.word	.LC153
	.word	.LC154
	.word	.LC155
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.word	.LC163
	.word	.LC164
	.word	.LC165
	.word	.LC166
	.word	.LC167
	.word	.LC168
	.word	.LC169
	.word	.LC170
	.word	.LC171
	.word	.LC172
	.word	.LC173
	.word	.LC174
	.word	.LC175
	.word	.LC176
	.word	.LC177
	.word	.LC178
	.word	.LC179
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC183
	.word	.LC184
	.word	.LC185
	.word	.LC186
	.word	.LC187
	.word	.LC188
	.word	.LC189
	.word	.LC190
	.word	.LC191
	.word	.LC192
	.word	.LC193
	.word	.LC194
	.word	.LC195
	.word	.LC196
	.word	.LC197
	.size	print_nftl_zone, .-print_nftl_zone
	.section	.text.nftl_set_zone_test,"ax",%progbits
	.align	1
	.global	nftl_set_zone_test
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_set_zone_test, %function
nftl_set_zone_test:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #356]
	b	print_nftl_zone
	.size	nftl_set_zone_test, .-nftl_set_zone_test
	.section	.text.nand_dbg_phy_read,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_read, %function
nand_dbg_phy_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #76
	mov	r0, #4096
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1013
	ldr	r1, .L1014
	ldr	r0, .L1014+4
	bl	NAND_Print
.L1013:
	add	r3, sp, #56
	mov	r2, r7
	strd	r4, r3, [sp]
	mov	r1, r6
	movs	r3, #8
	mov	r0, r5
	bl	page_read
	mov	r5, r0
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrb	r3, [sp, #58]	@ zero_extendqisi2
	ldrb	r2, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r1, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1014+8
	bl	NAND_Print_DBG
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1014+12
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1015:
	.align	2
.L1014:
	.word	.LANCHOR91
	.word	.LC198
	.word	.LC199
	.word	.LC200
	.size	nand_dbg_phy_read, .-nand_dbg_phy_read
	.section	.text.nand_dbg_zone_phy_read,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_phy_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_phy_read, %function
nand_dbg_zone_phy_read:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #92
	mov	r0, #4096
	mov	r7, r1
	mov	r6, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1017
	ldr	r1, .L1018
	ldr	r0, .L1018+4
	bl	NAND_Print
.L1017:
	ldr	r3, [r5, #4]
	movs	r1, #36
	muls	r1, r7, r1
	mov	r0, r5
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, r1]
	add	r1, sp, #56
	strh	r6, [sp, #56]	@ movhi
	str	r4, [sp, #64]
	strh	r3, [sp, #58]	@ movhi
	movs	r3, #8
	strh	r3, [sp, #60]	@ movhi
	add	r3, sp, #72
	str	r3, [sp, #68]
	ldr	r3, [r5, #1980]
	blx	r3
	mov	r5, r0
	ldrb	r0, [sp, #87]	@ zero_extendqisi2
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	ldrb	r2, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #86]	@ zero_extendqisi2
	ldrb	r1, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #85]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #84]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #83]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #80]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1018+8
	bl	NAND_Print_DBG
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1018+12
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1019:
	.align	2
.L1018:
	.word	.LANCHOR92
	.word	.LC198
	.word	.LC199
	.word	.LC200
	.size	nand_dbg_zone_phy_read, .-nand_dbg_zone_phy_read
	.section	.text.nand_dbg_zone_phy_write,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_phy_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_phy_write, %function
nand_dbg_zone_phy_write:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #32
	mov	r0, #8192
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1021
	ldr	r1, .L1022
	ldr	r0, .L1022+4
	bl	NAND_Print
.L1021:
	ldr	r3, [r5, #4]
	movs	r2, #36
	muls	r6, r2, r6
	mov	r0, r4
	mov	r2, #4096
	movs	r1, #165
	ldr	r8, [r3, #32]
	bl	NAND_Memset
	ldr	r2, .L1022+8
	mov	r3, #-1
	strh	r3, [sp, #24]	@ movhi
	mov	r1, sp
	mov	r0, r5
	strd	r3, r2, [sp, #16]
	movw	r3, #65535
	strb	r3, [sp, #26]
	ldr	r3, [r5, #4]
	ldrh	r2, [r8, r6]
	strh	r7, [sp]	@ movhi
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #2]	@ movhi
	str	r4, [sp, #8]
	strh	r3, [sp, #4]	@ movhi
	add	r3, sp, #16
	str	r3, [sp, #12]
	ldr	r3, [r5, #1984]
	blx	r3
	mov	r5, r0
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1023:
	.align	2
.L1022:
	.word	.LANCHOR93
	.word	.LC201
	.word	-5921281
	.size	nand_dbg_zone_phy_write, .-nand_dbg_zone_phy_write
	.section	.text.nand_dbg_phy_write,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_write, %function
nand_dbg_phy_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #28
	mov	r0, #8192
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1025
	ldr	r1, .L1026
	ldr	r0, .L1026+4
	bl	NAND_Print
.L1025:
	mov	r0, r4
	mov	r2, #4096
	movs	r1, #165
	bl	NAND_Memset
	ldr	r2, .L1026+8
	mov	r3, #-1
	strh	r3, [sp, #16]	@ movhi
	mov	r1, r6
	mov	r0, r5
	strd	r3, r2, [sp, #8]
	movw	r3, #65535
	strb	r3, [sp, #18]
	add	r3, sp, #8
	strd	r4, r3, [sp]
	mov	r2, r7
	movs	r3, #8
	bl	page_write
	mov	r5, r0
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1027:
	.align	2
.L1026:
	.word	.LANCHOR94
	.word	.LC201
	.word	-5921281
	.size	nand_dbg_phy_write, .-nand_dbg_phy_write
	.section	.text.nand_dbg_phy_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_erase, %function
nand_dbg_phy_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	block_erase
	.size	nand_dbg_phy_erase, .-nand_dbg_phy_erase
	.section	.text.nand_dbg_single_phy_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_single_phy_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_single_phy_erase, %function
nand_dbg_single_phy_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	nand_physic_erase_block
	.size	nand_dbg_single_phy_erase, .-nand_dbg_single_phy_erase
	.section	.text.nand_clean_zone_table2,"ax",%progbits
	.align	1
	.global	nand_clean_zone_table2
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_clean_zone_table2, %function
nand_clean_zone_table2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r0, [r0, #24]
	add	r8, r4, #52
	mov	r5, r4
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	lsls	r6, r0, #2
	ldr	fp, .L1039+4
	mov	r2, r0
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	lsrs	r7, r6, #20
	ldr	r0, .L1039
	add	r10, r8, r7, lsl #2
	bl	NAND_Print_DBG
.L1031:
	cmp	r8, r10
	bne	.L1032
	ubfx	r6, r6, #0, #20
	cbz	r6, .L1033
	add	r7, r4, r7, lsl #2
	movs	r1, #255
	mov	r2, r6
	ldr	r0, [r7, #52]
	bl	NAND_Memset
	mov	r1, r6
	ldr	r0, .L1039+4
	bl	NAND_Print_DBG
.L1033:
	movs	r3, #0
	movw	r2, #65535
	strh	r2, [r4, #320]	@ movhi
	strh	r2, [r4, #352]	@ movhi
	mov	r2, r3
	str	r3, [r4, #292]
	str	r3, [r4, #324]
	strd	r3, r3, [r4, #172]
	strd	r3, r3, [r4, #164]
	strd	r3, r3, [r4, #180]
	strd	r3, r3, [r4, #208]
	strd	r3, r3, [r4, #200]
	strd	r3, r3, [r4, #216]
	strd	r3, r3, [r4, #244]
	strd	r3, r3, [r4, #236]
	strd	r3, r3, [r4, #252]
	str	r3, [r4, #20]
	strh	r3, [r4, #392]	@ movhi
.L1034:
	strh	r3, [r5, #396]	@ movhi
	adds	r3, r3, #1
	cmp	r3, #10
	strh	r2, [r5, #398]	@ movhi
	strd	r2, r2, [r5, #400]
	add	r5, r5, #16
	str	r2, [r5, #392]
	bne	.L1034
	movs	r3, #255
	strh	r2, [r4, #394]	@ movhi
	strd	r3, r2, [r4, #556]
	movs	r0, #0
	strd	r2, r2, [r4, #564]
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1032:
	ldr	r0, [r8], #4
	mov	r2, #1048576
	movs	r1, #255
	bl	NAND_Memset
	mov	r1, #1048576
	mov	r0, fp
	bl	NAND_Print_DBG
	b	.L1031
.L1040:
	.align	2
.L1039:
	.word	.LC202
	.word	.LC203
	.size	nand_clean_zone_table2, .-nand_clean_zone_table2
	.section	.text.add_free_list,"ax",%progbits
	.align	1
	.global	add_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_free_list, %function
add_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #152
	push	{r4, lr}
.L1042:
	ldr	r3, [r0, #20]
	cbnz	r3, .L1044
	str	r1, [r0, #20]
	str	r3, [r1, #20]
	b	.L1046
.L1044:
	ldrh	r2, [r3, #6]
	ldrh	r4, [r1, #6]
	cmp	r4, r2
	bhi	.L1045
	str	r1, [r3, #24]
	str	r3, [r1, #20]
	str	r1, [r0, #20]
.L1046:
	str	r0, [r1, #24]
	movs	r0, #0
	pop	{r4, pc}
.L1045:
	mov	r0, r3
	b	.L1042
	.size	add_free_list, .-add_free_list
	.section	.text.del_free_list,"ax",%progbits
	.align	1
	.global	del_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_free_list, %function
del_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	ldr	r0, [r0, #172]
	cbz	r0, .L1047
	ldr	r2, [r0, #20]
	str	r2, [r3, #172]
	ldr	r2, [r0, #20]
	str	r2, [r3, #172]
	ldr	r2, [r0, #20]
	cbz	r2, .L1047
	adds	r3, r3, #152
	str	r3, [r2, #24]
.L1047:
	bx	lr
	.size	del_free_list, .-del_free_list
	.section	.text.del_free_list_by_block,"ax",%progbits
	.align	1
	.global	del_free_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_free_list_by_block, %function
del_free_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L1055:
	cbnz	r0, .L1058
	bx	lr
.L1058:
	cmp	r0, r1
	ldr	r3, [r0, #20]
	bne	.L1059
	ldr	r2, [r0, #24]
	str	r3, [r2, #20]
	ldr	r3, [r0, #20]
	cbz	r3, .L1056
	str	r2, [r3, #24]
.L1056:
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	bx	lr
.L1059:
	mov	r0, r3
	b	.L1055
	.size	del_free_list_by_block, .-del_free_list_by_block
	.section	.text.is_block_in_free_list,"ax",%progbits
	.align	1
	.global	is_block_in_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_block_in_free_list, %function
is_block_in_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L1064:
	cbnz	r0, .L1066
	bx	lr
.L1066:
	cmp	r0, r1
	beq	.L1067
	ldr	r0, [r0, #20]
	b	.L1064
.L1067:
	movs	r0, #1
	bx	lr
	.size	is_block_in_free_list, .-is_block_in_free_list
	.section	.text.print_free_list,"ax",%progbits
	.align	1
	.global	print_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_free_list, %function
print_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L1068
	ldr	r0, .L1073
	bl	NAND_Print_DBG
	ldr	r5, .L1073+4
	ldr	r4, [r4, #172]
	ldr	r6, .L1073+8
.L1070:
	cbnz	r4, .L1071
.L1068:
	pop	{r4, r5, r6, pc}
.L1071:
	ldrh	r2, [r4, #6]
	mov	r0, r5
	ldrh	r1, [r4]
	bl	NAND_Print_DBG
	ldr	r1, [r4, #8]
	mov	r0, r6
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #2]
	ldr	r0, .L1073+12
	bl	NAND_Print_DBG
	ldr	r4, [r4, #20]
	b	.L1070
.L1074:
	.align	2
.L1073:
	.word	.LC204
	.word	.LC205
	.word	.LC206
	.word	.LC207
	.size	print_free_list, .-print_free_list
	.section	.text.add_block_invalid_list,"ax",%progbits
	.align	1
	.global	add_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_block_invalid_list, %function
add_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #188
	push	{r4, lr}
.L1076:
	ldr	r3, [r0, #12]
	cbnz	r3, .L1078
	str	r1, [r0, #12]
	str	r3, [r1, #12]
	b	.L1080
.L1078:
	ldrh	r2, [r3, #4]
	ldrh	r4, [r1, #4]
	cmp	r4, r2
	bcc	.L1079
	str	r1, [r3, #16]
	str	r3, [r1, #12]
	str	r1, [r0, #12]
.L1080:
	str	r0, [r1, #16]
	movs	r0, #0
	pop	{r4, pc}
.L1079:
	mov	r0, r3
	b	.L1076
	.size	add_block_invalid_list, .-add_block_invalid_list
	.section	.text.del_block_invalid_list,"ax",%progbits
	.align	1
	.global	del_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_invalid_list, %function
del_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	ldr	r0, [r0, #200]
	cbz	r0, .L1081
	ldr	r2, [r0, #12]
	str	r2, [r3, #200]
	ldr	r2, [r0, #12]
	cbz	r2, .L1081
	adds	r3, r3, #188
	str	r3, [r2, #16]
.L1081:
	bx	lr
	.size	del_block_invalid_list, .-del_block_invalid_list
	.section	.text.del_block_invalid_list_by_block,"ax",%progbits
	.align	1
	.global	del_block_invalid_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_invalid_list_by_block, %function
del_block_invalid_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #200]
.L1089:
	cbnz	r0, .L1092
	bx	lr
.L1092:
	cmp	r0, r1
	ldr	r3, [r0, #12]
	bne	.L1093
	ldr	r2, [r0, #16]
	str	r3, [r2, #12]
	ldr	r3, [r0, #12]
	cbz	r3, .L1090
	str	r2, [r3, #16]
.L1090:
	movs	r3, #0
	strd	r3, r3, [r0, #12]
	bx	lr
.L1093:
	mov	r0, r3
	b	.L1089
	.size	del_block_invalid_list_by_block, .-del_block_invalid_list_by_block
	.section	.text.is_block_in_invalid_list,"ax",%progbits
	.align	1
	.global	is_block_in_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_block_in_invalid_list, %function
is_block_in_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #200]
.L1098:
	cbnz	r0, .L1100
	bx	lr
.L1100:
	cmp	r0, r1
	beq	.L1101
	ldr	r0, [r0, #12]
	b	.L1098
.L1101:
	movs	r0, #1
	bx	lr
	.size	is_block_in_invalid_list, .-is_block_in_invalid_list
	.section	.text.print_block_invalid_list,"ax",%progbits
	.align	1
	.global	print_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_block_invalid_list, %function
print_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L1102
	ldr	r0, .L1107
	bl	NAND_Print_DBG
	ldr	r5, .L1107+4
	ldr	r4, [r4, #200]
	ldr	r6, .L1107+8
.L1104:
	cbnz	r4, .L1105
.L1102:
	pop	{r4, r5, r6, pc}
.L1105:
	ldrh	r2, [r4, #6]
	mov	r0, r5
	ldrh	r1, [r4]
	bl	NAND_Print_DBG
	ldrh	r2, [r4, #4]
	mov	r0, r6
	ldr	r1, [r4, #8]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #2]
	ldr	r0, .L1107+12
	bl	NAND_Print_DBG
	ldr	r4, [r4, #12]
	b	.L1104
.L1108:
	.align	2
.L1107:
	.word	.LC208
	.word	.LC205
	.word	.LC209
	.word	.LC207
	.size	print_block_invalid_list, .-print_block_invalid_list
	.section	.text.add_block_count_list,"ax",%progbits
	.align	1
	.global	add_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_block_count_list, %function
add_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #224
	push	{r4, lr}
.L1110:
	ldr	r3, [r0, #28]
	cbnz	r3, .L1112
	str	r1, [r0, #28]
	str	r3, [r1, #28]
	b	.L1114
.L1112:
	ldr	r4, [r3, #8]
	ldr	r2, [r1, #8]
	cmp	r4, r2
	blt	.L1113
	str	r1, [r3, #32]
	str	r3, [r1, #28]
	str	r1, [r0, #28]
.L1114:
	str	r0, [r1, #32]
	movs	r0, #0
	pop	{r4, pc}
.L1113:
	mov	r0, r3
	b	.L1110
	.size	add_block_count_list, .-add_block_count_list
	.section	.text.del_block_count_list,"ax",%progbits
	.align	1
	.global	del_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_count_list, %function
del_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	adds	r0, r0, #224
	ldr	r2, [r3, #252]
	cbz	r2, .L1115
	ldr	r2, [r2, #28]
	str	r2, [r3, #252]
.L1115:
	bx	lr
	.size	del_block_count_list, .-del_block_count_list
	.section	.text.del_block_count_by_block,"ax",%progbits
	.align	1
	.global	del_block_count_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_count_by_block, %function
del_block_count_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #252]
.L1121:
	cbnz	r0, .L1124
	bx	lr
.L1124:
	cmp	r0, r1
	ldr	r3, [r0, #28]
	bne	.L1125
	ldr	r2, [r0, #32]
	str	r3, [r2, #28]
	ldr	r3, [r0, #28]
	cbz	r3, .L1122
	str	r2, [r3, #32]
.L1122:
	movs	r3, #0
	strd	r3, r3, [r0, #28]
	bx	lr
.L1125:
	mov	r0, r3
	b	.L1121
	.size	del_block_count_by_block, .-del_block_count_by_block
	.section	.text.print_block_count_list,"ax",%progbits
	.align	1
	.global	print_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_block_count_list, %function
print_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L1129
	ldr	r0, .L1134
	bl	NAND_Print_DBG
	ldr	r5, .L1134+4
	ldr	r4, [r4, #252]
	ldr	r6, .L1134+8
.L1131:
	cbnz	r4, .L1132
.L1129:
	pop	{r4, r5, r6, pc}
.L1132:
	ldrh	r1, [r4]
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r1, [r4, #8]
	mov	r0, r6
	bl	NAND_Print_DBG
	ldr	r4, [r4, #28]
	b	.L1131
.L1135:
	.align	2
.L1134:
	.word	.LC210
	.word	.LC211
	.word	.LC212
	.size	print_block_count_list, .-print_block_count_list
	.section	.text.put_phy_block_to_free_list,"ax",%progbits
	.align	1
	.global	put_phy_block_to_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	put_phy_block_to_free_list, %function
put_phy_block_to_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	push	{r3, r4, r5, lr}
	strd	r2, r2, [r1, #20]
	mov	r5, r0
	bl	add_free_list
	mov	r4, r0
	cbnz	r0, .L1137
	ldrh	r3, [r5, #22]
	adds	r3, r3, #1
	strh	r3, [r5, #22]	@ movhi
.L1136:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L1137:
	ldr	r0, .L1139
	bl	NAND_Print_DBG
	b	.L1136
.L1140:
	.align	2
.L1139:
	.word	.LC213
	.size	put_phy_block_to_free_list, .-put_phy_block_to_free_list
	.section	.text.out_phy_block_from_free_list,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list, %function
out_phy_block_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	bl	del_free_list
	cbz	r0, .L1141
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	ldrh	r3, [r1, #22]
	cbz	r3, .L1141
	subs	r3, r3, #1
	strh	r3, [r1, #22]	@ movhi
.L1141:
	pop	{r3, pc}
	.size	out_phy_block_from_free_list, .-out_phy_block_from_free_list
	.section	.text.panic_backup_block,"ax",%progbits
	.align	1
	.global	panic_backup_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_backup_block, %function
panic_backup_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1159
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r0
	ldr	r0, [r3]
	cbz	r0, .L1148
	ldr	r6, .L1159+4
	movs	r5, #0
	ldr	fp, .L1159+16
.L1152:
	ldr	r4, [r6, r5, lsl #2]
	lsl	r10, r5, #2
	cbz	r4, .L1150
	ldrh	r1, [r4]
	ldr	r0, .L1159+8
	bl	NAND_Print
	movs	r0, #0
.L1148:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1150:
	mov	r0, r8
	bl	out_phy_block_from_free_list
	mov	r7, r0
	cbz	r0, .L1151
	ldrh	r1, [r0]
	adds	r5, r5, #1
	mov	r0, fp
	bl	NAND_Print
	cmp	r5, #3
	str	r7, [r10, r6]
	bne	.L1152
	ldr	r3, [r8, #4]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	add	r3, r3, r3, lsl #1
	str	r3, [r6, #12]
	b	.L1148
.L1151:
	ldr	r0, .L1159+12
	bl	NAND_Print
	mov	r0, #-1
	b	.L1148
.L1160:
	.align	2
.L1159:
	.word	.LANCHOR2
	.word	.LANCHOR4
	.word	.LC214
	.word	.LC216
	.word	.LC215
	.size	panic_backup_block, .-panic_backup_block
	.section	.text.get_max_erase_time_from_free_list,"ax",%progbits
	.align	1
	.global	get_max_erase_time_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_max_erase_time_from_free_list, %function
get_max_erase_time_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #172]
	movs	r0, #0
	mov	r2, r0
	push	{r4, lr}
.L1162:
	cbnz	r3, .L1164
	cbz	r2, .L1166
	ldrh	r0, [r2, #6]
.L1165:
	pop	{r4, pc}
.L1164:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L1163
	cmp	r4, r0
	itt	cs
	movcs	r0, r4
	movcs	r2, r3
.L1163:
	ldr	r3, [r3, #20]
	b	.L1162
.L1166:
	movw	r0, #65535
	b	.L1165
	.size	get_max_erase_time_from_free_list, .-get_max_erase_time_from_free_list
	.section	.text.get_block_max_erase_time_from_free_list,"ax",%progbits
	.align	1
	.global	get_block_max_erase_time_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_erase_time_from_free_list, %function
get_block_max_erase_time_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	ldr	r3, [r0, #172]
	mov	r0, r2
	push	{r4, lr}
.L1168:
	cbnz	r3, .L1170
	pop	{r4, pc}
.L1170:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L1169
	cmp	r4, r2
	itt	cs
	movcs	r2, r4
	movcs	r0, r3
.L1169:
	ldr	r3, [r3, #20]
	b	.L1168
	.size	get_block_max_erase_time_from_free_list, .-get_block_max_erase_time_from_free_list
	.section	.text.get_block_max_erase_time_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_max_erase_time_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_erase_time_from_invalid_list, %function
get_block_max_erase_time_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	ldr	r3, [r0, #200]
	mov	r0, r2
	push	{r4, lr}
.L1172:
	cbnz	r3, .L1174
	pop	{r4, pc}
.L1174:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L1173
	cmp	r4, r2
	itt	cs
	movcs	r2, r4
	movcs	r0, r3
.L1173:
	ldr	r3, [r3, #12]
	b	.L1172
	.size	get_block_max_erase_time_from_invalid_list, .-get_block_max_erase_time_from_invalid_list
	.section	.text.get_block_min_erase_time_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_min_erase_time_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_min_erase_time_from_invalid_list, %function
get_block_min_erase_time_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, lr}
	ldrh	r5, [r3, #16]
	ldr	r3, [r0, #200]
	movs	r0, #0
.L1176:
	cbnz	r3, .L1178
	pop	{r4, r5, r6, pc}
.L1178:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L1177
	ldr	r6, [r3, #8]
	cmp	r6, r2
	bcs	.L1177
	cmp	r4, r5
	itt	ls
	movls	r5, r4
	movls	r0, r3
.L1177:
	ldr	r3, [r3, #12]
	b	.L1176
	.size	get_block_min_erase_time_from_invalid_list, .-get_block_min_erase_time_from_invalid_list
	.section	.text.get_block_max_count_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_max_count_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_count_from_invalid_list, %function
get_block_max_count_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #0
	ldr	r3, [r0, #200]
	mov	r0, r2
.L1180:
	cbnz	r3, .L1182
	bx	lr
.L1182:
	ldr	r1, [r3, #8]
	cmp	r1, r2
	itt	cs
	movcs	r0, r3
	movcs	r2, r1
	ldr	r3, [r3, #12]
	b	.L1180
	.size	get_block_max_count_from_invalid_list, .-get_block_max_count_from_invalid_list
	.section	.text.get_block_min_count_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_min_count_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_min_count_from_invalid_list, %function
get_block_min_count_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #200]
	mov	r2, #-1
	movs	r0, #0
.L1184:
	cbnz	r3, .L1186
	bx	lr
.L1186:
	ldr	r1, [r3, #8]
	cmp	r1, r2
	itt	ls
	movls	r0, r3
	movls	r2, r1
	ldr	r3, [r3, #12]
	b	.L1184
	.size	get_block_min_count_from_invalid_list, .-get_block_min_count_from_invalid_list
	.section	.text.out_phy_block_from_free_list_by_block,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list_by_block, %function
out_phy_block_from_free_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	del_free_list_by_block
	cbz	r0, .L1187
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	ldrh	r3, [r4, #22]
	cbz	r3, .L1187
	subs	r3, r3, #1
	strh	r3, [r4, #22]	@ movhi
.L1187:
	pop	{r4, pc}
	.size	out_phy_block_from_free_list_by_block, .-out_phy_block_from_free_list_by_block
	.section	.text.out_phy_block_from_free_list_by_erase_time,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list_by_erase_time
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list_by_erase_time, %function
out_phy_block_from_free_list_by_erase_time:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #172]
	push	{r4, r5}
	movs	r4, #0
	mov	r2, r4
.L1195:
	cbnz	r3, .L1197
	cbz	r2, .L1194
	mov	r1, r2
	pop	{r4, r5}
	b	out_phy_block_from_free_list_by_block
.L1197:
	ldrh	r5, [r3, #6]
	cmp	r5, r1
	bcs	.L1196
	cmp	r5, r4
	itt	cs
	movcs	r4, r5
	movcs	r2, r3
.L1196:
	ldr	r3, [r3, #20]
	b	.L1195
.L1194:
	mov	r0, r2
	pop	{r4, r5}
	bx	lr
	.size	out_phy_block_from_free_list_by_erase_time, .-out_phy_block_from_free_list_by_erase_time
	.section	.text.get_new_current_block,"ax",%progbits
	.align	1
	.global	get_new_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_new_current_block, %function
get_new_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	ldr	r3, [r1]
	mov	r6, r0
	ldr	r2, [r1, #16]
	movs	r1, #255
	ldr	r0, [r4, #12]
	ldr	r5, [r3, #8]
	bl	NAND_Memset
	ldrh	r3, [r6, #578]
	cbz	r3, .L1200
	ldr	r3, [r6, #4]
	mov	r0, r6
	ldrh	r1, [r3, #16]
	bl	out_phy_block_from_free_list_by_erase_time
	str	r0, [r4]
	cbz	r0, .L1201
	ldrh	r2, [r0, #6]
	ldrh	r1, [r0]
	ldr	r0, .L1208
	bl	NAND_Print_DBG
.L1201:
	ldr	r1, [r4]
	cbnz	r1, .L1202
	ldr	r0, .L1208+4
	bl	NAND_Print
	movs	r0, #1
.L1199:
	pop	{r3, r4, r5, r6, r7, pc}
.L1200:
	mov	r0, r6
	bl	out_phy_block_from_free_list
	str	r0, [r4]
	b	.L1201
.L1202:
	adds	r2, r5, #1
	movs	r7, #0
	strh	r7, [r4, #28]	@ movhi
	str	r2, [r1, #8]
	ldrb	r3, [r6, #17]	@ zero_extendqisi2
	ands	r0, r3, #1
	ittt	ne
	addne	r2, r5, #2
	movne	r0, r7
	strne	r2, [r1, #8]
	b	.L1199
.L1209:
	.align	2
.L1208:
	.word	.LC217
	.word	.LC218
	.size	get_new_current_block, .-get_new_current_block
	.section	.text.do_before_write,"ax",%progbits
	.align	1
	.global	do_before_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_before_write, %function
do_before_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	add	r5, r0, #292
.L1211:
	ldrh	r3, [r4, #320]
	cbz	r3, .L1214
.L1218:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r0, r3, #31
	bpl	.L1216
	add	r5, r4, #324
.L1215:
	ldrh	r3, [r4, #352]
	cbnz	r3, .L1216
	ldr	r1, [r4, #324]
	mov	r0, r4
	ldr	r2, [r1, #8]
	bl	new_block_init_for_write
	cbnz	r0, .L1220
.L1216:
	movs	r0, #0
.L1210:
	pop	{r3, r4, r5, pc}
.L1214:
	ldr	r1, [r4, #292]
	mov	r0, r4
	ldr	r2, [r1, #8]
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L1218
	ldr	r2, [r4, #292]
	mov	r0, r4
	ldr	r3, [r2, #8]
	subs	r1, r3, #1
	str	r1, [r2, #8]
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r1, #31
	mov	r1, r5
	itt	mi
	submi	r3, r3, #2
	strmi	r3, [r2, #8]
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L1211
	ldr	r0, .L1233
.L1232:
	bl	NAND_Print
	movs	r0, #1
	b	.L1210
.L1220:
	ldr	r2, [r4, #324]
	mov	r0, r4
	ldr	r3, [r2, #8]
	subs	r1, r3, #1
	str	r1, [r2, #8]
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r1, #31
	mov	r1, r5
	itt	mi
	submi	r3, r3, #2
	strmi	r3, [r2, #8]
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L1215
	ldr	r0, .L1233+4
	b	.L1232
.L1234:
	.align	2
.L1233:
	.word	.LC219
	.word	.LC220
	.size	do_before_write, .-do_before_write
	.section	.text.put_phy_block_to_invalid_page_list,"ax",%progbits
	.align	1
	.global	put_phy_block_to_invalid_page_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	put_phy_block_to_invalid_page_list, %function
put_phy_block_to_invalid_page_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	push	{r4, lr}
	strd	r2, r2, [r1, #12]
	bl	add_block_invalid_list
	mov	r4, r0
	cbz	r0, .L1235
	ldr	r0, .L1240
	bl	NAND_Print_DBG
.L1235:
	mov	r0, r4
	pop	{r4, pc}
.L1241:
	.align	2
.L1240:
	.word	.LC221
	.size	put_phy_block_to_invalid_page_list, .-put_phy_block_to_invalid_page_list
	.section	.text.out_phy_block_from_invalid_page_list,"ax",%progbits
	.align	1
	.global	out_phy_block_from_invalid_page_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_invalid_page_list, %function
out_phy_block_from_invalid_page_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	del_block_invalid_list
	cbz	r0, .L1242
	movs	r3, #0
	strd	r3, r3, [r0, #12]
.L1242:
	pop	{r3, pc}
	.size	out_phy_block_from_invalid_page_list, .-out_phy_block_from_invalid_page_list
	.section	.text.clean_block_list,"ax",%progbits
	.align	1
	.global	clean_block_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	clean_block_list, %function
clean_block_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	movs	r4, #0
	mov	r6, #-1
.L1249:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	cbnz	r0, .L1252
	mov	r1, r0
	mov	r4, #-1
.L1248:
	mov	r0, r5
	bl	out_phy_block_from_invalid_page_list
	cbz	r0, .L1247
	strh	r1, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strd	r4, r1, [r0, #8]
	strd	r1, r1, [r0, #16]
	strd	r1, r1, [r0, #24]
	str	r1, [r0, #32]
	b	.L1248
.L1252:
	strh	r4, [r0, #4]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	strd	r6, r4, [r0, #8]
	strd	r4, r4, [r0, #16]
	strd	r4, r4, [r0, #24]
	str	r4, [r0, #32]
	b	.L1249
.L1247:
	pop	{r4, r5, r6, pc}
	.size	clean_block_list, .-clean_block_list
	.section	.text.out_phy_block_from_invalid_page_list_by_block,"ax",%progbits
	.align	1
	.global	out_phy_block_from_invalid_page_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_invalid_page_list_by_block, %function
out_phy_block_from_invalid_page_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	del_block_invalid_list_by_block
	cbz	r0, .L1253
	movs	r3, #0
	strd	r3, r3, [r0, #12]
.L1253:
	pop	{r3, pc}
	.size	out_phy_block_from_invalid_page_list_by_block, .-out_phy_block_from_invalid_page_list_by_block
	.section	.text.phy_block_from_invalid_page_incr,"ax",%progbits
	.align	1
	.global	phy_block_from_invalid_page_incr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	phy_block_from_invalid_page_incr, %function
phy_block_from_invalid_page_incr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldrh	r2, [r1, #4]
	mov	r5, r0
	ldr	r1, [r1, #12]
	ldr	r3, [r0, #4]
	adds	r2, r2, #1
	uxth	r2, r2
	ldrh	r3, [r3, #20]
	cbnz	r1, .L1259
	ldr	r1, [r4, #16]
	cbnz	r1, .L1259
	cmp	r2, r3
	strh	r2, [r4, #4]	@ movhi
	bls	.L1261
	ldrh	r1, [r4]
	ldr	r0, .L1273
	bl	NAND_Print_DBG
.L1261:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1259:
	cmp	r2, r3
	strh	r2, [r4, #4]	@ movhi
	bls	.L1262
	ldr	r0, .L1273+4
	bl	NAND_Print_DBG
.L1262:
	ldr	r3, [r4, #16]
	adds	r5, r5, #188
	cmp	r3, r5
	beq	.L1261
	ldrh	r1, [r4, #4]
.L1264:
	ldrh	r2, [r3, #4]
	cmp	r2, r1
	bcs	.L1261
	ldr	r2, [r3, #16]
	str	r2, [r4, #16]
	ldr	r2, [r3, #16]
	str	r4, [r2, #12]
	ldr	r2, [r4, #12]
	str	r2, [r3, #12]
	ldr	r2, [r4, #12]
	cbz	r2, .L1265
	str	r3, [r2, #16]
.L1265:
	str	r3, [r4, #12]
	str	r4, [r3, #16]
	ldr	r3, [r4, #16]
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L1264
	b	.L1261
.L1274:
	.align	2
.L1273:
	.word	.LC222
	.word	.LC223
	.size	phy_block_from_invalid_page_incr, .-phy_block_from_invalid_page_incr
	.section	.text.adjust_invaild_list,"ax",%progbits
	.align	1
	.global	adjust_invaild_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	adjust_invaild_list, %function
adjust_invaild_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
.L1276:
	ldr	r3, [r4, #200]
	cbnz	r3, .L1278
.L1277:
	movs	r0, #0
	pop	{r4, pc}
.L1278:
	ldr	r1, [r4, #4]
	ldrh	r2, [r3, #4]
	ldrh	r3, [r1, #20]
	cmp	r2, r3
	bne	.L1277
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list
	mov	r1, r0
	mov	r0, r4
	bl	put_phy_block_to_free_list
	b	.L1276
	.size	adjust_invaild_list, .-adjust_invaild_list
	.section	.text.nftl_cache_init,"ax",%progbits
	.align	1
	.global	nftl_cache_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_init, %function
nftl_cache_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r6, r0
	movs	r7, #255
	mov	r8, #-1
	movs	r5, #0
	ldrh	r3, [r3, #22]
	strh	r5, [r0, #586]	@ movhi
	strh	r5, [r0, #588]	@ movhi
	strh	r3, [r0, #584]	@ movhi
	strh	r5, [r0, #590]	@ movhi
	str	r5, [r0, #1568]
	str	r5, [r0, #1572]
	str	r5, [r0, #1576]
	str	r5, [r0, #1580]
	str	r5, [r0, #1600]
	str	r5, [r0, #1604]
	str	r5, [r0, #1608]
	str	r5, [r0, #1612]
.L1280:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #26]
	ldrh	r3, [r4, #584]
	cmp	r3, r5
	bhi	.L1283
	bl	nftl_malloc
	str	r0, [r4, #1616]
	cbnz	r0, .L1284
	ldr	r1, .L1286
	ldr	r0, .L1286+4
	b	.L1285
.L1283:
	movs	r3, #0
	strh	r5, [r6, #592]	@ movhi
	strh	r7, [r6, #594]	@ movhi
	str	r8, [r6, #600]
	strd	r3, r3, [r6, #608]
	strd	r3, r3, [r6, #616]
	adds	r6, r6, #32
	strh	r3, [r6, #564]	@ movhi
	strh	r3, [r6, #566]	@ movhi
	bl	nftl_malloc
	str	r0, [r6, #572]
	cbnz	r0, .L1281
	ldr	r1, .L1286
	ldr	r0, .L1286+8
.L1285:
	bl	NAND_Print
	movs	r0, #1
.L1279:
	pop	{r4, r5, r6, r7, r8, pc}
.L1281:
	adds	r5, r5, #1
	b	.L1280
.L1284:
	movs	r0, #0
	b	.L1279
.L1287:
	.align	2
.L1286:
	.word	.LANCHOR95
	.word	.LC225
	.word	.LC224
	.size	nftl_cache_init, .-nftl_cache_init
	.section	.text.nftl_cache_exit,"ax",%progbits
	.align	1
	.global	nftl_cache_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_exit, %function
nftl_cache_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r4, #0
.L1289:
	ldrh	r3, [r5, #584]
	cmp	r3, r4
	bgt	.L1290
	ldr	r0, [r5, #1616]
	bl	nftl_free
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1290:
	add	r3, r5, r4, lsl #5
	adds	r4, r4, #1
	ldr	r0, [r3, #604]
	bl	nftl_free
	b	.L1289
	.size	nftl_cache_exit, .-nftl_cache_exit
	.section	.text.nftl_cache_clean,"ax",%progbits
	.align	1
	.global	nftl_cache_clean
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_clean, %function
nftl_cache_clean:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	add	r0, r0, #592
	push	{r4, r5, lr}
	movs	r4, #255
	mov	r5, #-1
	ldrh	r1, [r3, #22]
	movs	r3, #0
	strh	r3, [r0, #-6]	@ movhi
	mov	r2, r3
	strh	r3, [r0, #-4]	@ movhi
	strh	r1, [r0, #-8]	@ movhi
	strh	r3, [r0, #-2]	@ movhi
	str	r3, [r0, #976]
	str	r3, [r0, #980]
	str	r3, [r0, #984]
	str	r3, [r0, #988]
	str	r3, [r0, #1008]
	str	r3, [r0, #1012]
	str	r3, [r0, #1016]
	str	r3, [r0, #1020]
.L1292:
	cmp	r1, r3
	add	r0, r0, #32
	bhi	.L1293
	movs	r0, #0
	pop	{r4, r5, pc}
.L1293:
	strh	r3, [r0, #-32]	@ movhi
	adds	r3, r3, #1
	strh	r4, [r0, #-30]	@ movhi
	str	r5, [r0, #-24]
	strd	r2, r2, [r0, #-16]
	strd	r2, r2, [r0, #-8]
	strh	r2, [r0, #-28]	@ movhi
	strh	r2, [r0, #-26]	@ movhi
	b	.L1292
	.size	nftl_cache_clean, .-nftl_cache_clean
	.section	.text.search_from_cache_read_list,"ax",%progbits
	.align	1
	.global	search_from_cache_read_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_cache_read_list, %function
search_from_cache_read_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #984]
.L1295:
	cbnz	r0, .L1297
.L1294:
	bx	lr
.L1297:
	ldr	r3, [r0, #8]
	cmp	r3, r1
	beq	.L1294
	ldr	r0, [r0, #16]
	b	.L1295
	.size	search_from_cache_read_list, .-search_from_cache_read_list
	.section	.text.search_from_cache_write_list,"ax",%progbits
	.align	1
	.global	search_from_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_cache_write_list, %function
search_from_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1024]
.L1299:
	cbnz	r0, .L1301
.L1298:
	bx	lr
.L1301:
	ldr	r3, [r0, #8]
	cmp	r3, r1
	beq	.L1298
	ldr	r0, [r0, #24]
	b	.L1299
	.size	search_from_cache_write_list, .-search_from_cache_write_list
	.section	.text.add_to_cache_read_list_tail,"ax",%progbits
	.align	1
	.global	add_to_cache_read_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_cache_read_list_tail, %function
add_to_cache_read_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #968
	push	{r4, lr}
.L1303:
	ldr	r4, [r3, #16]
	cbnz	r4, .L1306
	str	r1, [r3, #16]
	strd	r4, r3, [r1, #16]
	strh	r2, [r1, #2]	@ movhi
	cbnz	r2, .L1304
	ldrh	r3, [r0, #2]
	adds	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
.L1305:
	movs	r0, #0
	pop	{r4, pc}
.L1306:
	mov	r3, r4
	b	.L1303
.L1304:
	ldrh	r3, [r0, #6]
	adds	r3, r3, #1
	strh	r3, [r0, #6]	@ movhi
	b	.L1305
	.size	add_to_cache_read_list_tail, .-add_to_cache_read_list_tail
	.section	.text.add_to_cache_write_list_tail,"ax",%progbits
	.align	1
	.global	add_to_cache_write_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_cache_write_list_tail, %function
add_to_cache_write_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #1000
.L1308:
	ldr	r3, [r2, #24]
	cbnz	r3, .L1309
	str	r1, [r2, #24]
	strd	r3, r2, [r1, #24]
	movs	r2, #1
	strh	r2, [r1, #2]	@ movhi
	ldrh	r2, [r0, #4]
	adds	r2, r2, #1
	strh	r2, [r0, #4]	@ movhi
	mov	r0, r3
	bx	lr
.L1309:
	mov	r2, r3
	b	.L1308
	.size	add_to_cache_write_list_tail, .-add_to_cache_write_list_tail
	.section	.text.del_from_cache_read_list,"ax",%progbits
	.align	1
	.global	del_from_cache_read_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_cache_read_list, %function
del_from_cache_read_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #16]
	str	r3, [r2, #16]
	ldr	r3, [r1, #16]
	cbz	r3, .L1311
	str	r2, [r3, #20]
.L1311:
	ldrh	r3, [r1, #2]
	cbnz	r3, .L1312
	ldrh	r3, [r0, #2]
	subs	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
.L1313:
	movs	r3, #255
	mov	r0, r1
	strh	r3, [r1, #2]	@ movhi
	movs	r3, #0
	strd	r3, r3, [r1, #16]
	bx	lr
.L1312:
	ldrh	r3, [r0, #6]
	subs	r3, r3, #1
	strh	r3, [r0, #6]	@ movhi
	b	.L1313
	.size	del_from_cache_read_list, .-del_from_cache_read_list
	.section	.text.del_from_cache_write_list,"ax",%progbits
	.align	1
	.global	del_from_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_cache_write_list, %function
del_from_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #24]
	str	r3, [r2, #24]
	ldr	r3, [r1, #24]
	cbz	r3, .L1318
	str	r2, [r3, #28]
.L1318:
	movs	r3, #0
	strd	r3, r3, [r1, #24]
	movs	r3, #255
	strh	r3, [r1, #2]	@ movhi
	ldrh	r3, [r0, #4]
	subs	r3, r3, #1
	strh	r3, [r0, #4]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_cache_write_list, .-del_from_cache_write_list
	.section	.text.get_empty_cahce_node,"ax",%progbits
	.align	1
	.global	get_empty_cahce_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_cahce_node, %function
get_empty_cahce_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0]
	movs	r1, #0
	push	{r4}
.L1323:
	uxth	r3, r1
	cmp	r2, r3
	bhi	.L1325
	ldrh	r3, [r0, #6]
	ldr	r1, [r0, #984]
	cmp	r3, #9
	bhi	.L1326
.L1327:
	cbz	r1, .L1322
	ldrh	r3, [r1, #2]
	cbz	r3, .L1334
	ldr	r1, [r1, #16]
	b	.L1327
.L1325:
	adds	r3, r1, #1
	add	r4, r0, r3, lsl #5
	ldrh	r4, [r4, #-22]
	cmp	r4, #255
	bne	.L1332
	add	r1, r0, r1, lsl #5
	adds	r1, r1, #8
.L1322:
	mov	r0, r1
	pop	{r4}
	bx	lr
.L1332:
	mov	r1, r3
	b	.L1323
.L1328:
	ldr	r1, [r1, #16]
.L1326:
	cmp	r1, #0
	beq	.L1322
	ldrh	r3, [r1, #2]
	cmp	r3, #2
	bne	.L1328
.L1334:
	pop	{r4}
	b	del_from_cache_read_list
	.size	get_empty_cahce_node, .-get_empty_cahce_node
	.section	.text.nand_cache_read,"ax",%progbits
	.align	1
	.global	nand_cache_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_cache_read, %function
nand_cache_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	str	r1, [sp, #4]
	mov	r7, r3
	cbnz	r3, .L1336
	ldr	r0, .L1346
	bl	NAND_Print
.L1344:
	mov	fp, #0
.L1335:
	mov	r0, fp
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1336:
	lsrs	r3, r2, #8
	uxtb	r2, r2
	lsl	r8, r3, #9
	ldr	r3, [r0, #1972]
	lsls	r5, r2, #9
	ldrh	r3, [r3]
	str	r3, [sp, #12]
	cbz	r3, .L1338
	ldr	r6, [r0, #604]
	ldr	r3, [r0, #2004]
	mov	r2, r6
	blx	r3
	mov	r2, r5
	mov	fp, r0
	add	r1, r6, r8
	mov	r0, r7
	bl	NAND_Memcpy
	cmp	fp, #10
	bne	.L1335
	ldr	r2, [r4, #1968]
	mov	r0, r4
	ldr	r1, [sp, #4]
	ldr	r3, [r2, #116]
	adds	r3, r3, #1
	str	r3, [r2, #116]
	mov	r2, r6
	ldr	r3, [r4, #2000]
	blx	r3
	b	.L1344
.L1338:
	add	r10, r0, #584
	mov	r0, r10
	bl	search_from_cache_write_list
	mov	fp, r0
	cbz	r0, .L1339
	ldr	r3, [r0, #12]
	ldrh	r6, [r0, #6]
	str	r3, [sp, #8]
	ldrh	r3, [r0, #4]
	lsls	r6, r6, #9
	ldr	r2, [sp, #8]
	uxth	r6, r6
	lsls	r3, r3, #9
	add	r10, r2, r8
	uxth	r3, r3
	add	r3, r3, r6
	cmp	r3, r8
	bcc	.L1340
	add	r2, r8, r5
	cmp	r3, r2
	bcc	.L1340
.L1345:
	mov	r2, r5
	mov	r1, r10
	mov	r0, r7
	bl	NAND_Memcpy
	b	.L1344
.L1340:
	ldr	r3, [r4, #2004]
	mov	r0, r4
	ldr	r2, [r4, #1616]
	ldr	r1, [sp, #4]
	blx	r3
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #1616]
	ldrh	r2, [r3, #26]
	ldr	r3, [sp, #8]
	add	r1, r1, r6
	subs	r2, r2, r6
	add	r3, r3, r6
	mov	r0, r3
	bl	NAND_Memcpy
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [fp, #6]	@ movhi
	b	.L1345
.L1339:
	ldr	r1, [sp, #4]
	mov	r0, r10
	bl	search_from_cache_read_list
	mov	r6, r0
	cbz	r0, .L1341
	ldrh	r4, [r0, #2]
	cbnz	r4, .L1342
	mov	r1, r0
	mov	r0, r10
	bl	del_from_cache_read_list
	ldr	r1, [r6, #12]
	mov	r2, r5
	mov	r0, r7
	add	r1, r1, r8
	bl	NAND_Memcpy
	mov	r2, r4
	mov	r1, r6
	mov	r0, r10
	bl	add_to_cache_read_list_tail
	b	.L1344
.L1342:
	ldr	r1, [r0, #12]
	mov	r2, r5
	mov	r0, r7
	add	r1, r1, r8
	bl	NAND_Memcpy
	b	.L1335
.L1341:
	mov	r0, r10
	bl	get_empty_cahce_node
	cbnz	r0, .L1343
	ldrh	r3, [r4, #590]
	mov	fp, #1
	ldrh	r2, [r4, #586]
	ldrh	r1, [r4, #588]
	ldr	r0, .L1346+4
	bl	NAND_Print
	b	.L1335
.L1343:
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r3, [r4, #2004]
	str	r2, [r0, #8]
	ldr	r2, [r0, #12]
	strd	r2, r0, [sp, #8]
	mov	r0, r4
	blx	r3
	ldr	r3, [sp, #12]
	mov	fp, r0
	ldr	r2, [r4, #4]
	mov	r0, r10
	strh	r6, [r3, #4]	@ movhi
	mov	r1, r3
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	strh	r2, [r3, #6]	@ movhi
	mov	r2, r6
	bl	add_to_cache_read_list_tail
	ldr	r3, [sp, #8]
	mov	r2, r5
	mov	r0, r7
	add	r1, r3, r8
	bl	NAND_Memcpy
	cmp	fp, #10
	bne	.L1335
	ldr	r2, [r4, #1968]
	mov	r0, r4
	mov	fp, r6
	ldr	r3, [r2, #116]
	adds	r3, r3, #1
	str	r3, [r2, #116]
	ldr	r3, [r4, #2000]
	ldrd	r1, r2, [sp, #4]
	blx	r3
	b	.L1335
.L1347:
	.align	2
.L1346:
	.word	.LC226
	.word	.LC227
	.size	nand_cache_read, .-nand_cache_read
	.global	__aeabi_uidivmod
	.section	.text.nand_op,"ax",%progbits
	.align	1
	.global	nand_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_op, %function
nand_op:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r1
	ldr	r10, [sp, #32]
	mov	r4, r3
	cbz	r3, .L1349
	ldr	r1, [r1, #24]
	add	r3, r3, r2
	cmp	r3, r1
	bls	.L1350
	movs	r4, #1
	ldr	r0, .L1363
	bl	NAND_Print
.L1349:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1350:
	ldr	r1, .L1363+4
	ldr	r3, .L1363+8
	cmp	r0, #0
	ite	ne
	movne	r8, r1
	moveq	r8, r3
	ldr	r3, [r6, #4]
	mov	r0, r2
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	mov	r1, r5
	bl	__aeabi_uidivmod
	subs	r5, r5, r1
	mov	fp, r0
	uxth	r5, r5
	mov	r3, r10
	cmp	r4, r5
	itet	ls
	uxthls	r5, r4
	subhi	r7, r4, r5
	movls	r7, #0
	orr	r2, r5, r1, lsl #8
	mov	r1, r0
	mov	r0, r6
	uxth	r2, r2
	blx	r8
	mov	r4, r0
	cmp	r7, #0
	beq	.L1349
.L1354:
	ldr	r3, [r6, #4]
	add	fp, fp, #1
	add	r10, r10, r5, lsl #9
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r7, r3
	bhi	.L1355
	mov	r3, r10
	uxth	r2, r7
	mov	r1, fp
	mov	r0, r6
	blx	r8
	orrs	r4, r4, r0
	b	.L1349
.L1355:
	uxth	r5, r3
	subs	r7, r7, r3
	mov	r1, fp
	mov	r3, r10
	mov	r2, r5
	mov	r0, r6
	blx	r8
	orrs	r4, r4, r0
	b	.L1354
.L1364:
	.align	2
.L1363:
	.word	.LC228
	.word	nand_cache_write
	.word	nand_cache_read
	.size	nand_op, .-nand_op
	.section	.text.__nand_read,"ax",%progbits
	.align	1
	.global	__nand_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_read, %function
__nand_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, fp, lr}
	mov	r7, r3
	ldr	r3, [r0, #356]
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #3
	bne	.L1366
	ldr	r0, .L1367
	bl	NAND_Print_DBG
.L1366:
	ldr	r1, [r4, #1968]
	movs	r0, #0
	ldrd	r2, [r1, #64]
	adds	fp, r2, r5
	mov	r2, r6
	adc	ip, r3, #0
	mov	r3, r5
	strd	fp, [r1, #64]
	mov	r1, r4
	str	r7, [sp]
	bl	nand_op
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L1368:
	.align	2
.L1367:
	.word	.LC229
	.size	__nand_read, .-__nand_read
	.section	.text._nand_read,"ax",%progbits
	.align	1
	.global	_nand_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_read, %function
_nand_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_read
	.size	_nand_read, .-_nand_read
	.section	.text.nand_sector_cache_read,"ax",%progbits
	.align	1
	.global	nand_sector_cache_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_sector_cache_read, %function
nand_sector_cache_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	addw	r0, r0, #1620
	mov	r5, r2
	bl	search_from_sector_cache_write_list
	cbz	r0, .L1371
	ldr	r1, [r0, #8]
	mov	r2, #512
	mov	r0, r5
	bl	NAND_Memcpy
	movs	r0, #0
.L1370:
	pop	{r4, r5, r6, pc}
.L1371:
	mov	r3, r2
	mov	r0, r4
	movs	r2, #1
	bl	__nand_read
	cmp	r0, #0
	beq	.L1370
	ldr	r0, .L1376
	bl	NAND_Print
	movs	r0, #1
	b	.L1370
.L1377:
	.align	2
.L1376:
	.word	.LC230
	.size	nand_sector_cache_read, .-nand_sector_cache_read
	.section	.text.__nand_sector_read,"ax",%progbits
	.align	1
	.global	__nand_sector_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_sector_read, %function
__nand_sector_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r4, r1
	mov	r6, r3
	adds	r7, r1, r2
	movs	r5, #0
.L1379:
	cmp	r4, r7
	bne	.L1380
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L1380:
	mov	r2, r6
	mov	r1, r4
	mov	r0, r8
	adds	r4, r4, #1
	bl	nand_sector_cache_read
	add	r6, r6, #512
	orrs	r5, r5, r0
	b	.L1379
	.size	__nand_sector_read, .-__nand_sector_read
	.section	.text.__nand_write,"ax",%progbits
	.align	1
	.global	__nand_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_write, %function
__nand_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, fp, lr}
	mov	r7, r3
	ldr	r3, [r0, #356]
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #3
	bne	.L1382
	ldr	r0, .L1383
	bl	NAND_Print_DBG
.L1382:
	ldr	r1, [r4, #1968]
	movs	r0, #1
	ldrd	r2, [r1, #72]
	adds	fp, r2, r5
	mov	r2, r6
	adc	ip, r3, #0
	mov	r3, r5
	strd	fp, [r1, #72]
	mov	r1, r4
	str	r7, [sp]
	bl	nand_op
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L1384:
	.align	2
.L1383:
	.word	.LC231
	.size	__nand_write, .-__nand_write
	.section	.text._nand_write,"ax",%progbits
	.align	1
	.global	_nand_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_write, %function
_nand_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_write
	.size	_nand_write, .-_nand_write
	.section	.text.nand_sector_cache_write,"ax",%progbits
	.align	1
	.global	nand_sector_cache_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_sector_cache_write, %function
nand_sector_cache_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	addw	r5, r0, #1620
	mov	r6, r0
	mov	r0, r5
	mov	r8, r1
	mov	r7, r2
	bl	search_from_sector_cache_write_list
	mov	r4, r0
	cbz	r0, .L1387
	mov	r1, r0
	mov	r0, r5
	bl	del_from_sector_cache_write_list
.L1395:
	mov	r2, #512
	mov	r1, r7
	ldr	r0, [r4, #8]
	bl	NAND_Memcpy
	mov	r1, r4
	mov	r0, r5
	bl	add_to_sector_cache_write_list_tail
	movs	r0, #0
	b	.L1386
.L1387:
	ldrh	r3, [r6, #1622]
	cmp	r3, #7
	bls	.L1389
	ldr	r1, [r6, #1960]
	mov	r0, r5
	bl	del_from_sector_cache_write_list
	movs	r2, #1
	mov	r4, r0
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #4]
	mov	r0, r6
	bl	__nand_write
	cbz	r0, .L1390
	ldr	r0, .L1396
.L1394:
	bl	NAND_Print
	movs	r0, #1
.L1386:
	pop	{r4, r5, r6, r7, r8, pc}
.L1389:
	mov	r0, r5
	bl	get_empty_sector_cahce_node
	mov	r4, r0
	cbnz	r0, .L1390
	ldr	r0, .L1396+4
	b	.L1394
.L1390:
	str	r8, [r4, #4]
	b	.L1395
.L1397:
	.align	2
.L1396:
	.word	.LC232
	.word	.LC233
	.size	nand_sector_cache_write, .-nand_sector_cache_write
	.section	.text.__nand_sector_write,"ax",%progbits
	.align	1
	.global	__nand_sector_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_sector_write, %function
__nand_sector_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r4, r1
	mov	r6, r3
	adds	r7, r1, r2
	movs	r5, #0
.L1399:
	cmp	r4, r7
	bne	.L1400
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L1400:
	mov	r2, r6
	mov	r1, r4
	mov	r0, r8
	adds	r4, r4, #1
	bl	nand_sector_cache_write
	add	r6, r6, #512
	orrs	r5, r5, r0
	b	.L1399
	.size	__nand_sector_write, .-__nand_sector_write
	.section	.text.__nand_flush_sector_write_cache,"ax",%progbits
	.align	1
	.global	__nand_flush_sector_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_flush_sector_write_cache, %function
__nand_flush_sector_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	addw	r7, r0, #1620
	movs	r4, #0
.L1402:
	ldr	r1, [r5, #1960]
	cbz	r1, .L1403
	mov	r0, r7
	bl	del_from_sector_cache_write_list
	movs	r2, #1
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #4]
	mov	r0, r5
	bl	__nand_write
	subs	r6, r6, #1
	mov	r4, r0
	bne	.L1402
.L1403:
	cbz	r4, .L1401
	ldr	r0, .L1412
	bl	NAND_Print
.L1401:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L1413:
	.align	2
.L1412:
	.word	.LC234
	.size	__nand_flush_sector_write_cache, .-__nand_flush_sector_write_cache
	.section	.text.write_data_to_nand,"ax",%progbits
	.align	1
	.global	write_data_to_nand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_data_to_nand, %function
write_data_to_nand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r0, #512
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1415
	ldr	r1, .L1418
	ldr	r0, .L1418+4
	bl	NAND_Print
.L1415:
	movs	r5, #0
	mov	r2, #512
	movs	r1, #170
	mov	r0, r4
	bl	NAND_Memset
.L1416:
	mov	r1, r5
	mov	r3, r4
	movs	r2, #1
	mov	r0, r6
	adds	r5, r5, #1
	bl	__nand_write
	cmp	r5, #38912
	bne	.L1416
	mov	r0, r4
	bl	nftl_free
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L1419:
	.align	2
.L1418:
	.word	.LANCHOR96
	.word	.LC235
	.size	write_data_to_nand, .-write_data_to_nand
	.section	.text.flush_write_cache_to_nand,"ax",%progbits
	.align	1
	.global	flush_write_cache_to_nand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flush_write_cache_to_nand, %function
flush_write_cache_to_nand:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	sub	sp, sp, #20
	mov	r4, r0
	movs	r2, #8
	mov	r8, r1
	mov	r0, sp
	ldr	r1, .L1447
	bl	memcpy
	movs	r2, #8
	ldr	r1, .L1447+4
	add	r0, sp, r2
	bl	memcpy
	ldr	r1, [r4, #1608]
	cbnz	r1, .L1421
	ldr	r0, .L1447+8
	bl	NAND_Print
.L1422:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1421:
	add	r7, r4, #584
	mov	r0, r7
	bl	del_from_cache_write_list
	mov	r5, r0
	cmp	r0, #0
	beq	.L1422
	ldr	r3, [r4, #4]
	ldrh	r2, [r0, #6]
	ldrd	r1, r6, [r0, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L1424
	ldr	r3, [r4, #2004]
	mov	r0, r4
	ldr	r2, [r4, #1616]
	blx	r3
	mov	r10, r0
	ldrh	r0, [r5, #6]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #1616]
	lsls	r0, r0, #9
	ldrh	r2, [r3, #26]
	uxth	r0, r0
	subs	r2, r2, r0
	add	r1, r1, r0
	add	r0, r0, r6
	bl	NAND_Memcpy
	cmp	r10, #10
	bne	.L1424
	ldrh	r2, [r4, #590]
	ldr	r1, [r5, #8]
	ldr	r0, .L1447+12
	bl	NAND_Print
.L1424:
	movs	r3, #0
	mov	r2, r6
	strh	r3, [r5, #4]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #4]
	ldr	r1, [r5, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [r5, #6]	@ movhi
	ldr	r3, [r4, #2000]
	blx	r3
	cbz	r0, .L1426
	ldr	r0, .L1447+16
	bl	NAND_Print
.L1426:
	ldr	r10, [r4, #4]
	movs	r2, #8
	mov	r1, sp
	mov	r0, r10
	bl	NAND_Memcmp
	tst	r0, #255
	bne	.L1427
.L1430:
	cmp	r8, #1
	bne	.L1431
	ldrh	r1, [r4, #320]
	ldr	r0, .L1447+20
	bl	NAND_Print
	ldrh	r0, [r4, #320]
	cbz	r0, .L1431
	subs	r0, r0, #1
	bl	nand_phy_get_page_type
	cmp	r0, #2
	bne	.L1431
	ldr	r0, .L1447+24
	bl	NAND_Print
	ldr	r3, [r4, #2000]
	mov	r2, r6
	ldr	r1, [r5, #8]
	mov	r0, r4
	blx	r3
	cbz	r0, .L1431
	ldr	r0, .L1447+16
	bl	NAND_Print
	b	.L1431
.L1427:
	movs	r2, #8
	mov	r0, r10
	add	r1, sp, r2
	bl	NAND_Memcmp
	tst	r0, #255
	beq	.L1430
.L1431:
	movs	r2, #2
	mov	r1, r5
	mov	r0, r7
	bl	add_to_cache_read_list_tail
	b	.L1422
.L1448:
	.align	2
.L1447:
	.word	.LANCHOR85+9
	.word	.LANCHOR85+17
	.word	.LC236
	.word	.LC237
	.word	.LC238
	.word	.LC239
	.word	.LC240
	.size	flush_write_cache_to_nand, .-flush_write_cache_to_nand
	.section	.text.nand_cache_write,"ax",%progbits
	.align	1
	.global	nand_cache_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_cache_write, %function
nand_cache_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	mov	r6, r1
	str	r3, [sp, #4]
	cbnz	r3, .L1450
.L1488:
	movs	r0, #0
	b	.L1449
.L1450:
	lsls	r3, r2, #1
	lsl	r8, r2, #9
	and	r10, r3, #65024
	ldr	r3, [r0, #1972]
	uxth	r8, r8
	ldrh	r5, [r3]
	cbz	r5, .L1452
	ldr	r5, [r0, #604]
	ldr	r3, [r0, #2004]
	mov	r2, r5
	blx	r3
	mov	r2, r8
	ldr	r1, [sp, #4]
	add	r0, r5, r10
	bl	NAND_Memcpy
	ldr	r3, [r4, #2000]
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, lr}
	bx	r3
.L1452:
	add	r5, r0, #584
	ldrh	r0, [r3, #2]
	cbnz	r0, .L1453
	ldr	r0, [r4, #4]
	ldrb	r7, [r0, #8]	@ zero_extendqisi2
	cmp	r7, r2
	bne	.L1453
	ldrh	r3, [r3, #26]
	cbnz	r3, .L1453
	mov	r0, r5
	bl	search_from_cache_write_list
	mov	r1, r0
	cbz	r0, .L1454
	mov	r0, r5
	bl	del_from_cache_write_list
.L1454:
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	r1, r0
	cbz	r0, .L1455
	mov	r0, r5
	bl	del_from_cache_read_list
.L1455:
	ldr	r3, [r4, #2000]
	mov	r1, r6
	ldr	r2, [sp, #4]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L1488
	mov	r1, r7
	ldr	r0, .L1490
	bl	NAND_Print
.L1487:
	movs	r0, #1
.L1449:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1453:
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_write_list
	mov	r7, r0
	cmp	r0, #0
	beq	.L1457
	mov	r1, r0
	mov	r0, r5
	bl	del_from_cache_write_list
	ldr	r3, [r7, #12]
	ldr	r2, [r4, #4]
	str	r3, [sp, #8]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	ldrh	r3, [r7, #6]
	cmp	r2, r3
	beq	.L1459
	lsl	fp, r3, #9
	uxth	fp, fp
	cmp	r10, fp
	bne	.L1460
	add	r3, r3, r8, lsr #9
	strh	r3, [r7, #6]	@ movhi
.L1459:
	ldrd	r1, r3, [sp, #4]
	mov	r2, r8
	add	r3, r3, r10
	mov	r0, r3
	bl	NAND_Memcpy
	mov	r1, r7
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	r1, r0
	cmp	r0, #0
	beq	.L1488
	mov	r0, r5
	bl	del_from_cache_read_list
	b	.L1488
.L1460:
	ldr	r3, [r4, #2004]
	mov	r1, r6
	ldr	r2, [r4, #1616]
	mov	r0, r4
	blx	r3
	ldr	r2, [r4, #4]
	ldr	r3, [sp, #8]
	ldr	r1, [r4, #1616]
	ldrh	r2, [r2, #26]
	str	r0, [sp, #12]
	add	r0, r3, fp
	add	r1, r1, fp
	sub	r2, r2, fp
	bl	NAND_Memcpy
	ldr	r2, [r4, #4]
	ldr	r3, [sp, #12]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	cmp	r3, #10
	strh	r2, [r7, #6]	@ movhi
	bne	.L1459
	mov	r1, r6
	ldr	r0, .L1490+4
	bl	NAND_Print
	b	.L1459
.L1457:
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	fp, r0
	cbz	r0, .L1462
	ldr	r0, [r0, #12]
	mov	r2, r8
	ldr	r1, [sp, #4]
	add	r0, r0, r10
	bl	NAND_Memcpy
	ldr	r3, [r4, #4]
	mov	r1, fp
	strh	r7, [fp, #4]	@ movhi
	mov	r0, r5
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [fp, #6]	@ movhi
	bl	del_from_cache_read_list
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #588]
	ldrh	r3, [r3, #24]
	cmp	r2, r3
	bcc	.L1488
	mov	r1, r7
	mov	r0, r4
	bl	flush_write_cache_to_nand
	cmp	r0, #0
	beq	.L1488
	ldr	r0, .L1490+8
.L1489:
	bl	NAND_Print
	b	.L1487
.L1463:
	movs	r1, #0
	mov	r0, r4
	bl	flush_write_cache_to_nand
	cbz	r0, .L1462
	ldr	r0, .L1490+12
	b	.L1489
.L1462:
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #588]
	ldrh	r3, [r3, #24]
	cmp	r2, r3
	bcs	.L1463
	mov	r0, r5
	bl	get_empty_cahce_node
	mov	r7, r0
	cbnz	r0, .L1464
	ldrh	r3, [r4, #590]
	ldrh	r2, [r4, #586]
	ldrh	r1, [r4, #588]
	ldr	r0, .L1490+16
	bl	NAND_Print
	b	.L1487
.L1464:
	str	r6, [r0, #8]
	ldr	fp, [r0, #12]
	cmp	r10, #0
	bne	.L1465
	lsr	r3, r8, #9
	strh	r10, [r0, #4]	@ movhi
.L1486:
	ldr	r1, [sp, #4]
	add	r0, fp, r10
	strh	r3, [r7, #6]	@ movhi
	mov	r2, r8
	bl	NAND_Memcpy
	mov	r1, r7
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	b	.L1488
.L1465:
	ldr	r3, [r4, #2004]
	mov	r2, fp
	mov	r1, r6
	mov	r0, r4
	blx	r3
	cmp	r0, #10
	bne	.L1467
	mov	r1, r6
	ldr	r0, .L1490+20
	bl	NAND_Print
.L1467:
	movs	r3, #0
	strh	r3, [r7, #4]	@ movhi
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	b	.L1486
.L1491:
	.align	2
.L1490:
	.word	.LC241
	.word	.LC242
	.word	.LC243
	.word	.LC244
	.word	.LC227
	.word	.LC245
	.size	nand_cache_write, .-nand_cache_write
	.section	.text.__nand_flush_write_cache,"ax",%progbits
	.align	1
	.global	__nand_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_flush_write_cache, %function
__nand_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, #0
	mov	r6, r0
	mov	r7, r1
	mov	r5, r4
.L1493:
	ldr	r3, [r6, #1608]
	cbz	r3, .L1494
	adds	r4, r4, #1
	movs	r1, #1
	mov	r0, r6
	bl	flush_write_cache_to_nand
	cmp	r7, r4
	orr	r5, r5, r0
	bne	.L1493
.L1494:
	cbz	r5, .L1496
	ldr	r0, .L1507
	bl	NAND_Print
.L1496:
	cbz	r4, .L1492
	ldr	r3, [r6, #356]
	cbz	r3, .L1492
	mov	r2, r4
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	ldr	r0, .L1507+4
	bl	NAND_Print_DBG
.L1492:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L1508:
	.align	2
.L1507:
	.word	.LC234
	.word	.LC246
	.size	__nand_flush_write_cache, .-__nand_flush_write_cache
	.section	.text._nand_flush_write_cache,"ax",%progbits
	.align	1
	.global	_nand_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_flush_write_cache, %function
_nand_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_flush_write_cache
	.size	_nand_flush_write_cache, .-_nand_flush_write_cache
	.section	.text.nand_clean_zone_table,"ax",%progbits
	.align	1
	.global	nand_clean_zone_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_clean_zone_table, %function
nand_clean_zone_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #1000
	mov	r4, r0
	bl	__nand_flush_write_cache
	mov	r0, r4
	bl	clean_block_list
	mov	r0, r4
	bl	nand_clean_zone_table2
	mov	r0, r4
	bl	nftl_cache_exit
	movs	r0, #0
	pop	{r4, pc}
	.size	nand_clean_zone_table, .-nand_clean_zone_table
	.section	.text.nand_discard,"ax",%progbits
	.align	1
	.global	nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_discard, %function
nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r3, [r6, #24]
	mov	r4, r2
	adds	r2, r1, r2
	mov	r0, r1
	cmp	r2, r3
	bls	.L1512
	ldr	r0, .L1533
	bl	NAND_Print
	movs	r0, #1
.L1511:
	pop	{r4, r5, r6, r7, r8, pc}
.L1512:
	ldr	r1, [r6, #1968]
	ldrd	r2, [r1, #96]
	adds	r7, r2, r4
	adc	r8, r3, #0
	ldr	r3, [r6, #4]
	strd	r7, [r1, #96]
	ldrb	r7, [r3, #8]	@ zero_extendqisi2
	mov	r1, r7
	bl	__aeabi_uidivmod
	mov	r5, r0
	cbz	r1, .L1514
	subs	r1, r7, r1
	adds	r5, r5, #1
	uxth	r1, r1
	cmp	r1, r4
	bhi	.L1522
	subs	r4, r4, r1
.L1515:
	mov	r1, r7
	mov	r0, r4
	bl	__aeabi_uidiv
	cbz	r0, .L1516
	add	r7, r6, #584
	adds	r4, r5, r0
.L1521:
	ldr	r3, [r6, #1972]
	ldrh	r3, [r3]
	cbnz	r3, .L1518
	mov	r1, r5
	mov	r0, r7
	bl	search_from_cache_write_list
	mov	r1, r0
	cbz	r0, .L1519
	mov	r0, r7
	bl	del_from_cache_write_list
.L1519:
	mov	r1, r5
	mov	r0, r7
	bl	search_from_cache_read_list
	mov	r1, r0
	cbz	r0, .L1518
	mov	r0, r7
	bl	del_from_cache_read_list
.L1518:
	mov	r1, r5
	ldr	r3, [r6, #2012]
	mov	r0, r6
	adds	r5, r5, #1
	blx	r3
	ldr	r3, [r6, #4]
	movs	r1, #0
	ldr	ip, [r6, #1968]
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	ldrd	r3, r2, [ip, #104]
	adds	r3, r3, r0
	adc	r2, r1, r2
	cmp	r5, r4
	strd	r3, r2, [ip, #104]
	bne	.L1521
.L1516:
	movs	r0, #0
	b	.L1511
.L1514:
	cmp	r7, r4
	it	hi
	movhi	r4, #0
	b	.L1515
.L1522:
	movs	r4, #0
	b	.L1515
.L1534:
	.align	2
.L1533:
	.word	.LC247
	.size	nand_discard, .-nand_discard
	.section	.text.__nand_discard,"ax",%progbits
	.align	1
	.global	__nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_discard, %function
__nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	cmp	r3, #3
	bne	.L1536
	ldr	r0, .L1537
	bl	NAND_Print_DBG
.L1536:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	nand_discard
.L1538:
	.align	2
.L1537:
	.word	.LC248
	.size	__nand_discard, .-__nand_discard
	.section	.text._nand_discard,"ax",%progbits
	.align	1
	.global	_nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_discard, %function
_nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_discard
	.size	_nand_discard, .-_nand_discard
	.section	.text.__shutdown_op,"ax",%progbits
	.align	1
	.global	__shutdown_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__shutdown_op, %function
__shutdown_op:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	__shutdown_op, .-__shutdown_op
	.section	.text.get_last_nftl,"ax",%progbits
	.align	1
	.global	get_last_nftl
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_last_nftl, %function
get_last_nftl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
.L1542:
	cbnz	r3, .L1543
	bx	lr
.L1543:
	mov	r0, r3
	ldr	r3, [r3, #8]
	b	.L1542
	.size	get_last_nftl, .-get_last_nftl
	.section	.text.get_nftl_need_read_claim,"ax",%progbits
	.align	1
	.global	get_nftl_need_read_claim
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_need_read_claim, %function
get_nftl_need_read_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	mov	r3, r0
.L1545:
	cbnz	r3, .L1546
	ldr	r3, [r2, #12]
	ldr	r3, [r3, #1968]
	ldr	r3, [r3, #172]
.L1547:
	cbnz	r0, .L1549
.L1544:
	bx	lr
.L1546:
	mov	r2, r3
	ldr	r3, [r3, #8]
	b	.L1545
.L1549:
	ldr	r2, [r0, #12]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L1544
	ldr	r0, [r0, #8]
	b	.L1547
	.size	get_nftl_need_read_claim, .-get_nftl_need_read_claim
	.section	.text.get_nftl_read_claim_page_no,"ax",%progbits
	.align	1
	.global	get_nftl_read_claim_page_no
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_read_claim_page_no, %function
get_nftl_read_claim_page_no:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
.L1551:
	cbnz	r3, .L1552
	ldr	r3, [r0, #12]
	ldr	r3, [r3, #1968]
	ldr	r0, [r3, #176]
	bx	lr
.L1552:
	mov	r0, r3
	ldr	r3, [r3, #8]
	b	.L1551
	.size	get_nftl_read_claim_page_no, .-get_nftl_read_claim_page_no
	.section	.text.clean_read_reclaim_complete_flag,"ax",%progbits
	.align	1
	.global	clean_read_reclaim_complete_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	clean_read_reclaim_complete_flag, %function
clean_read_reclaim_complete_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L1554:
	cbnz	r0, .L1555
	bx	lr
.L1555:
	ldr	r2, [r0, #12]
	ldr	r0, [r0, #8]
	ldr	r3, [r2, #364]
	clz	r3, r3
	lsrs	r3, r3, #5
	str	r3, [r2, #364]
	b	.L1554
	.size	clean_read_reclaim_complete_flag, .-clean_read_reclaim_complete_flag
	.section	.text.set_nftl_read_claim_complete,"ax",%progbits
	.align	1
	.global	set_nftl_read_claim_complete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_nftl_read_claim_complete, %function
set_nftl_read_claim_complete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r3, #1
	ldr	r5, [r1, #12]
	mov	r4, r0
	str	r3, [r5, #360]
	mov	r3, r0
.L1557:
	cbnz	r3, .L1558
	ldr	r1, [r1, #8]
	ldr	r2, [r4, #12]
	ldr	r2, [r2, #1968]
	cbnz	r1, .L1559
	str	r3, [r2, #172]
	bl	clean_read_reclaim_complete_flag
.L1560:
	ldr	r3, [r4, #12]
	movs	r0, #0
	ldr	r3, [r3, #1968]
	str	r0, [r3, #176]
	pop	{r3, r4, r5, pc}
.L1558:
	mov	r4, r3
	ldr	r3, [r3, #8]
	b	.L1557
.L1559:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r2, #172]
	b	.L1560
	.size	set_nftl_read_claim_complete, .-set_nftl_read_claim_complete
	.section	.text.set_nftl_read_claim_flag,"ax",%progbits
	.align	1
	.global	set_nftl_read_claim_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_nftl_read_claim_flag, %function
set_nftl_read_claim_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L1562:
	cbnz	r0, .L1563
	bx	lr
.L1563:
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #8]
	ldr	r3, [r3, #1968]
	strd	r1, r2, [r3, #172]
	b	.L1562
	.size	set_nftl_read_claim_flag, .-set_nftl_read_claim_flag
	.section	.text.get_empty_gc_node,"ax",%progbits
	.align	1
	.global	get_empty_gc_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_gc_node, %function
get_empty_gc_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
.L1567:
	lsls	r2, r3, #4
	adds	r1, r0, r2
	ldrh	r1, [r1, #6]
	cbnz	r1, .L1565
	adds	r2, r2, #4
	add	r0, r0, r2
	bx	lr
.L1565:
	adds	r3, r3, #1
	cmp	r3, #10
	bne	.L1567
	movs	r0, #0
	bx	lr
	.size	get_empty_gc_node, .-get_empty_gc_node
	.section	.text.search_gc_node,"ax",%progbits
	.align	1
	.global	search_gc_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_gc_node, %function
search_gc_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L1570:
	cbnz	r0, .L1572
.L1569:
	bx	lr
.L1572:
	ldr	r3, [r0, #4]
	cmp	r3, r1
	beq	.L1569
	ldr	r0, [r0, #8]
	b	.L1570
	.size	search_gc_node, .-search_gc_node
	.section	.text.add_to_gc_list_tail,"ax",%progbits
	.align	1
	.global	add_to_gc_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_gc_list_tail, %function
add_to_gc_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #164
.L1574:
	ldr	r3, [r2, #8]
	cbnz	r3, .L1575
	str	r1, [r2, #8]
	strd	r3, r2, [r1, #8]
	ldrh	r2, [r0]
	adds	r2, r2, #1
	strh	r2, [r0]	@ movhi
	mov	r0, r3
	bx	lr
.L1575:
	mov	r2, r3
	b	.L1574
	.size	add_to_gc_list_tail, .-add_to_gc_list_tail
	.section	.text.del_from_gc_list,"ax",%progbits
	.align	1
	.global	del_from_gc_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_gc_list, %function
del_from_gc_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #8]
	str	r3, [r2, #8]
	ldr	r3, [r1, #8]
	cbz	r3, .L1577
	str	r2, [r3, #12]
.L1577:
	movs	r3, #0
	strd	r3, r3, [r1, #8]
	ldrh	r3, [r0]
	subs	r3, r3, #1
	strh	r3, [r0]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_gc_list, .-del_from_gc_list
	.section	.text.add_prio_gc,"ax",%progbits
	.align	1
	.global	add_prio_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_prio_gc, %function
add_prio_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	add	r5, r0, #392
	mov	r0, r5
	mov	r7, r1
	mov	r6, r2
	bl	search_gc_node
	mov	r4, r0
	cbnz	r0, .L1584
	mov	r0, r5
	bl	get_empty_gc_node
	mov	r1, r0
	cbz	r0, .L1584
	str	r7, [r0, #4]
	strh	r6, [r0, #2]	@ movhi
	strd	r4, r4, [r0, #8]
	mov	r0, r5
	bl	add_to_gc_list_tail
	mov	r0, r4
.L1581:
	pop	{r3, r4, r5, r6, r7, pc}
.L1584:
	movs	r0, #1
	b	.L1581
	.size	add_prio_gc, .-add_prio_gc
	.section	.text.check_static_wear_leveling,"ax",%progbits
	.align	1
	.global	check_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_static_wear_leveling, %function
check_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	ldr	r3, [r0, #580]
	cbz	r3, .L1586
.L1588:
	movs	r0, #1
.L1585:
	pop	{r3, r4, r5, r6, r7, r8, r10, pc}
.L1586:
	ldr	r3, [r0, #200]
	cmp	r3, #0
	beq	.L1588
	ldr	r3, [r0, #172]
	cmp	r3, #0
	beq	.L1588
	ldr	r3, [r0, #292]
	ldrh	r7, [r0, #18]
	ldr	r8, [r3, #8]
	cmp	r8, r7
	blt	.L1588
	ldr	r3, [r0, #4]
	ldrh	r5, [r3, #16]
	mov	r1, r5
	bl	get_block_max_erase_time_from_free_list
	cmp	r0, #0
	beq	.L1588
	ldrh	r6, [r0, #6]
	ldr	r0, .L1606
	umull	r0, r1, r5, r0
	ubfx	r10, r1, #2, #16
	cmp	r6, r10
	bcc	.L1588
	sub	r2, r8, r7
	mov	r1, r5
	mov	r0, r4
	bl	get_block_min_erase_time_from_invalid_list
	mov	r7, r0
	cmp	r0, #0
	beq	.L1588
	ldrh	r8, [r0, #6]
	cmp	r6, r8
	bls	.L1588
	lsls	r2, r6, #1
	adds	r3, r2, r6
	cmp	r3, r5, lsl #1
	ble	.L1589
	ldr	r2, .L1606+4
.L1605:
	umull	r2, r3, r5, r2
	lsrs	r3, r3, #3
	strh	r3, [r4, #574]	@ movhi
.L1590:
	ldrh	r2, [r4, #574]
	sub	r3, r6, r8
	cmp	r3, r2
	blt	.L1588
	mov	r2, r8
	mov	r1, r6
	ldr	r0, .L1606+8
	bl	NAND_Print_DBG
	ldrh	r1, [r7]
	ldr	r0, .L1606+12
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #18]
	ldr	r0, .L1606+16
	bl	NAND_Print_DBG
	str	r7, [r4, #580]
	movs	r0, #0
	b	.L1585
.L1589:
	cmp	r5, r2
	bge	.L1591
	ldr	r2, .L1606
	b	.L1605
.L1591:
	cmp	r5, r3
	bge	.L1592
	movs	r1, #7
	mov	r0, r5
	bl	__aeabi_uidiv
	strh	r0, [r4, #574]	@ movhi
	b	.L1590
.L1592:
	strh	r10, [r4, #574]	@ movhi
	b	.L1590
.L1607:
	.align	2
.L1606:
	.word	-858993459
	.word	-1431655765
	.word	.LC249
	.word	.LC250
	.word	.LC251
	.size	check_static_wear_leveling, .-check_static_wear_leveling
	.section	.text.prio_gc_one,"ax",%progbits
	.align	1
	.global	prio_gc_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prio_gc_one, %function
prio_gc_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	cmp	r2, #1
	push	{r4, lr}
	ldr	r4, [r3, #32]
	mov	r3, #36
	mla	r1, r3, r1, r4
	beq	.L1609
	cmp	r2, #2
	it	ne
	movne	r2, #3
.L1609:
	uxth	r2, r2
	bl	add_prio_gc
	movs	r0, #0
	pop	{r4, pc}
	.size	prio_gc_one, .-prio_gc_one
	.section	.text.get_total_invalid_page,"ax",%progbits
	.align	1
	.global	get_total_invalid_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_total_invalid_page, %function
get_total_invalid_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #188
	movs	r0, #0
.L1616:
	ldr	r3, [r3, #12]
	cbnz	r3, .L1617
	bx	lr
.L1617:
	ldrh	r2, [r3, #4]
	add	r0, r0, r2
	b	.L1616
	.size	get_total_invalid_page, .-get_total_invalid_page
	.section	.text.is_current_blcok,"ax",%progbits
	.align	1
	.global	is_current_blcok
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_current_blcok, %function
is_current_blcok:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L1619
	ldr	r3, [r0, #324]
	cmp	r1, r3
	beq	.L1621
.L1619:
	ldr	r0, [r0, #292]
	subs	r3, r0, r1
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L1621:
	movs	r0, #1
	bx	lr
	.size	is_current_blcok, .-is_current_blcok
	.section	.text.static_wear_leveling,"ax",%progbits
	.align	1
	.global	static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	static_wear_leveling, %function
static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r0, #22]
	ldrh	r3, [r0, #380]
	push	{r4, lr}
	mov	r4, r0
	cmp	r2, r3
	bls	.L1624
	ldr	r3, [r0, #368]
	cmp	r3, #19
	bls	.L1624
	ldr	r2, [r0, #1968]
	ldr	r3, [r2, #180]
	adds	r3, r3, #1
	str	r3, [r2, #180]
	bl	get_block_min_count_from_invalid_list
	movs	r2, #5
	mov	r1, r0
	mov	r0, r4
	bl	add_prio_gc
	cbnz	r0, .L1626
	ldr	r3, [r4, #372]
	adds	r3, r3, #4
	str	r3, [r4, #372]
.L1626:
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #372]
	ldrh	r3, [r3, #20]
	cmp	r2, r3
	itt	cs
	movcs	r3, #0
	strdcs	r3, r3, [r4, #368]
.L1624:
	movs	r0, #0
	pop	{r4, pc}
	.size	static_wear_leveling, .-static_wear_leveling
	.section	.text.nftl_get_gc_info,"ax",%progbits
	.align	1
	.global	nftl_get_gc_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_gc_info, %function
nftl_get_gc_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r2
	movs	r2, #0
	mov	r5, r0
	mov	r7, r1
	sub	sp, sp, #32
	ldr	ip, [r0, #4]
	mov	r6, r2
	ldr	r4, [r0, #200]
	mov	r1, r2
	mov	r0, r2
.L1628:
	cbnz	r4, .L1630
	ldr	ip, [r5, #1968]
	mov	fp, #10
	ldrh	r3, [r5, #22]
	strd	r1, r0, [sp, #16]
	mov	r1, r8
	strd	r6, r2, [sp, #24]
	mov	r0, r7
	ldr	r2, [ip, #124]
	ldr	r10, .L1641+4
	str	r2, [sp, #12]
	ldr	r2, [ip, #120]
	str	r2, [sp, #8]
	ldrh	r2, [r5, #382]
	str	r2, [sp, #4]
	ldrh	r2, [r5, #380]
	str	r2, [sp]
	ldr	r2, .L1641
	bl	NAND_Snprintf
	ldr	r5, [r5, #200]
	mov	r6, r0
.L1631:
	sub	r1, r8, r6
	adds	r0, r7, r6
	cmp	r1, #1
	bne	.L1634
.L1632:
	movs	r3, #10
	strb	r3, [r0, #-1]
	mov	r0, r6
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1630:
	ldrh	r3, [r4, #4]
	adds	r0, r0, #1
	ldrh	lr, [ip, #20]
	ldr	r4, [r4, #12]
	add	r2, r2, r3
	cmp	r3, lr, lsr #1
	itt	hi
	addhi	r6, r6, r3
	addhi	r1, r1, #1
	b	.L1628
.L1634:
	cmp	r5, #0
	beq	.L1632
	ldrh	r2, [r5, #4]
	cmp	r2, #0
	beq	.L1632
	ldrh	r3, [r5]
	adds	r4, r4, #1
	str	r2, [sp]
	mov	r2, r10
	bl	NAND_Snprintf
	lsls	r3, r4, #29
	add	r6, r6, r0
	itt	eq
	addeq	r3, r7, r6
	strbeq	fp, [r3, #-1]
	ldr	r5, [r5, #12]
	b	.L1631
.L1642:
	.align	2
.L1641:
	.word	.LC252
	.word	.LC253
	.size	nftl_get_gc_info, .-nftl_get_gc_info
	.section	.text.set_spare_data,"ax",%progbits
	.align	1
	.global	set_spare_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_spare_data, %function
set_spare_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r6, r3, #536870912
	movs	r4, #0
	add	r2, r2, r0
	subs	r6, r6, #1
.L1644:
	cmp	r3, r4
	bhi	.L1645
	pop	{r4, r5, r6, pc}
.L1645:
	subs	r5, r6, r4
	lsls	r5, r5, #3
	lsr	r5, r1, r5
	strb	r5, [r2, r4]
	adds	r4, r4, #1
	b	.L1644
	.size	set_spare_data, .-set_spare_data
	.section	.text.panic_write,"ax",%progbits
	.align	1
	.global	panic_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_write, %function
panic_write:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	str	r3, [sp, #16]
	mov	fp, r2
	ldr	r3, .L1659
	str	r1, [sp, #12]
	ldr	r3, [r3]
	cbz	r3, .L1657
	ldr	r8, [r0, #12]
	movs	r2, #1
	ldr	r3, .L1659+4
	add	r0, fp, #-1
	ldr	r7, .L1659+8
	ldr	r5, [r8, #4]
	str	r2, [r3]
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	add	r0, r0, r1
	bl	__aeabi_uidiv
	ldrh	r1, [r5, #20]
	mov	r10, r0
	subs	r0, r1, #1
	add	r0, r0, r10
	bl	__aeabi_uidiv
	mov	r3, r10
	str	r0, [sp]
	mov	r2, fp
	ldr	r1, [sp, #12]
	ldr	r0, .L1659+12
	bl	NAND_Print
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	cmp	r3, r10
	bcs	.L1648
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	ldr	r0, .L1659+16
	muls	r1, r3, r1
	bl	NAND_Print
.L1657:
	mov	r0, #-1
	b	.L1646
.L1648:
	movs	r2, #16
	movs	r1, #165
	add	r0, sp, #24
	mov	r4, r7
	bl	NAND_Memset
	ldr	r3, [r7, #16]
	ldr	r6, [r7, r3, lsl #2]
.L1649:
	ldr	r3, [r7, #20]
	cmp	r10, #0
	bne	.L1652
	ldr	fp, .L1659+24
	movs	r7, #3
	add	r10, sp, #24
	movs	r3, #98
	strb	r3, [sp, #26]
.L1656:
	ldr	r2, [r4, #20]
	cmp	r2, #0
	bne	.L1653
.L1654:
	movs	r0, #0
.L1646:
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1652:
	ldrh	r2, [r5, #20]
	cmp	r3, r2
	bcc	.L1650
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r6, [r7, r3, lsl #2]
	movs	r3, #0
	str	r3, [r7, #20]
.L1650:
	ldr	r3, [r4, #20]
	ldrh	r1, [r6]
	cbnz	r3, .L1651
	ldrh	r2, [r5, #28]
	mov	r0, r8
	strh	r3, [sp, #40]	@ movhi
	strh	r1, [sp, #42]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #44]	@ movhi
	strd	r3, r3, [sp, #48]
	ldr	r2, [r8, #1976]
	str	r3, [sp, #20]
	blx	r2
	ldrh	r2, [r6, #6]
	ldr	r3, [sp, #20]
	adds	r2, r2, #1
	strh	r2, [r6, #6]	@ movhi
	strh	r3, [r6, #4]	@ movhi
.L1651:
	ldr	r2, [r4, #20]
	add	r10, r10, #-1
	ldrh	r1, [r6]
	ldr	r0, .L1659+20
	bl	NAND_Print
	movw	r3, #43775
	movs	r2, #5
	strh	r3, [sp, #24]	@ movhi
	movs	r3, #99
	strb	r3, [sp, #26]
	add	r0, sp, #24
	ldrb	r3, [r8, #16]	@ zero_extendqisi2
	strb	r3, [sp, #27]
	ldr	r3, [r4, #16]
	strb	r3, [sp, #28]
	movs	r3, #2
	ldrh	r1, [r6, #6]
	bl	set_spare_data
	movs	r3, #4
	movs	r2, #7
	ldr	r1, [sp, #12]
	add	r0, sp, #24
	bl	set_spare_data
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	movs	r3, #4
	movs	r2, #11
	add	r0, sp, #24
	cmp	r1, fp
	it	cs
	movcs	r1, fp
	bl	set_spare_data
	ldrh	r3, [r5, #28]
	mov	r0, r8
	ldrh	r2, [r6]
	ldr	r1, [r4, #20]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [sp, #16]
	strh	r1, [sp, #40]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #42]	@ movhi
	str	r3, [sp, #48]
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r8, #1984]
	blx	r3
	ldr	r2, [sp, #16]
	ldrh	r3, [r5, #26]
	adds	r3, r2, r3
	ldr	r2, [sp, #12]
	str	r3, [sp, #16]
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	cmp	r3, fp
	it	cs
	movcs	r3, fp
	add	r2, r2, r3
	sub	fp, fp, r3
	ldr	r3, [r4, #12]
	str	r2, [sp, #12]
	subs	r3, r3, #1
	str	r3, [r4, #12]
	ldr	r3, [r4, #20]
	adds	r3, r3, #1
	str	r3, [r4, #20]
	b	.L1649
.L1653:
	ldrh	r3, [r5, #20]
	cmp	r2, r3
	bcs	.L1654
	ldrh	r1, [r6]
	mov	r0, fp
	bl	NAND_Print
	ldrh	r3, [r5, #28]
	mov	r0, r8
	ldrh	r2, [r6]
	ldr	r1, [r4, #20]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [sp, #16]
	strh	r1, [sp, #40]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #42]	@ movhi
	strd	r3, r10, [sp, #48]
	ldr	r3, [r8, #1984]
	blx	r3
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #20]
	subs	r2, r2, #1
	str	r2, [r4, #12]
	adds	r3, r3, #1
	ldrh	r2, [r5, #20]
	str	r3, [r4, #20]
	cmp	r3, r2
	bcc	.L1655
	ldr	r3, [r4, #16]
	adds	r3, r3, #1
	str	r3, [r4, #16]
	ldr	r6, [r4, r3, lsl #2]
	movs	r3, #0
	str	r3, [r4, #20]
.L1655:
	subs	r7, r7, #1
	bne	.L1656
	b	.L1654
.L1660:
	.align	2
.L1659:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LANCHOR4
	.word	.LC254
	.word	.LC255
	.word	.LC256
	.word	.LC257
	.size	panic_write, .-panic_write
	.section	.text.get_spare_data,"ax",%progbits
	.align	1
	.global	get_spare_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_spare_data, %function
get_spare_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	add	r1, r1, r0
	mov	r4, r3
.L1662:
	cmp	r2, r3
	bhi	.L1663
	mov	r0, r4
	pop	{r4, pc}
.L1663:
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	orr	r4, r0, r4, lsl #8
	b	.L1662
	.size	get_spare_data, .-get_spare_data
	.section	.text.set_oob_logic_page,"ax",%progbits
	.align	1
	.global	set_oob_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_oob_logic_page, %function
set_oob_logic_page:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r3
	movs	r3, #255
	mov	r1, r2
	mov	r0, r4
	strb	r3, [r4]
	movs	r2, #1
	movs	r3, #4
	bl	set_spare_data
	movs	r3, #2
	movs	r2, #5
	ldrh	r1, [sp, #16]
	bl	set_spare_data
	movs	r3, #4
	movs	r2, #7
	mov	r1, r5
	bl	set_spare_data
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	orn	r3, r3, #63
	strb	r3, [r4, #1]
	pop	{r3, r4, r5, pc}
	.size	set_oob_logic_page, .-set_oob_logic_page
	.section	.text.set_oob_special_page,"ax",%progbits
	.align	1
	.global	set_oob_special_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_oob_special_page, %function
set_oob_special_page:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrh	r6, [sp, #16]
	mov	r5, r3
	movs	r3, #255
	mov	r1, r2
	strb	r3, [r4]
	mov	r0, r4
	movs	r3, #4
	movs	r2, #1
	bl	set_spare_data
	mov	r1, r6
	movs	r3, #2
	movs	r2, #5
	bl	set_spare_data
	mov	r1, r5
	movs	r3, #4
	movs	r2, #7
	pop	{r4, r5, r6, lr}
	b	set_spare_data
	.size	set_oob_special_page, .-set_oob_special_page
	.section	.text.mark_free_block,"ax",%progbits
	.align	1
	.global	mark_free_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	mark_free_block, %function
mark_free_block:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	add	r6, sp, #24
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	movs	r2, #16
	movs	r1, #165
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	movs	r7, #0
	ldrh	r1, [r5]
	mov	r0, r4
	strh	r7, [sp, #8]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #10]	@ movhi
	mov	r1, r6
	strh	r2, [sp, #12]	@ movhi
	mov	r2, #1431655765
	strd	r3, r6, [sp, #16]
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	movs	r0, #1
	ldrh	r1, [r5]
	strh	r0, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #10]	@ movhi
	mov	r1, r6
	strh	r2, [sp, #12]	@ movhi
	mov	r2, #1431655765
	strd	r3, r6, [sp, #16]
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #10]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #12]	@ movhi
	mov	r1, r6
	subs	r3, r3, #2
	strd	r2, r6, [sp, #16]
	strh	r3, [sp, #8]	@ movhi
	mov	r2, #1431655765
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #10]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #12]	@ movhi
	mov	r1, r6
	subs	r3, r3, #1
	strd	r2, r6, [sp, #16]
	strh	r3, [sp, #8]	@ movhi
	mov	r2, #1431655765
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	mov	r0, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	mark_free_block, .-mark_free_block
	.section	.text.erase_block,"ax",%progbits
	.align	1
	.global	erase_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	erase_block, %function
erase_block:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r4, r1
	ldr	r0, .L1670
	mov	r8, r2
	movs	r6, #0
	ldrh	r1, [r1]
	bl	NAND_Print
	ldr	r3, [r5, #4]
	mov	r1, sp
	ldrh	r2, [r4]
	mov	r0, r5
	strh	r6, [sp]	@ movhi
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #2]	@ movhi
	strd	r6, r6, [sp, #8]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r5, #1976]
	blx	r3
	mov	r7, r0
	cbz	r0, .L1668
	ldrh	r1, [r4]
	ldr	r0, .L1670+4
	bl	NAND_Print
	ldr	r3, [r5, #1996]
	mov	r1, sp
	mov	r0, r5
	blx	r3
	movs	r3, #255
	strh	r6, [r4, #4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
.L1667:
	mov	r0, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1668:
	mov	r3, #-1
	mov	r1, r4
	str	r3, [r4, #8]
	mov	r0, r5
	strh	r8, [r4, #6]	@ movhi
	bl	put_phy_block_to_free_list
	mov	r1, r4
	mov	r0, r5
	bl	mark_free_block
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	strh	r7, [r4, #2]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	b	.L1667
.L1671:
	.align	2
.L1670:
	.word	.LC258
	.word	.LC259
	.size	erase_block, .-erase_block
	.section	.text.adjust_free_list,"ax",%progbits
	.align	1
	.global	adjust_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	adjust_free_list, %function
adjust_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L1673
	ldr	r0, .L1674
	bl	NAND_Print
.L1673:
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	mov	r1, r4
	mov	r0, r5
	bl	out_phy_block_from_free_list_by_block
	str	r0, [r5, #48]
	ldrh	r2, [r0, #6]
	ldrh	r1, [r0]
	ldr	r0, .L1674+4
	bl	NAND_Print
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1675:
	.align	2
.L1674:
	.word	.LC260
	.word	.LC261
	.size	adjust_free_list, .-adjust_free_list
	.section	.text.nand_dbg_zone_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_erase, %function
nand_dbg_zone_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	ldr	r3, [r0, #4]
	movs	r2, #36
	mov	r4, r0
	ldr	r3, [r3, #32]
	mla	r1, r2, r1, r3
	bl	out_phy_block_from_free_list_by_block
	mov	r2, r5
	mov	r1, r0
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	erase_block
	.size	nand_dbg_zone_erase, .-nand_dbg_zone_erase
	.section	.text.panic_recover_data,"ax",%progbits
	.align	1
	.global	panic_recover_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_recover_data, %function
panic_recover_data:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #40
	ldr	r4, .L1696
	ldr	r5, [r4]
	cbnz	r5, .L1678
	ldr	r0, .L1696+4
	bl	NAND_Print
.L1695:
	movs	r0, #0
	b	.L1677
.L1678:
	ldr	r6, [r0, #12]
	ldr	r0, .L1696+8
	ldr	r7, [r6, #4]
	bl	NAND_Print
	ldrh	r0, [r7, #26]
	bl	NAND_Malloc
	mov	fp, r0
	cbnz	r0, .L1680
	mov	r2, #308
	ldr	r1, .L1696+12
	ldr	r0, .L1696+16
	bl	NAND_Print
	mov	r0, #-1
.L1677:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1680:
	ldrh	r2, [r7, #26]
	movs	r1, #0
	bl	NAND_Memset
	movs	r3, #0
.L1694:
	str	r3, [r4, #16]
	ldr	r3, [r4, #16]
	cmp	r3, #2
	bhi	.L1688
	ldr	r3, [r4, r3, lsl #2]
	str	r3, [sp]
	movs	r3, #0
.L1693:
	str	r3, [r4, #20]
	ldrh	r2, [r7, #20]
	ldr	r3, [r4, #20]
	cmp	r3, r2
	bcc	.L1689
	ldr	r3, [r4, #16]
	adds	r3, r3, #1
	b	.L1694
.L1689:
	ldr	r2, [sp]
	add	r5, sp, #24
	mov	r0, r6
	ldrh	r1, [r2]
	ldrh	r2, [r7, #28]
	strh	r3, [sp, #8]	@ movhi
	strh	r1, [sp, #10]	@ movhi
	add	r1, sp, #8
	ldr	r3, [r6, #1980]
	strh	r2, [sp, #12]	@ movhi
	str	fp, [sp, #16]
	str	r5, [sp, #20]
	blx	r3
	mov	r0, r5
	bl	is_panic_dummy_page
	ldr	r3, [sp]
	ldrh	r8, [r3]
	cbz	r0, .L1683
	ldr	r2, [r4, #20]
	mov	r1, r8
	ldr	r0, .L1696+20
	bl	NAND_Print
.L1684:
	ldr	r3, [r4, #20]
	adds	r3, r3, #1
	b	.L1693
.L1683:
	mov	r0, r5
	bl	is_panic_data_page
	ldr	r10, [r4, #20]
	cbnz	r0, .L1685
	ldr	r3, [r4, #16]
	mov	r2, r10
	mov	r1, r8
	cbnz	r3, .L1686
	cmp	r10, #0
	bne	.L1686
	ldr	r0, .L1696+24
	bl	NAND_Print
.L1687:
	movs	r1, #0
	mov	r0, fp
	bl	NAND_Free
	b	.L1695
.L1686:
	ldr	r0, .L1696+28
	bl	NAND_Print
.L1688:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	blt	.L1687
	ldr	r1, [r4, r3, lsl #2]
	mov	r0, r6
	ldrh	r2, [r1, #6]
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r3, [r4, #16]
	subs	r3, r3, #1
	str	r3, [r4, #16]
	b	.L1688
.L1685:
	movs	r2, #4
	movs	r1, #7
	mov	r0, r5
	bl	get_spare_data
	movs	r2, #4
	str	r0, [sp, #4]
	movs	r1, #11
	mov	r0, r5
	bl	get_spare_data
	mov	r2, r10
	mov	r5, r0
	mov	r1, r8
	ldr	r3, [sp, #4]
	ldr	r0, .L1696+32
	bl	NAND_Print
	mov	r2, fp
	mov	r1, r5
	ldr	r0, [sp, #4]
	bl	nftl_write
	b	.L1684
.L1697:
	.align	2
.L1696:
	.word	.LANCHOR4
	.word	.LC262
	.word	.LC263
	.word	.LANCHOR97
	.word	.LC264
	.word	.LC265
	.word	.LC266
	.word	.LC267
	.word	.LC268
	.size	panic_recover_data, .-panic_recover_data
	.section	.text.torture_block_and_mark,"ax",%progbits
	.align	1
	.global	torture_block_and_mark
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	torture_block_and_mark, %function
torture_block_and_mark:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	mov	r4, r0
	mov	r5, r1
	movs	r2, #15
	movs	r1, #0
	mov	r0, r7
	bl	memset
	ldrh	r1, [r5]
	ldr	r0, .L1714
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	ldrh	r2, [r3, #28]
	movs	r3, #0
	strh	r3, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strd	r3, r3, [sp, #32]
	strh	r2, [sp, #28]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	mov	r6, r0
	cbz	r0, .L1699
	ldrh	r1, [r5]
	ldr	r0, .L1714+4
.L1711:
	bl	NAND_Print
	b	.L1700
.L1699:
	ldrh	r3, [r5, #6]
	movs	r1, #165
	ldr	r0, [r4, #284]
	mov	r8, r6
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	ldr	r3, [r4, #4]
	ldrh	r2, [r3, #26]
	bl	NAND_Memset
	movs	r2, #15
	movs	r1, #165
	mov	r0, r7
	bl	NAND_Memset
.L1702:
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r8, [sp, #24]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strd	r3, r7, [sp, #32]
	ldr	r3, [r4, #1984]
	blx	r3
	mov	r6, r0
	cbz	r0, .L1701
	ldrh	r2, [r5]
	mov	r3, r8
	ldr	r1, .L1714+8
	ldr	r0, .L1714+12
.L1712:
	bl	NAND_Print
.L1700:
	ldr	r3, [r4, #1996]
	add	r1, sp, #24
	mov	r0, r4
	blx	r3
	movs	r3, #0
	strh	r3, [r5, #4]	@ movhi
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	ldrh	r3, [r4, #20]
	adds	r3, r3, #1
	strh	r3, [r4, #20]	@ movhi
	b	.L1698
.L1701:
	add	r8, r8, #1
	cmp	r8, #3
	bne	.L1702
	mov	r8, r0
.L1706:
	ldr	r3, [r4, #4]
	movs	r1, #0
	ldr	r0, [r4, #284]
	ldrh	r2, [r3, #26]
	bl	NAND_Memset
	movs	r2, #15
	movs	r1, #0
	mov	r0, r7
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r8, [sp, #24]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strd	r3, r7, [sp, #32]
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r6, r0
	cbz	r0, .L1703
	mov	r3, r8
	ldrh	r2, [r5]
	ldr	r1, .L1714+8
	ldr	r0, .L1714+16
	b	.L1712
.L1703:
	ldr	r10, [r4, #4]
	movs	r1, #165
	ldr	r0, [r4, #284]
	ldrh	r2, [r10, #26]
	bl	nftl_check_pattern
	mov	r6, r0
	cbz	r0, .L1704
	ldrh	r2, [r5]
	movs	r3, #165
	ldr	r1, .L1714+8
	ldr	r0, .L1714+20
	str	r3, [sp]
	mov	r3, r8
.L1713:
	bl	NAND_Print
	b	.L1700
.L1704:
	movs	r2, #15
	movs	r1, #165
	mov	r0, r7
	bl	nftl_check_pattern
	mov	r6, r0
	cbz	r0, .L1705
	movs	r3, #165
	ldrh	r2, [r5]
	str	r3, [sp]
	mov	r3, r8
	ldr	r1, .L1714+8
	ldr	r0, .L1714+24
	b	.L1713
.L1705:
	add	r8, r8, #1
	cmp	r8, #3
	bne	.L1706
	ldrh	r3, [r10, #28]
	add	r1, sp, #24
	ldrh	r2, [r5]
	strh	r0, [sp, #24]	@ movhi
	strh	r3, [sp, #28]	@ movhi
	strd	r0, r0, [sp, #32]
	mov	r0, r4
	strh	r2, [sp, #26]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	mov	r6, r0
	cbz	r0, .L1707
	ldrh	r1, [r5]
	ldr	r0, .L1714+28
	b	.L1711
.L1707:
	ldrh	r3, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	mov	r3, #-1
	str	r3, [r5, #8]
	bl	put_phy_block_to_free_list
	mov	r1, r5
	mov	r0, r4
	bl	mark_free_block
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	strh	r6, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
.L1698:
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1715:
	.align	2
.L1714:
	.word	.LC269
	.word	.LC259
	.word	.LANCHOR98
	.word	.LC270
	.word	.LC271
	.word	.LC272
	.word	.LC273
	.word	.LC274
	.size	torture_block_and_mark, .-torture_block_and_mark
	.section	.text.set_no_use_page,"ax",%progbits
	.align	1
	.global	set_no_use_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_no_use_page, %function
set_no_use_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	movs	r1, #170
	mov	r2, r3
	mov	r0, r4
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #187
	pop	{r4, lr}
	b	set_spare_data
	.size	set_no_use_page, .-set_no_use_page
	.section	.text.set_start_block_flag,"ax",%progbits
	.align	1
	.global	set_start_block_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_start_block_flag, %function
set_start_block_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, r5, r6, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	mov	r5, r2
	mov	r0, r4
	mov	r2, r3
	movs	r1, #170
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #238
	bl	set_spare_data
	mov	r1, r5
	movs	r3, #4
	movs	r2, #3
	pop	{r4, r5, r6, lr}
	b	set_spare_data
	.size	set_start_block_flag, .-set_start_block_flag
	.section	.text.set_end_block_flag,"ax",%progbits
	.align	1
	.global	set_end_block_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_end_block_flag, %function
set_end_block_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	movs	r1, #170
	mov	r2, r3
	mov	r0, r4
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #204
	pop	{r4, lr}
	b	set_spare_data
	.size	set_end_block_flag, .-set_end_block_flag
	.section	.text.build_zone_list_first,"ax",%progbits
	.align	1
	.global	build_zone_list_first
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	build_zone_list_first, %function
build_zone_list_first:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	sub	sp, sp, #36
	ldr	r0, .L1745
	mov	r10, r1
	bl	NAND_Print_DBG
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #40]
	cmp	r3, #0
	beq	.L1740
	ldr	r6, [r4, #4]
	ldr	r0, [r4, #32]
	ldrb	r1, [r6, #8]	@ zero_extendqisi2
	add	r0, r0, r3
	bl	__aeabi_uidiv
	ldrh	r1, [r6, #20]
	bl	__aeabi_uidiv
	mov	r8, r0
.L1720:
	movs	r7, #0
	strh	r7, [r4, #18]	@ movhi
.L1721:
	ldrh	r3, [r4, #18]
	cmp	r3, r8
	bcs	.L1731
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	str	r5, [r4, #44]
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r7, [sp, #16]	@ movhi
	str	r3, [sp, #24]
	strh	r2, [sp, #20]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L1722
	ldr	r3, [r4, #1976]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r6, r0
	cbz	r0, .L1723
	movs	r3, #255
	add	r1, sp, #16
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #1996]
	blx	r3
.L1724:
	movw	r3, #65535
	str	r7, [r5, #20]
	strh	r3, [r5, #4]	@ movhi
	mov	r1, r4
	strd	r7, r7, [r5, #12]
	mov	r0, r5
	str	r5, [r4, #44]
	bl	is_last_phy_block
	cmp	r0, #1
	bne	.L1727
.L1731:
	ldrh	r1, [r4, #18]
	cmp	r1, #1
	bhi	.L1728
	ldr	r0, .L1745+4
	bl	NAND_Print
	movs	r0, #1
	b	.L1719
.L1740:
	mov	r8, #-1
	b	.L1720
.L1723:
	ldrh	r3, [r4, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r3, #1
	strh	r3, [r4, #18]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r5, #6]	@ movhi
	bne	.L1724
	movs	r2, #16
	movs	r1, #255
	mov	r0, sp
	bl	NAND_Memset
	mov	r2, r10
	mov	r1, sp
	mov	r0, r4
	bl	set_start_block_flag
	ldr	r3, [r4, #4]
	ldrh	r1, [r5]
	strh	r6, [sp, #16]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	strh	r2, [sp, #20]	@ movhi
	str	r3, [sp, #24]
	str	sp, [sp, #28]
.L1725:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r6
	bhi	.L1726
	add	r3, r5, #36
	str	r3, [r4, #40]
	b	.L1724
.L1726:
	ldr	r3, [r4, #1984]
	add	r1, sp, #16
	mov	r0, r4
	adds	r6, r6, #1
	blx	r3
	ldrh	r3, [sp, #16]
	adds	r3, r3, #1
	strh	r3, [sp, #16]	@ movhi
	b	.L1725
.L1722:
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	b	.L1724
.L1727:
	adds	r5, r5, #36
	b	.L1721
.L1728:
	cmp	r8, #-1
	add	r1, r1, #-1
	strh	r1, [r4, #18]	@ movhi
	bne	.L1732
.L1734:
	movs	r0, #0
.L1719:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1732:
	mov	r1, r4
	mov	r0, r5
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L1734
	movs	r7, #0
.L1735:
	ldr	r2, [r4, #4]
	ldrh	r3, [r5]
	ldrh	r1, [r2, #24]
	cmp	r1, r3
	bls	.L1734
	ldrh	r1, [r2, #28]
	mov	r0, r4
	ldr	r2, [r4, #284]
	strh	r3, [sp, #18]	@ movhi
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	strh	r7, [sp, #16]	@ movhi
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L1736
	ldr	r3, [r4, #1976]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r6, r0
	cbz	r0, .L1737
	movs	r3, #255
	add	r1, sp, #16
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #1996]
	blx	r3
.L1738:
	adds	r5, r5, #36
	b	.L1735
.L1737:
	movs	r2, #16
	mov	r0, sp
	movs	r1, #255
	bl	NAND_Memset
	mov	r1, sp
	mov	r0, r4
	bl	set_end_block_flag
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r6, [sp, #16]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r2, [sp, #20]	@ movhi
	str	r3, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r4, #1984]
	blx	r3
	b	.L1734
.L1736:
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	b	.L1738
.L1746:
	.align	2
.L1745:
	.word	.LC275
	.word	.LC276
	.size	build_zone_list_first, .-build_zone_list_first
	.section	.text.get_bad_flag_from_oob,"ax",%progbits
	.align	1
	.global	get_bad_flag_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_bad_flag_from_oob, %function
get_bad_flag_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #4
	movs	r1, #1
	bl	get_spare_data
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	get_bad_flag_from_oob, .-get_bad_flag_from_oob
	.section	.text.get_block_used_count_from_oob,"ax",%progbits
	.align	1
	.global	get_block_used_count_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_used_count_from_oob, %function
get_block_used_count_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #4
	movs	r1, #7
	b	get_spare_data
	.size	get_block_used_count_from_oob, .-get_block_used_count_from_oob
	.section	.text.get_used_block_count,"ax",%progbits
	.align	1
	.global	get_used_block_count
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_block_count, %function
get_used_block_count:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r1]
	movs	r3, #0
	push	{r4, lr}
	sub	sp, sp, #32
	add	r4, sp, #16
	strh	r3, [sp]	@ movhi
	mov	r1, sp
	strh	r2, [sp, #2]	@ movhi
	strh	r3, [sp, #4]	@ movhi
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	ldr	r3, [r0, #1980]
	blx	r3
	mov	r0, r4
	bl	get_block_used_count_from_oob
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
	.size	get_used_block_count, .-get_used_block_count
	.section	.text.get_logic_page_from_oob,"ax",%progbits
	.align	1
	.global	get_logic_page_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_logic_page_from_oob, %function
get_logic_page_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #4
	movs	r1, #1
	bl	get_spare_data
	bic	r0, r0, #-268435456
	pop	{r3, pc}
	.size	get_logic_page_from_oob, .-get_logic_page_from_oob
	.section	.text._nftl_nand_read_logic_history_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_logic_history_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_logic_history_page, %function
_nftl_nand_read_logic_history_page:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	movs	r2, #16
	mov	r5, r0
	add	r0, sp, #24
	str	r1, [sp, #16]
	movs	r1, #0
	bl	memset
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	lsls	r6, r6, #9
	mov	r0, r6
	bl	nftl_malloc
	mov	r8, r0
	mov	r0, r6
	bl	nftl_malloc
	mov	fp, r0
	cmp	r8, #0
	bne	.L1752
.L1769:
	ldr	r1, .L1770
	ldr	r0, .L1770+4
	bl	NAND_Print
	movs	r0, #1
.L1751:
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1752:
	cbnz	r0, .L1754
	mov	r0, r8
	bl	nftl_free
	b	.L1769
.L1754:
	ldrh	r2, [r5, #18]
	movs	r1, #0
	ldrh	r3, [r5, #20]
	mov	r0, r8
	mov	r10, #0
	mov	r7, r10
	adds	r3, r2, r3
	mov	r2, r6
	str	r3, [sp, #8]
	bl	NAND_Memset
	mov	r2, r6
	movs	r1, #0
	mov	r0, fp
	bl	NAND_Memset
	movs	r2, #16
	movs	r1, #0
	add	r0, sp, #24
	bl	NAND_Memset
	lsrs	r3, r6, #9
	str	r3, [sp, #20]
.L1755:
	ldr	r3, [sp, #8]
	cmp	r3, r7
	bne	.L1763
	mov	r1, r3
	ldr	r0, .L1770+8
	bl	NAND_Print
	mov	r0, r8
	bl	nftl_free
	mov	r0, fp
	bl	nftl_free
	movs	r0, #0
	b	.L1751
.L1763:
	mov	r1, r7
	ldr	r0, .L1770+12
	bl	NAND_Print
	uxth	r3, r7
	movs	r4, #0
	strh	r4, [sp, #40]	@ movhi
	add	r1, sp, #40
	str	r3, [sp, #4]
	mov	r0, r5
	ldrh	r3, [sp, #4]
	strh	r4, [sp, #44]	@ movhi
	str	r4, [sp, #48]
	strh	r3, [sp, #42]	@ movhi
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1992]
	blx	r3
	cmp	r0, #1
	beq	.L1756
	mov	r1, r7
	ldr	r0, .L1770+16
	bl	NAND_Print
.L1757:
	adds	r7, r7, #1
	b	.L1755
.L1762:
	movs	r2, #16
	movs	r1, #0
	add	r0, sp, #24
	bl	NAND_Memset
	uxth	r3, r4
	add	r1, sp, #40
	mov	r0, r5
	str	r3, [sp, #12]
	ldrh	r3, [sp, #12]
	strh	r3, [sp, #40]	@ movhi
	ldrh	r3, [sp, #4]
	strh	r3, [sp, #42]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #44]	@ movhi
	str	r3, [sp, #48]
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1980]
	blx	r3
	adds	r0, r0, #2
	bne	.L1758
	ldr	r0, .L1770+20
	mov	r2, r4
	mov	r1, r7
.L1768:
	bl	NAND_Print
.L1759:
	adds	r4, r4, #1
.L1756:
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r4
	bgt	.L1762
	b	.L1757
.L1758:
	add	r0, sp, #24
	bl	get_logic_page_from_oob
	ldr	r3, [sp, #16]
	cmp	r0, r3
	bne	.L1759
	ldrh	r3, [sp, #12]
	add	r1, sp, #40
	str	r8, [sp, #48]
	mov	r0, r5
	strh	r3, [sp, #40]	@ movhi
	ldrh	r3, [sp, #4]
	strh	r3, [sp, #42]	@ movhi
	ldrh	r3, [sp, #20]
	strh	r3, [sp, #44]	@ movhi
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1980]
	blx	r3
	adds	r0, r0, #2
	bne	.L1760
	mov	r2, r4
	mov	r1, r7
	ldr	r0, .L1770+24
	b	.L1768
.L1760:
	add	r3, r10, #1
	str	r3, [sp, #12]
	cmp	r10, #0
	beq	.L1761
	mov	r2, r10
	ldr	r1, [sp, #16]
	ldr	r0, .L1770+28
	bl	NAND_Print
	mov	r1, r6
	mov	r0, fp
	bl	dumphex
	ldr	r0, .L1770+32
	bl	NAND_Print
	movs	r1, #16
	add	r0, sp, #24
	bl	dumphex
.L1761:
	mov	r2, r6
	mov	r1, r8
	mov	r0, fp
	bl	NAND_Memcpy
	ldr	r10, [sp, #12]
	b	.L1759
.L1771:
	.align	2
.L1770:
	.word	.LANCHOR99
	.word	.LC277
	.word	.LC284
	.word	.LC278
	.word	.LC279
	.word	.LC280
	.word	.LC281
	.word	.LC282
	.word	.LC283
	.size	_nftl_nand_read_logic_history_page, .-_nftl_nand_read_logic_history_page
	.section	.text._nand_read_history,"ax",%progbits
	.align	1
	.global	_nand_read_history
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_read_history, %function
_nand_read_history:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r3
	ldr	r4, [r0, #12]
	add	r2, r2, r1
	mov	r5, r1
	ldr	r3, [r4, #24]
	cmp	r2, r3
	bhi	.L1776
	ldr	r3, [r4, #4]
	mov	r0, r5
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	mov	r2, r6
	mov	r1, r0
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	_nftl_nand_read_logic_history_page
.L1776:
	ldr	r0, .L1777
	bl	NAND_Print
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L1778:
	.align	2
.L1777:
	.word	.LC228
	.size	_nand_read_history, .-_nand_read_history
	.section	.text.get_special_data_from_oob,"ax",%progbits
	.align	1
	.global	get_special_data_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_special_data_from_oob, %function
get_special_data_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #4
	movs	r1, #1
	b	get_spare_data
	.size	get_special_data_from_oob, .-get_special_data_from_oob
	.section	.text._nftl_nand_copy_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_copy_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_copy_page, %function
_nftl_nand_copy_page:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #56
	mov	r8, r2
	ldrh	r2, [sp, #80]
	mov	r6, r1
	add	r5, sp, #8
	ldrh	r1, [r1]
	mov	r4, r0
	strh	r2, [sp, #24]	@ movhi
	strh	r2, [sp, #40]	@ movhi
	ldr	r2, [r0, #4]
	strh	r1, [sp, #26]	@ movhi
	ldrh	r1, [r8]
	ldrh	r2, [r2, #28]
	str	r3, [sp, #32]
	strh	r1, [sp, #42]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strh	r2, [sp, #44]	@ movhi
	str	r3, [sp, #48]
	str	r5, [sp, #36]
	ldr	r3, [r0, #1980]
	str	r5, [sp, #52]
	blx	r3
	cmp	r0, #10
	ite	ne
	movne	r7, r0
	moveq	r7, #0
	mov	r0, r5
	bl	get_special_data_from_oob
	ldrh	r3, [r8, #6]
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	uxth	r3, r3
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #40
	mov	r0, r4
	blx	r3
	orr	r0, r7, r0, lsl #8
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	_nftl_nand_copy_page, .-_nftl_nand_copy_page
	.section	.text.get_erase_count_from_oob,"ax",%progbits
	.align	1
	.global	get_erase_count_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_erase_count_from_oob, %function
get_erase_count_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #2
	movs	r1, #5
	bl	get_spare_data
	uxth	r0, r0
	pop	{r3, pc}
	.size	get_erase_count_from_oob, .-get_erase_count_from_oob
	.section	.text.is_ftl_start_flag_page,"ax",%progbits
	.align	1
	.global	is_ftl_start_flag_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_start_flag_page, %function
is_ftl_start_flag_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L1785
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #238
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L1785:
	movs	r0, #0
	bx	lr
	.size	is_ftl_start_flag_page, .-is_ftl_start_flag_page
	.section	.text.is_no_use_device,"ax",%progbits
	.align	1
	.global	is_no_use_device
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_no_use_device, %function
is_no_use_device:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r6, r1
	ldr	r5, [r0, #40]
	cmp	r3, #0
	beq	.L1796
	ldr	r7, [r0, #4]
	ldr	r0, [r0, #32]
	ldrb	r1, [r7, #8]	@ zero_extendqisi2
	add	r0, r0, r3
	bl	__aeabi_uidiv
	ldrh	r1, [r7, #20]
	bl	__aeabi_uidiv
	mov	r7, r0
.L1787:
	movs	r3, #0
	mov	r8, r3
	strh	r3, [r4, #18]	@ movhi
.L1788:
	ldrh	r3, [r4, #18]
	cmp	r3, r7
	bcs	.L1803
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	str	r5, [r4, #44]
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r8, [sp, #16]	@ movhi
	str	r3, [sp, #24]
	strh	r2, [sp, #20]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L1789
	ldr	r3, [r4, #1980]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r2, r0
	mov	r0, sp
	bl	is_ftl_start_flag_page
	cmp	r0, #1
	beq	.L1790
.L1803:
	movs	r0, #1
.L1786:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1796:
	mov	r7, #-1
	b	.L1787
.L1790:
	cbz	r2, .L1792
	cmp	r2, #10
	bne	.L1803
.L1792:
	movs	r2, #4
	movs	r1, #3
	mov	r0, sp
	bl	get_spare_data
	cmp	r0, r6
	beq	.L1794
	ldr	r0, .L1804
	bl	NAND_Print
	b	.L1803
.L1794:
	adds	r5, r5, #36
	movs	r0, #0
	str	r5, [r4, #40]
	b	.L1786
.L1789:
	movs	r3, #255
	mov	r1, r4
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r5
	ldrh	r3, [r4, #18]
	adds	r3, r3, #1
	strh	r3, [r4, #18]	@ movhi
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L1803
	adds	r5, r5, #36
	b	.L1788
.L1805:
	.align	2
.L1804:
	.word	.LC285
	.size	is_no_use_device, .-is_no_use_device
	.section	.text.is_ftl_end_flag_page,"ax",%progbits
	.align	1
	.global	is_ftl_end_flag_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_end_flag_page, %function
is_ftl_end_flag_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L1808
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #204
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L1808:
	movs	r0, #0
	bx	lr
	.size	is_ftl_end_flag_page, .-is_ftl_end_flag_page
	.section	.text.is_ftl_special_data,"ax",%progbits
	.align	1
	.global	is_ftl_special_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_special_data, %function
is_ftl_special_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
	sub	r3, r0, #170
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_ftl_special_data, .-is_ftl_special_data
	.section	.text.is_ftl_logic_page_data,"ax",%progbits
	.align	1
	.global	is_ftl_logic_page_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_logic_page_data, %function
is_ftl_logic_page_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
	and	r0, r0, #240
	sub	r3, r0, #192
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_ftl_logic_page_data, .-is_ftl_logic_page_data
	.section	.text.is_nouse_page,"ax",%progbits
	.align	1
	.global	is_nouse_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_nouse_page, %function
is_nouse_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #1
	add	r1, r0, #9
	movs	r3, #0
	push	{r4, lr}
.L1813:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #255
	it	eq
	addeq	r3, r3, #1
	cmp	r2, r1
	bne	.L1813
	cmp	r3, #8
	bls	.L1815
	ldrb	r0, [r0]	@ zero_extendqisi2
	sub	r3, r0, #255
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
.L1811:
	pop	{r4, pc}
.L1815:
	movs	r0, #0
	b	.L1811
	.size	is_nouse_page, .-is_nouse_page
	.section	.text.hynix20nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix20nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_read_page_end, %function
hynix20nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1833
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L1817
	ldr	r8, .L1833+16
	movs	r7, #0
	ldr	r10, .L1833+20
	ldr	r0, .L1833+4
	bl	NAND_Print_DBG
.L1819:
	ldrb	r2, [r8]	@ zero_extendqisi2
	cmp	r2, r7
	ble	.L1823
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, #0
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
	mov	r4, r0
	cbz	r0, .L1822
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
.L1823:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
.L1817:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1822:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	ldr	fp, [r6, #20]
	orrs	r4, r4, r0
	mov	r0, fp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1824
	ldr	r3, [r5, #176]
	mvn	r4, #1
	ldr	r1, [r5, #260]
	mov	r0, r10
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L1825:
	adds	r7, r7, #1
	b	.L1819
.L1824:
	cmp	r4, #10
	bne	.L1826
.L1827:
	ldrb	r0, [fp, #4]	@ zero_extendqisi2
	movs	r4, #10
	ldrb	r3, [fp, #3]	@ zero_extendqisi2
	ldrb	r2, [fp, #2]	@ zero_extendqisi2
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1833+8
	bl	NAND_Print_DBG
	ldr	r3, [r5, #176]
	ldr	r1, [r5, #260]
	ldr	r0, .L1833+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1823
.L1826:
	cmp	r4, #0
	bne	.L1825
	b	.L1827
.L1834:
	.align	2
.L1833:
	.word	g_nsi
	.word	.LC286
	.word	.LC288
	.word	.LC289
	.word	.LANCHOR10
	.word	.LC287
	.size	hynix20nm_read_page_end, .-hynix20nm_read_page_end
	.section	.text.sandisk_A19_read_page_end,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_page_end, %function
sandisk_A19_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1883
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r6, r0
	bne	.L1835
	ldr	r8, .L1883+28
	movs	r7, #0
	ldr	r0, .L1883+4
	bl	NAND_Print_DBG
	mov	r10, r8
.L1837:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	bgt	.L1843
	ldr	r7, .L1883+8
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #51
	beq	.L1844
	ldr	fp, .L1883+12
	mov	r8, #0
.L1845:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L1851
	ldr	fp, .L1883+12
	mov	r8, #0
.L1852:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L1858
.L1844:
	ldr	fp, .L1883+12
	mov	r8, #0
.L1859:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L1873
.L1874:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	sandisk_A19_exit_readretry
.L1835:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1843:
	str	r7, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L1838
	ldr	r0, .L1883+12
	bl	NAND_Print_DBG
.L1839:
	adds	r7, r7, #1
	b	.L1837
.L1838:
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1840
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1839
.L1840:
	cmp	r6, #10
	beq	.L1871
	cmp	r6, #0
	bne	.L1839
.L1872:
	ldr	r3, [r5, #176]
	movs	r6, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+20
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1874
.L1851:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L1846
	mov	r0, fp
	bl	NAND_Print_DBG
.L1847:
	add	r8, r8, #1
	b	.L1845
.L1846:
	mov	r0, r4
	bl	sandisk_A19_dsp_on
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1848
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1847
.L1848:
	cmp	r6, #10
	beq	.L1871
	cmp	r6, #0
	bne	.L1847
	b	.L1872
.L1858:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L1853
	mov	r0, fp
	bl	NAND_Print_DBG
.L1854:
	add	r8, r8, #1
	b	.L1852
.L1853:
	mov	r0, r4
	bl	sandisk_A19_cmd25
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1855
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1854
.L1855:
	cmp	r6, #10
	beq	.L1871
	cmp	r6, #0
	bne	.L1854
	b	.L1872
.L1873:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L1860
	mov	r0, fp
	bl	NAND_Print_DBG
.L1861:
	add	r8, r8, #1
	b	.L1859
.L1860:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L1862
	movs	r1, #198
.L1881:
	mov	r0, r4
	bl	sandisk_A19_set_lmflgfix_next
	mov	r0, r4
	bl	sandisk_A19_cmd25
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #50
	beq	.L1865
	subs	r3, r3, #52
	cmp	r3, #1
	bhi	.L1866
.L1865:
	mov	r0, r4
	bl	sandisk_A19_dsp_on
.L1866:
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	ldrb	r3, [r7]	@ zero_extendqisi2
	orrs	r6, r6, r0
	cmp	r3, #52
	bne	.L1867
	movs	r1, #194
.L1882:
	mov	r0, r4
	bl	sandisk_A19_set_lmflgfix_next
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1870
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1861
.L1862:
	cmp	r3, #53
	ite	eq
	moveq	r1, #26
	movne	r1, #192
	b	.L1881
.L1867:
	cmp	r3, #53
	ite	eq
	moveq	r1, #10
	movne	r1, #64
	b	.L1882
.L1870:
	cmp	r6, #10
	beq	.L1871
	cmp	r6, #0
	bne	.L1861
	b	.L1872
.L1871:
	ldr	r3, [r5, #176]
	ldr	r1, [r5, #260]
	ldr	r0, .L1883+24
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1874
.L1884:
	.align	2
.L1883:
	.word	g_nsi
	.word	.LC290
	.word	.LANCHOR54
	.word	.LC291
	.word	.LC287
	.word	.LC292
	.word	.LC293
	.word	.LANCHOR55
	.size	sandisk_A19_read_page_end, .-sandisk_A19_read_page_end
	.section	.text.sandisk_read_page_end,"ax",%progbits
	.align	1
	.global	sandisk_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_page_end, %function
sandisk_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1896
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L1885
	ldr	r8, .L1896+12
	movs	r7, #0
	ldr	r10, .L1896+16
	ldr	r0, .L1896+4
	bl	NAND_Print_DBG
.L1887:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L1891
	str	r7, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r6, #8]
	bl	sandisk_set_readretry
	mov	r4, r0
	cbnz	r0, .L1888
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	mov	r0, r5
	bl	sandisk_end_one_read_retry
	ldr	r0, [r6, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1889
	ldr	r3, [r5, #176]
	mvn	r4, #1
	ldr	r1, [r5, #260]
	mov	r0, r10
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L1888:
	adds	r7, r7, #1
	b	.L1887
.L1889:
	cmp	r4, #10
	beq	.L1890
	cmp	r4, #0
	bne	.L1888
.L1890:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L1896+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L1891:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	sandisk_exit_readretry
.L1885:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1897:
	.align	2
.L1896:
	.word	g_nsi
	.word	.LC294
	.word	.LC295
	.word	.LANCHOR78
	.word	.LC287
	.size	sandisk_read_page_end, .-sandisk_read_page_end
	.section	.text.block_last_page_ecc_error,"ax",%progbits
	.align	1
	.global	block_last_page_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	block_last_page_ecc_error, %function
block_last_page_ecc_error:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	sub	sp, sp, #32
	ldr	r0, .L1930
	mov	r4, r1
	bl	NAND_Print
	mov	r0, #4096
	bl	NAND_Malloc
	mov	r5, r0
	cbnz	r0, .L1899
	ldr	r1, .L1930+4
	ldr	r0, .L1930+8
	bl	NAND_Print
.L1899:
	ldr	r7, .L1930+4
	movs	r6, #0
	ldr	r8, .L1930+28
.L1900:
	ldr	r2, [r10, #4]
	ldrh	r1, [r2, #20]
	cmp	r1, r6
	bgt	.L1902
	movs	r6, #0
	mov	r7, r6
.L1903:
	ldr	r2, [r10, #4]
	uxth	r8, r7
	ldrh	ip, [r4]
	ldr	r1, [r10, #284]
	ldrh	r0, [r2, #28]
	ldrh	r2, [r2, #20]
	cmp	r2, r7
	ble	.L1915
	strh	ip, [sp, #18]	@ movhi
	strh	r0, [sp, #20]	@ movhi
	mov	r0, r10
	str	r1, [sp, #24]
	add	r1, sp, #16
	ldr	r2, [r10, #1980]
	strh	r8, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	blx	r2
	mov	fp, r0
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1904
.L1915:
	ldr	r2, [r10, #4]
	ldrh	r0, [r4]
	strh	r8, [sp, #16]	@ movhi
	ldrh	r1, [r2, #28]
	ldr	r2, [r10, #284]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1976]
	blx	r2
	cmp	r0, #0
	bne	.L1905
.L1906:
	movs	r7, #0
.L1918:
	cmp	r7, r6
	ldr	r2, [r10, #4]
	beq	.L1917
	ldrh	r0, [r4]
	ldrh	r1, [r2, #28]
	ldr	r2, [r5, r7, lsl #2]
	strh	r7, [sp, #16]	@ movhi
	adds	r7, r7, #1
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1984]
	blx	r2
	b	.L1918
.L1902:
	ldrh	r0, [r2, #26]
	bl	nftl_malloc
	str	r0, [r5, r6, lsl #2]
	cbnz	r0, .L1901
	mov	r1, r7
	mov	r0, r8
	bl	NAND_Print
.L1901:
	adds	r6, r6, #1
	b	.L1900
.L1904:
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L1907
	cmp	fp, #0
	beq	.L1908
	cmp	fp, #10
	bne	.L1909
.L1908:
	ldr	r2, [r10, #4]
	adds	r6, r6, #1
	ldr	r1, [r10, #284]
	ldr	r0, [r5, r7, lsl #2]
	ldrh	r2, [r2, #26]
	bl	NAND_Memcpy
.L1909:
	adds	r7, r7, #1
	b	.L1903
.L1907:
	ldrb	r1, [sp, #1]	@ zero_extendqisi2
	cmp	r1, #170
	bne	.L1910
	cmp	fp, #0
	bne	.L1928
.L1911:
	ldr	r2, [r10, #4]
	adds	r6, r6, #1
	ldr	r1, [r10, #284]
	ldr	r0, [r5, r7, lsl #2]
	ldrh	r2, [r2, #26]
	bl	NAND_Memcpy
	b	.L1913
.L1910:
	ldr	r0, .L1930+12
.L1929:
	bl	NAND_Print
	b	.L1909
.L1928:
	cmp	fp, #10
	beq	.L1911
.L1913:
	ldr	r0, .L1930+16
	b	.L1929
.L1905:
	ldr	r2, [r10, #1996]
	add	r1, sp, #16
	mov	r0, r10
	blx	r2
	mov	r0, r10
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L1916
	ldr	r0, .L1930+20
	bl	NAND_Print
.L1917:
	movs	r6, #0
.L1920:
	ldr	r2, [r10, #4]
	ldrh	r2, [r2, #20]
	cmp	r2, r6
	bgt	.L1921
	mov	r0, r5
	bl	nftl_free
	ldr	r0, .L1930+24
	bl	NAND_Print
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1916:
	ldr	r2, [r10, #4]
	ldrh	r0, [r0]
	strh	r8, [sp, #16]	@ movhi
	ldrh	r1, [r2, #28]
	ldr	r2, [r10, #284]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1976]
	blx	r2
	b	.L1906
.L1921:
	ldr	r0, [r5, r6, lsl #2]
	adds	r6, r6, #1
	bl	nftl_free
	b	.L1920
.L1931:
	.align	2
.L1930:
	.word	.LC296
	.word	.LANCHOR100
	.word	.LC297
	.word	.LC299
	.word	.LC300
	.word	.LC301
	.word	.LC302
	.word	.LC298
	.size	block_last_page_ecc_error, .-block_last_page_ecc_error
	.section	.text.is_fill_page,"ax",%progbits
	.align	1
	.global	is_fill_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_fill_page, %function
is_fill_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	sub	r3, r0, #1431655765
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
	.size	is_fill_page, .-is_fill_page
	.section	.text.is_phy_mapping_page,"ax",%progbits
	.align	1
	.global	is_phy_mapping_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_phy_mapping_page, %function
is_phy_mapping_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	ldr	r3, .L1934
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L1935:
	.align	2
.L1934:
	.word	-1431633921
	.size	is_phy_mapping_page, .-is_phy_mapping_page
	.section	.text.crc_wrong,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crc_wrong, %function
crc_wrong:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r0, r2
	mov	r7, r1
	mov	r5, r2
	bl	is_nouse_page
	cbnz	r0, .L1941
	ldr	r3, [r6, #4]
	mov	r0, r5
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	bl	is_phy_mapping_page
	cbnz	r0, .L1938
	lsls	r4, r4, #9
.L1939:
	mov	r2, r4
	mov	r1, r7
	movw	r0, #65535
	bl	nand_crc16
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	orr	r2, r2, r3, lsl #8
	cmp	r0, r2
	beq	.L1941
	mov	r3, r4
	ldr	r0, .L1942
	bl	NAND_Print
	movs	r0, #1
.L1936:
	pop	{r3, r4, r5, r6, r7, pc}
.L1938:
	ldr	r4, [r6, #308]
	b	.L1939
.L1941:
	movs	r0, #0
	b	.L1936
.L1943:
	.align	2
.L1942:
	.word	.LC303
	.size	crc_wrong, .-crc_wrong
	.section	.text.nand_power_off_ecc_error,"ax",%progbits
	.align	1
	.global	nand_power_off_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_power_off_ecc_error, %function
nand_power_off_ecc_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r2
	ldrb	r5, [r2]	@ zero_extendqisi2
	sub	sp, sp, #60
	cmp	r5, #255
	beq	.L1945
	ldr	r0, .L1956
.L1955:
	bl	NAND_Print
	movs	r3, #1
	movw	r2, #3063
	ldr	r1, .L1956+4
	ldr	r0, .L1956+8
	bl	NAND_Print
	ldr	r0, .L1956+12
	bl	NAND_Print
	ldrb	r0, [r4, #15]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [r4, #14]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [r4, #13]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [r4, #12]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [r4, #11]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1956+16
	bl	NAND_Print
	movs	r0, #1
	b	.L1949
.L1945:
	ldr	r3, [r0, #1972]
	ldrh	r3, [r3, #28]
	cbz	r3, .L1947
	bl	crc_wrong
	cbnz	r0, .L1948
.L1951:
	movs	r0, #0
.L1949:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, pc}
.L1948:
	ldr	r0, .L1956+20
	b	.L1955
.L1947:
	ldrb	r3, [r2, #11]	@ zero_extendqisi2
	cmp	r3, #165
	bne	.L1950
	ldrb	r3, [r2, #15]	@ zero_extendqisi2
	cmp	r3, #165
	beq	.L1951
.L1950:
	ldr	r0, .L1956+24
	b	.L1955
.L1957:
	.align	2
.L1956:
	.word	.LC304
	.word	.LANCHOR101
	.word	.LC307
	.word	.LC308
	.word	.LC309
	.word	.LC305
	.word	.LC306
	.size	nand_power_off_ecc_error, .-nand_power_off_ecc_error
	.section	.text.recover_block_phy_page_mapping,"ax",%progbits
	.align	1
	.global	recover_block_phy_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_block_phy_page_mapping, %function
recover_block_phy_page_mapping:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r2
	movs	r4, #0
	ldr	r2, [r0, #308]
	sub	sp, sp, #40
	mov	r5, r0
	mov	r7, r1
	mov	r0, r10
	movs	r1, #255
	bl	NAND_Memset
.L1959:
	ldr	r2, [r5, #4]
	ldrh	r3, [r2, #20]
	subs	r3, r3, #1
	cmp	r3, r4
	bgt	.L1970
	movs	r0, #0
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1970:
	ldr	r3, [r5, #1972]
	uxth	r0, r4
	ldrh	r1, [r7]
	add	r6, sp, #8
	ldrh	r3, [r3, #28]
	cmp	r3, #0
	beq	.L1960
	ldr	r3, [r5, #284]
	ldrh	r2, [r2, #28]
	strh	r0, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	strh	r2, [sp, #28]	@ movhi
.L1981:
	mov	fp, #0
	strd	r3, r6, [sp, #32]
.L1964:
	ldr	r3, [r5, #1980]
	add	r1, sp, #24
	mov	r0, r5
	blx	r3
	subs	r8, r0, #0
	bge	.L1962
	mov	r3, r4
	ldrh	r2, [r7]
	mov	r1, r8
	ldr	r0, .L1982
	bl	NAND_Print
	cmp	fp, #0
	beq	.L1971
	ldrh	r2, [r7]
	mov	r3, r4
	str	fp, [sp]
	mov	r1, r8
	ldr	r0, .L1982+4
	bl	NAND_Print
.L1962:
	mov	r0, r6
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L1965
	cmp	r8, #0
	beq	.L1966
	cmp	r8, #10
	bne	.L1967
.L1966:
	mov	r2, r6
	ldr	r1, [r5, #284]
	mov	r0, r5
	bl	nand_power_off_ecc_error
	cbz	r0, .L1968
	ldr	r0, .L1982+8
	bl	NAND_Print
.L1967:
	adds	r4, r4, #1
	b	.L1959
.L1960:
	strh	r0, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	strh	r3, [sp, #28]	@ movhi
	b	.L1981
.L1971:
	mov	fp, #1
	b	.L1964
.L1968:
	mov	r0, r6
	bl	get_logic_page_from_oob
	str	r0, [r10, r4, lsl #2]
	mov	r3, r0
	ldr	r2, [r5, #28]
	cmp	r0, r2
	bcc	.L1967
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1982+12
	bl	NAND_Print
	mov	r3, #-1
	str	r3, [r10, r4, lsl #2]
	b	.L1967
.L1965:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L1967
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1982+16
	bl	NAND_Print
	b	.L1967
.L1983:
	.align	2
.L1982:
	.word	.LC310
	.word	.LC311
	.word	.LC312
	.word	.LC313
	.word	.LC314
	.size	recover_block_phy_page_mapping, .-recover_block_phy_page_mapping
	.section	.text.get_used_page_num,"ax",%progbits
	.align	1
	.global	get_used_page_num
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_page_num, %function
get_used_page_num:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	mov	fp, r2
	mov	r5, r3
	sub	sp, sp, #104
	movs	r4, #0
	str	r1, [sp, #64]
	str	r4, [r2]
.L1985:
	ldr	r3, [r6, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	bhi	.L1996
.L1984:
	mov	r0, r4
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1996:
	cmp	r5, #0
	beq	.L1986
	ldr	r2, [r5, #4]
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L1986
	ldrh	r7, [r3, #26]
	ldr	r2, [r5, #8]
	add	r8, r7, #64
	mla	r8, r4, r8, r2
	add	r7, r7, r8
.L1987:
	ldr	r2, [sp, #64]
	uxth	r0, r4
	ldrh	r1, [r2]
	ldr	r2, [r6, #1972]
	ldrh	r2, [r2, #28]
	cmp	r2, #0
	beq	.L1988
	ldrh	r3, [r3, #28]
	strh	r0, [sp, #88]	@ movhi
	strh	r1, [sp, #90]	@ movhi
	strh	r3, [sp, #92]	@ movhi
	str	r8, [sp, #96]
.L2034:
	str	r7, [sp, #100]
	add	r1, sp, #88
	ldr	r3, [r6, #1980]
	mov	r0, r6
	blx	r3
	mov	r10, r0
	cbz	r0, .L1990
	cmp	r0, #10
	beq	.L1990
	ldr	r3, [sp, #64]
	mov	r2, r4
	ldr	r0, .L2036
	ldrh	r1, [r3]
	bl	NAND_Print
	ldr	r3, [fp]
	adds	r3, r3, #1
	str	r3, [fp]
.L1990:
	mov	r0, r7
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L2007
	adds	r3, r4, #1
	cmp	r10, #0
	beq	.L1992
	cmp	r10, #10
	bne	.L1993
.L1992:
	cmp	r8, #0
	beq	.L1993
	mov	r2, r7
	mov	r1, r8
	mov	r0, r6
	str	r3, [sp, #68]
	bl	nand_power_off_ecc_error
	ldr	r3, [sp, #68]
	cbz	r0, .L1995
	ldr	r0, .L2036+4
	bl	NAND_Print
	ldr	r3, [sp, #68]
.L1993:
	mov	r4, r3
	b	.L1985
.L1986:
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	cmp	r2, #8
	ittee	eq
	ldreq	r8, [r6, #284]
	addeq	r7, sp, #72
	addne	r7, sp, #72
	movne	r8, #0
	b	.L1987
.L1988:
	strh	r0, [sp, #88]	@ movhi
	strh	r1, [sp, #90]	@ movhi
	strh	r2, [sp, #92]	@ movhi
	str	r2, [sp, #96]
	b	.L2034
.L1995:
	ldr	r2, [r5, #4]
	movs	r1, #1
	strb	r1, [r2, r4]
	ldr	r2, [r5]
	cmp	r2, r3
	it	cc
	strcc	r3, [r5]
	b	.L1993
.L2004:
	cmp	r5, #0
	beq	.L2009
	ldr	r2, [r5, #4]
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L2009
	ldrh	r2, [r3, #26]
	ldr	r1, [r5, #8]
	add	r8, r2, #64
	mla	r8, r7, r8, r1
	add	fp, r8, r2
.L1997:
	ldr	r1, [r6, #1972]
	uxth	ip, r7
	ldr	r2, [sp, #64]
	ldrh	r1, [r1, #28]
	ldrh	r0, [r2]
	cmp	r1, #0
	beq	.L1998
	ldrh	r3, [r3, #28]
	strh	ip, [sp, #88]	@ movhi
	strh	r0, [sp, #90]	@ movhi
	strh	r3, [sp, #92]	@ movhi
	str	r8, [sp, #96]
.L2035:
	ldr	r3, [r6, #1980]
	add	r1, sp, #88
	str	fp, [sp, #100]
	mov	r0, r6
	blx	r3
	str	r0, [sp, #68]
	mov	r0, fp
	bl	is_nouse_page
	cmp	r0, #1
	add	r10, r7, #1
	beq	.L2001
	ldrb	r0, [fp, #15]	@ zero_extendqisi2
	ldr	r2, [sp, #64]
	ldrb	r3, [fp]	@ zero_extendqisi2
	ldrh	r1, [r2]
	str	r0, [sp, #56]
	ldrb	r0, [fp, #14]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [fp, #13]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [fp, #12]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [fp, #11]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [fp, #10]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [fp, #8]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [fp, #7]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [fp, #6]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [fp, #5]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [fp, #4]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [fp, #3]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [fp, #2]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r2, [fp, #1]	@ zero_extendqisi2
	ldr	r0, .L2036+8
	str	r2, [sp]
	mov	r2, r7
	bl	NAND_Print
	ldr	r3, [sp, #68]
	cbz	r3, .L2002
	cmp	r3, #10
	bne	.L2001
.L2002:
	cmp	r8, #0
	beq	.L2001
	ldr	r3, [r5, #4]
	movs	r2, #1
	strb	r2, [r3, r7]
	ldr	r3, [r5]
	cmp	r3, r10
	it	cc
	strcc	r10, [r5]
.L2001:
	mov	r7, r10
.L1991:
	ldr	r3, [r6, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r7
	bhi	.L2004
	b	.L1984
.L2009:
	add	fp, sp, #72
	mov	r8, #0
	b	.L1997
.L1998:
	strh	ip, [sp, #88]	@ movhi
	strh	r0, [sp, #90]	@ movhi
	strh	r1, [sp, #92]	@ movhi
	str	r1, [sp, #96]
	b	.L2035
.L2007:
	mov	r7, r4
	b	.L1991
.L2037:
	.align	2
.L2036:
	.word	.LC315
	.word	.LC316
	.word	.LC317
	.size	get_used_page_num, .-get_used_page_num
	.section	.text.cross_talk_rebuild_current_block,"ax",%progbits
	.align	1
	.global	cross_talk_rebuild_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	cross_talk_rebuild_current_block, %function
cross_talk_rebuild_current_block:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	mov	r6, r1
	movs	r7, #0
	add	r1, sp, #56
	mov	r5, r0
	str	r7, [r1, #-20]!
	mov	r4, r2
	bl	init_nrc
	cbz	r0, .L2039
	ldr	r0, [sp, #36]
	mov	r4, r7
	bl	free_nrc
	ldr	r0, .L2059
	bl	NAND_Print
.L2040:
	mov	r0, r4
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2039:
	ldr	r3, [sp, #36]
	add	r2, sp, #28
	mov	r1, r6
	mov	r0, r5
	bl	get_used_page_num
	mov	r10, r0
	cbnz	r4, .L2041
	ldr	r3, [r6, #8]
	mov	r2, r0
	ldrh	r1, [r6]
	ldr	r0, .L2059+4
	bl	NAND_Print
	ldr	r0, [sp, #36]
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L2054
	bl	free_nrc
	ldr	r0, .L2059+8
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	b	.L2040
.L2041:
	ldr	r3, [sp, #36]
	add	r2, sp, #32
	mov	r1, r4
	mov	r0, r5
	bl	get_used_page_num
	ldr	r3, [r4, #8]
	mov	fp, r0
	ldrh	r1, [r6]
	mov	r2, r10
	strd	r0, r3, [sp, #4]
	ldrh	r3, [r4]
	ldr	r0, .L2059+12
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	NAND_Print
	ldr	r0, [sp, #36]
	ldr	r3, [r0]
	cbnz	r3, .L2043
	str	r3, [sp, #20]
	bl	free_nrc
	ldr	r0, .L2059+16
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r3, [sp, #20]
	mov	r4, r3
	b	.L2040
.L2043:
	ldrh	r7, [r4, #6]
	cmp	r10, fp
	ldrh	r8, [r6, #6]
	ittt	ls
	movls	r2, r7
	movls	r7, r8
	movls	r8, r2
	ldr	r2, [sp, #28]
	cbnz	r2, .L2045
	ldr	r2, [sp, #32]
	cbz	r2, .L2046
.L2045:
	adds	r7, r7, #20
	add	r8, r8, #20
.L2046:
	cmp	r10, fp
	add	r7, r7, #1
	uxth	r7, r7
	mov	r2, fp
	mov	r1, r10
	bcs	.L2047
	ldr	r0, .L2059+20
	bl	NAND_Print
	mov	r1, r6
	mov	r6, r4
	mov	r2, r7
	mov	r0, r5
	bl	erase_block
.L2042:
	ldr	r7, .L2059+24
.L2050:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L2048
	ldr	r0, .L2059+28
	bl	NAND_Print
	b	.L2040
.L2047:
	ldr	r0, .L2059+32
	bl	NAND_Print
	mov	r2, r7
	mov	r1, r4
	mov	r0, r5
	bl	erase_block
	b	.L2042
.L2054:
	mov	r8, r4
	b	.L2042
.L2048:
	ldr	r2, [r6, #8]
	mov	r1, r0
	adds	r2, r2, #1
	str	r2, [r0, #8]
	mov	r0, r5
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L2055
	mov	r0, r7
	bl	NAND_Print
	b	.L2050
.L2053:
	ldr	r3, [r0, #4]
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2051
	ldr	r2, [r5, #4]
	ldr	r0, [r0, #8]
	ldrh	r1, [r2, #26]
	ldrh	r2, [r2, #28]
	add	r3, r1, #64
	mla	r3, r10, r3, r0
	ldrh	r0, [r4]
	strh	r7, [sp, #40]	@ movhi
	strh	r2, [sp, #44]	@ movhi
	adds	r7, r7, #1
	strh	r0, [sp, #42]	@ movhi
	add	r1, r1, r3
	mov	r0, r1
	strd	r3, r1, [sp, #48]
	str	r1, [sp, #20]
	bl	get_special_data_from_oob
	ldrh	r3, [r4, #6]
	mov	r2, r0
	ldr	r1, [sp, #20]
	mov	r0, r5
	str	r3, [sp]
	ldr	r3, [r4, #8]
	bl	set_oob_special_page
	ldr	r3, [r5, #1984]
	add	r1, sp, #40
	mov	r0, r5
	blx	r3
.L2052:
	add	r10, r10, #1
.L2049:
	ldr	r0, [sp, #36]
	ldr	r2, [r0]
	cmp	r2, r10
	bhi	.L2053
	add	r2, r8, #1
	mov	r1, r6
	uxth	r2, r2
	mov	r0, r5
	bl	erase_block
	ldr	r0, [sp, #36]
	bl	free_nrc
	b	.L2040
.L2051:
	mov	r1, r10
	mov	r0, fp
	bl	NAND_Print
	b	.L2052
.L2055:
	mov	r7, r0
	mov	r10, r0
	ldr	fp, .L2059+36
	b	.L2049
.L2060:
	.align	2
.L2059:
	.word	.LC318
	.word	.LC319
	.word	.LC320
	.word	.LC321
	.word	.LC322
	.word	.LC323
	.word	.LC326
	.word	.LC325
	.word	.LC324
	.word	.LC327
	.size	cross_talk_rebuild_current_block, .-cross_talk_rebuild_current_block
	.section	.text.get_used_page_num_no_crosstalk,"ax",%progbits
	.align	1
	.global	get_used_page_num_no_crosstalk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_page_num_no_crosstalk, %function
get_used_page_num_no_crosstalk:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r3
	movs	r3, #0
	mov	r8, r0
	mov	r10, r3
	mov	fp, r3
	mov	r4, #-1
	mov	r5, r3
	sub	sp, sp, #48
	str	r3, [r2]
	str	r1, [sp, #4]
.L2062:
	ldr	r2, [r8, #4]
	ldrh	r3, [r2, #20]
	cmp	r3, r5
	bhi	.L2071
	adds	r2, r4, #1
	bne	.L2069
	mov	r4, r3
.L2072:
	mov	r0, r4
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2071:
	cbz	r6, .L2063
	ldr	r3, [r6, #4]
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	cbnz	r3, .L2063
	ldrh	r7, [r2, #26]
	ldr	r3, [r6, #8]
	add	r1, r7, #64
	mla	r3, r5, r1, r3
	add	r7, r7, r3
.L2064:
	ldr	r1, [sp, #4]
	mov	r0, r8
	ldrh	r2, [r2, #28]
	str	r3, [sp, #40]
	ldrh	r1, [r1]
	strh	r2, [sp, #36]	@ movhi
	strh	r5, [sp, #32]	@ movhi
	strh	r1, [sp, #34]	@ movhi
	add	r1, sp, #32
	str	r7, [sp, #44]
	ldr	r2, [r8, #1980]
	str	r3, [sp, #8]
	blx	r2
	ldr	r3, [sp, #8]
	cbz	r0, .L2065
	cmp	r0, #10
	beq	.L2065
	ldr	r3, [sp, #4]
	cmp	r4, #-1
	it	eq
	moveq	r4, r5
	mov	r2, r5
	ldr	r0, .L2092
	ldrh	r1, [r3]
	bl	NAND_Print
.L2066:
	adds	r5, r5, #1
	b	.L2062
.L2063:
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	cmp	r3, #4
	ittee	eq
	ldreq	r3, [r8, #284]
	addeq	r7, sp, #16
	addne	r7, sp, #16
	movne	r3, #0
	b	.L2064
.L2065:
	mov	r0, r7
	str	r3, [sp, #8]
	bl	is_nouse_page
	cmp	r0, #1
	ldr	r3, [sp, #8]
	bne	.L2067
	add	r10, r10, #1
	cmp	r4, #-1
	it	eq
	moveq	r4, r5
	cmp	r10, #3
	bne	.L2066
.L2069:
	cmp	fp, r4
	beq	.L2072
	ldr	r1, [sp, #4]
	mov	r3, r4
	mov	r2, fp
	ldr	r0, .L2092+4
	ldrh	r1, [r1]
	bl	NAND_Print
	ldr	r2, [r8, #1968]
	ldr	r3, [r2, #168]
	adds	r3, r3, #1
	str	r3, [r2, #168]
	movs	r3, #0
.L2073:
	ldr	r2, [r6]
	cmp	r2, r3
	bls	.L2072
	ldr	r2, [r6, #4]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	cbz	r2, .L2074
	ldr	r2, [r8, #4]
	ldr	r1, [r6, #8]
	ldrh	r0, [r2, #26]
	add	r1, r1, r0
	add	r2, r0, #64
	mla	r2, r3, r2, r1
	ldr	r1, [r8, #1968]
	ldr	r1, [r1, #168]
	strb	r1, [r2, #14]
.L2074:
	adds	r3, r3, #1
	b	.L2073
.L2067:
	mov	r2, r7
	mov	r1, r3
	mov	r0, r8
	bl	nand_power_off_ecc_error
	cbz	r0, .L2070
	ldr	r0, .L2092+8
	bl	NAND_Print
	b	.L2066
.L2070:
	adds	r1, r4, #1
	add	fp, fp, #1
	bne	.L2066
	ldr	r2, [r6, #4]
	movs	r1, #1
	adds	r3, r5, #1
	mov	r0, r7
	str	r3, [sp, #12]
	strb	r1, [r2, r5]
	ldr	r2, [r6, #12]
	str	r2, [sp, #8]
	bl	get_logic_page_from_oob
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	str	r0, [r2, r5, lsl #2]
	ldr	r2, [r6]
	cmp	r2, r3
	it	cc
	strcc	r3, [r6]
	b	.L2066
.L2093:
	.align	2
.L2092:
	.word	.LC328
	.word	.LC330
	.word	.LC329
	.size	get_used_page_num_no_crosstalk, .-get_used_page_num_no_crosstalk
	.section	.text.no_cross_talk_rebuild_current_block,"ax",%progbits
	.align	1
	.global	no_cross_talk_rebuild_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	no_cross_talk_rebuild_current_block, %function
no_cross_talk_rebuild_current_block:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #72
	mov	r6, r1
	movs	r7, #0
	add	r1, sp, #32
	mov	r5, r0
	mov	r4, r2
	strd	r7, r7, [sp, #32]
	bl	init_nrc
	cbz	r0, .L2095
	ldr	r0, .L2128
	bl	NAND_Print
	ldr	r0, [sp, #32]
	bl	free_nrc
.L2126:
	movs	r4, #0
	b	.L2096
.L2095:
	ldr	r3, [sp, #32]
	add	r2, sp, #24
	mov	r1, r6
	mov	r0, r5
	bl	get_used_page_num_no_crosstalk
	mov	r8, r0
	cbnz	r4, .L2097
	ldr	r3, [r6, #8]
	mov	r2, r0
	ldrh	r1, [r6]
	ldr	r0, .L2128+4
	bl	NAND_Print
	ldr	r7, [sp, #32]
	ldr	r3, [r7]
	cbz	r3, .L2125
	ldr	r8, .L2128+40
.L2098:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L2099
.L2107:
	ldr	r0, .L2128+8
.L2127:
	bl	NAND_Print
	b	.L2126
.L2125:
	mov	r0, r7
	bl	free_nrc
	ldr	r0, .L2128+12
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
.L2096:
	mov	r0, r4
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2099:
	ldr	r2, [r6, #8]
	mov	r1, r0
	str	r2, [r0, #8]
	mov	r0, r5
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L2100
	mov	r0, r8
	bl	NAND_Print
	b	.L2098
.L2097:
	add	r1, sp, #36
	mov	r0, r5
	bl	init_nrc
	cbz	r0, .L2101
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	ldr	r0, .L2128+16
	b	.L2127
.L2101:
	ldr	r3, [sp, #36]
	add	r2, sp, #28
	mov	r1, r4
	mov	r0, r5
	bl	get_used_page_num_no_crosstalk
	ldr	r3, [r4, #8]
	mov	r10, r0
	ldrh	r1, [r6]
	mov	r2, r8
	strd	r0, r3, [sp, #4]
	ldrh	r3, [r4]
	ldr	r0, .L2128+20
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	NAND_Print
	ldr	r7, [sp, #36]
	ldr	fp, [r7]
	cmp	fp, #0
	bne	.L2102
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	ldr	r0, .L2128+24
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	b	.L2126
.L2102:
	cmp	r8, r10
	bcs	.L2103
	mov	r3, fp
	mov	r2, r10
	mov	r1, r8
	ldr	r0, .L2128+28
	bl	NAND_Print
	mov	r3, r6
	mov	r6, r4
	mov	r4, r3
.L2104:
	ldr	r3, [r5, #4]
	mov	r8, #0
	ldrh	r2, [r4]
	add	r1, sp, #40
	strh	r8, [sp, #40]	@ movhi
	mov	r0, r5
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #42]	@ movhi
	strd	r8, r8, [sp, #48]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [r5, #1976]
	blx	r3
	cbz	r0, .L2105
	ldrh	r1, [r4]
	ldr	r0, .L2128+32
	bl	NAND_Print
	ldr	r3, [r5, #1996]
	add	r1, sp, #40
	mov	r0, r5
	blx	r3
	movs	r3, #255
	strh	r8, [r6, #4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	ldr	r8, .L2128+40
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
.L2106:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cmp	r0, #0
	beq	.L2107
	ldr	r2, [r0, #8]
	mov	r1, r0
	mov	r0, r5
	bl	new_block_init_for_write
	cbz	r0, .L2105
	mov	r0, r8
	bl	NAND_Print
	b	.L2106
.L2103:
	ldr	r7, [sp, #32]
	mov	r2, r10
	mov	r1, r8
	ldr	r0, .L2128+36
	ldr	r3, [r7]
	bl	NAND_Print
	b	.L2104
.L2105:
	ldr	r3, [r6, #8]
	str	r3, [r4, #8]
.L2100:
	ldr	fp, .L2128+44
	mov	r10, #0
	mov	r8, r10
.L2108:
	ldr	r2, [r7]
	cmp	r2, r8
	bhi	.L2111
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r2, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r5, #304]
	strh	r2, [r5, #320]	@ movhi
	str	r4, [r5, #292]
	lsls	r2, r2, #2
	bl	NAND_Memcpy
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	b	.L2096
.L2111:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, r8]	@ zero_extendqisi2
	cbz	r3, .L2109
	ldr	r2, [r5, #4]
	ldr	r0, [r7, #8]
	ldrh	r1, [r2, #26]
	ldrh	r2, [r2, #28]
	add	r3, r1, #64
	mla	r3, r8, r3, r0
	ldrh	r0, [r4]
	strh	r10, [sp, #56]	@ movhi
	strh	r2, [sp, #60]	@ movhi
	add	r10, r10, #1
	strh	r0, [sp, #58]	@ movhi
	add	r1, r1, r3
	mov	r0, r1
	strd	r3, r1, [sp, #64]
	str	r1, [sp, #20]
	bl	get_special_data_from_oob
	ldrh	r3, [r4, #6]
	mov	r2, r0
	ldr	r1, [sp, #20]
	mov	r0, r5
	str	r3, [sp]
	ldr	r3, [r4, #8]
	bl	set_oob_special_page
	ldr	r3, [r5, #1984]
	add	r1, sp, #56
	mov	r0, r5
	blx	r3
.L2110:
	add	r8, r8, #1
	b	.L2108
.L2109:
	mov	r1, r8
	mov	r0, fp
	bl	NAND_Print
	b	.L2110
.L2129:
	.align	2
.L2128:
	.word	.LC318
	.word	.LC331
	.word	.LC325
	.word	.LC332
	.word	.LC322
	.word	.LC333
	.word	.LC334
	.word	.LC323
	.word	.LC335
	.word	.LC324
	.word	.LC326
	.word	.LC327
	.size	no_cross_talk_rebuild_current_block, .-no_cross_talk_rebuild_current_block
	.section	.text.current_block_ecc_error,"ax",%progbits
	.align	1
	.global	current_block_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_ecc_error, %function
current_block_ecc_error:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r5, .L2150
	sub	sp, sp, #48
	mov	r8, r1
.L2131:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r7, r0
	cbnz	r0, .L2132
	ldr	r0, .L2150+4
	bl	NAND_Print
.L2130:
	mov	r0, r7
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2132:
	ldr	r2, [r8, #8]
	mov	r1, r0
	str	r2, [r0, #8]
	mov	r0, r4
	bl	new_block_init_for_write
	mov	r6, r0
	cbz	r0, .L2134
	mov	r0, r5
	bl	NAND_Print
	b	.L2131
.L2134:
	ldr	fp, .L2150+32
	mov	r5, r6
	ldrh	r1, [r8]
	ldr	r0, .L2150+8
	bl	NAND_Print
.L2135:
	ldr	r3, [r4, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r5
	bgt	.L2142
	ldrh	r2, [r8, #6]
	mov	r1, r8
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L2150+12
	bl	NAND_Print_DBG
	b	.L2130
.L2142:
	ldrh	r2, [r3, #28]
	mov	r0, r4
	ldrh	r1, [r8]
	ldr	r3, [r4, #284]
	strh	r2, [sp, #20]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	str	r3, [sp, #24]
	strh	r5, [sp, #16]	@ movhi
	ldr	r3, [r4, #1980]
	str	sp, [sp, #28]
	blx	r3
	mov	r10, r0
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L2136
	cmp	r10, #0
	beq	.L2137
	cmp	r10, #10
	bne	.L2138
.L2137:
	mov	r2, sp
	ldr	r1, [r4, #284]
	mov	r0, r4
	bl	nand_power_off_ecc_error
	cbz	r0, .L2139
	ldr	r0, .L2150+16
	bl	NAND_Print
.L2140:
	adds	r5, r5, #1
	b	.L2135
.L2139:
	mov	r2, r10
	mov	r1, r5
	ldr	r0, .L2150+20
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r7]
	strh	r6, [sp, #32]	@ movhi
	adds	r6, r6, #1
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #34]	@ movhi
	add	r1, sp, #32
	strh	r2, [sp, #36]	@ movhi
	str	r3, [sp, #40]
	str	sp, [sp, #44]
	ldr	r3, [r4, #1984]
	blx	r3
	b	.L2140
.L2138:
	ldr	r0, .L2150+24
	mov	r1, r5
.L2149:
	bl	NAND_Print
	b	.L2140
.L2136:
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L2141
	mov	r1, r5
	mov	r0, fp
	b	.L2149
.L2141:
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L2140
	mov	r1, r5
	ldr	r0, .L2150+28
	b	.L2149
.L2151:
	.align	2
.L2150:
	.word	.LC336
	.word	.LC301
	.word	.LC337
	.word	.LC343
	.word	.LC338
	.word	.LC339
	.word	.LC340
	.word	.LC342
	.word	.LC341
	.size	current_block_ecc_error, .-current_block_ecc_error
	.section	.text.init_smart_info,"ax",%progbits
	.align	1
	.global	init_smart_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_smart_info, %function
init_smart_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #320
	mov	r4, r0
	sub	sp, sp, #32
	mov	r5, r1
	movs	r1, #0
	ldr	r0, [r0, #1968]
	bl	NAND_Memset
	ldr	r3, [r4, #1968]
	ldr	r6, .L2166
	ldr	r2, [r3, #140]
	str	r6, [r3, #112]
	adds	r2, r2, #1
	str	r2, [r3, #140]
	cmp	r5, #0
	beq	.L2153
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	subs	r3, r3, #1
	str	r2, [sp, #24]
	strh	r3, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r5, r0
	mov	r0, sp
	bl	is_phy_mapping_page
	cmp	r0, #1
	bne	.L2155
	cbz	r5, .L2156
	cmp	r5, #10
	bne	.L2155
.L2156:
	ldr	r3, [r4, #308]
	ldr	r1, [r4, #284]
	add	r1, r1, r3
	ldr	r3, [r1, #112]
	cmp	r3, r6
	bne	.L2155
	mov	r2, #320
	ldr	r0, [r4, #1968]
	bl	NAND_Memcpy
	ldr	r3, [r4, #1968]
	ldr	r2, [r3, #140]
	adds	r2, r2, #1
	str	r2, [r3, #140]
	ldr	r2, [r3, #164]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #164]
	ldr	r2, [r3, #172]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #172]
	ldr	r2, [r3, #176]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #176]
.L2155:
	mov	r0, r4
	bl	print_smart
.L2153:
	movs	r0, #0
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L2167:
	.align	2
.L2166:
	.word	-1431655935
	.size	init_smart_info, .-init_smart_info
	.section	.text.is_function_info_page,"ax",%progbits
	.align	1
	.global	is_function_info_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_function_info_page, %function
is_function_info_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	lsrs	r0, r0, #16
	ldr	r3, .L2169
	lsls	r0, r0, #16
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L2170:
	.align	2
.L2169:
	.word	-1441726464
	.size	is_function_info_page, .-is_function_info_page
	.section	.text.first_scan_all_blocks,"ax",%progbits
	.align	1
	.global	first_scan_all_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	first_scan_all_blocks, %function
first_scan_all_blocks:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #88
	ldr	r4, [r0, #40]
	mov	r5, r0
	movs	r2, #5
	add	r0, sp, #72
	ldr	r1, .L2225
	add	r6, sp, #88
	bl	memcpy
	movs	r3, #47
	ldr	r1, .L2225+4
	strh	r3, [r6, #-32]!	@ movhi
	mov	r0, r6
	bl	nand_fdt_get_string
	cmp	r0, #0
	beq	.L2172
	movs	r2, #3
	add	r1, sp, #72
	bl	NAND_Memcmp
	mov	r7, r0
	cbnz	r0, .L2172
	ldr	r0, .L2225+8
	bl	NAND_Print_DBG
	strh	r7, [r5, #18]	@ movhi
.L2173:
	ldr	r2, [r5, #4]
	mov	r8, #0
	ldrh	r3, [r4]
	ldrh	r2, [r2, #24]
	cmp	r2, r3
	bls	.L2218
	strh	r3, [sp, #74]	@ movhi
	add	r1, sp, #72
	strh	r8, [sp, #72]	@ movhi
	mov	r0, r5
	strh	r8, [sp, #76]	@ movhi
	strd	r8, r6, [sp, #80]
	ldr	r3, [r5, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L2175
	ldr	r3, [r5, #1980]
	add	r1, sp, #72
	mov	r0, r5
	blx	r3
	str	r4, [r5, #44]
	mov	r10, r0
	mov	r0, r6
	bl	get_block_used_count_from_oob
	mov	fp, r0
	mov	r0, r6
	bl	is_ftl_end_flag_page
	cmp	r0, #1
	bne	.L2176
	ldrh	r1, [r4]
	ldr	r0, .L2225+12
	bl	NAND_Print
.L2218:
	mov	r0, r8
	b	.L2171
.L2172:
	mov	r0, #-1
.L2171:
	add	sp, sp, #88
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2176:
	mov	r0, r6
	bl	is_panic_data_page
	cmp	r0, #1
	bne	.L2177
	ldrb	r2, [sp, #59]	@ zero_extendqisi2
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L2178
	mov	r1, r4
	mov	r0, r6
	bl	panic_recover_info
.L2178:
	adds	r4, r4, #36
	b	.L2173
.L2177:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2179
	ldrh	r3, [r5, #18]
	mov	r1, r4
	mov	r0, r5
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r8, [r4, #2]	@ movhi
	strh	r8, [r4, #6]	@ movhi
	strh	r8, [r4, #4]	@ movhi
	bl	put_phy_block_to_free_list
	b	.L2178
.L2179:
	mov	r0, r6
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	beq	.L2180
	mov	r0, r6
	bl	is_function_info_page
	cmp	r0, #1
	bne	.L2181
.L2180:
	cmp	r10, #0
	beq	.L2182
	cmp	r10, #10
	bne	.L2181
.L2182:
	ldrh	r3, [r5, #18]
	mov	r8, #1
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r8, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	movs	r3, #0
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	strh	r3, [r4, #4]	@ movhi
	str	fp, [r4, #8]
	mov	r1, r4
	strd	r3, r3, [r4, #28]
	mov	r0, r5
	bl	add_block_count_list
	cmp	r10, #10
	bne	.L2178
	ldr	r3, [r5, #1972]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2178
	mov	r2, r8
	mov	r0, r5
	bl	add_prio_gc
	ldr	r0, .L2225+16
	bl	NAND_Print_DBG
	b	.L2178
.L2181:
	mov	r0, r6
	bl	is_ftl_start_flag_page
	cmp	r0, #1
	bne	.L2183
	ldr	r0, .L2225+20
.L2217:
	bl	NAND_Print
	b	.L2178
.L2183:
	mov	r0, r6
	bl	is_fill_page
	cmp	r0, #1
	bne	.L2184
	ldrh	r3, [r5, #18]
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	movs	r3, #0
	strh	r3, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	ldr	r3, [r5, #4]
	mov	r1, r4
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	mov	r0, r5
	ldrh	r3, [r3, #20]
	strh	r3, [r4, #4]	@ movhi
	bl	put_phy_block_to_free_list
	ldrh	r1, [r4]
	ldr	r0, .L2225+24
	bl	NAND_Print_DBG
	b	.L2178
.L2184:
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2225+28
	bl	NAND_Print
	uxth	r2, r7
	adds	r3, r2, #1
	strh	r3, [r4, #6]	@ movhi
	cmp	r10, #0
	beq	.L2185
	cmp	r10, #10
	bne	.L2186
.L2185:
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L2187
	ldrh	r1, [r4]
	ldr	r0, .L2225+32
	bl	NAND_Print
	movs	r3, #255
	strh	r3, [r4, #2]	@ movhi
.L2216:
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
	b	.L2178
.L2187:
	adds	r2, r2, #2
.L2223:
	uxth	r2, r2
	mov	r1, r4
	mov	r0, r5
	bl	erase_block
.L2220:
	cmp	r0, #0
	bne	.L2178
	ldrh	r3, [r5, #18]
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	b	.L2178
.L2186:
	ldrh	r1, [r4]
	ldr	r0, .L2225+36
	bl	NAND_Print
	ldr	r3, [r5, #4]
	add	r1, sp, #72
	ldrh	r2, [r4]
	mov	r0, r5
	ldrh	r3, [r3, #20]
	strh	r2, [sp, #74]	@ movhi
	subs	r3, r3, #1
	strh	r3, [sp, #72]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #76]	@ movhi
	strd	r3, r6, [sp, #80]
	ldr	r3, [r5, #1980]
	blx	r3
	ldrh	r8, [r4]
	mov	fp, r0
	cbz	r0, .L2188
	cmp	r0, #10
	bne	.L2189
.L2188:
	mov	r0, r6
	bl	is_phy_mapping_page
	cmp	r0, #1
	mov	r10, r0
	bne	.L2190
	mov	r1, r8
	ldr	r0, .L2225+40
	bl	NAND_Print
	mov	r0, r6
	bl	get_block_used_count_from_oob
	ldrh	r3, [r5, #18]
	mov	r8, r0
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r10, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	movs	r3, #0
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	strh	r3, [r4, #4]	@ movhi
	str	r8, [r4, #8]
	mov	r1, r4
	strd	r3, r3, [r4, #28]
	mov	r0, r5
	bl	add_block_count_list
	cmp	fp, #10
	bne	.L2178
	ldr	r3, [r5, #1972]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2178
	mov	r2, r10
	mov	r0, r5
	bl	add_prio_gc
	ldr	r0, .L2225+44
	b	.L2217
.L2190:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	mov	r1, r8
	ite	eq
	ldreq	r0, .L2225+48
	ldrne	r0, .L2225+52
	bl	NAND_Print
	ldrh	r2, [r4, #6]
	adds	r2, r2, #1
	b	.L2223
.L2226:
	.align	2
.L2225:
	.word	.LANCHOR85+25
	.word	.LANCHOR102
	.word	.LC344
	.word	.LC345
	.word	.LC346
	.word	.LC347
	.word	.LC348
	.word	.LC349
	.word	.LC350
	.word	.LC351
	.word	.LC352
	.word	.LC353
	.word	.LC354
	.word	.LC355
.L2189:
	mov	r1, r8
	ldr	r0, .L2227
	bl	NAND_Print
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2227+4
	bl	NAND_Print
	mov	r1, r4
	mov	r0, r5
	bl	torture_block_and_mark
	b	.L2220
.L2175:
	ldrh	r1, [r4]
	ldr	r0, .L2227+8
	bl	NAND_Print
	movs	r3, #255
	strh	r8, [r4, #6]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	b	.L2216
.L2228:
	.align	2
.L2227:
	.word	.LC356
	.word	.LC357
	.word	.LC358
	.size	first_scan_all_blocks, .-first_scan_all_blocks
	.section	.text.is_power_down_info_page,"ax",%progbits
	.align	1
	.global	is_power_down_info_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_power_down_info_page, %function
is_power_down_info_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	ldr	r3, .L2230
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L2231:
	.align	2
.L2230:
	.word	-1441713357
	.size	is_power_down_info_page, .-is_power_down_info_page
	.section	.text.recover_phy_page_mapping,"ax",%progbits
	.align	1
	.global	recover_phy_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_phy_page_mapping, %function
recover_phy_page_mapping:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r2
	ldr	r10, .L2266+20
	movs	r4, #0
	sub	sp, sp, #32
	mov	r5, r0
	ldr	fp, .L2266+24
	mov	r7, r1
	ldr	r2, [r0, #308]
	movs	r1, #255
	mov	r0, r8
	bl	NAND_Memset
.L2233:
	ldr	r3, [r5, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	ble	.L2236
	ldrh	r2, [r3, #28]
	mov	r0, r5
	ldrh	r1, [r7]
	ldr	r3, [r5, #284]
	strh	r2, [sp, #20]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	str	r3, [sp, #24]
	strh	r4, [sp, #16]	@ movhi
	ldr	r3, [r5, #1980]
	str	sp, [sp, #28]
	blx	r3
	mov	r6, r0
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2234
	cbnz	r6, .L2235
.L2237:
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L2266
	bl	NAND_Print
.L2236:
	mov	r0, r4
	b	.L2232
.L2235:
	cmp	r6, #10
	beq	.L2237
.L2234:
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L2238
	cbz	r6, .L2239
	cmp	r6, #10
	bne	.L2240
.L2239:
	mov	r2, sp
	ldr	r1, [r5, #284]
	mov	r0, r5
	bl	nand_power_off_ecc_error
	cbz	r0, .L2241
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L2266+4
	bl	NAND_Print
.L2240:
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L2266+8
	bl	NAND_Print
	movw	r0, #65535
.L2232:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2241:
	mov	r0, sp
	bl	get_logic_page_from_oob
	str	r0, [r8, r4, lsl #2]
	mov	r3, r0
	ldr	r2, [r5, #28]
	cmp	r0, r2
	bcc	.L2242
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L2266+12
	bl	NAND_Print
	mov	r3, #-1
	str	r3, [r8, r4, lsl #2]
.L2242:
	cbz	r6, .L2247
	cmp	r6, #10
	bne	.L2240
.L2247:
	adds	r4, r4, #1
	b	.L2233
.L2238:
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L2243
	ldr	r0, .L2266+16
	mov	r1, r4
.L2265:
	bl	NAND_Print
	b	.L2242
.L2243:
	mov	r0, sp
	bl	is_power_down_info_page
	cmp	r0, #1
	bne	.L2244
	cbz	r6, .L2245
	cmp	r6, #10
	bne	.L2240
.L2245:
	mov	r0, sp
	bl	get_special_data_from_oob
	mov	r1, r4
	str	r0, [r8, r4, lsl #2]
	mov	r0, fp
	b	.L2265
.L2244:
	mov	r1, r4
	mov	r0, r10
	b	.L2265
.L2267:
	.align	2
.L2266:
	.word	.LC359
	.word	.LC360
	.word	.LC364
	.word	.LC313
	.word	.LC361
	.word	.LC363
	.word	.LC362
	.size	recover_phy_page_mapping, .-recover_phy_page_mapping
	.section	.text.get_logic_page_map,"ax",%progbits
	.align	1
	.global	get_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_logic_page_map, %function
get_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r2, r1
	ldr	r3, [r0, #28]
	cmp	r3, r1
	bhi	.L2269
	ldr	r1, .L2271
	ldr	r0, .L2271+4
	bl	NAND_Print
	movs	r0, #0
.L2268:
	pop	{r3, pc}
.L2269:
	lsrs	r1, r1, #18
	add	r0, r0, r1, lsl #2
	rsb	r1, r1, r1, lsl #14
	ldr	r0, [r0, #52]
	add	r2, r2, r1, lsl #18
	add	r0, r0, r2, lsl #2
	b	.L2268
.L2272:
	.align	2
.L2271:
	.word	.LANCHOR103
	.word	.LC365
	.size	get_logic_page_map, .-get_logic_page_map
	.section	.text.check_invalid_page_right,"ax",%progbits
	.align	1
	.global	check_invalid_page_right
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_invalid_page_right, %function
check_invalid_page_right:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	movs	r4, #0
	ldr	fp, .L2282+4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	mov	r6, r3
	mov	r5, r4
.L2274:
	cmp	r6, r5
	bhi	.L2279
	ldrh	r2, [r7, #4]
	cmp	r2, r4
	beq	.L2281
	mov	r3, r6
	mov	r1, r4
	ldr	r0, .L2282
	bl	NAND_Print
	movs	r0, #1
.L2273:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2279:
	ldr	r3, [r10, #8]
	ldr	r1, [r3, r5, lsl #2]
	adds	r3, r1, #1
	beq	.L2275
	mov	r0, r8
	bl	get_logic_page_map
	cbnz	r0, .L2276
	mov	r0, fp
	bl	NAND_Print_DBG
.L2275:
	adds	r4, r4, #1
	b	.L2277
.L2276:
	ldrh	r2, [r0, #2]
	ldrh	r3, [r7]
	cmp	r2, r3
	bne	.L2275
	ldrh	r3, [r0]
	ubfx	r3, r3, #0, #12
	cmp	r3, r5
	bne	.L2275
.L2277:
	adds	r5, r5, #1
	b	.L2274
.L2281:
	movs	r0, #0
	b	.L2273
.L2283:
	.align	2
.L2282:
	.word	.LC367
	.word	.LC366
	.size	check_invalid_page_right, .-check_invalid_page_right
	.section	.text.recover_logic_page_mapping,"ax",%progbits
	.align	1
	.global	recover_logic_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_logic_page_mapping, %function
recover_logic_page_mapping:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	mov	r4, r1
	mov	fp, r2
	mov	r10, r3
	movs	r5, #0
.L2285:
	cmp	r5, r10
	bne	.L2295
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2295:
	ldr	r3, [fp, r5, lsl #2]
	ldr	r2, [r6, #28]
	cmp	r2, r3
	bls	.L2286
	mov	r1, r3
	mov	r0, r6
	bl	get_logic_page_map
	mov	r7, r0
	cbnz	r0, .L2287
	ldr	r0, .L2299
	bl	NAND_Print
	ldrh	r3, [r4, #4]
	adds	r3, r3, #1
	strh	r3, [r4, #4]	@ movhi
.L2288:
	adds	r5, r5, #1
	b	.L2285
.L2287:
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L2290
	ldr	r2, [r6, #4]
	mov	r8, #36
	mul	r8, r8, r3
	ldr	r2, [r2, #32]
	add	r3, r2, r8
	cmp	r4, r3
	beq	.L2291
	mov	r1, r3
	mov	r0, r6
	str	r2, [sp, #4]
	str	r3, [sp]
	bl	phy_block_from_invalid_page_incr
	ldrd	r3, r2, [sp]
.L2292:
	ldr	r0, [r6, #4]
	ldrh	r1, [r3, #4]
	ldrh	r3, [r0, #20]
	cmp	r1, r3
	bls	.L2290
	ldrh	r1, [r2, r8]
	ldr	r0, .L2299+4
	bl	NAND_Print
.L2290:
	ldrh	r3, [r7]
	bfi	r3, r5, #0, #12
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	strh	r3, [r7, #2]	@ movhi
	b	.L2288
.L2291:
	ldrh	r1, [r4, #4]
	adds	r1, r1, #1
	strh	r1, [r4, #4]	@ movhi
	b	.L2292
.L2286:
	adds	r2, r3, #1
	beq	.L2294
	mov	r2, r5
	ldrh	r1, [r4]
	ldr	r0, .L2299+8
	bl	NAND_Print
.L2294:
	ldrh	r3, [r4, #4]
	ldr	r2, [r6, #4]
	adds	r3, r3, #1
	ldrh	r2, [r2, #20]
	uxth	r3, r3
	strh	r3, [r4, #4]	@ movhi
	cmp	r2, r3
	bcs	.L2288
	ldr	r0, .L2299+12
	bl	NAND_Print
	b	.L2288
.L2300:
	.align	2
.L2299:
	.word	.LC368
	.word	.LC369
	.word	.LC370
	.word	.LC371
	.size	recover_logic_page_mapping, .-recover_logic_page_mapping
	.section	.text.get_current_used_block,"ax",%progbits
	.align	1
	.global	get_current_used_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_current_used_block, %function
get_current_used_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r6, r1
	cmp	r1, #0
	beq	.L2302
	ldr	r3, [r0, #292]
	cmp	r3, r1
	beq	.L2303
	movw	r2, #1013
	ldr	r1, .L2336
	ldr	r0, .L2336+4
	bl	NAND_Print
.L2303:
	ldr	r3, [r4, #292]
	ldrh	r2, [r4, #320]
	ldr	r0, .L2336+8
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r3, [r4, #320]
	mov	r0, r4
	ldr	r2, [r4, #304]
	ldr	r1, [r4, #292]
	bl	recover_logic_page_mapping
	ldr	r3, [r4, #292]
	ldrh	r1, [r4, #320]
	ldrh	r2, [r3, #4]
	cmp	r1, r2
	bcs	.L2304
	ldr	r0, .L2336+12
	bl	NAND_Print
.L2304:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L2334
	ldr	r6, .L2336+16
	ldr	r8, .L2336+44
.L2305:
	ldr	r7, [r4, #324]
	cbz	r7, .L2307
.L2316:
	ldr	r2, [r4, #336]
	mov	r0, r4
	ldr	r1, [r4, #324]
	bl	recover_phy_page_mapping
	uxth	r3, r0
	movw	r2, #65535
	cmp	r3, r2
	strh	r3, [r4, #352]	@ movhi
	bne	.L2332
	ldr	r0, .L2336+20
.L2333:
	bl	NAND_Print
	ldr	r1, [r4, #324]
	mov	r0, r4
	ldrh	r2, [r1, #6]
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	movs	r3, #0
	str	r3, [r4, #324]
	b	.L2305
.L2307:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r1, r0
	str	r0, [r4, #324]
	cbnz	r0, .L2310
.L2335:
	movs	r0, #1
	b	.L2301
.L2310:
	ldr	r3, [r4, #292]
	strh	r7, [r4, #352]	@ movhi
	ldr	r2, [r3, #8]
	adds	r2, r2, #1
	str	r2, [r0, #8]
	mov	r0, r4
	bl	new_block_init_for_write
	cbz	r0, .L2311
	mov	r0, r8
	bl	NAND_Print
	str	r7, [r4, #324]
	b	.L2305
.L2311:
	ldrh	r10, [r4, #320]
	mov	r5, r0
.L2313:
	cmp	r5, r10
	ldr	r2, [r4, #324]
	bcs	.L2316
	uxth	r3, r5
	ldr	r7, [r4, #1988]
	ldr	r1, [r4, #292]
	mov	r0, r4
	str	r3, [sp]
	ldr	r3, [r4, #284]
	blx	r7
	cbz	r0, .L2314
	mov	r0, r6
	bl	NAND_Print
.L2314:
	adds	r5, r5, #1
	b	.L2313
.L2332:
	ldr	r3, [r4, #292]
	ldr	r1, [r4, #324]
	ldr	r2, [r3, #8]
	uxth	r3, r0
	mov	r0, r4
	adds	r2, r2, #1
	str	r2, [r1, #8]
	ldr	r2, [r4, #336]
	bl	recover_logic_page_mapping
	ldrh	r1, [r4, #352]
	ldrh	r2, [r4, #320]
	cmp	r1, r2
	bls	.L2317
	ldr	r0, .L2336+24
	bl	NAND_Print
	ldrh	r2, [r4, #320]
	ldrh	r1, [r4, #352]
	ldr	r0, .L2336+28
	bl	NAND_Print
.L2334:
	movs	r0, #0
.L2301:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2317:
	bcs	.L2334
	ldr	r0, .L2336+32
	b	.L2333
.L2302:
	ldr	r0, .L2336+36
	bl	NAND_Print_DBG
	ldr	r3, [r4, #172]
	cbz	r3, .L2319
	mov	r0, r4
	bl	out_phy_block_from_free_list
	str	r0, [r4, #292]
	cmp	r0, #0
	beq	.L2335
	adds	r5, r5, #1
	strh	r6, [r4, #320]	@ movhi
	str	r5, [r0, #8]
	ldrb	r0, [r4, #17]	@ zero_extendqisi2
	ands	r0, r0, #1
	beq	.L2321
	mov	r0, r4
	bl	out_phy_block_from_free_list
	str	r0, [r4, #324]
	cmp	r0, #0
	beq	.L2335
	ldr	r3, [r4, #292]
	strh	r6, [r4, #352]	@ movhi
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	str	r3, [r0, #8]
	b	.L2334
.L2321:
	str	r0, [r4, #324]
	b	.L2301
.L2319:
	ldr	r0, .L2336+40
	bl	NAND_Print
	mov	r0, r4
	bl	print_free_list
	mov	r0, r4
	bl	print_block_invalid_list
	b	.L2335
.L2337:
	.align	2
.L2336:
	.word	.LANCHOR104
	.word	.LC372
	.word	.LC373
	.word	.LC374
	.word	.LC376
	.word	.LC377
	.word	.LC378
	.word	.LC379
	.word	.LC336
	.word	.LC380
	.word	.LC381
	.word	.LC375
	.size	get_current_used_block, .-get_current_used_block
	.section	.text.second_scan_all_blocks,"ax",%progbits
	.align	1
	.global	second_scan_all_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	second_scan_all_blocks, %function
second_scan_all_blocks:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2421
	ldr	r2, .L2421+4
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r3, [r3]
	sub	sp, sp, #104
	ldr	r3, [r3, #752]
	cmp	r3, r2
	beq	.L2339
	subs	r3, r3, #1
	cmp	r3, #1
	bhi	.L2374
.L2339:
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #24]
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	ldr	r5, [r4, #252]
	mov	r3, #-1
	str	r0, [r4, #28]
	str	r3, [sp, #64]
	mov	r10, r5
.L2341:
	cmp	r10, #0
	bne	.L2342
	cmp	r5, #0
	beq	.L2375
	ldr	r3, [r4, #1968]
	mov	r7, r10
	ldr	r2, [r5, #8]
	mov	r6, r10
	mov	r8, r10
	str	r10, [sp, #68]
	str	r2, [r3, #160]
.L2358:
	ldr	r2, [r4, #308]
	lsrs	r3, r2, #9
	ubfx	r2, r2, #0, #9
	cbz	r2, .L2345
	adds	r3, r3, #1
.L2345:
	ldr	r2, [r4, #4]
	ldrh	r0, [r5]
	ldr	r1, [r4, #284]
	ldrh	r2, [r2, #20]
	strh	r3, [sp, #92]	@ movhi
	add	r3, sp, #72
	strh	r0, [sp, #90]	@ movhi
	mov	r0, r4
	subs	r2, r2, #1
	str	r1, [sp, #96]
	str	r3, [sp, #100]
	add	r1, sp, #88
	ldr	r3, [r4, #1980]
	strh	r2, [sp, #88]	@ movhi
	blx	r3
	ldr	r3, [r4, #1972]
	mov	fp, r0
	ldrh	r3, [r3, #28]
	cbz	r3, .L2346
	add	r2, sp, #72
	ldr	r1, [r4, #284]
	mov	r0, r4
	bl	crc_wrong
	cmp	r0, #0
	it	ne
	mvnne	fp, #1
.L2346:
	ldr	r3, [r5, #8]
	ldr	r1, [r4, #376]
	ldr	r2, [r4, #1968]
	str	r3, [sp, #60]
	ldrh	r3, [r5, #6]
	cmp	r3, r1
	bls	.L2347
	movw	r1, #49999
	cmp	r3, r1
	itt	ls
	strls	r3, [r4, #376]
	strls	r3, [r2, #148]
.L2347:
	ldr	r1, [r2, #152]
	add	r0, sp, #72
	cmp	r3, r1
	it	cc
	strcc	r3, [r2, #152]
	bl	is_phy_mapping_page
	cmp	r0, #1
	bne	.L2349
	cmp	fp, #0
	beq	.L2350
	cmp	fp, #10
	bne	.L2349
.L2350:
	ldrh	r3, [r5, #4]
	mov	r10, r5
	ldr	r2, [r4, #284]
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
.L2415:
	mov	r8, r5
	b	.L2351
.L2342:
	ldr	r3, [r10, #8]
	ldr	r10, [r10, #28]
	str	r3, [sp, #64]
	ldr	r2, [sp, #64]
	ldr	r3, [r4, #1968]
	str	r2, [r3, #156]
	b	.L2341
.L2349:
	add	r0, sp, #72
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2352
	cbz	r6, .L2377
	ldrh	r1, [r6]
	cbnz	r7, .L2353
	ldrh	r2, [r5]
	ldr	r0, .L2421+8
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r0, r3, #31
	bmi	.L2379
	ldr	r3, [r6, #8]
	ldr	r0, [r5, #8]
	cmp	r3, r0
	beq	.L2379
	ldrh	r2, [r5]
	ldrh	r1, [r6]
	str	r0, [sp]
	ldr	r0, .L2421+12
	bl	NAND_Print
	ldr	r2, [r4, #304]
	mov	r1, r6
	mov	r0, r4
	bl	recover_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r6
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r6
	mov	r0, r4
	bl	add_prio_gc
.L2377:
	mov	r6, r5
	b	.L2351
.L2353:
	ldr	r2, [r6, #8]
	ldr	r0, .L2421+16
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L2421+20
	bl	NAND_Print
	ldr	r2, [sp, #60]
	ldrh	r1, [r5]
	ldr	r0, .L2421+24
	bl	NAND_Print
	mov	r1, r6
	mov	r6, r7
	movs	r2, #3
	mov	r0, r4
	bl	add_prio_gc
.L2379:
	mov	r7, r5
	b	.L2351
.L2352:
	ldrb	r0, [sp, #87]	@ zero_extendqisi2
	ldrb	r2, [sp, #73]	@ zero_extendqisi2
	ldrb	r1, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #86]	@ zero_extendqisi2
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #85]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #84]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #83]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #80]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2421+28
	bl	NAND_Print
	ldrh	r2, [r5]
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L2354
	cmp	fp, #10
	bne	.L2355
.L2354:
	ldr	r0, .L2421+32
.L2414:
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r3, #31
	bpl	.L2357
	ldrd	r2, r3, [sp, #60]
	cmp	r3, r2
	bne	.L2357
	ldrh	r2, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	str	r5, [sp, #68]
.L2351:
	ldr	r5, [r5, #28]
	cmp	r5, #0
	bne	.L2358
.L2343:
	mov	r1, r10
	mov	r0, r4
	bl	init_smart_info
	ldr	r5, [r4, #252]
.L2359:
	cmp	r5, #0
	bne	.L2361
	mov	r0, r4
	bl	adjust_invaild_list
	cmp	r8, #0
	beq	.L2362
	cbz	r6, .L2362
	ldr	r1, [r8, #8]
	ldr	r2, [r6, #8]
	adds	r3, r1, #1
	cmp	r3, r2
	beq	.L2362
	ldr	r0, .L2421+36
	bl	NAND_Print
.L2362:
	movs	r3, #0
	str	r3, [r4, #292]
	cmp	r6, #0
	bne	.L2363
	cmp	r7, #0
	bne	.L2364
	ldr	r0, .L2421+40
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L2365
	cmp	r8, #0
	beq	.L2366
.L2419:
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
	b	.L2366
.L2355:
	ldr	r0, .L2421+44
	b	.L2414
.L2357:
	movs	r3, #170
	ldr	r2, [r4, #304]
	strh	r3, [r5, #2]	@ movhi
	mov	r1, r5
	ldrh	r3, [r5, #4]
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r5
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r5
	mov	r0, r4
	bl	add_prio_gc
	b	.L2415
.L2422:
	.align	2
.L2421:
	.word	g_nreg_base
	.word	196609
	.word	.LC382
	.word	.LC383
	.word	.LC384
	.word	.LC385
	.word	.LC386
	.word	.LC387
	.word	.LC388
	.word	.LC390
	.word	.LC391
	.word	.LC389
.L2375:
	mov	r3, #-1
	mov	r7, r10
	mov	r6, r10
	mov	r8, r10
	str	r10, [sp, #68]
	str	r3, [sp, #60]
	b	.L2343
.L2361:
	cmp	r6, r5
	beq	.L2360
	cmp	r7, r5
	beq	.L2360
	ldr	r3, [sp, #68]
	cmp	r3, r5
	beq	.L2360
	mov	r1, r5
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
.L2360:
	ldr	r5, [r5, #28]
	b	.L2359
.L2365:
	cmp	r8, #0
	beq	.L2366
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	beq	.L2419
.L2366:
	ldr	r2, [sp, #60]
	mov	r1, r7
	mov	r0, r4
	bl	get_current_used_block
	mov	r5, r0
	cmp	r0, #0
	beq	.L2373
	ldr	r0, .L2423
	bl	NAND_Print
	b	.L2420
.L2363:
	cbnz	r7, .L2364
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L2367
	ldr	r2, [r6, #8]
	ldrh	r1, [r6]
	ldr	r0, .L2423+4
	bl	NAND_Print_DBG
	cmp	r8, #0
	beq	.L2368
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	bne	.L2368
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
.L2368:
	movs	r2, #0
.L2417:
	mov	r1, r6
	mov	r0, r4
	bl	cross_talk_rebuild_current_block
	mov	r7, r0
	cmp	r0, #0
	bne	.L2366
.L2420:
	movs	r5, #1
.L2338:
	mov	r0, r5
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2367:
	cmp	r8, #0
	beq	.L2369
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	bne	.L2369
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
.L2369:
	movs	r2, #0
.L2418:
	mov	r1, r6
	mov	r0, r4
	bl	no_cross_talk_rebuild_current_block
	mov	r7, r0
	b	.L2366
.L2364:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	ands	r5, r3, #1
	beq	.L2370
	mov	r2, r7
	b	.L2417
.L2370:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L2372
	ldrh	r1, [r6]
	ldr	r0, .L2423+8
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L2423+12
	bl	NAND_Print_DBG
	mov	r2, r7
	b	.L2418
.L2372:
	ldr	r0, .L2423+16
	bl	NAND_Print
	ldr	r2, [r8, #8]
	ldrh	r1, [r8]
	ldr	r0, .L2423+20
	bl	NAND_Print
	ldr	r2, [r6, #8]
	ldrh	r1, [r6]
	ldr	r0, .L2423+8
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L2423+12
	bl	NAND_Print_DBG
	ldr	r2, [r4, #304]
	mov	r1, r6
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r6
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r6
	mov	r0, r4
	bl	add_prio_gc
	mov	r1, r7
	ldr	r2, [r4, #304]
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r7
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	mov	r1, r7
	movs	r2, #3
	mov	r0, r4
	mov	r7, r5
	bl	add_prio_gc
	b	.L2366
.L2373:
	mov	r0, r4
	bl	adjust_invaild_list
	ldr	r2, [r4, #1968]
	ldr	r3, [r4, #292]
	ldrh	r1, [r4, #22]
	ldr	r0, .L2423+24
	str	r3, [r4, #48]
	ldr	r3, [r2, #160]
	str	r3, [sp, #4]
	ldr	r3, [r2, #156]
	str	r3, [sp]
	ldrd	r2, r3, [r2, #148]
	bl	NAND_Print_DBG
	b	.L2338
.L2374:
	mov	r5, #-1
	b	.L2338
.L2424:
	.align	2
.L2423:
	.word	.LC397
	.word	.LC392
	.word	.LC393
	.word	.LC394
	.word	.LC395
	.word	.LC396
	.word	.LC398
	.size	second_scan_all_blocks, .-second_scan_all_blocks
	.section	.text.print_logic_page_map,"ax",%progbits
	.align	1
	.global	print_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_logic_page_map, %function
print_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r7, .L2430
	movs	r4, #0
	ldr	r8, .L2430+4
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	ldr	r0, [r0, #24]
	bl	__aeabi_uidiv
	mov	r6, r0
.L2426:
	cmp	r4, r6
	bne	.L2429
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2429:
	mov	r1, r4
	mov	r0, r5
	bl	get_logic_page_map
	cbnz	r0, .L2427
	mov	r0, r8
	bl	NAND_Print
.L2428:
	adds	r4, r4, #1
	b	.L2426
.L2427:
	ldrh	r2, [r0, #2]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L2428
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrh	r3, [r0]
	mov	r0, r7
	ubfx	r1, r1, #4, #1
	str	r1, [sp]
	ubfx	r3, r3, #0, #12
	mov	r1, r4
	bl	NAND_Print_DBG
	b	.L2428
.L2431:
	.align	2
.L2430:
	.word	.LC400
	.word	.LC399
	.size	print_logic_page_map, .-print_logic_page_map
	.section	.text.get_cold_logic_page,"ax",%progbits
	.align	1
	.global	get_cold_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_cold_logic_page, %function
get_cold_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r8, .L2438
	mov	r6, r2
	mov	r4, r1
	movw	r7, #65535
.L2433:
	cmp	r4, r6
	bcc	.L2437
	mov	r4, #-1
	b	.L2432
.L2437:
	mov	r1, r4
	mov	r0, r5
	bl	get_logic_page_map
	cbnz	r0, .L2434
	mov	r0, r8
	bl	NAND_Print
.L2435:
	adds	r4, r4, #1
	b	.L2433
.L2434:
	ldrh	r3, [r0, #2]
	cmp	r3, r7
	beq	.L2435
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldr	r2, [r5, #364]
	ubfx	r1, r3, #4, #1
	cmp	r1, r2
	beq	.L2435
	bfi	r3, r2, #4, #1
	strb	r3, [r0, #1]
.L2432:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L2439:
	.align	2
.L2438:
	.word	.LC399
	.size	get_cold_logic_page, .-get_cold_logic_page
	.section	.text.read_reclaim,"ax",%progbits
	.align	1
	.global	read_reclaim
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	read_reclaim, %function
read_reclaim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r7, r2
	mov	r6, r0
	bl	get_nftl_read_claim_page_no
	ldr	r5, [r1, #12]
	mov	r1, r0
	ldr	r2, [r5, #28]
	mov	r0, r5
	bl	get_cold_logic_page
	adds	r3, r0, #1
	mov	r5, r0
	bne	.L2441
	mov	r1, r4
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, lr}
	b	set_nftl_read_claim_complete
.L2441:
	ldr	r0, [r4, #12]
	mov	r3, r7
	mov	r1, r5
	ldr	r2, [r0, #4]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	bl	nand_cache_read
	ldr	r3, [r4, #12]
	mov	r2, r5
	mov	r0, r6
	ldrb	r1, [r3, #16]	@ zero_extendqisi2
	bl	set_nftl_read_claim_flag
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
	.size	read_reclaim, .-read_reclaim
	.section	.text.do_write_error,"ax",%progbits
	.align	1
	.global	do_write_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_write_error, %function
do_write_error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r10, .L2464+4
	sub	sp, sp, #24
	mov	r6, r1
	ldr	fp, .L2464+8
.L2443:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r5, r0
	cbnz	r0, .L2444
.L2448:
	ldr	r0, .L2464
	bl	NAND_Print
	movs	r0, #1
.L2442:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2444:
	ldr	r3, [r4, #4]
	movs	r7, #0
	ldrh	r2, [r0]
	add	r1, sp, #8
	strh	r7, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #10]	@ movhi
	strd	r7, r7, [sp, #16]
	strh	r3, [sp, #12]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	ldrh	r3, [r5, #6]
	strh	r7, [r5, #4]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	cbz	r0, .L2446
	ldr	r3, [r4, #1996]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldrh	r1, [r5]
	mov	r0, fp
	bl	NAND_Print
	ldrh	r2, [r4, #380]
	ldrh	r3, [r4, #22]
	cmp	r3, r2, lsr #2
	bhi	.L2443
	b	.L2448
.L2446:
	ldr	r3, [r6]
	mov	r8, r0
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	str	r3, [r5, #8]
.L2449:
	ldrh	r3, [r6, #28]
	ldr	r1, [r6]
	cmp	r3, r8
	bhi	.L2452
.L2450:
	ldrh	r3, [r1, #4]
	movs	r7, #0
	ldrh	r2, [r1]
	mov	r0, r4
	strh	r7, [sp, #8]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	ldr	r3, [r4, #4]
	strh	r2, [sp, #10]	@ movhi
	ldrh	r2, [r1, #6]
	ldrh	r3, [r3, #28]
	strd	r7, r7, [sp, #16]
	adds	r2, r2, #1
	uxth	r2, r2
	strh	r3, [sp, #12]	@ movhi
	bl	erase_block
	ldr	r3, [r6]
	ldrh	r3, [r3, #2]
	strh	r3, [r5, #2]	@ movhi
	str	r5, [r6]
.L2453:
	ldrh	r3, [r6, #28]
	cmp	r3, r7
	bhi	.L2457
	movs	r0, #0
	b	.L2442
.L2452:
	ldr	r3, [r6, #12]
	ldr	r3, [r3, r8, lsl #2]
	adds	r3, r3, #1
	beq	.L2450
	uxth	r3, r8
	ldr	r7, [r4, #1988]
	mov	r2, r5
	str	r3, [sp]
	mov	r0, r4
	ldr	r3, [r4, #284]
	blx	r7
	cbz	r0, .L2451
	ldrh	r1, [r5]
	mov	r0, r10
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	ldrh	r2, [r3, #28]
	movs	r3, #0
	strh	r3, [sp, #8]	@ movhi
	strh	r1, [sp, #10]	@ movhi
	add	r1, sp, #8
	strd	r3, r3, [sp, #16]
	strh	r2, [sp, #12]	@ movhi
	ldr	r3, [r4, #1996]
	blx	r3
	b	.L2443
.L2451:
	add	r8, r8, #1
	b	.L2449
.L2457:
	ldr	r3, [r6, #12]
	ldr	r1, [r3, r7, lsl #2]
	adds	r3, r1, #1
	beq	.L2455
	mov	r0, r4
	bl	get_logic_page_map
	cbz	r0, .L2455
	ldr	r3, [r6]
	ldrh	r3, [r3]
	strh	r3, [r0, #2]	@ movhi
	ldrh	r3, [r0]
	bfi	r3, r7, #0, #12
	strh	r3, [r0]	@ movhi
.L2455:
	adds	r7, r7, #1
	b	.L2453
.L2465:
	.align	2
.L2464:
	.word	.LC401
	.word	.LC403
	.word	.LC402
	.size	do_write_error, .-do_write_error
	.section	.text.write_phy_data_to_current_block,"ax",%progbits
	.align	1
	.global	write_phy_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_phy_data_to_current_block, %function
write_phy_data_to_current_block:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #48
	add	r7, sp, #16
	mov	r4, r0
	mov	fp, r2
	mov	r0, r7
	movs	r2, #16
	mov	r5, r1
	movs	r1, #165
	str	r3, [sp, #12]
	ldr	r6, [sp, #80]
	mov	r8, #3
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	mov	r1, fp
	movw	r0, #65535
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	ldr	r3, .L2483
	cmp	r6, r3
	itet	ne
	lslne	r2, r2, #9
	ldrheq	r2, [r4, #308]
	uxthne	r2, r2
	bl	nand_crc16
	lsrs	r3, r0, #8
	strb	r0, [sp, #29]
	strb	r3, [sp, #28]
.L2469:
	ldr	r0, [r5]
	ldr	lr, [r4, #4]
	ldr	r3, .L2483
	ldrh	r1, [r0]
	ldrh	r2, [r5, #28]
	ldrh	ip, [lr, #28]
	cmp	r6, r3
	strh	r1, [sp, #34]	@ movhi
	strh	r2, [sp, #32]	@ movhi
	strh	ip, [sp, #36]	@ movhi
	strd	fp, r7, [sp, #40]
	bne	.L2470
	ldrh	r3, [r0, #6]
	mov	r2, r6
	str	r3, [sp]
	ldr	r3, [r0, #8]
.L2482:
	mov	r1, r7
	mov	r0, r4
	bl	set_oob_special_page
	b	.L2471
.L2470:
	cmp	r6, #192
	bne	.L2472
	ldrh	r3, [lr, #20]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L2473
	ldr	r0, .L2483+4
	bl	NAND_Print_DBG
.L2473:
	ldr	r3, [r5]
	mov	r1, r7
	mov	r0, r4
	ldrh	r2, [r3, #6]
	str	r2, [sp]
	ldr	r2, [sp, #12]
	ldr	r3, [r3, #8]
	bl	set_oob_logic_page
.L2471:
	ldr	r3, [r5]
	mov	r10, #1
	add	r1, sp, #32
	mov	r0, r4
	strh	r10, [r3, #2]	@ movhi
	ldr	r3, [r4, #1984]
	blx	r3
	cbz	r0, .L2466
	subs	r8, r8, #1
	beq	.L2476
	ldrh	r1, [sp, #34]
	ldr	r0, .L2483+8
	bl	NAND_Print_DBG
	mov	r1, r5
	mov	r0, r4
	bl	do_write_error
	cmp	r0, #0
	beq	.L2469
	ldr	r0, .L2483+12
	bl	NAND_Print
	mov	r0, r10
.L2466:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2472:
	ldr	r3, .L2483+16
	cmp	r6, r3
	bne	.L2471
	ldrh	r3, [lr, #20]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L2474
	ldr	r0, .L2483+20
	bl	NAND_Print_DBG
.L2474:
	ldr	r3, [r5]
	ldrh	r2, [r3, #6]
	str	r2, [sp]
	ldr	r2, .L2483+16
	ldr	r3, [r3, #8]
	b	.L2482
.L2476:
	mov	r0, r8
	b	.L2466
.L2484:
	.align	2
.L2483:
	.word	-1431633921
	.word	.LC404
	.word	.LC406
	.word	.LC407
	.word	-1441713357
	.word	.LC405
	.size	write_phy_data_to_current_block, .-write_phy_data_to_current_block
	.section	.text.write_phy_page_map_to_current_block,"ax",%progbits
	.align	1
	.global	write_phy_page_map_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_phy_page_map_to_current_block, %function
write_phy_page_map_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #324
	push	{r0, r1, r4, r5, r6, lr}
	cmp	r1, r3
	mov	r4, r0
	mov	r5, r1
	bne	.L2486
	ldr	r1, [r0, #312]
	mov	r2, #320
	ldr	r0, [r0, #344]
	bl	NAND_Memcpy
.L2486:
	ldr	r3, .L2489
	mov	r1, r5
	ldr	r2, [r5, #4]
	mov	r0, r4
	str	r3, [sp]
	movs	r3, #0
	bl	write_phy_data_to_current_block
	mov	r6, r0
	cbz	r0, .L2487
	ldr	r0, .L2489+4
	bl	NAND_Print
.L2485:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L2487:
	mov	r1, r5
	ldrh	r3, [r5, #28]
	ldr	r2, [r1], #4
	adds	r3, r3, #1
	ldrh	r0, [r2, #4]
	uxth	r3, r3
	strh	r3, [r5, #28]	@ movhi
	adds	r0, r0, #1
	strh	r0, [r2, #4]	@ movhi
	mov	r0, r4
	bl	check_invalid_page_right
	ldr	r3, [r4, #4]
	ldrh	r2, [r5, #28]
	ldrh	r3, [r3, #20]
	cmp	r2, r3
	bne	.L2485
	ldr	r1, [r5]
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
	mov	r0, r4
	bl	adjust_invaild_list
	b	.L2485
.L2490:
	.align	2
.L2489:
	.word	-1431633921
	.word	.LC408
	.size	write_phy_page_map_to_current_block, .-write_phy_page_map_to_current_block
	.section	.text.do_after_write,"ax",%progbits
	.align	1
	.global	do_after_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_after_write, %function
do_after_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r6, r0, #292
	mov	r1, r6
	mov	r4, r0
	bl	current_block_at_last_page
	cmp	r0, #1
	mov	r5, r0
	bne	.L2499
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L2493
	ldr	r0, .L2510
.L2509:
	bl	NAND_Print
.L2491:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L2493:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L2495
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L2495
	ldr	r0, .L2510
	bl	NAND_Print
.L2495:
	mov	r1, r6
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L2497
	ldr	r0, .L2510+4
	b	.L2509
.L2497:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L2498
	add	r1, r4, #324
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L2498
	ldr	r0, .L2510+8
	b	.L2509
.L2498:
	ldr	r3, [r4, #368]
	adds	r3, r3, #1
	str	r3, [r4, #368]
.L2499:
	movs	r5, #0
	b	.L2491
.L2511:
	.align	2
.L2510:
	.word	.LC409
	.word	.LC410
	.word	.LC411
	.size	do_after_write, .-do_after_write
	.section	.text.fill_no_use_data_to_page,"ax",%progbits
	.align	1
	.global	fill_no_use_data_to_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_data_to_page, %function
fill_no_use_data_to_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	add	r5, r0, #292
	mov	r1, r5
	mov	r4, r0
	bl	current_block_at_last_page
	cbz	r0, .L2513
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L2514
	ldr	r0, .L2542
.L2540:
	bl	NAND_Print
	movs	r0, #1
	b	.L2512
.L2514:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r3, #31
	bpl	.L2517
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L2517
	ldr	r0, .L2542
	bl	NAND_Print
.L2517:
	mov	r1, r5
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L2519
	ldr	r0, .L2542+4
	b	.L2540
.L2519:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bmi	.L2520
.L2521:
	movs	r0, #0
.L2512:
	pop	{r3, r4, r5, pc}
.L2520:
	add	r1, r4, #324
	mov	r0, r4
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L2521
	ldr	r0, .L2542+8
	b	.L2540
.L2513:
	ldrh	r3, [r4, #320]
	cmp	r3, #0
	beq	.L2521
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L2522
	ldr	r0, .L2542
	bl	NAND_Print
.L2522:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L2523
.L2541:
	movs	r0, #8
	b	.L2512
.L2523:
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cmp	r0, #0
	beq	.L2541
	ldr	r0, .L2542
	bl	NAND_Print
	b	.L2541
.L2543:
	.align	2
.L2542:
	.word	.LC409
	.word	.LC410
	.word	.LC411
	.size	fill_no_use_data_to_page, .-fill_no_use_data_to_page
	.section	.text.fill_no_use_data_to_current_block,"ax",%progbits
	.align	1
	.global	fill_no_use_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_data_to_current_block, %function
fill_no_use_data_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r4, #0
.L2545:
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r4
	bgt	.L2547
	movs	r0, #1
.L2544:
	pop	{r3, r4, r5, pc}
.L2547:
	mov	r0, r5
	bl	fill_no_use_data_to_page
	cmp	r0, #0
	beq	.L2544
	adds	r4, r4, #1
	b	.L2545
	.size	fill_no_use_data_to_current_block, .-fill_no_use_data_to_current_block
	.section	.text.fill_no_use_page_to_current_block,"ax",%progbits
	.align	1
	.global	fill_no_use_page_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_page_to_current_block, %function
fill_no_use_page_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	movs	r4, #0
.L2552:
	cmp	r4, r5
	blt	.L2554
	movs	r0, #1
.L2551:
	pop	{r4, r5, r6, pc}
.L2554:
	mov	r0, r6
	bl	fill_no_use_data_to_page
	cmp	r0, #0
	beq	.L2551
	adds	r4, r4, #1
	b	.L2552
	.size	fill_no_use_page_to_current_block, .-fill_no_use_page_to_current_block
	.section	.text.nftl_write_end,"ax",%progbits
	.align	1
	.global	nftl_write_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_write_end, %function
nftl_write_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2561
	push	{r4, lr}
	ldr	r4, [r3, #8]
.L2559:
	cbnz	r4, .L2560
	mov	r0, r4
	pop	{r4, pc}
.L2560:
	ldr	r0, [r4, #12]
	movs	r1, #8
	bl	fill_no_use_page_to_current_block
	ldr	r4, [r4, #8]
	b	.L2559
.L2562:
	.align	2
.L2561:
	.word	.LANCHOR0
	.size	nftl_write_end, .-nftl_write_end
	.section	.text.nand_before_shutdown,"ax",%progbits
	.align	1
	.global	nand_before_shutdown
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_before_shutdown, %function
nand_before_shutdown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #8
	b	fill_no_use_page_to_current_block
	.size	nand_before_shutdown, .-nand_before_shutdown
	.section	.text.write_logic_data_to_current_block,"ax",%progbits
	.align	1
	.global	write_logic_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_logic_data_to_current_block, %function
write_logic_data_to_current_block:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #192
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r0
	mov	r4, r1
	mov	fp, r3
	bne	.L2565
	mov	r1, r3
	bl	get_logic_page_map
	mov	r10, r0
	cbnz	r0, .L2566
.L2572:
	movs	r7, #1
	ldr	r0, .L2588
	bl	NAND_Print_DBG
.L2564:
	mov	r0, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2566:
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L2580
	ldr	r2, [r8, #4]
	movs	r5, #36
	ldr	r1, [r2, #32]
	mla	r5, r5, r3, r1
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L2579
	ldrh	r3, [r5, #4]
	ldrh	r2, [r2, #20]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r2, r3
	strh	r3, [r5, #4]	@ movhi
	bcs	.L2580
	ldrh	r1, [r4, #28]
	ldr	r0, .L2588+4
	bl	NAND_Print_DBG
.L2580:
	movs	r6, #0
	b	.L2568
.L2579:
	movs	r6, #1
.L2568:
	movs	r3, #192
	ldr	r2, [sp, #40]
	str	r3, [sp]
	mov	r1, r4
	mov	r3, fp
	mov	r0, r8
	bl	write_phy_data_to_current_block
	mov	r7, r0
	cbz	r0, .L2569
	ldr	r0, .L2588+8
.L2587:
	bl	NAND_Print
	b	.L2564
.L2569:
	ldr	r3, [r4]
	ldrh	r1, [r4, #28]
	ldr	r2, [r8, #364]
	ldrh	r3, [r3]
	ubfx	r0, r1, #0, #12
	adds	r1, r1, #1
	clz	r2, r2
	strh	r3, [r10, #2]	@ movhi
	lsrs	r2, r2, #5
	ldrh	r3, [r10]
	bfi	r3, r0, #0, #12
	strh	r3, [r10]	@ movhi
	ubfx	r3, r3, #8, #8
	bfi	r3, r2, #4, #1
	strb	r3, [r10, #1]
	ldr	r3, [r4, #12]
	str	fp, [r3, r0, lsl #2]
	strh	r1, [r4, #28]	@ movhi
.L2570:
	cmp	r6, #0
	beq	.L2575
	mov	r1, r5
	mov	r0, r8
	bl	phy_block_from_invalid_page_incr
	b	.L2575
.L2565:
	ldr	r6, .L2588+12
	cmp	r2, r6
	bne	.L2571
	mov	r1, r3
	bl	get_logic_page_map
	mov	r7, r0
	cmp	r0, #0
	beq	.L2572
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L2583
	ldr	r2, [r8, #4]
	movs	r5, #36
	ldr	r1, [r2, #32]
	mla	r5, r5, r3, r1
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L2582
	ldrh	r3, [r0]
	mov	r0, #-1
	ldr	r1, [r4, #12]
	ldrh	r2, [r2, #20]
	ubfx	r3, r3, #0, #12
	str	r0, [r1, r3, lsl #2]
	ldrh	r3, [r5, #4]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r2, r3
	strh	r3, [r5, #4]	@ movhi
	bcs	.L2583
	ldrh	r1, [r4, #28]
	ldr	r0, .L2588+16
	bl	NAND_Print
.L2583:
	movs	r6, #0
	b	.L2573
.L2582:
	movs	r6, #1
.L2573:
	movw	r3, #65535
	movw	r2, #4095
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7]
	bfi	r3, r2, #0, #12
	strh	r3, [r7]	@ movhi
	ubfx	r3, r3, #8, #8
	orr	r3, r3, #16
	strb	r3, [r7, #1]
	b	.L2570
.L2571:
	ldr	r5, .L2588+20
	cmp	r2, r5
	bne	.L2575
	ldr	r6, [r1]
	ldrh	r5, [r6, #4]
	adds	r5, r5, #1
	strh	r5, [r6, #4]	@ movhi
	str	r2, [sp]
	ldr	r2, [sp, #40]
	bl	write_phy_data_to_current_block
	mov	r7, r0
	cbz	r0, .L2576
	ldr	r0, .L2588+24
	b	.L2587
.L2576:
	ldrh	r3, [r4, #28]
	adds	r3, r3, #1
	strh	r3, [r4, #28]	@ movhi
.L2575:
	mov	r0, r8
	movs	r7, #0
	bl	adjust_invaild_list
	b	.L2564
.L2589:
	.align	2
.L2588:
	.word	.LC412
	.word	.LC413
	.word	.LC414
	.word	-1441722095
	.word	.LC415
	.word	-1441713357
	.word	.LC416
	.size	write_logic_data_to_current_block, .-write_logic_data_to_current_block
	.section	.text.write_data_to_page,"ax",%progbits
	.align	1
	.global	write_data_to_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_data_to_page, %function
write_data_to_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	str	r3, [sp]
	mov	r7, r2
	mov	r8, r3
	mov	r3, r2
	mov	r2, r1
	add	r1, r0, #292
	mov	r4, r0
	bl	write_logic_data_to_current_block
	mov	r5, r0
	cbz	r0, .L2591
.L2594:
	movs	r5, #1
	ldr	r0, .L2596
	bl	NAND_Print
.L2590:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2591:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L2590
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r6
	add	r1, r4, #324
	mov	r0, r4
	bl	write_logic_data_to_current_block
	cmp	r0, #0
	beq	.L2590
	b	.L2594
.L2597:
	.align	2
.L2596:
	.word	.LC417
	.size	write_data_to_page, .-write_data_to_page
	.section	.text._nftl_discard_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_discard_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_discard_logic_page, %function
_nftl_discard_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	movs	r3, #0
	ldr	r1, .L2599
	b	write_data_to_page
.L2600:
	.align	2
.L2599:
	.word	-1441722095
	.size	_nftl_discard_logic_page, .-_nftl_discard_logic_page
	.section	.text.nand_write_data_page,"ax",%progbits
	.align	1
	.global	nand_write_data_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_write_data_page, %function
nand_write_data_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	add	r1, r0, #292
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	bl	current_block_at_last_page
	cmp	r0, #1
	mov	r4, r0
	bne	.L2602
	mov	r0, r5
	bl	do_after_write
	cbz	r0, .L2602
	ldr	r0, .L2613
	bl	NAND_Print
.L2601:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L2602:
	mov	r0, r5
	bl	do_before_write
	cbz	r0, .L2604
	ldr	r0, .L2613+4
.L2612:
	bl	NAND_Print
	movs	r4, #1
	b	.L2601
.L2604:
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	bl	write_data_to_page
	cbz	r0, .L2605
	ldr	r0, .L2613+8
	b	.L2612
.L2605:
	mov	r0, r5
	bl	do_after_write
	mov	r4, r0
	cmp	r0, #0
	beq	.L2601
	ldr	r0, .L2613+12
	b	.L2612
.L2614:
	.align	2
.L2613:
	.word	.LC418
	.word	.LC419
	.word	.LC420
	.word	.LC421
	.size	nand_write_data_page, .-nand_write_data_page
	.section	.text.nand_write_logic_page_no_gc,"ax",%progbits
	.align	1
	.global	nand_write_logic_page_no_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_write_logic_page_no_gc, %function
nand_write_logic_page_no_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r2
	mov	r2, r1
	movs	r1, #192
	b	nand_write_data_page
	.size	nand_write_logic_page_no_gc, .-nand_write_logic_page_no_gc
	.section	.text.garbage_collect_first,"ax",%progbits
	.align	1
	.global	garbage_collect_first
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	garbage_collect_first, %function
garbage_collect_first:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #96
	mov	r5, r1
	add	r7, sp, #64
	mov	r4, r0
	mov	r6, r2
	movs	r1, #90
	movs	r2, #16
	mov	r0, r7
	bl	NAND_Memset
	cbnz	r5, .L2617
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list
.L2657:
	mov	r5, r0
	cbnz	r0, .L2620
	ldr	r0, .L2658
	bl	NAND_Print
	movs	r0, #8
.L2616:
	add	sp, sp, #96
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2617:
	mov	r1, r5
	mov	r0, r4
	bl	is_current_blcok
	cmp	r0, #1
	beq	.L2635
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list_by_block
	b	.L2657
.L2620:
	ldr	r2, [r4, #1968]
	ldrh	r0, [r0]
	ldr	r3, [r2, #120]
	strh	r0, [sp, #82]	@ movhi
	mov	r0, r4
	adds	r3, r3, #1
	str	r3, [r2, #120]
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strd	r2, r7, [sp, #88]
	strh	r1, [sp, #84]	@ movhi
	add	r1, sp, #80
	subs	r3, r3, #1
	strh	r3, [sp, #80]	@ movhi
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r10, r0
	mov	r0, r7
	bl	is_phy_mapping_page
	cmp	r0, #1
	mov	r8, r0
	beq	.L2621
	ldr	r0, .L2658+4
	mov	r8, #1
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldrh	r1, [r5]
	ldr	r0, .L2658+8
	ldrh	r2, [r3, #20]
	ldrh	r3, [r3, #28]
	subs	r2, r2, #1
	str	r3, [sp]
	movs	r3, #0
	bl	NAND_Print_DBG
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	ldrb	r3, [sp, #67]	@ zero_extendqisi2
	ldrb	r2, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2658+12
	bl	NAND_Print_DBG
	ldrh	r2, [r5]
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	ldr	r0, .L2658+16
	bl	NAND_Print_DBG
	ldr	r2, [r4, #268]
	mov	r1, r5
	mov	r0, r4
	bl	recover_block_phy_page_mapping
.L2622:
	ldr	r3, [r4, #4]
	mov	r2, r5
	add	r1, r4, #260
	mov	r0, r4
	ldrh	r3, [r3, #20]
	bl	check_invalid_page_right
	cmp	r0, #0
	beq	.L2624
	mov	r8, #1
	movw	r6, #65535
	ldr	r0, .L2658+20
	bl	NAND_Print
.L2626:
	mov	r10, #0
.L2625:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	cmp	r3, r10
	bhi	.L2633
.L2632:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	cmp	r3, r10
	bne	.L2634
	movs	r6, #0
	strh	r6, [r4, #386]	@ movhi
	cmp	r8, #0
	beq	.L2634
	ldr	r0, .L2658+24
	bl	NAND_Print
	ldrh	r2, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
.L2635:
	movs	r0, #0
	b	.L2616
.L2621:
	cmp	r10, #0
	beq	.L2623
	cmp	r10, #10
	beq	.L2623
	ldrh	r1, [r5]
	ldr	r0, .L2658+28
	bl	NAND_Print_DBG
	ldr	r2, [r4, #268]
	mov	r1, r5
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	b	.L2622
.L2623:
	ldr	r2, [r4, #272]
	mov	r8, #0
	ldr	r1, [r4, #284]
	ldr	r0, [r4, #268]
	bl	NAND_Memcpy
	b	.L2622
.L2624:
	movw	r3, #65535
	cmp	r8, #0
	it	ne
	movne	r6, r3
	b	.L2626
.L2633:
	ldr	r3, [r4, #268]
	ldr	r3, [r3, r10, lsl #2]
	adds	r2, r3, #1
	beq	.L2627
	mov	r1, r3
	mov	r0, r4
	str	r3, [sp, #60]
	bl	get_logic_page_map
	mov	fp, r0
	cmp	r0, #0
	beq	.L2627
	ldrh	r2, [r0, #2]
	ldrh	r1, [r5]
	cmp	r1, r2
	bne	.L2627
	ldrh	r2, [r0]
	ubfx	r2, r2, #0, #12
	cmp	r2, r10
	bne	.L2627
	ldr	r0, [r4, #1968]
	ldr	ip, [r4, #4]
	strh	r1, [sp, #82]	@ movhi
	add	r1, sp, #80
	ldr	r2, [r0, #124]
	strh	r10, [sp, #80]	@ movhi
	adds	r2, r2, #1
	str	r2, [r0, #124]
	ldrh	r0, [ip, #28]
	ldr	r2, [r4, #288]
	strh	r0, [sp, #84]	@ movhi
	mov	r0, r4
	strd	r2, r7, [sp, #88]
	ldr	r2, [r4, #1980]
	blx	r2
	str	r0, [sp, #56]
	mov	r0, r7
	bl	get_logic_page_from_oob
	ldrd	r2, r3, [sp, #56]
	cbz	r2, .L2628
	cmp	r2, #10
	bne	.L2629
.L2628:
	cmp	r3, r0
	beq	.L2630
	ldrh	r1, [r5]
	mov	r2, r10
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, .L2658+32
	mov	r8, #1
	bl	NAND_Print_DBG
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	movw	r6, #65535
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	ldrb	r2, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	ldrb	r1, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2658+36
	bl	NAND_Print
	ldrh	r3, [fp]
	movw	r2, #4095
	strh	r6, [fp, #2]	@ movhi
	bfi	r3, r2, #0, #12
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r5, #4]
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
.L2631:
	subs	r6, r6, #1
	uxth	r6, r6
	cmp	r6, #0
	beq	.L2632
.L2627:
	add	r10, r10, #1
	b	.L2625
.L2630:
	ldr	r2, [r4, #288]
	mov	r1, r3
	mov	r0, r4
	bl	nand_write_logic_page_no_gc
	cmp	r0, #0
	beq	.L2631
	ldr	r0, .L2658+40
	bl	NAND_Print
	movs	r0, #1
	b	.L2616
.L2629:
	ldrh	r3, [r5, #4]
	mov	r8, #1
	movw	r6, #65535
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	b	.L2631
.L2634:
	mov	r1, r5
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
	mov	r0, r4
	bl	adjust_invaild_list
	b	.L2635
.L2659:
	.align	2
.L2658:
	.word	.LC422
	.word	.LC423
	.word	.LC424
	.word	.LC425
	.word	.LC426
	.word	.LC428
	.word	.LC432
	.word	.LC427
	.word	.LC429
	.word	.LC430
	.word	.LC431
	.size	garbage_collect_first, .-garbage_collect_first
	.section	.text.do_prio_gc,"ax",%progbits
	.align	1
	.global	do_prio_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_prio_gc, %function
do_prio_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #564]
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	cmp	r1, #0
	beq	.L2673
	add	r4, r0, #392
	mov	r0, r4
	bl	del_from_gc_list
	ldr	r7, [r0, #4]
	mov	r5, r0
	mov	r0, r6
	mov	r1, r7
	bl	is_current_blcok
	cmp	r0, #1
	bne	.L2662
	mov	r1, r5
	mov	r0, r4
	bl	add_to_gc_list_tail
.L2674:
	movs	r4, #0
.L2660:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L2662:
	cbnz	r7, .L2663
	ldr	r0, .L2677
	bl	NAND_Print_DBG
	strh	r7, [r5, #2]	@ movhi
	strh	r7, [r6, #394]	@ movhi
	str	r7, [r5, #4]
	b	.L2674
.L2663:
	mov	r0, r6
	bl	is_block_in_invalid_list
	ldrh	r2, [r5, #2]
	mov	r4, r0
	cbnz	r0, .L2664
	ldrh	r1, [r7]
	ldr	r0, .L2677+4
.L2675:
	bl	NAND_Print_DBG
	b	.L2676
.L2664:
	cmp	r2, #5
	strh	r2, [r6, #394]	@ movhi
	bne	.L2665
	movs	r4, #0
	movs	r2, #4
	mov	r0, r6
	bl	garbage_collect_first
.L2676:
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r6, #394]	@ movhi
	str	r4, [r5, #4]
	b	.L2660
.L2665:
	movw	r2, #65535
	mov	r0, r6
	bl	garbage_collect_first
	ldr	r3, [r5, #4]
	mov	r4, r0
	cbz	r0, .L2666
	ldrh	r1, [r3]
	movs	r4, #1
	ldrh	r2, [r5, #2]
	ldr	r0, .L2677+8
	bl	NAND_Print
	movs	r3, #0
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r6, #394]	@ movhi
	str	r3, [r5, #4]
	b	.L2660
.L2666:
	mov	r1, r3
	mov	r0, r6
	bl	is_block_in_free_list
	cbnz	r0, .L2667
	ldrh	r2, [r5, #2]
	ldrh	r1, [r3]
	ldr	r0, .L2677+12
	b	.L2675
.L2667:
	mov	r0, r6
	bl	out_phy_block_from_free_list_by_block
	mov	r1, r0
	cbnz	r0, .L2668
	ldr	r3, [r5, #4]
	ldrh	r2, [r5, #2]
	ldr	r0, .L2677+16
	ldrh	r1, [r3]
	b	.L2675
.L2668:
	ldrh	r2, [r0, #6]
	mov	r0, r6
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	movs	r3, #0
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r6, #394]	@ movhi
	str	r3, [r5, #4]
	b	.L2660
.L2673:
	mov	r4, r1
	b	.L2660
.L2678:
	.align	2
.L2677:
	.word	.LC433
	.word	.LC434
	.word	.LC435
	.word	.LC436
	.word	.LC437
	.size	do_prio_gc, .-do_prio_gc
	.section	.text.prio_gc_all,"ax",%progbits
	.align	1
	.global	prio_gc_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prio_gc_all, %function
prio_gc_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	movs	r5, #10
	movs	r4, #0
.L2680:
	mov	r0, r6
	bl	do_prio_gc
	subs	r5, r5, #1
	orr	r4, r4, r0
	bne	.L2680
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.size	prio_gc_all, .-prio_gc_all
	.section	.text.done_static_wear_leveling,"ax",%progbits
	.align	1
	.global	done_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	done_static_wear_leveling, %function
done_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #580]
	cbz	r5, .L2688
	mov	r1, r5
	bl	is_current_blcok
	cmp	r0, #1
	bne	.L2684
	movs	r3, #0
	str	r3, [r4, #580]
.L2688:
	movs	r5, #2
	b	.L2682
.L2684:
	mov	r0, r4
	bl	is_block_in_invalid_list
	ldrh	r1, [r5]
	mov	r6, r0
	cbnz	r0, .L2685
	ldr	r0, .L2689
	bl	NAND_Print_DBG
	str	r6, [r4, #580]
	b	.L2688
.L2685:
	ldrh	r2, [r5, #6]
	movs	r5, #1
	ldr	r0, .L2689+4
	bl	NAND_Print_DBG
	ldr	r2, [r4, #1968]
	mov	r0, r4
	strh	r5, [r4, #578]	@ movhi
	ldr	r3, [r2, #128]
	add	r3, r3, r5
	str	r3, [r2, #128]
	bl	fill_no_use_data_to_current_block
	movw	r2, #65535
	ldr	r1, [r4, #580]
	mov	r0, r4
	bl	garbage_collect_first
	ldr	r2, [r4, #580]
	mov	r3, r0
	cbz	r0, .L2686
	ldrh	r1, [r2]
	ldr	r0, .L2689+8
	bl	NAND_Print
	movs	r3, #0
	str	r3, [r4, #580]
.L2682:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L2686:
	strh	r0, [r4, #578]	@ movhi
	mov	r1, r2
	mov	r0, r4
	bl	is_block_in_free_list
	mov	r5, r0
	cbnz	r0, .L2687
	ldrh	r1, [r2]
	ldr	r0, .L2689+12
	bl	NAND_Print
	str	r5, [r4, #580]
	b	.L2682
.L2687:
	str	r3, [r4, #580]
	mov	r5, r3
	b	.L2682
.L2690:
	.align	2
.L2689:
	.word	.LC438
	.word	.LC439
	.word	.LC440
	.word	.LC441
	.size	done_static_wear_leveling, .-done_static_wear_leveling
	.section	.text.do_static_wear_leveling,"ax",%progbits
	.align	1
	.global	do_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_static_wear_leveling, %function
do_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	push	{r4, lr}
	mov	r4, r0
	ldrh	r3, [r3, #6]
	cbnz	r3, .L2692
.L2694:
	movs	r0, #0
.L2691:
	pop	{r4, pc}
.L2692:
	ldrh	r3, [r0, #384]
	cbz	r3, .L2695
	bl	check_static_wear_leveling
	cmp	r0, #0
	bne	.L2694
	mov	r0, r4
	pop	{r4, lr}
	b	done_static_wear_leveling
.L2695:
	movs	r0, #1
	b	.L2691
	.size	do_static_wear_leveling, .-do_static_wear_leveling
	.section	.text.gc_one,"ax",%progbits
	.align	1
	.global	gc_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_one, %function
gc_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #200]
	push	{r4, lr}
	cbnz	r3, .L2697
.L2699:
	movs	r4, #8
.L2696:
	mov	r0, r4
	pop	{r4, pc}
.L2697:
	ldrh	r3, [r3, #4]
	cmp	r3, r1
	bls	.L2699
	movw	r2, #65535
	movs	r1, #0
	bl	garbage_collect_first
	cmp	r0, #8
	mov	r4, r0
	beq	.L2699
	cbnz	r0, .L2700
	ldr	r0, .L2704
	bl	NAND_Print_DBG
	b	.L2696
.L2700:
	ldr	r0, .L2704+4
	movs	r4, #1
	bl	NAND_Print
	b	.L2696
.L2705:
	.align	2
.L2704:
	.word	.LC442
	.word	.LC443
	.size	gc_one, .-gc_one
	.section	.text.gc_all_cnt,"ax",%progbits
	.align	1
	.global	gc_all_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_cnt, %function
gc_all_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
.L2707:
	cbz	r4, .L2711
	mov	r1, r6
	mov	r0, r5
	bl	gc_one
	cmp	r0, #8
	add	r4, r4, #-1
	bne	.L2707
.L2711:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	gc_all_cnt, .-gc_all_cnt
	.section	.text.gc_all_base_on_free_blks,"ax",%progbits
	.align	1
	.global	gc_all_base_on_free_blks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_base_on_free_blks, %function
gc_all_base_on_free_blks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r3, [r0, #22]
	ldrh	r1, [r0, #380]
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp	r3, r1
	bcc	.L2712
	ldrh	r2, [r0, #382]
	add	r2, r2, r2, lsl #1
	cmp	r2, r3
	bcc	.L2712
	ldr	r6, .L2717
	ldrb	r0, [r6, #10]	@ zero_extendqisi2
	ldrh	r4, [r6, #8]
	muls	r4, r0, r4
	ldr	r0, [r6, #4]
	muls	r0, r4, r0
	cmp	r0, #264192
	bcs	.L2712
	ldr	r0, [r5, #4]
	subs	r3, r3, r1
	subs	r1, r2, r1
	ldrh	r4, [r0, #20]
	lsrs	r4, r4, #1
	subs	r0, r4, #3
	muls	r0, r3, r0
	bl	__aeabi_uidiv
	adds	r1, r4, r0
	movs	r2, #3
	mov	r0, r5
	uxth	r1, r1
	pop	{r4, r5, r6, lr}
	b	gc_all_cnt
.L2712:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L2718:
	.align	2
.L2717:
	.word	.LANCHOR105
	.size	gc_all_base_on_free_blks, .-gc_all_base_on_free_blks
	.section	.text.gc_all,"ax",%progbits
	.align	1
	.global	gc_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all, %function
gc_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r1
.L2720:
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #0
	beq	.L2720
	movs	r0, #0
	pop	{r3, r4, r5, pc}
	.size	gc_all, .-gc_all
	.section	.text.gc_all_enhance,"ax",%progbits
	.align	1
	.global	gc_all_enhance
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_enhance, %function
gc_all_enhance:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r1, [r0, #22]
	ldrh	r2, [r0, #380]
	push	{r4}
	cmp	r2, r1
	bhi	.L2723
	ldrh	r2, [r0, #382]
	add	r2, r2, r2, lsl #1
	cmp	r2, r1
	bcc	.L2723
	ldr	r4, .L2728
	ldrb	r2, [r4, #10]	@ zero_extendqisi2
	ldrh	r1, [r4, #8]
	muls	r1, r2, r1
	ldr	r2, [r4, #4]
	muls	r2, r1, r2
	cmp	r2, #264192
	bcs	.L2723
	ldr	r3, [r0, #4]
	pop	{r4}
	ldrh	r1, [r3, #20]
	lsrs	r1, r1, #1
	b	gc_all
.L2723:
	movs	r0, #0
	pop	{r4}
	bx	lr
.L2729:
	.align	2
.L2728:
	.word	.LANCHOR105
	.size	gc_all_enhance, .-gc_all_enhance
	.section	.text.gc_win_block,"ax",%progbits
	.align	1
	.global	gc_win_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_win_block, %function
gc_win_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r3, [r0, #4]
	movs	r5, #0
	ldrh	r6, [r3, #20]
	muls	r6, r1, r6
.L2731:
	cmp	r5, r6
	blt	.L2733
	movs	r4, #0
	b	.L2730
.L2733:
	ldr	r4, [r7, #200]
	cbz	r4, .L2730
	ldrh	r3, [r4, #4]
	movs	r1, #1
	mov	r0, r7
	add	r5, r5, r3
	subs	r5, r5, #1
	bl	gc_one
	mov	r4, r0
	cmp	r0, #0
	beq	.L2731
	cmp	r0, #1
	bne	.L2730
	ldr	r0, .L2737
	bl	NAND_Print_DBG
.L2730:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L2738:
	.align	2
.L2737:
	.word	.LC444
	.size	gc_win_block, .-gc_win_block
	.section	.text.power_on_gc,"ax",%progbits
	.align	1
	.global	power_on_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	power_on_gc, %function
power_on_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	ldrh	r6, [r0, #22]
	sub	sp, sp, #20
	ldrh	r7, [r0, #380]
	ldr	r3, [r0, #4]
	cmp	r6, r7
	ldrh	r5, [r3, #20]
	bcc	.L2740
	ldrb	r8, [r3, #8]	@ zero_extendqisi2
	ldrh	r10, [r0, #382]
	ldr	r0, [r0, #32]
	mov	r1, r8
	bl	__aeabi_uidiv
	mov	r1, r5
	bl	__aeabi_uidiv
	mov	r1, r8
	str	r0, [sp, #8]
	ldr	r0, [r4, #24]
	bl	__aeabi_uidiv
	mov	r1, r5
	bl	__aeabi_uidiv
	ldrh	r3, [r4, #18]
	mov	r2, r7
	str	r0, [sp, #4]
	mov	r1, r6
	ldr	r0, .L2750
	str	r3, [sp]
	mov	r3, r10
	bl	NAND_Print_DBG
.L2741:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2740:
	subs	r5, r5, #10
	movs	r7, #0
	uxth	r5, r5
.L2742:
	ldrh	r2, [r4, #22]
	uxth	r6, r7
	ldrh	r3, [r4, #380]
	cmp	r2, r3
	bcs	.L2745
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #8
	add	r7, r7, #1
	bne	.L2742
.L2745:
	ldr	r3, [r4, #4]
	ldr	r7, .L2750+4
	ldrh	r5, [r3, #20]
	lsrs	r5, r5, #3
.L2743:
	ldrh	r1, [r4, #22]
	cmp	r1, #4
	bhi	.L2748
	mov	r0, r7
	bl	NAND_Print_DBG
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #8
	bne	.L2746
.L2748:
	mov	r1, r6
	ldr	r0, .L2750+8
	bl	NAND_Print_DBG
	b	.L2741
.L2746:
	adds	r6, r6, #1
	uxth	r6, r6
	b	.L2743
.L2751:
	.align	2
.L2750:
	.word	.LC445
	.word	.LC446
	.word	.LC447
	.size	power_on_gc, .-power_on_gc
	.section	.text.build_zone_list,"ax",%progbits
	.align	1
	.global	build_zone_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	build_zone_list, %function
build_zone_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L2757
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	first_scan_all_blocks
	ldrh	r1, [r4, #18]
	mov	r0, r4
	bl	init_zone_after_first_scan
	cbz	r0, .L2753
	ldr	r0, .L2757+4
.L2756:
	movs	r5, #1
	bl	NAND_Print
.L2752:
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L2753:
	mov	r0, r4
	bl	second_scan_all_blocks
	mov	r5, r0
	cbz	r0, .L2755
	ldr	r0, .L2757+8
	b	.L2756
.L2755:
	mov	r0, r4
	bl	power_on_gc
	mov	r0, r4
	bl	print_nftl_zone
	ldr	r0, .L2757+12
	bl	NAND_Print
	mov	r0, r4
	bl	panic_backup_block
	b	.L2752
.L2758:
	.align	2
.L2757:
	.word	.LC448
	.word	.LC449
	.word	.LC450
	.word	.LC451
	.size	build_zone_list, .-build_zone_list
	.section	.text.nand_find_zone_table,"ax",%progbits
	.align	1
	.global	nand_find_zone_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_find_zone_table, %function
nand_find_zone_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	clean_block_list
	mov	r0, r4
	bl	nand_clean_zone_table2
	ldr	r0, .L2760
	bl	NAND_Print_DBG
	ldr	r5, .L2760+4
	mov	r0, r4
	bl	build_zone_list
	ldr	r0, .L2760+8
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_cache_init
	mov	r0, r5
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	print_block_invalid_list
	mov	r0, r4
	bl	print_free_list
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r0, .L2760+12
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L2761:
	.align	2
.L2760:
	.word	.LC452
	.word	.LC454
	.word	.LC453
	.word	.LC455
	.size	nand_find_zone_table, .-nand_find_zone_table
	.section	.text.nand_check_table,"ax",%progbits
	.align	1
	.global	nand_check_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_check_table, %function
nand_check_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r1, #1000
	ldr	r4, .L2763
	mov	r5, r0
	bl	__nand_flush_write_cache
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	print_nftl_zone
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	nand_clean_zone_table
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	nand_find_zone_table
	mov	r0, r5
	bl	write_data_to_nand
	mov	r0, r4
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L2764:
	.align	2
.L2763:
	.word	.LC456
	.size	nand_check_table, .-nand_check_table
	.section	.text.all_time_gc,"ax",%progbits
	.align	1
	.global	all_time_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	all_time_gc, %function
all_time_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r1, [r0, #22]
	ldrh	r2, [r0, #382]
	push	{r3, lr}
	cmp	r1, r2
	bcs	.L2766
	ldrh	r2, [r0, #384]
	cbz	r2, .L2766
	ldr	r3, [r0, #4]
	ldrh	r1, [r3, #20]
	subs	r1, r1, #3
	uxth	r1, r1
	bl	gc_one
.L2766:
	movs	r0, #0
	pop	{r3, pc}
	.size	all_time_gc, .-all_time_gc
	.section	.text.shutdown_on_gc,"ax",%progbits
	.align	1
	.global	shutdown_on_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	shutdown_on_gc, %function
shutdown_on_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r0, #382]
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldrh	r3, [r0, #384]
	mov	r4, r0
	str	r2, [sp, #8]
	ldrh	r2, [r0, #380]
	ldr	r5, .L2778
	ldr	r1, .L2778+4
	str	r2, [sp, #4]
	ldrh	r2, [r0, #22]
	str	r2, [sp]
	ldr	r2, [r0, #200]
	ldr	r0, .L2778+8
	bl	NAND_Print_DBG
.L2771:
	ldrh	r1, [r4, #22]
	ldrh	r3, [r4, #382]
.L2774:
	cmp	r1, r3
	bhi	.L2773
	ldr	r2, [r4, #200]
	cbnz	r2, .L2772
	ldrh	r2, [r4, #380]
	ldr	r0, .L2778+12
	bl	NAND_Print
.L2773:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L2772:
	ldrh	r2, [r4, #384]
	cmp	r2, #0
	beq	.L2774
	movs	r1, #0
	mov	r0, r4
	bl	gc_one
	ldrh	r3, [r4, #382]
	mov	r0, r5
	ldrh	r2, [r4, #380]
	ldrh	r1, [r4, #22]
	bl	NAND_Print_DBG
	b	.L2771
.L2779:
	.align	2
.L2778:
	.word	.LC459
	.word	.LANCHOR106
	.word	.LC457
	.word	.LC458
	.size	shutdown_on_gc, .-shutdown_on_gc
	.section	.text.garbage_collect,"ax",%progbits
	.align	1
	.global	garbage_collect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	garbage_collect, %function
garbage_collect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r3, [r0, #380]
	ldrh	r1, [r0, #22]
	push	{r4, lr}
	mov	r4, r0
	cmp	r3, r1
	itt	cs
	movcs	r3, #0
	strhcs	r3, [r0, #384]	@ movhi
	ldrh	r0, [r0, #384]
	cbz	r0, .L2782
.L2799:
	movs	r0, #0
	b	.L2780
.L2782:
	ldrh	r3, [r4, #382]
	cmp	r3, r1
	bls	.L2784
	ldrh	r3, [r4, #386]
	cbnz	r3, .L2786
	ldr	r3, [r4, #200]
	cbnz	r3, .L2787
	ldr	r0, .L2801
	bl	NAND_Print
.L2800:
	movs	r0, #1
.L2780:
	pop	{r4, pc}
.L2787:
	ldrh	r2, [r3, #4]
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	cmp	r2, r3, lsr #1
	bcc	.L2788
	movs	r3, #4
.L2798:
	strh	r3, [r4, #388]	@ movhi
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #22]
	ldrh	r3, [r3, #16]
	cmp	r2, r3
	itt	ls
	movwls	r3, #65535
	strhls	r3, [r4, #388]	@ movhi
.L2786:
	ldrh	r2, [r4, #388]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L2793
	movs	r1, #0
	mov	r0, r4
	bl	garbage_collect_first
	cmp	r0, #0
	beq	.L2799
	ldrh	r1, [r4, #22]
	ldr	r0, .L2801+4
	bl	NAND_Print
	b	.L2800
.L2788:
	cmp	r2, r3, lsr #2
	bcc	.L2790
	movs	r3, #8
	b	.L2798
.L2790:
	cmp	r2, r3, lsr #3
	bcc	.L2791
	movs	r3, #16
	b	.L2798
.L2791:
	ldr	r0, .L2801+8
	bl	NAND_Print_DBG
	movw	r3, #65535
	b	.L2798
.L2793:
	movs	r1, #1
	mov	r0, r4
	bl	gc_win_block
	b	.L2799
.L2784:
	movs	r3, #1
	strh	r0, [r4, #388]	@ movhi
	str	r3, [r4, #384]
	b	.L2780
.L2802:
	.align	2
.L2801:
	.word	.LC460
	.word	.LC462
	.word	.LC461
	.size	garbage_collect, .-garbage_collect
	.section	.text._nftl_nand_write_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_write_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_write_logic_page, %function
_nftl_nand_write_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	nand_write_logic_page_no_gc
	mov	r4, r0
	cbz	r0, .L2804
	movs	r4, #1
	mov	r1, r6
	ldr	r0, .L2806
	bl	NAND_Print
.L2803:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L2804:
	mov	r0, r5
	bl	garbage_collect
	mov	r0, r5
	bl	all_time_gc
	mov	r0, r5
	bl	do_prio_gc
	b	.L2803
.L2807:
	.align	2
.L2806:
	.word	.LC463
	.size	_nftl_nand_write_logic_page, .-_nftl_nand_write_logic_page
	.section	.text._nftl_nand_read_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_logic_page, %function
_nftl_nand_read_logic_page:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	mov	r4, r0
	mov	r7, r1
	mov	r6, r2
	bl	get_logic_page_map
	mov	r5, r0
	cbnz	r0, .L2809
	movs	r6, #1
	ldr	r0, .L2813
	bl	NAND_Print_DBG
.L2808:
	mov	r0, r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2809:
	ldrh	r2, [r0, #2]
	movw	r1, #65535
	ldr	r3, [r4, #4]
	cmp	r2, r1
	bne	.L2811
	mov	r0, r6
	ldrh	r2, [r3, #26]
	movs	r1, #255
	movs	r6, #0
	bl	NAND_Memset
	b	.L2808
.L2811:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldr	r0, [r4, #364]
	bfi	r1, r0, #4, #1
	mov	r0, r4
	strb	r1, [r5, #1]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r5]
	str	r6, [sp, #24]
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	ubfx	r3, r3, #0, #12
	strh	r2, [sp, #18]	@ movhi
	strh	r3, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1980]
	blx	r3
	adds	r3, r0, #2
	mov	r6, r0
	bne	.L2812
	ldr	r3, [r4, #4]
	movs	r0, #36
	ldrh	r1, [r5, #2]
	movs	r2, #1
	ldr	r3, [r3, #32]
	mla	r1, r0, r1, r3
	mov	r0, r4
	bl	add_prio_gc
	mov	r1, r7
	ldr	r0, .L2813+4
	bl	NAND_Print
.L2812:
	mov	r0, r4
	bl	do_prio_gc
	b	.L2808
.L2814:
	.align	2
.L2813:
	.word	.LC366
	.word	.LC464
	.size	_nftl_nand_read_logic_page, .-_nftl_nand_read_logic_page
	.section	.text.malloc_logic_page_map,"ax",%progbits
	.align	1
	.global	malloc_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	malloc_logic_page_map, %function
malloc_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r7, r0, #52
	mov	r4, r1
	mov	r6, r0
	add	r2, r0, #152
	mov	r3, r7
	movs	r1, #0
.L2816:
	str	r1, [r3], #4
	cmp	r3, r2
	bne	.L2816
	ldr	r8, .L2828+12
	movs	r5, #0
.L2820:
	cmp	r4, r8
	bls	.L2817
	mov	r0, #1048576
	bl	NAND_Malloc
	str	r0, [r7], #4
	cbnz	r0, .L2818
	ldr	r0, .L2828
	mov	r1, r5
.L2827:
	bl	NAND_Print
	mvn	r0, #1
.L2815:
	pop	{r4, r5, r6, r7, r8, pc}
.L2818:
	mov	r2, #1048576
	movs	r1, #255
	adds	r5, r5, #1
	sub	r4, r4, #262144
	bl	NAND_Memset
	cmp	r5, #25
	bne	.L2820
	cbz	r4, .L2823
	mov	r1, r4
	ldr	r0, .L2828+4
	b	.L2827
.L2817:
	lsls	r4, r4, #2
	mov	r0, r4
	bl	nftl_malloc
	add	r3, r6, r5, lsl #2
	str	r0, [r3, #52]
	cbnz	r0, .L2822
	mov	r1, r5
	ldr	r0, .L2828+8
	b	.L2827
.L2822:
	mov	r2, r4
	movs	r1, #255
	bl	NAND_Memset
	movs	r0, #0
	b	.L2815
.L2823:
	mov	r0, r4
	b	.L2815
.L2829:
	.align	2
.L2828:
	.word	.LC465
	.word	.LC467
	.word	.LC466
	.word	262143
	.size	malloc_logic_page_map, .-malloc_logic_page_map
	.section	.text.zone_param_init,"ax",%progbits
	.align	1
	.global	zone_param_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	zone_param_init, %function
zone_param_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r3
	ldr	r3, [r0, #4]
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	ldrh	r0, [r3, #26]
	bl	nftl_malloc
	str	r0, [r4, #284]
	cbnz	r0, .L2831
	ldr	r1, .L2842
	ldr	r0, .L2842+4
.L2840:
	bl	NAND_Print
	b	.L2841
.L2831:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #26]
	bl	nftl_malloc
	str	r0, [r4, #288]
	cbnz	r0, .L2833
	ldr	r1, .L2842
	ldr	r0, .L2842+8
	b	.L2840
.L2833:
	ldr	r2, [r4, #4]
	movs	r1, #36
	strh	r5, [r4, #36]	@ movhi
	mov	r0, r6
	str	r6, [r4, #24]
	ldr	r3, [r2, #32]
	str	r7, [r4, #32]
	mla	r5, r1, r5, r3
	movs	r3, #0
	strh	r3, [r4, #18]	@ movhi
	str	r5, [r4, #40]
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	str	r3, [r4, #44]
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	mov	r1, r0
	mov	r0, r4
	bl	malloc_logic_page_map
	mov	r5, r0
	cbz	r0, .L2834
	ldr	r0, .L2842+12
	bl	NAND_Print
.L2841:
	mvn	r5, #1
.L2830:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L2834:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #20]
	mov	r3, #320
	str	r3, [r4, #316]
	lsls	r0, r0, #2
	str	r0, [r4, #308]
	add	r0, r0, r3
	str	r0, [r4, #300]
	bl	nftl_malloc
	mov	r3, r0
	str	r0, [r4, #296]
	cbnz	r0, .L2835
	ldr	r1, .L2842
	ldr	r0, .L2842+16
	b	.L2840
.L2835:
	ldr	r2, [r4, #308]
	movs	r1, #255
	str	r0, [r4, #304]
	add	r3, r3, r2
	ldr	r2, [r4, #300]
	str	r3, [r4, #312]
	str	r3, [r4, #1968]
	bl	NAND_Memset
	ldr	r3, [r4, #308]
	ldr	r0, [r4, #300]
	str	r3, [r4, #340]
	str	r0, [r4, #332]
	bl	nftl_malloc
	mov	r3, r0
	str	r0, [r4, #328]
	cbnz	r0, .L2836
	ldr	r1, .L2842
	ldr	r0, .L2842+20
	b	.L2840
.L2836:
	ldr	r2, [r4, #340]
	movs	r1, #255
	str	r0, [r4, #336]
	add	r3, r3, r2
	ldr	r2, [r4, #332]
	str	r3, [r4, #344]
	bl	NAND_Memset
	ldr	r3, [r4, #308]
	ldr	r0, [r4, #300]
	str	r3, [r4, #272]
	ldr	r3, [r4, #316]
	str	r0, [r4, #264]
	str	r3, [r4, #280]
	bl	nftl_malloc
	str	r0, [r4, #260]
	cbnz	r0, .L2837
	ldr	r1, .L2842
	ldr	r0, .L2842+24
	b	.L2840
.L2837:
	ldr	r3, [r4, #272]
	mov	r1, r5
	str	r0, [r4, #268]
	str	r5, [r4, #356]
	add	r0, r0, r3
	ldr	r3, [r4, #4]
	str	r0, [r4, #276]
	str	r5, [r4, #376]
	ldrh	r2, [r3, #16]
	strd	r5, r5, [r4, #360]
	strd	r5, r5, [r4, #368]
	strd	r5, r5, [r4, #576]
	lsrs	r3, r2, #1
	str	r5, [r4, #292]
	str	r5, [r4, #324]
	strh	r3, [r4, #572]	@ movhi
	ldr	r3, .L2842+28
	strd	r5, r5, [r4, #172]
	strd	r5, r5, [r4, #164]
	strd	r5, r5, [r4, #180]
	umull	r2, r3, r2, r3
	mov	r2, r4
	strd	r5, r5, [r4, #208]
	strd	r5, r5, [r4, #200]
	strd	r5, r5, [r4, #216]
	lsrs	r3, r3, #2
	strh	r3, [r4, #574]	@ movhi
	movw	r3, #65535
	strh	r3, [r4, #320]	@ movhi
	strh	r3, [r4, #352]	@ movhi
	mov	r3, r5
	strd	r5, r5, [r4, #244]
	strd	r5, r5, [r4, #236]
	strd	r5, r5, [r4, #252]
	strh	r5, [r4, #392]	@ movhi
.L2838:
	strh	r1, [r2, #396]	@ movhi
	adds	r1, r1, #1
	cmp	r1, #10
	strh	r3, [r2, #398]	@ movhi
	strd	r3, r3, [r2, #400]
	add	r2, r2, #16
	str	r3, [r2, #392]
	bne	.L2838
	movs	r2, #255
	strh	r3, [r4, #394]	@ movhi
	strd	r2, r3, [r4, #556]
	strd	r3, r3, [r4, #564]
	b	.L2830
.L2843:
	.align	2
.L2842:
	.word	.LANCHOR107
	.word	.LC468
	.word	.LC469
	.word	.LC470
	.word	.LC471
	.word	.LC472
	.word	.LC473
	.word	-1431655765
	.size	zone_param_init, .-zone_param_init
	.section	.text.free_logic_page_map,"ax",%progbits
	.align	1
	.global	free_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	free_logic_page_map, %function
free_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	add	r5, r0, #52
	add	r4, r0, #152
.L2846:
	ldr	r0, [r5], #4
	cbz	r0, .L2845
	bl	nftl_free
.L2845:
	cmp	r5, r4
	bne	.L2846
	movs	r0, #0
	pop	{r3, r4, r5, pc}
	.size	free_logic_page_map, .-free_logic_page_map
	.section	.text.zone_param_exit,"ax",%progbits
	.align	1
	.global	zone_param_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	zone_param_exit, %function
zone_param_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	free_logic_page_map
	ldr	r0, [r4, #260]
	bl	nftl_free
	ldr	r0, [r4, #296]
	bl	nftl_free
	ldr	r0, [r4, #328]
	bl	nftl_free
	ldr	r0, [r4, #284]
	bl	nftl_free
	ldr	r0, [r4, #288]
	bl	nftl_free
	movs	r0, #0
	pop	{r4, pc}
	.size	zone_param_exit, .-zone_param_exit
	.section	.text.set_physic_op_par,"ax",%progbits
	.align	1
	.global	set_physic_op_par
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_physic_op_par, %function
set_physic_op_par:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strh	r3, [r0, #4]	@ movhi
	ldr	r3, [sp]
	strh	r2, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	str	r3, [r0, #8]
	ldr	r3, [sp, #4]
	str	r3, [r0, #12]
	bx	lr
	.size	set_physic_op_par, .-set_physic_op_par
	.global	__aeabi_idiv
	.section	.text.nftl_start,"ax",%progbits
	.align	1
	.global	nftl_start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_start, %function
nftl_start:
	@ args = 40, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #40
	ldr	r3, [sp, #92]
	mov	r6, r2
	ldr	r2, [sp, #76]
	ldr	r7, [sp, #88]
	lsr	r10, r3, #9
	ldr	r3, [sp, #72]
	strd	r0, r1, [sp, #28]
	mov	r0, #2016
	lsrs	r7, r7, #9
	lsrs	r3, r3, #9
	orr	r3, r3, r2, lsl #23
	ldr	r2, [sp, #84]
	str	r3, [sp, #20]
	ldr	r3, [sp, #80]
	lsrs	r3, r3, #9
	orr	r3, r3, r2, lsl #23
	str	r3, [sp, #24]
	bl	NAND_Malloc
	mov	r4, r0
	str	r0, [r6]
	cbz	r0, .L2854
	lsl	r3, r10, #9
	uxth	r3, r3
	str	r3, [sp, #16]
	movs	r3, #2
.L2877:
.L2855:
	mov	r2, #2016
	movs	r1, #0
	mov	r0, r4
	str	r3, [sp, #12]
	bl	NAND_Memset
	ldr	r3, [sp, #28]
	movs	r0, #36
	str	r3, [r4]
	ldr	r3, [sp, #32]
	str	r3, [r4, #1972]
	bl	NAND_Malloc
	str	r0, [r4, #4]
	cbnz	r0, .L2857
	ldr	r1, .L2879
	ldr	r0, .L2879+4
	b	.L2878
.L2854:
	ldr	r1, .L2879
	ldr	r0, .L2879+8
.L2878:
	mvn	r5, #1
	bl	NAND_Print
.L2853:
	mov	r0, r5
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2857:
	movs	r2, #4
	movs	r1, #0
	bl	NAND_Memset
	ldr	r3, .L2879+12
	movs	r2, #8
	ldr	r0, [r4, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	add	r1, r1, r2
	bl	NAND_Memcpy
	ldr	r5, [r4, #4]
	mov	r1, r7
	ldrh	r3, [sp, #16]
	ldr	r0, [sp, #24]
	strh	r3, [r5, #26]	@ movhi
	ldr	r3, [sp, #96]
	strb	r3, [r5, #10]
	bl	__aeabi_uidiv
	ldr	r2, [r4, #1972]
	mov	r8, r0
	ldrh	r2, [r2, #12]
	cmp	r2, r0
	bcs	.L2867
	uxth	r3, r0
	mov	r1, r10
	mov	r0, r7
	str	r3, [sp, #4]
	mov	fp, #36
	ldrh	r3, [sp, #4]
	strh	r3, [r5, #24]	@ movhi
	bl	__aeabi_uidiv
	uxtb	r2, r10
	add	r3, r8, #1
	strh	r0, [r5, #20]	@ movhi
	strb	r2, [r5, #8]
	strh	r2, [r5, #28]	@ movhi
	movw	r2, #3000
	strh	r2, [r5, #16]	@ movhi
	mul	r2, fp, r3
	str	r3, [sp, #8]
	mov	r0, r2
	str	r2, [sp, #36]
	bl	nftl_malloc
	ldr	r3, [r4, #4]
	str	r0, [r5, #32]
	ldr	r2, [sp, #36]
	ldr	r0, [r3, #32]
	cbnz	r0, .L2858
	ldr	r1, .L2879
	ldr	r0, .L2879+16
	b	.L2878
.L2858:
	subs	r2, r2, #36
	movs	r1, #255
	bl	NAND_Memset
	movs	r1, #0
	mov	ip, #-1
	mov	r2, r1
.L2859:
	ldr	r3, [sp, #8]
	cmp	r3, r1
	bhi	.L2860
	ldr	r0, [r6]
	bl	nftl_ops_init
	mov	r1, r7
	ldr	r0, [sp, #20]
	bl	__aeabi_uidiv
	ldr	r3, [sp, #4]
	subs	r0, r3, r0
	ldr	r3, [r4, #1972]
	uxth	r2, r0
	ldrh	r3, [r3, #12]
	strh	r2, [r4, #22]	@ movhi
	cmp	r3, r2
	bls	.L2861
	mov	r1, r2
	ldr	r0, .L2879+20
	b	.L2878
.L2860:
	ldr	r3, [r4, #4]
	mul	r0, fp, r1
	ldr	lr, [r3, #32]
	add	r3, lr, r0
	strh	r1, [lr, r0]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	adds	r1, r1, #1
	strh	r2, [r3, #2]	@ movhi
	str	ip, [r3, #8]
	strh	r2, [r3, #6]	@ movhi
	strd	r2, r2, [r3, #12]
	strd	r2, r2, [r3, #20]
	strd	r2, r2, [r3, #28]
	b	.L2859
.L2861:
	mov	r1, r8
	ldr	r0, .L2879+24
	bl	NAND_Print_DBG
	ldrh	r3, [r4, #22]
	movs	r1, #0
	ldr	r0, [r6]
	sub	r2, r8, r3
	muls	r2, r7, r2
	muls	r3, r7, r3
	bl	zone_param_init
	mov	r5, r0
	cbz	r0, .L2862
	ldr	r0, .L2879+28
	bl	NAND_Print
	b	.L2853
.L2862:
	ldr	r3, [sp, #104]
	ldr	r2, [r4, #1972]
	strb	r3, [r4, #16]
	ldrh	r3, [r2, #26]
	cbz	r3, .L2863
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r4, #17]
.L2863:
	ldrh	r3, [r2, #10]
	cbz	r3, .L2864
	mov	r1, r8
	ldr	r0, [r6]
	bl	is_no_use_device
	cmp	r0, #1
	bne	.L2864
	mov	r1, r8
	ldr	r0, [r6]
	bl	build_zone_list_first
	mov	r8, r0
	cbz	r0, .L2864
	ldr	r0, .L2879+32
	bl	NAND_Print
.L2866:
	mov	r5, r8
	b	.L2853
.L2864:
	ldr	r0, [r6]
	bl	build_zone_list
	mov	r8, r0
	cbz	r0, .L2865
	ldr	r0, .L2879+36
	bl	NAND_Print
	ldr	r3, [sp, #12]
	cmp	r3, #1
	beq	.L2866
	ldr	r0, .L2879+40
	bl	NAND_Print
	movs	r3, #1
	b	.L2877
.L2865:
	ldr	r0, [r6]
	bl	nftl_cache_init
	b	.L2853
.L2867:
	mov	r5, #-1
	b	.L2853
.L2880:
	.align	2
.L2879:
	.word	.LANCHOR108
	.word	.LC475
	.word	.LC474
	.word	g_nsi
	.word	.LC476
	.word	.LC477
	.word	.LC478
	.word	.LC479
	.word	.LC480
	.word	.LC481
	.word	.LC482
	.size	nftl_start, .-nftl_start
	.section	.text.nftl_initialize,"ax",%progbits
	.align	1
	.global	nftl_initialize
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_initialize, %function
nftl_initialize:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #60
	ldr	r5, [r0, #4]
	mov	r4, r0
	mov	r6, r1
	movs	r2, #9
	ldr	r1, .L2903
	add	r0, sp, #44
	bl	memcpy
	add	r0, sp, #56
	movs	r3, #47
	strh	r3, [r0, #-16]!	@ movhi
	ldr	r1, .L2903+4
	bl	nand_fdt_get_string
	cbz	r0, .L2895
	movs	r2, #9
	add	r1, sp, #44
	bl	NAND_Memcmp
	mov	r7, r0
	cbnz	r0, .L2895
	ldr	r3, .L2903+8
	ldr	r2, .L2903+12
	ldr	r1, .L2903+16
	str	r3, [sp, #4]
	ldr	r3, .L2903+20
	ldr	r0, .L2903+24
	str	r3, [sp]
	ldr	r3, .L2903+28
	bl	NAND_Print
	ldr	r0, .L2903+32
	bl	nftl_get_nand_phyinfo
	ldrh	r3, [r5, #34]
	cmp	r3, #15
	bhi	.L2899
.L2895:
	mov	r6, #-1
	b	.L2881
.L2899:
	movs	r0, #36
	bl	NAND_Malloc
	str	r0, [r4, #16]
	cbnz	r0, .L2885
	movs	r6, #1
	ldr	r1, .L2903+36
	ldr	r0, .L2903+40
	bl	NAND_Print
.L2881:
	mov	r0, r6
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2885:
	str	r7, [r0, #8]
	mov	r2, #65536
	ldr	r7, [r5, #80]
	mov	r3, #65537
	strd	r2, r3, [r0]
	movs	r1, #3
	ldr	r2, [r7, #36]
	ldrh	r3, [r2, #2478]
	strh	r3, [r0, #12]	@ movhi
	ldrh	r3, [r2, #2480]
	strh	r1, [r0, #20]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	movs	r3, #8
	strh	r3, [r0, #14]	@ movhi
	movs	r3, #2
	strh	r3, [r0, #18]	@ movhi
	ldr	r3, .L2903+44
	str	r3, [r0, #32]
	ldrh	r3, [r2, #2474]
	cmp	r3, #0
	bne	.L2886
.L2900:
	movs	r3, #30
	strh	r1, [r0, #24]	@ movhi
	strh	r3, [r0, #22]	@ movhi
.L2887:
	ldrh	r3, [r7, #2]
	strh	r3, [r0, #26]	@ movhi
	cmp	r3, #0
	beq	.L2890
	movs	r3, #3
.L2902:
	ldr	r1, [r2, #2492]
	strh	r3, [r0, #24]	@ movhi
	ldrh	r3, [r0, #22]
	ldr	r7, .L2903+48
	sub	r2, r1, #86016
	sub	r2, r2, #384
	cmp	r3, #30
	itt	hi
	movhi	r3, #30
	strhhi	r3, [r0, #22]	@ movhi
	movs	r3, #1
	cmp	r2, r7
	strh	r3, [r0, #24]	@ movhi
	it	ls
	strls	r1, [r0, #32]
	strh	r3, [r0, #28]	@ movhi
	bl	nftl_support_boot_check_crc_from_dts
	cbnz	r0, .L2894
	ldr	r3, [r4, #16]
	strh	r0, [r3, #28]	@ movhi
.L2894:
	movs	r3, #0
	str	r5, [sp, #28]
	strd	r6, r3, [sp, #32]
	mov	r0, r4
	ldrh	r3, [r5, #34]
	ldr	r1, [r4, #16]
	str	r3, [sp, #24]
	ldrh	r3, [r5, #40]
	str	r3, [sp, #20]
	ldr	r3, [r5, #44]
	str	r3, [sp, #16]
	ldrd	r2, [r5, #72]
	strd	r2, [sp, #8]
	ldrd	r2, [r5, #64]
	strd	r2, [sp]
	add	r2, r4, #12
	bl	nftl_start
	mov	r6, r0
	cmp	r0, #0
	bne	.L2881
	ldr	r3, [r5, #80]
	ldr	r0, .L2903+52
	ldr	r2, [r3, #36]
	ldr	r3, [r4, #12]
	ldr	r1, [r2, #2484]
	ldr	r3, [r3, #4]
	ldr	r2, [r2, #2488]
	strh	r1, [r3, #16]	@ movhi
	uxth	r1, r1
	strh	r2, [r3, #30]	@ movhi
	bl	NAND_Print_DBG
	ldr	r3, [r4, #12]
	ldr	r3, [r3, #24]
	str	r6, [r4, #8]
	str	r3, [r4]
	ldr	r3, .L2903+56
	str	r3, [r4, #44]
	ldr	r3, .L2903+60
	str	r3, [r4, #40]
	ldr	r3, .L2903+64
	str	r3, [r4, #48]
	ldr	r3, .L2903+68
	str	r3, [r4, #56]
	ldr	r3, .L2903+72
	str	r3, [r4, #52]
	ldr	r3, .L2903+76
	str	r3, [r4, #60]
	ldr	r3, .L2903+80
	str	r3, [r4, #64]
	ldr	r3, .L2903+84
	str	r3, [r4, #68]
	ldr	r3, .L2903+88
	str	r3, [r4, #72]
	b	.L2881
.L2886:
	cmp	r3, #255
	bne	.L2888
	movs	r3, #1
	strh	r3, [r0]	@ movhi
	movs	r3, #50
	strh	r3, [r0, #22]	@ movhi
	movs	r3, #40
.L2901:
	strh	r3, [r0, #24]	@ movhi
	b	.L2887
.L2888:
	cmp	r3, #10
	bls	.L2889
	movs	r3, #10
	strh	r3, [r2, #2474]	@ movhi
	b	.L2900
.L2889:
	add	r3, r3, r3, lsl #2
	add	r1, r3, r3, lsl #2
	lsls	r3, r3, #3
	lsls	r1, r1, #1
	strh	r1, [r0, #22]	@ movhi
	b	.L2901
.L2890:
	movs	r3, #1
	b	.L2902
.L2904:
	.align	2
.L2903:
	.word	.LANCHOR85+30
	.word	.LANCHOR109
	.word	.LC487
	.word	.LC484
	.word	.LC485
	.word	.LC488
	.word	.LC486
	.word	.LC483
	.word	.LANCHOR105
	.word	.LANCHOR110
	.word	.LC489
	.word	1296000
	.word	7692600
	.word	.LC490
	.word	_nand_read
	.word	_nand_read_history
	.word	_nand_write
	.word	_nand_discard
	.word	_nand_flush_write_cache
	.word	_shutdown_op
	.word	_nand_sector_read
	.word	_nand_sector_write
	.word	_nand_flush_sector_write_cache
	.size	nftl_initialize, .-nftl_initialize
	.section	.text.nftl_add,"ax",%progbits
	.align	1
	.global	nftl_add
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_add, %function
nftl_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r0, #76
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L2906
	ldr	r1, .L2909
	ldr	r0, .L2909+4
	bl	NAND_Print
.L2905:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2906:
	mov	r0, r5
	bl	build_nand_partition
	ldrh	r1, [r5]
	str	r0, [r4, #4]
	mov	r0, r4
	bl	nftl_initialize
	cbz	r0, .L2908
	ldr	r0, .L2909+8
	movs	r4, #0
	bl	NAND_Print
	b	.L2905
.L2908:
	mov	r1, r4
	ldr	r0, .L2909+12
	bl	add_nftl_blk_list
	mov	r0, r4
	bl	panic_recover_data
	ldr	r0, .L2909+16
	bl	NAND_Print_DBG
	b	.L2905
.L2910:
	.align	2
.L2909:
	.word	.LANCHOR111
	.word	.LC491
	.word	.LC492
	.word	.LANCHOR0
	.word	.LC493
	.size	nftl_add, .-nftl_add
	.section	.text.nftl_build_all,"ax",%progbits
	.align	1
	.global	nftl_build_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_build_all, %function
nftl_build_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	ldr	r4, [r0, #56]
	ldr	r3, .L2916
	str	r2, [r3, #8]
.L2912:
	mov	r0, r4
	cbz	r4, .L2911
	bl	nftl_add
	cbnz	r0, .L2913
	ldr	r0, .L2916+4
	bl	NAND_Print
	movs	r0, #1
.L2911:
	pop	{r4, pc}
.L2913:
	ldr	r4, [r4, #48]
	b	.L2912
.L2917:
	.align	2
.L2916:
	.word	.LANCHOR0
	.word	.LC494
	.size	nftl_build_all, .-nftl_build_all
	.section	.text.nftl_build_one,"ax",%progbits
	.align	1
	.global	nftl_build_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_build_one, %function
nftl_build_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldr	r4, [r0, #56]
	cbnz	r1, .L2920
	ldr	r3, .L2924
	str	r1, [r3, #8]
.L2920:
	cbnz	r4, .L2923
	mov	r0, r4
	b	.L2918
.L2923:
	ldrh	r3, [r4]
	cmp	r3, r5
	bne	.L2921
	mov	r0, r4
	bl	nftl_add
	cbnz	r0, .L2921
	ldr	r0, .L2924+4
	bl	NAND_Print
	movs	r0, #1
.L2918:
	pop	{r3, r4, r5, pc}
.L2921:
	ldr	r4, [r4, #48]
	b	.L2920
.L2925:
	.align	2
.L2924:
	.word	.LANCHOR0
	.word	.LC494
	.size	nftl_build_one, .-nftl_build_one
	.section	.text.nftl_zone_release,"ax",%progbits
	.align	1
	.global	nftl_zone_release
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_zone_release, %function
nftl_zone_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nftl_cache_exit
	mov	r0, r4
	bl	zone_param_exit
	ldr	r3, [r4, #4]
	ldr	r0, [r3, #32]
	bl	nftl_free
	ldr	r0, [r4, #4]
	bl	nftl_free
	mov	r0, r4
	pop	{r4, lr}
	b	nftl_free
	.size	nftl_zone_release, .-nftl_zone_release
	.section	.text.nftl_exit,"ax",%progbits
	.align	1
	.global	nftl_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_exit, %function
nftl_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	bl	free_nand_partition
	ldr	r0, [r4, #12]
	bl	nftl_zone_release
	ldr	r0, [r4, #16]
	bl	nftl_free
	movs	r0, #0
	pop	{r4, pc}
	.size	nftl_exit, .-nftl_exit
	.section	.text.nand_ftl_exit,"ax",%progbits
	.align	1
	.global	nand_ftl_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_ftl_exit, %function
nand_ftl_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r5, .L2931
	ldr	r0, .L2931
	bl	del_last_nftl_blk
	mov	r4, r0
.L2929:
	mov	r0, r4
	cbnz	r4, .L2930
	pop	{r3, r4, r5, pc}
.L2930:
	bl	nftl_exit
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	bl	del_last_nftl_blk
	mov	r4, r0
	b	.L2929
.L2932:
	.align	2
.L2931:
	.word	.LANCHOR0
	.size	nand_ftl_exit, .-nand_ftl_exit
	.global	sandisk_1y
	.global	sandisk_read_retry_reg_adr_1y
	.global	sandisk_read_retry_cmd_1y
	.global	sandisk_read_retry_exit_cmd_1y
	.global	sandisk_read_retry_enable_cmd_1y
	.global	sandisk_24
	.global	sandisk_read_retry_reg_adr_24
	.global	sandisk_read_retry_cmd_24
	.global	sandisk_19_high
	.global	sandisk_19_low
	.global	sandisk_read_retry_reg_adr_19
	.global	sandisk_read_retry_cmd_19
	.global	sandisk_read_retry_disable_cmd_19
	.global	sandisk_read_retry_enable_cmd_19
	.global	sandisk_acti_start_addr
	.global	sandisk_acti_start_cmd
	.global	sandisk_read_retry_reg_cnt
	.global	sandisk_read_retry_cycle
	.global	sandisk_read_retry_mode
	.global	hynix16nm_read_retry_reg_adr
	.global	hynix16nm_read_retry_reg_num
	.global	hynix16nm_read_retry_cycle
	.global	hynix16nm_read_retry_mode
	.global	sandisk_A19_1z_8g
	.global	sandisk_A19_1z_16g
	.global	sandisk_A19_1y
	.global	sandisk_A19_read_retry_reg_adr_1y
	.global	sandisk_A19_read_retry_cmd_1y
	.global	sandisk_A19_read_retry_exit_cmd_1y
	.global	sandisk_A19_read_retry_enable_cmd_1y
	.global	sandisk_A19_read_retry_reg_cnt
	.global	sandisk_A19_read_retry_cycle
	.global	sandisk_A19_read_retry_mode
	.global	para1
	.global	para0
	.global	hynix26nm_lsb_mode_reg_num
	.global	hynix26nm_lsb_mode_val
	.global	hynix26nm_lsb_mode_default_val
	.global	hynix26nm_lsb_mode_reg_adr
	.global	hynix26nm_read_retry_val
	.global	hynix26nm_read_retry_reg_adr
	.global	hynix26nm_read_retry_reg_num
	.global	hynix26nm_read_retry_cycle
	.global	hynix26nm_read_retry_mode
	.global	toshiba_read_retry_exit_cmd
	.global	toshiba_read_retry_last_cmd
	.global	toshiba_p1_3
	.global	toshiba_p1_2
	.global	toshiba_read_retry_addr_2
	.global	toshiba_read_retry_cmd_2
	.global	toshiba_p1_1
	.global	toshiba_read_retry_addr_1
	.global	toshiba_read_retry_cmd_1
	.global	toshiba_read_retry_end_cmd
	.global	toshiba_read_retry_start_cmd
	.global	toshiba_read_retry_reg_cnt
	.global	toshiba_read_retry_cycle
	.global	toshiba_read_retry_mode
	.global	micron_p1_4
	.global	micron_p1_3
	.global	micron_p1_2
	.global	micron_p1_1
	.global	micron_read_retry_cycle
	.global	micron_read_retry_mode
	.global	hynix20nm_lsb_mode_reg_num
	.global	hynix20nm_lsb_mode_val
	.global	hynix20nm_lsb_mode_default_val
	.global	hynix20nm_lsb_mode_reg_adr
	.global	hynix20nm_read_retry_reg_adr_2
	.global	hynix20nm_read_retry_reg_adr_1
	.global	hynix20nm_read_retry_reg_adr
	.global	hynix20nm_read_retry_reg_num
	.global	hynix20nm_read_retry_cycle
	.global	hynix20nm_read_retry_mode
	.global	samsung_p1
	.global	samsung_read_retry_cmd
	.global	samsung_read_retry_addr
	.global	samsung_read_retry_cycle
	.global	samsung_read_retry_mode
	.global	phyinfo
	.global	nftl_blk_head
	.global	mod
	.global	com
	.section	.rodata
	.set	.LANCHOR85,. + 0
.LC1:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
.LC3:
	.byte	44
	.byte	100
	.byte	68
	.byte	50
	.byte	-91
	.byte	-1
	.byte	-1
	.byte	-1
.LC4:
	.byte	44
	.byte	-124
	.byte	68
	.byte	50
	.byte	-86
	.byte	4
	.byte	0
	.byte	0
.LC2:
	.byte	115
	.byte	117
	.byte	110
	.byte	120
	.byte	105
.LC0:
	.byte	97
	.byte	108
	.byte	108
	.byte	119
	.byte	105
	.byte	110
	.byte	110
	.byte	101
	.byte	114
	.section	.bss.hynix16nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR65,. + 0
	.type	hynix16nm_read_retry_cycle, %object
	.size	hynix16nm_read_retry_cycle, 1
hynix16nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix16nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR68,. + 0
	.type	hynix16nm_read_retry_mode, %object
	.size	hynix16nm_read_retry_mode, 1
hynix16nm_read_retry_mode:
	.space	1
	.section	.bss.hynix16nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR67,. + 0
	.type	hynix16nm_read_retry_reg_adr, %object
	.size	hynix16nm_read_retry_reg_adr, 4
hynix16nm_read_retry_reg_adr:
	.space	4
	.section	.bss.hynix16nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR66,. + 0
	.type	hynix16nm_read_retry_reg_num, %object
	.size	hynix16nm_read_retry_reg_num, 1
hynix16nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix20nm_lsb_mode_default_val,"aw",%nobits
	.set	.LANCHOR17,. + 0
	.type	hynix20nm_lsb_mode_default_val, %object
	.size	hynix20nm_lsb_mode_default_val, 4
hynix20nm_lsb_mode_default_val:
	.space	4
	.section	.bss.hynix20nm_lsb_mode_reg_adr,"aw",%nobits
	.set	.LANCHOR15,. + 0
	.type	hynix20nm_lsb_mode_reg_adr, %object
	.size	hynix20nm_lsb_mode_reg_adr, 4
hynix20nm_lsb_mode_reg_adr:
	.space	4
	.section	.bss.hynix20nm_lsb_mode_reg_num,"aw",%nobits
	.set	.LANCHOR14,. + 0
	.type	hynix20nm_lsb_mode_reg_num, %object
	.size	hynix20nm_lsb_mode_reg_num, 1
hynix20nm_lsb_mode_reg_num:
	.space	1
	.section	.bss.hynix20nm_lsb_mode_val,"aw",%nobits
	.set	.LANCHOR16,. + 0
	.type	hynix20nm_lsb_mode_val, %object
	.size	hynix20nm_lsb_mode_val, 4
hynix20nm_lsb_mode_val:
	.space	4
	.section	.bss.hynix20nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR10,. + 0
	.type	hynix20nm_read_retry_cycle, %object
	.size	hynix20nm_read_retry_cycle, 1
hynix20nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix20nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR13,. + 0
	.type	hynix20nm_read_retry_mode, %object
	.size	hynix20nm_read_retry_mode, 1
hynix20nm_read_retry_mode:
	.space	1
	.section	.bss.hynix20nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR12,. + 0
	.type	hynix20nm_read_retry_reg_adr, %object
	.size	hynix20nm_read_retry_reg_adr, 8
hynix20nm_read_retry_reg_adr:
	.space	8
	.section	.bss.hynix20nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR11,. + 0
	.type	hynix20nm_read_retry_reg_num, %object
	.size	hynix20nm_read_retry_reg_num, 1
hynix20nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix26nm_lsb_mode_default_val,"aw",%nobits
	.set	.LANCHOR51,. + 0
	.type	hynix26nm_lsb_mode_default_val, %object
	.size	hynix26nm_lsb_mode_default_val, 5
hynix26nm_lsb_mode_default_val:
	.space	5
	.section	.bss.hynix26nm_lsb_mode_reg_adr,"aw",%nobits
	.set	.LANCHOR49,. + 0
	.type	hynix26nm_lsb_mode_reg_adr, %object
	.size	hynix26nm_lsb_mode_reg_adr, 5
hynix26nm_lsb_mode_reg_adr:
	.space	5
	.section	.bss.hynix26nm_lsb_mode_reg_num,"aw",%nobits
	.set	.LANCHOR48,. + 0
	.type	hynix26nm_lsb_mode_reg_num, %object
	.size	hynix26nm_lsb_mode_reg_num, 1
hynix26nm_lsb_mode_reg_num:
	.space	1
	.section	.bss.hynix26nm_lsb_mode_val,"aw",%nobits
	.set	.LANCHOR50,. + 0
	.type	hynix26nm_lsb_mode_val, %object
	.size	hynix26nm_lsb_mode_val, 5
hynix26nm_lsb_mode_val:
	.space	5
	.section	.bss.hynix26nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR43,. + 0
	.type	hynix26nm_read_retry_cycle, %object
	.size	hynix26nm_read_retry_cycle, 1
hynix26nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix26nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR47,. + 0
	.type	hynix26nm_read_retry_mode, %object
	.size	hynix26nm_read_retry_mode, 1
hynix26nm_read_retry_mode:
	.space	1
	.section	.bss.hynix26nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR46,. + 0
	.type	hynix26nm_read_retry_reg_adr, %object
	.size	hynix26nm_read_retry_reg_adr, 4
hynix26nm_read_retry_reg_adr:
	.space	4
	.section	.bss.hynix26nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR44,. + 0
	.type	hynix26nm_read_retry_reg_num, %object
	.size	hynix26nm_read_retry_reg_num, 1
hynix26nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix26nm_read_retry_val,"aw",%nobits
	.align	1
	.set	.LANCHOR45,. + 0
	.type	hynix26nm_read_retry_val, %object
	.size	hynix26nm_read_retry_val, 56
hynix26nm_read_retry_val:
	.space	56
	.section	.bss.micron_p1,"aw",%nobits
	.align	2
	.set	.LANCHOR19,. + 0
	.type	micron_p1, %object
	.size	micron_p1, 4
micron_p1:
	.space	4
	.section	.bss.micron_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR20,. + 0
	.type	micron_read_retry_cycle, %object
	.size	micron_read_retry_cycle, 1
micron_read_retry_cycle:
	.space	1
	.section	.bss.micron_read_retry_mode,"aw",%nobits
	.set	.LANCHOR18,. + 0
	.type	micron_read_retry_mode, %object
	.size	micron_read_retry_mode, 1
micron_read_retry_mode:
	.space	1
	.section	.bss.nand_on_panic,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	nand_on_panic, %object
	.size	nand_on_panic, 4
nand_on_panic:
	.space	4
	.section	.bss.nftl_blk_head,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	nftl_blk_head, %object
	.size	nftl_blk_head, 76
nftl_blk_head:
	.space	76
	.section	.bss.panic_enable,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	panic_enable, %object
	.size	panic_enable, 4
panic_enable:
	.space	4
	.section	.bss.panic_info,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	panic_info, %object
	.size	panic_info, 24
panic_info:
	.space	24
	.section	.bss.panic_part,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	panic_part, %object
	.size	panic_part, 12
panic_part:
	.space	12
	.section	.bss.phyinfo,"aw",%nobits
	.align	2
	.set	.LANCHOR105,. + 0
	.type	phyinfo, %object
	.size	phyinfo, 20
phyinfo:
	.space	20
	.section	.bss.samsung_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR8,. + 0
	.type	samsung_read_retry_cycle, %object
	.size	samsung_read_retry_cycle, 1
samsung_read_retry_cycle:
	.space	1
	.section	.bss.samsung_read_retry_mode,"aw",%nobits
	.set	.LANCHOR9,. + 0
	.type	samsung_read_retry_mode, %object
	.size	samsung_read_retry_mode, 1
samsung_read_retry_mode:
	.space	1
	.section	.bss.sandisk_A19_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR55,. + 0
	.type	sandisk_A19_read_retry_cycle, %object
	.size	sandisk_A19_read_retry_cycle, 1
sandisk_A19_read_retry_cycle:
	.space	1
	.section	.bss.sandisk_A19_read_retry_mode,"aw",%nobits
	.set	.LANCHOR54,. + 0
	.type	sandisk_A19_read_retry_mode, %object
	.size	sandisk_A19_read_retry_mode, 1
sandisk_A19_read_retry_mode:
	.space	1
	.section	.bss.sandisk_A19_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR56,. + 0
	.type	sandisk_A19_read_retry_reg_cnt, %object
	.size	sandisk_A19_read_retry_reg_cnt, 1
sandisk_A19_read_retry_reg_cnt:
	.space	1
	.section	.bss.sandisk_A19_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR58,. + 0
	.type	sandisk_A19_sclk0_bak, %object
	.size	sandisk_A19_sclk0_bak, 4
sandisk_A19_sclk0_bak:
	.space	4
	.section	.bss.sandisk_A19_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR57,. + 0
	.type	sandisk_A19_sclk1_bak, %object
	.size	sandisk_A19_sclk1_bak, 4
sandisk_A19_sclk1_bak:
	.space	4
	.section	.bss.sandisk_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR78,. + 0
	.type	sandisk_read_retry_cycle, %object
	.size	sandisk_read_retry_cycle, 1
sandisk_read_retry_cycle:
	.space	1
	.section	.bss.sandisk_read_retry_mode,"aw",%nobits
	.set	.LANCHOR71,. + 0
	.type	sandisk_read_retry_mode, %object
	.size	sandisk_read_retry_mode, 1
sandisk_read_retry_mode:
	.space	1
	.section	.bss.sandisk_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR87,. + 0
	.type	sandisk_read_retry_reg_cnt, %object
	.size	sandisk_read_retry_reg_cnt, 1
sandisk_read_retry_reg_cnt:
	.space	1
	.section	.bss.sandisk_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR70,. + 0
	.type	sandisk_sclk0_bak, %object
	.size	sandisk_sclk0_bak, 4
sandisk_sclk0_bak:
	.space	4
	.section	.bss.sandisk_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR69,. + 0
	.type	sandisk_sclk1_bak, %object
	.size	sandisk_sclk1_bak, 4
sandisk_sclk1_bak:
	.space	4
	.section	.bss.sandisk_toggle_mode_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR75,. + 0
	.type	sandisk_toggle_mode_flag, %object
	.size	sandisk_toggle_mode_flag, 4
sandisk_toggle_mode_flag:
	.space	4
	.section	.bss.toshiba_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR41,. + 0
	.type	toshiba_read_retry_cycle, %object
	.size	toshiba_read_retry_cycle, 1
toshiba_read_retry_cycle:
	.space	1
	.section	.bss.toshiba_read_retry_mode,"aw",%nobits
	.set	.LANCHOR27,. + 0
	.type	toshiba_read_retry_mode, %object
	.size	toshiba_read_retry_mode, 1
toshiba_read_retry_mode:
	.space	1
	.section	.bss.toshiba_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR42,. + 0
	.type	toshiba_read_retry_reg_cnt, %object
	.size	toshiba_read_retry_reg_cnt, 1
toshiba_read_retry_reg_cnt:
	.space	1
	.section	.bss.toshiba_retry_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR29,. + 0
	.type	toshiba_retry_flag, %object
	.size	toshiba_retry_flag, 4
toshiba_retry_flag:
	.space	4
	.section	.bss.toshiba_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR26,. + 0
	.type	toshiba_sclk0_bak, %object
	.size	toshiba_sclk0_bak, 4
toshiba_sclk0_bak:
	.space	4
	.section	.bss.toshiba_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR25,. + 0
	.type	toshiba_sclk1_bak, %object
	.size	toshiba_sclk1_bak, 4
toshiba_sclk1_bak:
	.space	4
	.section	.bss.toshiba_toggle_mode_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR37,. + 0
	.type	toshiba_toggle_mode_flag, %object
	.size	toshiba_toggle_mode_flag, 4
toshiba_toggle_mode_flag:
	.space	4
	.section	.data.hynix20nm_read_retry_reg_adr_1,"aw",%progbits
	.type	hynix20nm_read_retry_reg_adr_1, %object
	.size	hynix20nm_read_retry_reg_adr_1, 8
hynix20nm_read_retry_reg_adr_1:
	.byte	-52
	.byte	-65
	.byte	-86
	.byte	-85
	.byte	-51
	.byte	-83
	.byte	-82
	.byte	-81
	.section	.data.hynix20nm_read_retry_reg_adr_2,"aw",%progbits
	.type	hynix20nm_read_retry_reg_adr_2, %object
	.size	hynix20nm_read_retry_reg_adr_2, 8
hynix20nm_read_retry_reg_adr_2:
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.section	.data.micron_p1_1,"aw",%progbits
	.set	.LANCHOR22,. + 0
	.type	micron_p1_1, %object
	.size	micron_p1_1, 10
micron_p1_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.data.micron_p1_2,"aw",%progbits
	.set	.LANCHOR21,. + 0
	.type	micron_p1_2, %object
	.size	micron_p1_2, 12
micron_p1_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	12
	.section	.data.micron_p1_3,"aw",%progbits
	.set	.LANCHOR23,. + 0
	.type	micron_p1_3, %object
	.size	micron_p1_3, 7
micron_p1_3:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.data.micron_p1_4,"aw",%progbits
	.set	.LANCHOR24,. + 0
	.type	micron_p1_4, %object
	.size	micron_p1_4, 18
micron_p1_4:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.section	.data.samsung_p1,"aw",%progbits
	.set	.LANCHOR7,. + 0
	.type	samsung_p1, %object
	.size	samsung_p1, 60
samsung_p1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	10
	.byte	0
	.byte	0
	.byte	40
	.byte	0
	.byte	-20
	.byte	-40
	.byte	-19
	.byte	-11
	.byte	-19
	.byte	-26
	.byte	10
	.byte	15
	.byte	5
	.byte	0
	.byte	15
	.byte	10
	.byte	-5
	.byte	-20
	.byte	-24
	.byte	-17
	.byte	-24
	.byte	-36
	.byte	-15
	.byte	-5
	.byte	-2
	.byte	-16
	.byte	10
	.byte	0
	.byte	-5
	.byte	-20
	.byte	-48
	.byte	-30
	.byte	-48
	.byte	-62
	.byte	20
	.byte	15
	.byte	-5
	.byte	-20
	.byte	-24
	.byte	-5
	.byte	-24
	.byte	-36
	.byte	30
	.byte	20
	.byte	-5
	.byte	-20
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-8
	.byte	7
	.byte	12
	.byte	2
	.byte	0
	.section	.data.samsung_read_retry_addr,"aw",%progbits
	.set	.LANCHOR6,. + 0
	.type	samsung_read_retry_addr, %object
	.size	samsung_read_retry_addr, 4
samsung_read_retry_addr:
	.byte	-89
	.byte	-92
	.byte	-91
	.byte	-90
	.section	.data.samsung_read_retry_cmd,"aw",%progbits
	.set	.LANCHOR5,. + 0
	.type	samsung_read_retry_cmd, %object
	.size	samsung_read_retry_cmd, 4
samsung_read_retry_cmd:
	.byte	-95
	.byte	-95
	.byte	-95
	.byte	-95
	.section	.data.sandisk_19_high,"aw",%progbits
	.set	.LANCHOR79,. + 0
	.type	sandisk_19_high, %object
	.size	sandisk_19_high, 60
sandisk_19_high:
	.byte	0
	.byte	-16
	.byte	0
	.byte	15
	.byte	-32
	.byte	0
	.byte	15
	.byte	-48
	.byte	0
	.byte	14
	.byte	-32
	.byte	0
	.byte	14
	.byte	-48
	.byte	0
	.byte	13
	.byte	-16
	.byte	0
	.byte	13
	.byte	-32
	.byte	0
	.byte	13
	.byte	-48
	.byte	0
	.byte	1
	.byte	16
	.byte	0
	.byte	2
	.byte	32
	.byte	0
	.byte	2
	.byte	16
	.byte	0
	.byte	3
	.byte	32
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	14
	.byte	-16
	.byte	0
	.byte	13
	.byte	-64
	.byte	0
	.byte	15
	.byte	-16
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	13
	.byte	-80
	.byte	0
	.byte	12
	.byte	-96
	.byte	0
	.section	.data.sandisk_19_low,"aw",%progbits
	.set	.LANCHOR77,. + 0
	.type	sandisk_19_low, %object
	.size	sandisk_19_low, 48
sandisk_19_low:
	.byte	-16
	.byte	0
	.byte	-16
	.byte	-32
	.byte	0
	.byte	-32
	.byte	-48
	.byte	0
	.byte	-48
	.byte	16
	.byte	0
	.byte	16
	.byte	32
	.byte	0
	.byte	32
	.byte	48
	.byte	0
	.byte	48
	.byte	-64
	.byte	0
	.byte	-48
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	32
	.byte	16
	.byte	0
	.byte	32
	.byte	-80
	.byte	0
	.byte	-48
	.byte	-96
	.byte	0
	.byte	-48
	.byte	-112
	.byte	0
	.byte	-48
	.byte	-80
	.byte	0
	.byte	-64
	.byte	-96
	.byte	0
	.byte	-64
	.byte	-112
	.byte	0
	.byte	-64
	.section	.data.sandisk_1y,"aw",%progbits
	.set	.LANCHOR84,. + 0
	.type	sandisk_1y, %object
	.size	sandisk_1y, 76
sandisk_1y:
	.byte	4
	.byte	0
	.byte	124
	.byte	124
	.byte	8
	.byte	0
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	124
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	120
	.byte	120
	.byte	16
	.byte	0
	.byte	8
	.byte	8
	.byte	124
	.byte	124
	.byte	120
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	20
	.byte	4
	.byte	4
	.byte	0
	.byte	120
	.byte	120
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	116
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	120
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	112
	.byte	112
	.byte	112
	.section	.data.sandisk_24,"aw",%progbits
	.set	.LANCHOR82,. + 0
	.type	sandisk_24, %object
	.size	sandisk_24, 27
sandisk_24:
	.byte	0
	.byte	-16
	.byte	0
	.byte	0
	.byte	-32
	.byte	0
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-18
	.byte	-32
	.byte	-32
	.byte	-34
	.byte	-48
	.byte	-48
	.byte	-51
	.byte	-64
	.byte	-64
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.section	.data.sandisk_A19_1y,"aw",%progbits
	.set	.LANCHOR62,. + 0
	.type	sandisk_A19_1y, %object
	.size	sandisk_A19_1y, 124
sandisk_A19_1y:
	.byte	124
	.byte	0
	.byte	0
	.byte	124
	.byte	4
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	0
	.byte	120
	.byte	116
	.byte	8
	.byte	124
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	120
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	0
	.byte	124
	.byte	116
	.byte	112
	.byte	0
	.byte	120
	.byte	0
	.byte	124
	.byte	0
	.byte	120
	.byte	124
	.byte	120
	.byte	0
	.byte	120
	.byte	120
	.byte	116
	.byte	0
	.byte	120
	.byte	116
	.byte	112
	.byte	0
	.byte	120
	.byte	112
	.byte	108
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	124
	.byte	12
	.byte	4
	.byte	124
	.byte	120
	.byte	12
	.byte	4
	.byte	120
	.byte	116
	.byte	16
	.byte	8
	.byte	0
	.byte	124
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	116
	.byte	112
	.byte	120
	.byte	116
	.byte	112
	.byte	108
	.byte	120
	.byte	116
	.byte	108
	.byte	104
	.byte	120
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	112
	.byte	116
	.byte	112
	.byte	120
	.byte	112
	.byte	108
	.byte	104
	.byte	120
	.byte	112
	.byte	112
	.byte	108
	.byte	120
	.byte	108
	.byte	112
	.byte	108
	.byte	120
	.byte	108
	.byte	108
	.byte	104
	.byte	120
	.byte	108
	.byte	104
	.byte	100
	.byte	116
	.byte	104
	.byte	108
	.byte	104
	.byte	116
	.byte	104
	.byte	104
	.byte	100
	.section	.data.sandisk_A19_1z_16g,"aw",%progbits
	.set	.LANCHOR60,. + 0
	.type	sandisk_A19_1z_16g, %object
	.size	sandisk_A19_1z_16g, 128
sandisk_A19_1z_16g:
	.byte	124
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	124
	.byte	120
	.byte	0
	.byte	8
	.byte	4
	.byte	8
	.byte	0
	.byte	124
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	120
	.byte	124
	.byte	8
	.byte	4
	.byte	4
	.byte	124
	.byte	116
	.byte	120
	.byte	4
	.byte	4
	.byte	4
	.byte	0
	.byte	8
	.byte	4
	.byte	0
	.byte	124
	.byte	0
	.byte	4
	.byte	8
	.byte	4
	.byte	12
	.byte	4
	.byte	124
	.byte	120
	.byte	124
	.byte	4
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	4
	.byte	0
	.byte	124
	.byte	120
	.byte	0
	.byte	124
	.byte	116
	.byte	120
	.byte	112
	.byte	120
	.byte	8
	.byte	8
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	8
	.byte	4
	.byte	12
	.byte	8
	.byte	12
	.byte	8
	.byte	0
	.byte	0
	.byte	12
	.byte	8
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	8
	.byte	8
	.byte	0
	.byte	124
	.byte	116
	.byte	116
	.byte	0
	.byte	124
	.byte	120
	.byte	116
	.byte	124
	.byte	120
	.byte	112
	.byte	116
	.byte	116
	.byte	116
	.byte	124
	.byte	116
	.byte	112
	.byte	112
	.byte	12
	.byte	12
	.byte	8
	.byte	4
	.byte	16
	.byte	12
	.byte	12
	.byte	8
	.byte	112
	.byte	112
	.byte	112
	.byte	116
	.byte	116
	.byte	112
	.byte	112
	.byte	112
	.section	.data.sandisk_A19_1z_8g,"aw",%progbits
	.set	.LANCHOR61,. + 0
	.type	sandisk_A19_1z_8g, %object
	.size	sandisk_A19_1z_8g, 124
sandisk_A19_1z_8g:
	.byte	4
	.byte	4
	.byte	120
	.byte	120
	.byte	4
	.byte	4
	.byte	124
	.byte	116
	.byte	0
	.byte	0
	.byte	4
	.byte	120
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	116
	.byte	8
	.byte	8
	.byte	4
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	120
	.byte	124
	.byte	124
	.byte	0
	.byte	124
	.byte	4
	.byte	4
	.byte	124
	.byte	112
	.byte	124
	.byte	124
	.byte	116
	.byte	116
	.byte	0
	.byte	0
	.byte	120
	.byte	112
	.byte	12
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	8
	.byte	4
	.byte	120
	.byte	120
	.byte	8
	.byte	120
	.byte	124
	.byte	124
	.byte	120
	.byte	112
	.byte	120
	.byte	120
	.byte	112
	.byte	108
	.byte	0
	.byte	0
	.byte	116
	.byte	108
	.byte	8
	.byte	8
	.byte	0
	.byte	116
	.byte	124
	.byte	124
	.byte	120
	.byte	108
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	116
	.byte	116
	.byte	116
	.byte	108
	.byte	120
	.byte	120
	.byte	124
	.byte	112
	.byte	12
	.byte	12
	.byte	0
	.byte	116
	.byte	4
	.byte	4
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	124
	.byte	116
	.byte	120
	.byte	120
	.byte	112
	.byte	104
	.byte	8
	.byte	8
	.byte	0
	.byte	112
	.byte	16
	.byte	16
	.byte	12
	.byte	120
	.byte	0
	.byte	0
	.byte	12
	.byte	8
	.section	.data.sandisk_A19_read_retry_cmd_1y,"aw",%progbits
	.set	.LANCHOR59,. + 0
	.type	sandisk_A19_read_retry_cmd_1y, %object
	.size	sandisk_A19_read_retry_cmd_1y, 1
sandisk_A19_read_retry_cmd_1y:
	.byte	-17
	.section	.data.sandisk_A19_read_retry_enable_cmd_1y,"aw",%progbits
	.type	sandisk_A19_read_retry_enable_cmd_1y, %object
	.size	sandisk_A19_read_retry_enable_cmd_1y, 1
sandisk_A19_read_retry_enable_cmd_1y:
	.byte	93
	.section	.data.sandisk_A19_read_retry_exit_cmd_1y,"aw",%progbits
	.type	sandisk_A19_read_retry_exit_cmd_1y, %object
	.size	sandisk_A19_read_retry_exit_cmd_1y, 1
sandisk_A19_read_retry_exit_cmd_1y:
	.byte	-1
	.section	.data.sandisk_A19_read_retry_reg_adr_1y,"aw",%progbits
	.set	.LANCHOR63,. + 0
	.type	sandisk_A19_read_retry_reg_adr_1y, %object
	.size	sandisk_A19_read_retry_reg_adr_1y, 1
sandisk_A19_read_retry_reg_adr_1y:
	.byte	17
	.section	.data.sandisk_acti_start_addr,"aw",%progbits
	.set	.LANCHOR86,. + 0
	.type	sandisk_acti_start_addr, %object
	.size	sandisk_acti_start_addr, 9
sandisk_acti_start_addr:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.section	.data.sandisk_acti_start_cmd,"aw",%progbits
	.set	.LANCHOR72,. + 0
	.type	sandisk_acti_start_cmd, %object
	.size	sandisk_acti_start_cmd, 2
sandisk_acti_start_cmd:
	.byte	59
	.byte	-71
	.section	.data.sandisk_read_retry_cmd_19,"aw",%progbits
	.set	.LANCHOR73,. + 0
	.type	sandisk_read_retry_cmd_19, %object
	.size	sandisk_read_retry_cmd_19, 3
sandisk_read_retry_cmd_19:
	.byte	83
	.byte	83
	.byte	83
	.section	.data.sandisk_read_retry_cmd_1y,"aw",%progbits
	.set	.LANCHOR74,. + 0
	.type	sandisk_read_retry_cmd_1y, %object
	.size	sandisk_read_retry_cmd_1y, 1
sandisk_read_retry_cmd_1y:
	.byte	-17
	.section	.data.sandisk_read_retry_cmd_24,"aw",%progbits
	.type	sandisk_read_retry_cmd_24, %object
	.size	sandisk_read_retry_cmd_24, 3
sandisk_read_retry_cmd_24:
	.byte	83
	.byte	83
	.byte	83
	.section	.data.sandisk_read_retry_disable_cmd_19,"aw",%progbits
	.set	.LANCHOR76,. + 0
	.type	sandisk_read_retry_disable_cmd_19, %object
	.size	sandisk_read_retry_disable_cmd_19, 1
sandisk_read_retry_disable_cmd_19:
	.byte	-42
	.section	.data.sandisk_read_retry_enable_cmd_19,"aw",%progbits
	.type	sandisk_read_retry_enable_cmd_19, %object
	.size	sandisk_read_retry_enable_cmd_19, 1
sandisk_read_retry_enable_cmd_19:
	.byte	-74
	.section	.data.sandisk_read_retry_enable_cmd_1y,"aw",%progbits
	.type	sandisk_read_retry_enable_cmd_1y, %object
	.size	sandisk_read_retry_enable_cmd_1y, 1
sandisk_read_retry_enable_cmd_1y:
	.byte	93
	.section	.data.sandisk_read_retry_exit_cmd_1y,"aw",%progbits
	.type	sandisk_read_retry_exit_cmd_1y, %object
	.size	sandisk_read_retry_exit_cmd_1y, 1
sandisk_read_retry_exit_cmd_1y:
	.byte	-1
	.section	.data.sandisk_read_retry_reg_adr_19,"aw",%progbits
	.set	.LANCHOR80,. + 0
	.type	sandisk_read_retry_reg_adr_19, %object
	.size	sandisk_read_retry_reg_adr_19, 9
sandisk_read_retry_reg_adr_19:
	.byte	4
	.byte	5
	.byte	7
	.space	6
	.section	.data.sandisk_read_retry_reg_adr_1y,"aw",%progbits
	.set	.LANCHOR83,. + 0
	.type	sandisk_read_retry_reg_adr_1y, %object
	.size	sandisk_read_retry_reg_adr_1y, 1
sandisk_read_retry_reg_adr_1y:
	.byte	17
	.section	.data.sandisk_read_retry_reg_adr_24,"aw",%progbits
	.set	.LANCHOR81,. + 0
	.type	sandisk_read_retry_reg_adr_24, %object
	.size	sandisk_read_retry_reg_adr_24, 9
sandisk_read_retry_reg_adr_24:
	.byte	4
	.byte	5
	.byte	7
	.space	6
	.section	.data.toshiba_p1_1,"aw",%progbits
	.set	.LANCHOR40,. + 0
	.type	toshiba_p1_1, %object
	.size	toshiba_p1_1, 28
toshiba_p1_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.data.toshiba_p1_2,"aw",%progbits
	.set	.LANCHOR38,. + 0
	.type	toshiba_p1_2, %object
	.size	toshiba_p1_2, 40
toshiba_p1_2:
	.byte	4
	.byte	4
	.byte	124
	.byte	126
	.byte	0
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	0
	.byte	124
	.byte	118
	.byte	116
	.byte	114
	.byte	0
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	126
	.byte	118
	.byte	116
	.byte	0
	.byte	16
	.byte	118
	.byte	114
	.byte	112
	.byte	0
	.byte	2
	.byte	0
	.byte	126
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.toshiba_p1_3,"aw",%progbits
	.set	.LANCHOR39,. + 0
	.type	toshiba_p1_3, %object
	.size	toshiba_p1_3, 55
toshiba_p1_3:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	0
	.byte	122
	.byte	0
	.byte	122
	.byte	122
	.byte	0
	.byte	120
	.byte	2
	.byte	120
	.byte	122
	.byte	0
	.byte	126
	.byte	4
	.byte	126
	.byte	122
	.byte	0
	.byte	118
	.byte	4
	.byte	118
	.byte	120
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	118
	.byte	0
	.byte	6
	.byte	10
	.byte	6
	.byte	2
	.byte	0
	.byte	116
	.byte	124
	.byte	116
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.toshiba_read_retry_addr_1,"aw",%progbits
	.set	.LANCHOR36,. + 0
	.type	toshiba_read_retry_addr_1, %object
	.size	toshiba_read_retry_addr_1, 4
toshiba_read_retry_addr_1:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.data.toshiba_read_retry_addr_2,"aw",%progbits
	.set	.LANCHOR35,. + 0
	.type	toshiba_read_retry_addr_2, %object
	.size	toshiba_read_retry_addr_2, 5
toshiba_read_retry_addr_2:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	13
	.section	.data.toshiba_read_retry_cmd_1,"aw",%progbits
	.set	.LANCHOR32,. + 0
	.type	toshiba_read_retry_cmd_1, %object
	.size	toshiba_read_retry_cmd_1, 4
toshiba_read_retry_cmd_1:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.section	.data.toshiba_read_retry_cmd_2,"aw",%progbits
	.set	.LANCHOR28,. + 0
	.type	toshiba_read_retry_cmd_2, %object
	.size	toshiba_read_retry_cmd_2, 5
toshiba_read_retry_cmd_2:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.section	.data.toshiba_read_retry_end_cmd,"aw",%progbits
	.set	.LANCHOR33,. + 0
	.type	toshiba_read_retry_end_cmd, %object
	.size	toshiba_read_retry_end_cmd, 2
toshiba_read_retry_end_cmd:
	.byte	38
	.byte	93
	.section	.data.toshiba_read_retry_exit_cmd,"aw",%progbits
	.set	.LANCHOR30,. + 0
	.type	toshiba_read_retry_exit_cmd, %object
	.size	toshiba_read_retry_exit_cmd, 1
toshiba_read_retry_exit_cmd:
	.byte	-1
	.section	.data.toshiba_read_retry_last_cmd,"aw",%progbits
	.set	.LANCHOR31,. + 0
	.type	toshiba_read_retry_last_cmd, %object
	.size	toshiba_read_retry_last_cmd, 1
toshiba_read_retry_last_cmd:
	.byte	-77
	.section	.data.toshiba_read_retry_start_cmd,"aw",%progbits
	.set	.LANCHOR34,. + 0
	.type	toshiba_read_retry_start_cmd, %object
	.size	toshiba_read_retry_start_cmd, 2
toshiba_read_retry_start_cmd:
	.byte	92
	.byte	-59
	.section	.rodata.__FUNCTION__.8456,"a",%progbits
	.set	.LANCHOR101,. + 0
	.type	__FUNCTION__.8456, %object
	.size	__FUNCTION__.8456, 25
__FUNCTION__.8456:
	.ascii	"nand_power_off_ecc_error\000"
	.section	.rodata.__func__.5926,"a",%progbits
	.set	.LANCHOR111,. + 0
	.type	__func__.5926, %object
	.size	__func__.5926, 9
__func__.5926:
	.ascii	"nftl_add\000"
	.section	.rodata.__func__.6086,"a",%progbits
	.set	.LANCHOR110,. + 0
	.type	__func__.6086, %object
	.size	__func__.6086, 16
__func__.6086:
	.ascii	"nftl_initialize\000"
	.section	.rodata.__func__.6280,"a",%progbits
	.set	.LANCHOR97,. + 0
	.type	__func__.6280, %object
	.size	__func__.6280, 19
__func__.6280:
	.ascii	"panic_recover_data\000"
	.section	.rodata.__func__.7172,"a",%progbits
	.set	.LANCHOR64,. + 0
	.type	__func__.7172, %object
	.size	__func__.7172, 25
__func__.7172:
	.ascii	"sandisk_A19_special_exit\000"
	.section	.rodata.__func__.7518,"a",%progbits
	.set	.LANCHOR88,. + 0
	.type	__func__.7518, %object
	.size	__func__.7518, 23
__func__.7518:
	.ascii	"nftl_sector_cache_init\000"
	.section	.rodata.__func__.7651,"a",%progbits
	.set	.LANCHOR99,. + 0
	.type	__func__.7651, %object
	.size	__func__.7651, 35
__func__.7651:
	.ascii	"_nftl_nand_read_logic_history_page\000"
	.section	.rodata.__func__.7894,"a",%progbits
	.set	.LANCHOR107,. + 0
	.type	__func__.7894, %object
	.size	__func__.7894, 16
__func__.7894:
	.ascii	"zone_param_init\000"
	.section	.rodata.__func__.8042,"a",%progbits
	.set	.LANCHOR104,. + 0
	.type	__func__.8042, %object
	.size	__func__.8042, 23
__func__.8042:
	.ascii	"get_current_used_block\000"
	.section	.rodata.__func__.8108,"a",%progbits
	.set	.LANCHOR90,. + 0
	.type	__func__.8108, %object
	.size	__func__.8108, 9
__func__.8108:
	.ascii	"init_nrc\000"
	.section	.rodata.__func__.8193,"a",%progbits
	.set	.LANCHOR98,. + 0
	.type	__func__.8193, %object
	.size	__func__.8193, 23
__func__.8193:
	.ascii	"torture_block_and_mark\000"
	.section	.rodata.__func__.8316,"a",%progbits
	.set	.LANCHOR100,. + 0
	.type	__func__.8316, %object
	.size	__func__.8316, 26
__func__.8316:
	.ascii	"block_last_page_ecc_error\000"
	.section	.rodata.__func__.8348,"a",%progbits
	.set	.LANCHOR91,. + 0
	.type	__func__.8348, %object
	.size	__func__.8348, 18
__func__.8348:
	.ascii	"nand_dbg_phy_read\000"
	.section	.rodata.__func__.8359,"a",%progbits
	.set	.LANCHOR92,. + 0
	.type	__func__.8359, %object
	.size	__func__.8359, 23
__func__.8359:
	.ascii	"nand_dbg_zone_phy_read\000"
	.section	.rodata.__func__.8370,"a",%progbits
	.set	.LANCHOR93,. + 0
	.type	__func__.8370, %object
	.size	__func__.8370, 24
__func__.8370:
	.ascii	"nand_dbg_zone_phy_write\000"
	.section	.rodata.__func__.8379,"a",%progbits
	.set	.LANCHOR94,. + 0
	.type	__func__.8379, %object
	.size	__func__.8379, 19
__func__.8379:
	.ascii	"nand_dbg_phy_write\000"
	.section	.rodata.__func__.8432,"a",%progbits
	.set	.LANCHOR96,. + 0
	.type	__func__.8432, %object
	.size	__func__.8432, 19
__func__.8432:
	.ascii	"write_data_to_nand\000"
	.section	.rodata.__func__.8674,"a",%progbits
	.set	.LANCHOR95,. + 0
	.type	__func__.8674, %object
	.size	__func__.8674, 16
__func__.8674:
	.ascii	"nftl_cache_init\000"
	.section	.rodata.__func__.9119,"a",%progbits
	.set	.LANCHOR106,. + 0
	.type	__func__.9119, %object
	.size	__func__.9119, 15
__func__.9119:
	.ascii	"shutdown_on_gc\000"
	.section	.rodata.__func__.9267,"a",%progbits
	.set	.LANCHOR103,. + 0
	.type	__func__.9267, %object
	.size	__func__.9267, 19
__func__.9267:
	.ascii	"get_logic_page_map\000"
	.section	.rodata.__func__.9324,"a",%progbits
	.set	.LANCHOR108,. + 0
	.type	__func__.9324, %object
	.size	__func__.9324, 11
__func__.9324:
	.ascii	"nftl_start\000"
	.section	.rodata.__nand_discard.str1.1,"aMS",%progbits,1
.LC248:
	.ascii	"[ND]dicard sector:0x%x,len:0x%x\012\000"
	.section	.rodata.__nand_flush_sector_write_cache.str1.1,"aMS",%progbits,1
.LC234:
	.ascii	"[NE]nand_flush_write_cache write error\012\000"
	.section	.rodata.__nand_flush_write_cache.str1.1,"aMS",%progbits,1
.LC246:
	.ascii	"[ND]flush cache %d %d!\012\000"
	.section	.rodata.__nand_read.str1.1,"aMS",%progbits,1
.LC229:
	.ascii	"[ND]read sector:0x%x,len:0x%x\012\000"
	.section	.rodata.__nand_write.str1.1,"aMS",%progbits,1
.LC231:
	.ascii	"[ND]write sector:0x%x,len:0x%x\012\000"
	.section	.rodata._nftl_nand_read_logic_history_page.str1.1,"aMS",%progbits,1
.LC277:
	.ascii	"[NE]%s malloc buffer fail\012\000"
.LC278:
	.ascii	"scan super block@%d\012\000"
.LC279:
	.ascii	"block@%d is bad\012\000"
.LC280:
	.ascii	"[NE]read sb@%u sp@%u err, maybe read a bad block\012"
	.ascii	"\000"
.LC281:
	.ascii	"[NE]read lb@%u lp@%u err\012\000"
.LC282:
	.ascii	"page@%u history%d data:\012\000"
.LC283:
	.ascii	"oob:\012\000"
.LC284:
	.ascii	"scan end total super blocks:%d\012\000"
	.section	.rodata._nftl_nand_read_logic_page.str1.1,"aMS",%progbits,1
.LC464:
	.ascii	"[NE]read a page: %d READ_RECLAIM!\012\000"
	.section	.rodata._nftl_nand_write_logic_page.str1.1,"aMS",%progbits,1
.LC463:
	.ascii	"[NE]error nand_write_logic_page_no_gc page_no:%u\012"
	.ascii	"\000"
	.section	.rodata.adjust_free_list.str1.1,"aMS",%progbits,1
.LC260:
	.ascii	"[NE]adjust free list fail!!\012\000"
.LC261:
	.ascii	"[NI]adjust free list : %d %d!!\012\000"
	.section	.rodata.block_last_page_ecc_error.str1.1,"aMS",%progbits,1
.LC296:
	.ascii	"[NE]do block_last_page_ecc_error!!\012\000"
.LC297:
	.ascii	"[NE]%s:malloc fail 1!\012\000"
.LC298:
	.ascii	"[NE]%s:malloc fail 2!\012\000"
.LC299:
	.ascii	"[NE]current_block_ecc_error unkown page data!!\012\000"
.LC300:
	.ascii	"[NE]current_block_ecc_error invalid page data!!\012"
	.ascii	"\000"
.LC301:
	.ascii	"[NE]current_block_ecc_error no free block!!!\012\000"
.LC302:
	.ascii	"[NE]do block_last_page_ecc_error end!!\012\000"
	.section	.rodata.build_zone_list.str1.1,"aMS",%progbits,1
.LC448:
	.ascii	"[ND]first\012\000"
.LC449:
	.ascii	"[NE]init_zone_after_first_scan error\012\000"
.LC450:
	.ascii	"[NE]second_scan_all_blocks error\012\000"
.LC451:
	.ascii	"[NI]nftl ok!\012\000"
	.section	.rodata.build_zone_list_first.str1.1,"aMS",%progbits,1
.LC275:
	.ascii	"[ND]build_zone_list_first.\012\000"
.LC276:
	.ascii	"[NE]no block %d\012\000"
	.section	.rodata.check_invalid_page_right.str1.1,"aMS",%progbits,1
.LC366:
	.ascii	"[ND]logic_page_map_temp NULL!!\012\000"
.LC367:
	.ascii	"[NE]invaild_page num error:[%d] [%d]  used_page:[%d"
	.ascii	"]!!\012\000"
	.section	.rodata.check_static_wear_leveling.str1.1,"aMS",%progbits,1
.LC249:
	.ascii	"[ND]swl: static WL need to do(%d : %d)\012\000"
.LC250:
	.ascii	"[ND]swl: min_ec_blk_no = %d,\012\000"
.LC251:
	.ascii	"[ND]swl: zone->blocks = %d)\012\000"
	.section	.rodata.com,"a",%progbits
	.set	.LANCHOR109,. + 0
	.type	com, %object
	.size	com, 11
com:
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	97
	.byte	116
	.byte	105
	.byte	98
	.byte	108
	.byte	101
	.byte	0
	.section	.rodata.crc_wrong.str1.1,"aMS",%progbits,1
.LC303:
	.ascii	"[NE]exception case wb %04x %04x, len: %d\012\000"
	.section	.rodata.cross_talk_rebuild_current_block.str1.1,"aMS",%progbits,1
.LC318:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 1\012\000"
.LC319:
	.ascii	"[NE]cross_talk_rebuild_current_block!! %d,%d,%d!\012"
	.ascii	"\000"
.LC320:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 2\012\000"
.LC321:
	.ascii	"[NE]cross_talk_rebuild_current_block!! %d,%d,%d,%d,"
	.ascii	"%d,%d!\012\000"
.LC322:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 3\012\000"
.LC323:
	.ascii	"[NE]corss talk rebuild 1 %d %d %d!\012\000"
.LC324:
	.ascii	"[NE]corss talk rebuild 2 %d %d %d!\012\000"
.LC325:
	.ascii	"[NE]get free block fail!\012\000"
.LC326:
	.ascii	"[NE]something is error here 14!\012\000"
.LC327:
	.ascii	"[NE]page lost %d %d\012\000"
	.section	.rodata.current_block_ecc_error.str1.1,"aMS",%progbits,1
.LC336:
	.ascii	"[NE]something is error here 16!\012\000"
.LC337:
	.ascii	"[NE]do current_block_ecc_error %d!!\012\000"
.LC338:
	.ascii	"[NE]power off ecc error 2.\012\000"
.LC339:
	.ascii	"[NE]current_block_ecc ok page %d %d!!\012\000"
.LC340:
	.ascii	"[NE]current_block_ecc_error page %d!!\012\000"
.LC341:
	.ascii	"[NE]current_block_ecc_error invalid page data %d!!\012"
	.ascii	"\000"
.LC342:
	.ascii	"[NE]current_block_ecc_error unkown page data %d!!\012"
	.ascii	"\000"
.LC343:
	.ascii	"[ND]do current_block_ecc_error end %d %d!!\012\000"
	.section	.rodata.do_after_write.str1.1,"aMS",%progbits,1
.LC409:
	.ascii	"[NE]write_phy_page_map_to_current_block error!\012\000"
.LC410:
	.ascii	"[NE]get_new_current_block error1!\012\000"
.LC411:
	.ascii	"[NE]get_new_current_block error2!\012\000"
	.section	.rodata.do_before_write.str1.1,"aMS",%progbits,1
.LC219:
	.ascii	"[NE]get_new_current_block error3!\012\000"
.LC220:
	.ascii	"[NE]get_new_current_block error4!\012\000"
	.section	.rodata.do_prio_gc.str1.1,"aMS",%progbits,1
.LC433:
	.ascii	"[ND]no block to prio gc\012\000"
.LC434:
	.ascii	"[ND]no need gc:%d, type:%d\012\000"
.LC435:
	.ascii	"[NE]do_prio_gc garbage_collect_first fail:%d, type:"
	.ascii	"%d\012\000"
.LC436:
	.ascii	"[ND]prio gc fail1:%d, type:%d\012\000"
.LC437:
	.ascii	"[ND]prio gc fail2:%d, type:%d\012\000"
	.section	.rodata.do_write_error.str1.1,"aMS",%progbits,1
.LC401:
	.ascii	"[NE]no free block\012\000"
.LC402:
	.ascii	"[NE]do_write_error erase error sb:%d!\012\000"
.LC403:
	.ascii	"[NE]do_write_error sb@%d nftl_nand_copy_page error!"
	.ascii	"\012\000"
	.section	.rodata.do_write_error_in_build_list.str1.1,"aMS",%progbits,1
.LC139:
	.ascii	"[NE]NAND EVENT:do_write_error erase error1!\012\000"
.LC140:
	.ascii	"[NE]NAND EVENT:do_write_error erase error2!\012\000"
	.section	.rodata.done_static_wear_leveling.str1.1,"aMS",%progbits,1
.LC438:
	.ascii	"[ND]swl: the block(%d) for static WL is not in inva"
	.ascii	"lid_list\012\000"
.LC439:
	.ascii	"[ND]swl: done_static_wear_leveling(min_ec) block:%d"
	.ascii	", erase_count:%d\012\000"
.LC440:
	.ascii	"[NE]swl: garbage_collect_first fail:%d\012\000"
.LC441:
	.ascii	"[NE]swl: last->check fail:%d\012\000"
	.section	.rodata.dumphex.str1.1,"aMS",%progbits,1
.LC5:
	.ascii	"%08x: \000"
.LC6:
	.ascii	"%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %"
	.ascii	"02x %02x %02x %02x %02x %02x\012\000"
.LC7:
	.ascii	"\012\000"
	.section	.rodata.erase_block.str1.1,"aMS",%progbits,1
.LC258:
	.ascii	"[NI]erase_block block %d!\012\000"
.LC259:
	.ascii	"[NE]erase_block block fail %d!\012\000"
	.section	.rodata.first_scan_all_blocks.str1.1,"aMS",%progbits,1
.LC344:
	.ascii	"[ND]fsab\012\000"
.LC345:
	.ascii	"[NI]ftl end block! %d!\012\000"
.LC346:
	.ascii	"[ND]READ_RECLAIM!\012\000"
.LC347:
	.ascii	"[NI]start page , do nothing\012\000"
.LC348:
	.ascii	"[ND]fill block %d\012\000"
.LC349:
	.ascii	"[NI]b@%d p@0 unknow spare data:%x,%x,%x,%x,%x,%x,%x"
	.ascii	",%x,%x,%x,%x,%x,%x,%x,%x,%x.\012\000"
.LC350:
	.ascii	"[NE]nftl bad block: %d\012\000"
.LC351:
	.ascii	"[NE]nftl b@%d p@0 ecc error\012\000"
.LC352:
	.ascii	"[NE]b@%d last page ok !\012\000"
.LC353:
	.ascii	"[NI]READ_RECLAIM!\012\000"
.LC354:
	.ascii	"[NE]last page blank ! %d!\012\000"
.LC355:
	.ascii	"[NE]last page unkown ! %d!\012\000"
.LC356:
	.ascii	"[NE]b@%d first page last page ecc error\012\000"
.LC357:
	.ascii	"[NE]b@%d last page spare data %x,%x,%x,%x,%x,%x,%x,"
	.ascii	"%x,%x,%x,%x,%x,%x,%x,%x,%x\012\000"
.LC358:
	.ascii	"[NI]nftl bad block: %d\012\000"
	.section	.rodata.flush_write_cache_to_nand.str1.1,"aMS",%progbits,1
.LC236:
	.ascii	"[NE]flush write cache to nand no cache!\012\000"
.LC237:
	.ascii	"[NE]ECC_LIMIT happened 10! page:%d cache: %d!\012\000"
.LC238:
	.ascii	"[NE]flush write cache to nand error!\012\000"
.LC239:
	.ascii	"[NE]fwctn %d\012\000"
.LC240:
	.ascii	"[NE]fwctn w+\012\000"
	.section	.rodata.garbage_collect.str1.1,"aMS",%progbits,1
.LC460:
	.ascii	"[NE]garbage_collect phy_block null\012\000"
.LC461:
	.ascii	"[ND]garbage too frequency! %d:%d\012\000"
.LC462:
	.ascii	"[NE]garbage_collect_first wrong fbn:%d\012\000"
	.section	.rodata.garbage_collect_first.str1.1,"aMS",%progbits,1
.LC422:
	.ascii	"[NI]garbage_collect_first none!!\012\000"
.LC423:
	.ascii	"[ND]garbage_collect_first wrong!!\012\000"
.LC424:
	.ascii	"[ND]garbage_collect_first cannot find PHY_MAPPING_P"
	.ascii	"AGE%d %d %d %d!!\012\000"
.LC425:
	.ascii	"[ND]garbage_collect_first cannot find PHY_MAPPING_P"
	.ascii	"AGE%x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x."
	.ascii	"\012\000"
.LC426:
	.ascii	"[ND][NE]garbage_collect_first rebuild %d,%d!!\012\000"
.LC427:
	.ascii	"[ND]garbage_collect_first PHY_MAPPING_PAGEecc err b"
	.ascii	"lock:%d !!\012\000"
.LC428:
	.ascii	"[NE]garbage_collect_first invaild_page num error!!\012"
	.ascii	"\000"
.LC429:
	.ascii	"[ND]garbage_collect_first read a logic page error%d"
	.ascii	" %d %d %d spare data:\012\000"
.LC430:
	.ascii	"%x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x\012"
	.ascii	"\000"
.LC431:
	.ascii	"[NE]nand_write_logic_page_no_gc gc fail!!\012\000"
.LC432:
	.ascii	"[NE]erase ecc error block\012\000"
	.section	.rodata.gc_one.str1.1,"aMS",%progbits,1
.LC442:
	.ascii	"[ND]gc_one ok!\012\000"
.LC443:
	.ascii	"[NE]gc_one error!\012\000"
	.section	.rodata.gc_win_block.str1.1,"aMS",%progbits,1
.LC444:
	.ascii	"[ND][NE] gc_win_block gc_one error \012\000"
	.section	.rodata.generic_special_exit.str1.1,"aMS",%progbits,1
.LC69:
	.ascii	" generic special exit \012\000"
	.section	.rodata.generic_special_init.str1.1,"aMS",%progbits,1
.LC68:
	.ascii	" generic special init \012\000"
	.section	.rodata.get_current_used_block.str1.1,"aMS",%progbits,1
.LC372:
	.ascii	"%s %d:\012\000"
.LC373:
	.ascii	"[ND]recover %d %d\012\000"
.LC374:
	.ascii	"[NE]page used:%d invalid page count:%d error\012\000"
.LC375:
	.ascii	"[NE]new_block_init_for_write error here!\012\000"
.LC376:
	.ascii	"[NE]something is error here 10!\012\000"
.LC377:
	.ascii	"[NE]something is error here 11!\012\000"
.LC378:
	.ascii	"[NE]assist block page used:%d current block page us"
	.ascii	"ed:%d something is error here 12.\012\000"
.LC379:
	.ascii	"[NE]assist block page used:%d current block page us"
	.ascii	"ed:%d something is error here 17.\012\000"
.LC380:
	.ascii	"[ND]get a new free block\012\000"
.LC381:
	.ascii	"[NE]no free block to use!\012\000"
	.section	.rodata.get_logic_page_map.str1.1,"aMS",%progbits,1
.LC365:
	.ascii	"[NE]%s:logic_page:0x%x >= total_pages:0x%x\012\000"
	.section	.rodata.get_new_current_block.str1.1,"aMS",%progbits,1
.LC217:
	.ascii	"[ND]swl: new_cur_blk->alloc ok(max_ec): block_no = "
	.ascii	"%d; ec = %d; \012\000"
.LC218:
	.ascii	"[NE]no free block!!!!\012\000"
	.section	.rodata.get_used_page_num.str1.1,"aMS",%progbits,1
.LC315:
	.ascii	"[NE]get_used_page_num ecc error block:%d page:%d!\012"
	.ascii	"\000"
.LC316:
	.ascii	"[NE]power off ecc error 4!!\012\000"
.LC317:
	.ascii	"[NE]sb@%d sp@%d get_used_page_num used spare data %"
	.ascii	"x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x\012\000"
	.section	.rodata.get_used_page_num_no_crosstalk.str1.1,"aMS",%progbits,1
.LC328:
	.ascii	"[NE]gupnnc ecc err b:%d p:%d.\012\000"
.LC329:
	.ascii	"[NE]gupnnc power off ecc err.\012\000"
.LC330:
	.ascii	"[NE]cross talk block:%d total_good_num %d good_page"
	.ascii	"_num: %d!\012\000"
	.section	.rodata.hynix16nm_get_read_retry_cfg.str1.1,"aMS",%progbits,1
.LC87:
	.ascii	"_get_read_retry_parameters, get rr count failed!\012"
	.ascii	"\000"
.LC88:
	.ascii	"rr cnt: %d\012\000"
.LC89:
	.ascii	"_get_read_retry_parameters, get rr reg count failed"
	.ascii	"!\012\000"
.LC90:
	.ascii	"rr reg cnt: %d\012\000"
.LC91:
	.ascii	"read retry value from otp error: rr_cnt %d rr_reg_c"
	.ascii	"nt %d!\012\000"
.LC92:
	.ascii	"_get_read_retry_parameters, get the %d-th byte of r"
	.ascii	"r table failed!\012\000"
.LC93:
	.ascii	"%02x \000"
	.section	.rodata.hynix16nm_get_rr_value_otp_hynix.str1.1,"aMS",%progbits,1
.LC96:
	.ascii	"otp_info_hynix_16nm : allocate memory fail\012\000"
.LC97:
	.ascii	"m1 CH %d chip %d get otp info failed!\012\000"
.LC98:
	.ascii	"m1 CH %d chip %d get read retry cfg from otp info f"
	.ascii	"ailed!\012\000"
	.section	.rodata.hynix16nm_get_special_info.str1.1,"aMS",%progbits,1
.LC72:
	.ascii	"get_hynix_special_info start!!\012\000"
.LC73:
	.ascii	"hynix_special_info:can't find uboot head\012\000"
.LC74:
	.ascii	"physic info start_block %d\012\000"
	.section	.rodata.hynix16nm_init_readretry_param.str1.1,"aMS",%progbits,1
.LC99:
	.ascii	"ch %d, chip %d Read Retry value Table from uboot\012"
	.ascii	"\000"
.LC100:
	.ascii	"[PHY_DBG] repair ch %d chip %d otp value end\012\000"
	.section	.rodata.hynix16nm_major_check_byte.str1.1,"aMS",%progbits,1
.LC84:
	.ascii	"_major_check_byte, wrong input para, level %d, len "
	.ascii	"%d\012\000"
.LC85:
	.ascii	"%d:  '1'-'0' : %d - %d\012\000"
.LC86:
	.ascii	"get bit %d failed!\012\000"
	.section	.rodata.hynix16nm_read_otp_info_hynix.str1.1,"aMS",%progbits,1
.LC94:
	.ascii	"start get read retry param from: ce %d, rb %d...\012"
	.ascii	"\000"
.LC95:
	.ascii	"invalid buffer for otp info!\012\000"
	.section	.rodata.hynix16nm_read_page_end.str1.1,"aMS",%progbits,1
.LC70:
	.ascii	"m1 retry!\012\000"
.LC71:
	.ascii	"m1 ReadRetry ok! ch =%d, chip = %d  block = %d, pag"
	.ascii	"e = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix16nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC101:
	.ascii	"hynix16nm_readretry_exit. \012\000"
	.section	.rodata.hynix16nm_special_exit.str1.1,"aMS",%progbits,1
.LC104:
	.ascii	" hynix16nm_special_exit \012\000"
	.section	.rodata.hynix16nm_special_init.str1.1,"aMS",%progbits,1
.LC102:
	.ascii	" hynix16nm_special_init hynix16nm_read_retry_mode: "
	.ascii	"%d hynix16nm_read_retry_cycle:%d hynix16nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC103:
	.ascii	" hynix16nm_special_init error hynix16nm_read_retry_"
	.ascii	"mode: %d hynix16nm_read_retry_cycle:%d hynix16nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.hynix16nm_write_page_FF.str1.1,"aMS",%progbits,1
.LC83:
	.ascii	"m1 write page FF wrong\012\000"
	.section	.rodata.hynix20nm_getotpparam.str1.1,"aMS",%progbits,1
.LC29:
	.ascii	"_vender_get_param_otp_hynix time %d!\012\000"
.LC30:
	.ascii	"_vender_get_param_otp_hynix error!\012\000"
	.section	.rodata.hynix20nm_init_readretry_param.str1.1,"aMS",%progbits,1
.LC75:
	.ascii	"hynix20nm get default param error !\012\000"
.LC76:
	.ascii	"[PHY_GetDefaultParam]:readbuf malloc fail\012\000"
.LC77:
	.ascii	"ch %d, chip %d Read Retry value Table from uboot:\012"
	.ascii	"\000"
.LC78:
	.ascii	"0x%x \000"
.LC79:
	.ascii	"[PHY_DBG] ch %d, can't get right otp value from nan"
	.ascii	"d otp blocks, then use otp command\012\000"
.LC80:
	.ascii	"[PHY_DBG] repair ch %d otp value end\012\000"
	.section	.rodata.hynix20nm_lsb_exit.str1.1,"aMS",%progbits,1
.LC25:
	.ascii	"hynix20nm_lsb_exit\012\000"
	.section	.rodata.hynix20nm_read_page_end.str1.1,"aMS",%progbits,1
.LC286:
	.ascii	"hynix20nm retry!\012\000"
.LC287:
	.ascii	"retry spare all 0xff! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
.LC288:
	.ascii	"sdata:0x%x %x %x %x \000"
.LC289:
	.ascii	"hynix20nm ReadRetry ok! ch =%d, chip = %d  block = "
	.ascii	"%d, page = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix20nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC33:
	.ascii	"hynix20nm_readretry_exit. \012\000"
	.section	.rodata.hynix20nm_set_default_param.str1.1,"aMS",%progbits,1
.LC31:
	.ascii	"set retry default value: \000"
.LC32:
	.ascii	" %x\000"
	.section	.rodata.hynix20nm_set_readretry.str1.1,"aMS",%progbits,1
.LC23:
	.ascii	"retry para:\000"
.LC24:
	.ascii	" %x \000"
	.section	.rodata.hynix20nm_special_exit.str1.1,"aMS",%progbits,1
.LC34:
	.ascii	" hynix20nm_special_exit \012\000"
	.section	.rodata.hynix20nm_special_init.str1.1,"aMS",%progbits,1
.LC81:
	.ascii	" hynix20nm_special_init hynix20nm_read_retry_mode: "
	.ascii	"%d hynix20nm_read_retry_cycle:%d hynix20nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC82:
	.ascii	" hynix20nm_special_init error hynix20nm_read_retry_"
	.ascii	"mode: %d hynix20nm_read_retry_cycle:%d hynix20nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.hynix20nm_vender_get_param_otp_hynix.str1.1,"aMS",%progbits,1
.LC26:
	.ascii	"hynix OTP RegCount value error: 0x%x, 0x%x \012\000"
.LC27:
	.ascii	"otp copy failed!\012\000"
.LC28:
	.ascii	"otp copy %d is ok!\012\000"
	.section	.rodata.hynix26nm_get_default_param.str1.1,"aMS",%progbits,1
.LC55:
	.ascii	"hynix26nm_get_default_param: ch: %d, chip: %d, valu"
	.ascii	"e: 0x%x 0x%x 0x%x 0x%x \012\000"
	.section	.rodata.hynix26nm_lsb_exit.str1.1,"aMS",%progbits,1
.LC54:
	.ascii	"hynix26nm_lsb_exit\012\000"
	.section	.rodata.hynix26nm_read_page_end.str1.1,"aMS",%progbits,1
.LC52:
	.ascii	"m0 retry!\012\000"
.LC53:
	.ascii	"hynix26nm ReadRetry ok! ch =%d, chip = %d  block = "
	.ascii	"%d, page = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix26nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC57:
	.ascii	"hynix26nm_readretry_exit. \012\000"
	.section	.rodata.hynix26nm_readretry_init.str1.1,"aMS",%progbits,1
.LC56:
	.ascii	"NFC_ReadRetryInit, unknown read retry mode 0x%x\012"
	.ascii	"\000"
	.section	.rodata.hynix26nm_set_readretry.str1.1,"aMS",%progbits,1
.LC51:
	.ascii	"hynix26nm retry param:\000"
	.section	.rodata.hynix26nm_special_exit.str1.1,"aMS",%progbits,1
.LC60:
	.ascii	" hynix26nm_special_exit \012\000"
	.section	.rodata.hynix26nm_special_init.str1.1,"aMS",%progbits,1
.LC58:
	.ascii	" hynix26nm_special_init hynix26nm_read_retry_mode: "
	.ascii	"%d hynix26nm_read_retry_cycle:%d hynix26nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC59:
	.ascii	" hynix26nm_special_init error hynix26nm_read_retry_"
	.ascii	"mode: %d hynix26nm_read_retry_cycle:%d hynix26nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.init_nrc.str1.1,"aMS",%progbits,1
.LC141:
	.ascii	"%s %d:fail 1\012\000"
.LC142:
	.ascii	"%s %d:fail 2\012\000"
.LC143:
	.ascii	"%s %d:fail 3\012\000"
.LC144:
	.ascii	"%s %d:fail 4\012\000"
	.section	.rodata.init_zone_after_first_scan.str1.1,"aMS",%progbits,1
.LC136:
	.ascii	"[ND]before second %d %d.\012\000"
.LC137:
	.ascii	"[NE]only have blocks:%u,logic cap need blocks:%u th"
	.ascii	"is zone not enough data block!!\012\000"
.LC138:
	.ascii	"[NE]this zone not enough free block %d , %d!!\012\000"
	.section	.rodata.is_no_use_device.str1.1,"aMS",%progbits,1
.LC285:
	.ascii	"[NE]mtd size changed !\012\000"
	.section	.rodata.malloc_logic_page_map.str1.1,"aMS",%progbits,1
.LC465:
	.ascii	"[NE]%s:malloc fail for logic_page_map %d\012\000"
.LC466:
	.ascii	"[NE]%s: malloc fail for logic_page_map %d\012\000"
.LC467:
	.ascii	"[NE]zone_param_init malloc_logic_page_map error %d\012"
	.ascii	"\000"
	.section	.rodata.micron_intel_set_feature.str1.1,"aMS",%progbits,1
.LC35:
	.ascii	"set feature(addr %d) p0: %d readretry Configuration"
	.ascii	" failed!\012\000"
	.section	.rodata.micron_read_page_end.str1.1,"aMS",%progbits,1
.LC36:
	.ascii	"micron retry!\012\000"
.LC37:
	.ascii	"micron ReadRetry ok! ch =%d, chip = %d  block = %d,"
	.ascii	" page = %d, RetryCount = %d  \012\000"
	.section	.rodata.micron_readretry_init.str1.1,"aMS",%progbits,1
.LC38:
	.ascii	"micron read retry cannot support!\012\000"
.LC39:
	.ascii	"micron read retry conut: %d !\012\000"
	.section	.rodata.micron_special_exit.str1.1,"aMS",%progbits,1
.LC42:
	.ascii	" micron_special_exit \012\000"
	.section	.rodata.micron_special_init.str1.1,"aMS",%progbits,1
.LC40:
	.ascii	" micron_special_init micron_read_retry_mode:%d micr"
	.ascii	"on_read_retry_cycle:%d \012\000"
.LC41:
	.ascii	" micron_special_init error micron_read_retry_mode:%"
	.ascii	"d micron_read_retry_cycle:%d \012\000"
	.section	.rodata.mod,"a",%progbits
	.set	.LANCHOR102,. + 0
	.type	mod, %object
	.size	mod, 6
mod:
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
	.section	.rodata.nand_cache_read.str1.1,"aMS",%progbits,1
.LC226:
	.ascii	"[NI]nand_cache_read error buf is  NULL!\012\000"
.LC227:
	.ascii	"[NE]error1 node %d,%d,%d!\012\000"
	.section	.rodata.nand_cache_write.str1.1,"aMS",%progbits,1
.LC241:
	.ascii	"[NE]error1 bitmap %x!\012\000"
.LC242:
	.ascii	"[NE]ECC_LIMIT happened 12! page:%d!\012\000"
.LC243:
	.ascii	"[NE]error1 flush write cache to nand\012\000"
.LC244:
	.ascii	"[NE]error2 flush write cache to nand\012\000"
.LC245:
	.ascii	"[NI]ECC_LIMIT happened 11! page:%d!\012\000"
	.section	.rodata.nand_check_table.str1.1,"aMS",%progbits,1
.LC456:
	.ascii	"[ND]==========================\012\000"
	.section	.rodata.nand_clean_zone_table2.str1.1,"aMS",%progbits,1
.LC202:
	.ascii	"[ND]zoneNO:%d total_pages: %d\012\000"
.LC203:
	.ascii	"[ND]NAND_Memset bytes: %d\012\000"
	.section	.rodata.nand_crc16_table,"a",%progbits
	.align	1
	.set	.LANCHOR89,. + 0
	.type	nand_crc16_table, %object
	.size	nand_crc16_table, 512
nand_crc16_table:
	.short	0
	.short	-16191
	.short	-15999
	.short	320
	.short	-15615
	.short	960
	.short	640
	.short	-15807
	.short	-14847
	.short	1728
	.short	1920
	.short	-14527
	.short	1280
	.short	-14911
	.short	-15231
	.short	1088
	.short	-13311
	.short	3264
	.short	3456
	.short	-12991
	.short	3840
	.short	-12351
	.short	-12671
	.short	3648
	.short	2560
	.short	-13631
	.short	-13439
	.short	2880
	.short	-14079
	.short	2496
	.short	2176
	.short	-14271
	.short	-10239
	.short	6336
	.short	6528
	.short	-9919
	.short	6912
	.short	-9279
	.short	-9599
	.short	6720
	.short	7680
	.short	-8511
	.short	-8319
	.short	8000
	.short	-8959
	.short	7616
	.short	7296
	.short	-9151
	.short	5120
	.short	-11071
	.short	-10879
	.short	5440
	.short	-10495
	.short	6080
	.short	5760
	.short	-10687
	.short	-11775
	.short	4800
	.short	4992
	.short	-11455
	.short	4352
	.short	-11839
	.short	-12159
	.short	4160
	.short	-4095
	.short	12480
	.short	12672
	.short	-3775
	.short	13056
	.short	-3135
	.short	-3455
	.short	12864
	.short	13824
	.short	-2367
	.short	-2175
	.short	14144
	.short	-2815
	.short	13760
	.short	13440
	.short	-3007
	.short	15360
	.short	-831
	.short	-639
	.short	15680
	.short	-255
	.short	16320
	.short	16000
	.short	-447
	.short	-1535
	.short	15040
	.short	15232
	.short	-1215
	.short	14592
	.short	-1599
	.short	-1919
	.short	14400
	.short	10240
	.short	-5951
	.short	-5759
	.short	10560
	.short	-5375
	.short	11200
	.short	10880
	.short	-5567
	.short	-4607
	.short	11968
	.short	12160
	.short	-4287
	.short	11520
	.short	-4671
	.short	-4991
	.short	11328
	.short	-7167
	.short	9408
	.short	9600
	.short	-6847
	.short	9984
	.short	-6207
	.short	-6527
	.short	9792
	.short	8704
	.short	-7487
	.short	-7295
	.short	9024
	.short	-7935
	.short	8640
	.short	8320
	.short	-8127
	.short	-24575
	.short	24768
	.short	24960
	.short	-24255
	.short	25344
	.short	-23615
	.short	-23935
	.short	25152
	.short	26112
	.short	-22847
	.short	-22655
	.short	26432
	.short	-23295
	.short	26048
	.short	25728
	.short	-23487
	.short	27648
	.short	-21311
	.short	-21119
	.short	27968
	.short	-20735
	.short	28608
	.short	28288
	.short	-20927
	.short	-22015
	.short	27328
	.short	27520
	.short	-21695
	.short	26880
	.short	-22079
	.short	-22399
	.short	26688
	.short	30720
	.short	-18239
	.short	-18047
	.short	31040
	.short	-17663
	.short	31680
	.short	31360
	.short	-17855
	.short	-16895
	.short	32448
	.short	32640
	.short	-16575
	.short	32000
	.short	-16959
	.short	-17279
	.short	31808
	.short	-19455
	.short	29888
	.short	30080
	.short	-19135
	.short	30464
	.short	-18495
	.short	-18815
	.short	30272
	.short	29184
	.short	-19775
	.short	-19583
	.short	29504
	.short	-20223
	.short	29120
	.short	28800
	.short	-20415
	.short	20480
	.short	-28479
	.short	-28287
	.short	20800
	.short	-27903
	.short	21440
	.short	21120
	.short	-28095
	.short	-27135
	.short	22208
	.short	22400
	.short	-26815
	.short	21760
	.short	-27199
	.short	-27519
	.short	21568
	.short	-25599
	.short	23744
	.short	23936
	.short	-25279
	.short	24320
	.short	-24639
	.short	-24959
	.short	24128
	.short	23040
	.short	-25919
	.short	-25727
	.short	23360
	.short	-26367
	.short	22976
	.short	22656
	.short	-26559
	.short	-30719
	.short	18624
	.short	18816
	.short	-30399
	.short	19200
	.short	-29759
	.short	-30079
	.short	19008
	.short	19968
	.short	-28991
	.short	-28799
	.short	20288
	.short	-29439
	.short	19904
	.short	19584
	.short	-29631
	.short	17408
	.short	-31551
	.short	-31359
	.short	17728
	.short	-30975
	.short	18368
	.short	18048
	.short	-31167
	.short	-32255
	.short	17088
	.short	17280
	.short	-31935
	.short	16640
	.short	-32319
	.short	-32639
	.short	16448
	.section	.rodata.nand_dbg_phy_read.str1.1,"aMS",%progbits,1
.LC198:
	.ascii	"[NE]%s:malloc 4096 fail!\012\000"
.LC199:
	.ascii	"[ND]spare: %x %x %x %x %x %x %x %x %x %x %x %x %x %"
	.ascii	"x %x %x\000"
.LC200:
	.ascii	"[ND]buf:%x %x %x %x %x %x %x %x %x %x %x.\012\000"
	.section	.rodata.nand_dbg_zone_phy_write.str1.1,"aMS",%progbits,1
.LC201:
	.ascii	"[NE]%s:malloc 8192 fail!\012\000"
	.section	.rodata.nand_discard.str1.1,"aMS",%progbits,1
.LC247:
	.ascii	"[NE]nand_discard paramter error!\012\000"
	.section	.rodata.nand_find_zone_table.str1.1,"aMS",%progbits,1
.LC452:
	.ascii	"[ND]build_zone_list start\012\000"
.LC453:
	.ascii	"[ND]nftl_cache_init start\012\000"
.LC454:
	.ascii	"[ND]=================================2============="
	.ascii	"==========================\012\000"
.LC455:
	.ascii	"[ND]nand_find_zone_table end\012\000"
	.section	.rodata.nand_op.str1.1,"aMS",%progbits,1
.LC228:
	.ascii	"[NE]paramter error. beyond reality capacity\012\000"
	.section	.rodata.nand_power_off_ecc_error.str1.1,"aMS",%progbits,1
.LC304:
	.ascii	"[NE]exception case bad block\012\000"
.LC305:
	.ascii	"[NE]exception case wbc\012\000"
.LC306:
	.ascii	"[NE]exception case gd\012\000"
.LC307:
	.ascii	"[NE]%s %d, flag = %d\012\000"
.LC308:
	.ascii	"[NE]OOB :\000"
.LC309:
	.ascii	"%.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %"
	.ascii	".2x %.2x %.2x %.2x %.2x %.2x\012\000"
	.section	.rodata.nand_sector_cache_read.str1.1,"aMS",%progbits,1
.LC230:
	.ascii	"[NE]nand_sector_cache_read 1!\012\000"
	.section	.rodata.nand_sector_cache_write.str1.1,"aMS",%progbits,1
.LC232:
	.ascii	"[NE]nand_sector_cache_write 1!\012\000"
.LC233:
	.ascii	"[NE]nand_sector_cache_write 2!\012\000"
	.section	.rodata.nand_write_data_page.str1.1,"aMS",%progbits,1
.LC418:
	.ascii	"[NE]do after write error1!\012\000"
.LC419:
	.ascii	"[NE]do_before_write error!\012\000"
.LC420:
	.ascii	"[NE]write data to page error!\012\000"
.LC421:
	.ascii	"[NE]do after write error2!\012\000"
	.section	.rodata.new_block_init_for_write.str1.1,"aMS",%progbits,1
.LC111:
	.ascii	"[NE]new_block_init_for_write erase error!\012\000"
	.section	.rodata.nftl_add.str1.1,"aMS",%progbits,1
.LC491:
	.ascii	"[NE]%s:malloc fail for nftl_blk\012\000"
.LC492:
	.ascii	"[NE]nftl_initialize failed\012\000"
.LC493:
	.ascii	"[ND]nftl_add ok\012\000"
	.section	.rodata.nftl_build_all.str1.1,"aMS",%progbits,1
.LC494:
	.ascii	"[NE]nftl_build_all error!\012\000"
	.section	.rodata.nftl_cache_init.str1.1,"aMS",%progbits,1
.LC224:
	.ascii	"[NE]%s:malloc fail for cache_node!\012\000"
.LC225:
	.ascii	"[NE]%s:malloc fail for cache_page_buf!\012\000"
	.section	.rodata.nftl_get_gc_info.str1.1,"aMS",%progbits,1
.LC252:
	.ascii	"%d %d %d %d %d %d/%d %d/%d\012\000"
.LC253:
	.ascii	"%d:%d \000"
	.section	.rodata.nftl_initialize.str1.1,"aMS",%progbits,1
.LC483:
	.ascii	"007\000"
.LC484:
	.ascii	"7\000"
.LC485:
	.ascii	"3\000"
.LC486:
	.ascii	"sunxi nftl version %s.%s.%s  %s-%s\012\000"
.LC487:
	.ascii	"17:52\000"
.LC488:
	.ascii	"2020.09.28\000"
.LC489:
	.ascii	"[NE]%s:malloc fail for nftl_cfg\012\000"
.LC490:
	.ascii	"[ND]max_erase_times = %i\012\000"
	.section	.rodata.nftl_malloc.str1.1,"aMS",%progbits,1
.LC11:
	.ascii	"[NI]malloc size is large %d!\012\000"
	.section	.rodata.nftl_read.str1.1,"aMS",%progbits,1
.LC9:
	.ascii	"[NE]parameter error %d,%d !\012\000"
	.section	.rodata.nftl_read_history.str1.1,"aMS",%progbits,1
.LC10:
	.ascii	"awa1543 nftl_logic_size:%u\012\000"
	.section	.rodata.nftl_sector_cache_init.str1.1,"aMS",%progbits,1
.LC110:
	.ascii	"[NE]%s:malloc fail for cache_buf!\012\000"
	.section	.rodata.nftl_start.str1.1,"aMS",%progbits,1
.LC474:
	.ascii	"[NE]%s: malloc fail for zone\012\000"
.LC475:
	.ascii	"[NE]%s: malloc fail for nand_chip\012\000"
.LC476:
	.ascii	"[NE]%s: malloc fail for nand_block_info\012\000"
.LC477:
	.ascii	"[NE]not enough blocks %d!\012\000"
.LC478:
	.ascii	"[ND]nftl start:%d,%d\012\000"
.LC479:
	.ascii	"[NE]zone_param_init fail!\012\000"
.LC480:
	.ascii	"[NE]build_zone_list_first fail!\012\000"
.LC481:
	.ascii	"[NE]build_zone_list fail!\012\000"
.LC482:
	.ascii	"[NI]try again\012\000"
	.section	.rodata.no_cross_talk_rebuild_current_block.str1.1,"aMS",%progbits,1
.LC331:
	.ascii	"[NI]nctrcb1 %d,%d,%d!\012\000"
.LC332:
	.ascii	"[NE]no_cross_talk_rebuild_current_block fail 2\012\000"
.LC333:
	.ascii	"[NI]nctrcb2 %d,%d,%d,%d,%d,%d!\012\000"
.LC334:
	.ascii	"[NE]no_cross_talk_rebuild_current_block fail 4\012\000"
.LC335:
	.ascii	"[NE]no_cross_talk_rebuild_current_block erase block"
	.ascii	" fail %d!\012\000"
	.section	.rodata.panic_backup_block.str1.1,"aMS",%progbits,1
.LC214:
	.ascii	"[ND] reserved panic block before %d!\012\000"
.LC215:
	.ascii	"[NE] reserved panic block %d!\012\000"
.LC216:
	.ascii	"[NE] no reserved panic block!!! quit!\012\000"
	.section	.rodata.panic_init_part.str1.1,"aMS",%progbits,1
.LC12:
	.ascii	"[ND] panic part %s off %u size %u\012\000"
	.section	.rodata.panic_recover_data.str1.1,"aMS",%progbits,1
.LC262:
	.ascii	"[ND] not find panic data, no need to recovery!\012\000"
.LC263:
	.ascii	"[ND] recovery panic data start!\012\000"
.LC264:
	.ascii	"[NE] %s(%d): malloc failed\012\000"
.LC265:
	.ascii	"[ND] ignore blk %d page %d as dummy page\012\000"
.LC266:
	.ascii	"[ND] exit recovery panic block\012\000"
.LC267:
	.ascii	"[ND] invalid blk %d page %d, finish recovery\012\000"
.LC268:
	.ascii	"[ND] move blk %d page %d to logic addr %d\012\000"
	.section	.rodata.panic_recover_info.str1.1,"aMS",%progbits,1
.LC13:
	.ascii	"[ND] find panic block : %d\012\000"
.LC14:
	.ascii	"[NE] invalid panic block index %d\012\000"
	.section	.rodata.panic_write.str1.1,"aMS",%progbits,1
.LC254:
	.ascii	"[ND] write panic data : logic addr: %d, sectors %d,"
	.ascii	" pages %d, blocks %d\012\000"
.LC255:
	.ascii	"[NE] too much data for panic-write, %d sectors left"
	.ascii	" over\012\000"
.LC256:
	.ascii	"[ND] write panic data block: %d page %d !\012\000"
.LC257:
	.ascii	"[ND] write dummy data block: %d page %d !\012\000"
	.section	.rodata.para0,"a",%progbits
	.align	1
	.set	.LANCHOR52,. + 0
	.type	para0, %object
	.size	para0, 56
para0:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6
	.short	10
	.short	6
	.short	0
	.short	-3
	.short	-7
	.short	-8
	.short	0
	.short	-6
	.short	-13
	.short	-15
	.short	0
	.short	-11
	.short	-20
	.short	-23
	.short	0
	.short	0
	.short	-26
	.short	-30
	.short	0
	.short	0
	.short	-32
	.short	-37
	.section	.rodata.para1,"a",%progbits
	.align	1
	.set	.LANCHOR53,. + 0
	.type	para1, %object
	.size	para1, 56
para1:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6
	.short	10
	.short	6
	.short	0
	.short	-3
	.short	-7
	.short	-8
	.short	0
	.short	-6
	.short	-13
	.short	-15
	.short	0
	.short	-9
	.short	-20
	.short	-23
	.short	0
	.short	0
	.short	-26
	.short	-30
	.short	0
	.short	0
	.short	-32
	.short	-37
	.section	.rodata.phy_block_from_invalid_page_incr.str1.1,"aMS",%progbits,1
.LC222:
	.ascii	"[ND]invalid_page_count more than pages per blk 0 %d"
	.ascii	" %d!!\012\000"
.LC223:
	.ascii	"[ND]invalid_page_count more than pages per blk 1!!\012"
	.ascii	"\000"
	.section	.rodata.power_on_gc.str1.1,"aMS",%progbits,1
.LC445:
	.ascii	"[ND]not power on gc [%d, %d, %d], [%d %d %d]!\012\000"
.LC446:
	.ascii	"[ND]emergency power on gc %d !\012\000"
.LC447:
	.ascii	"[ND]power on gc %d!\012\000"
	.section	.rodata.print_all_nftl_blk.str1.1,"aMS",%progbits,1
.LC8:
	.ascii	"[ND]cap: 0x%08x.\012\000"
	.section	.rodata.print_block_count_list.str1.1,"aMS",%progbits,1
.LC210:
	.ascii	"[ND]block_used_count list: \012\000"
.LC211:
	.ascii	"[ND]block NO: %d \000"
.LC212:
	.ascii	"[ND]block_used_count: %d \012\000"
	.section	.rodata.print_block_invalid_list.str1.1,"aMS",%progbits,1
.LC208:
	.ascii	"[ND]invalid_page_count list: \012\000"
.LC209:
	.ascii	"[ND]count:%4d; invalid:%3d;\000"
	.section	.rodata.print_free_list.str1.1,"aMS",%progbits,1
.LC204:
	.ascii	"[ND]free list: \012\000"
.LC205:
	.ascii	"[ND]block NO:%4d; erase:%3d; \000"
.LC206:
	.ascii	"[ND]count:%4d; \000"
.LC207:
	.ascii	"[ND]info:0x%x\012\000"
	.section	.rodata.print_logic_page_map.str1.1,"aMS",%progbits,1
.LC399:
	.ascii	"[NI]page_map NULL!!\012\000"
.LC400:
	.ascii	"[ND]%4d:<%4d %3d><%d>\012\000"
	.section	.rodata.print_nftl_zone.str1.1,"aMS",%progbits,1
.LC145:
	.ascii	"[ND]nand3.x \012\000"
.LC146:
	.ascii	"[ND]zone->nand_chip->blk_per_chip: %d \012\000"
.LC147:
	.ascii	"[ND]zone->nand_chip->bytes_per_page: %d \012\000"
.LC148:
	.ascii	"[ND]zone->nand_chip->pages_per_blk: %d \012\000"
.LC149:
	.ascii	"[ND]zone->nand_chip->max_erase_times: %d \012\000"
.LC150:
	.ascii	"[ND]zone->nand_chip->support_read_reclaim: %d \012\000"
.LC151:
	.ascii	"[ND]zone->test: %d \012\000"
.LC152:
	.ascii	"[ND]zone->zone_no: %d \012\000"
.LC153:
	.ascii	"[ND]zone->zone_attr: %d \012\000"
.LC154:
	.ascii	"[ND]zone->blocks: %d \012\000"
.LC155:
	.ascii	"[ND]zone->bad_block: %d \012\000"
.LC156:
	.ascii	"[ND]zone->logic_cap_in_sects: %d \012\000"
.LC157:
	.ascii	"[ND]zone->backup_cap_in_sects: %d \012\000"
.LC158:
	.ascii	"[ND]zone->free_block_num: %d \012\000"
.LC159:
	.ascii	"[ND]zone->gc_strategy.start_gc_free_blocks: %d \012"
	.ascii	"\000"
.LC160:
	.ascii	"[ND]zone->gc_strategy.stop_gc_free_blocks: %d \012\000"
.LC161:
	.ascii	"[ND]zone->gc_strategy.gc_page: %d \012\000"
.LC162:
	.ascii	"[ND]zone->gc_strategy.process: %d \012\000"
.LC163:
	.ascii	"[ND]zone->prio_gc.prio_type : %d \012\000"
.LC164:
	.ascii	"[ND]zone->zone_start_phy_block->phy_block.Block_NO:"
	.ascii	" %d \012\000"
.LC165:
	.ascii	"[ND]zone->zone_end_phy_block->phy_block.Block_NO: %"
	.ascii	"d \012\000"
.LC166:
	.ascii	"[ND]zone->zone_phy_page_map_for_gc: %x \012\000"
.LC167:
	.ascii	"[ND]zone->current_block.user_info: %x \012\000"
.LC168:
	.ascii	"[ND]zone->current_block.block_info: %x \012\000"
.LC169:
	.ascii	"[ND]zone->current_block.block_info->phy_block.Block"
	.ascii	"_NO: %d \012\000"
.LC170:
	.ascii	"[ND]zone->current_block.page_used: %d \012\000"
.LC171:
	.ascii	"[ND]zone->current_block.block_info->block_used_coun"
	.ascii	"t: %d \012\000"
.LC172:
	.ascii	"[ND]zone->recv_free_block: %d %d!!\012\000"
.LC173:
	.ascii	"[ND]zone->assist_block.user_info: %x \012\000"
.LC174:
	.ascii	"[ND]zone->assist_block.block_info: %x \012\000"
.LC175:
	.ascii	"[ND]zone->assist_block.block_info->phy_block.Block_"
	.ascii	"NO: %d \012\000"
.LC176:
	.ascii	"[ND]zone->assist_block.page_used: %d \012\000"
.LC177:
	.ascii	"[ND]zone->assist_block.block_info->block_used_count"
	.ascii	": %d \012\000"
.LC178:
	.ascii	"[ND]zone->read_reclaim_complete: %x \012\000"
.LC179:
	.ascii	"[ND]zone->temp_page_buf: %x \012\000"
.LC180:
	.ascii	"[ND]zone->max_erase_num: %d \012\000"
.LC181:
	.ascii	"[ND]zone->cache.cache_totals: %x \012\000"
.LC182:
	.ascii	"[ND]zone->wl_gc_count: %d \012\000"
.LC183:
	.ascii	"[ND]zone->wl_gc_page_num: %d \012\000"
.LC184:
	.ascii	"[ND]zone->cfg->nftl_dont_use_cache: %x \012\000"
.LC185:
	.ascii	"[ND]zone->cfg->nftl_use_cache_sort: %x \012\000"
.LC186:
	.ascii	"[ND]zone->cfg->nftl_support_gc_read_reclaim: %x \012"
	.ascii	"\000"
.LC187:
	.ascii	"[ND]zone->cfg->nftl_support_wear_leveling: %x \012\000"
.LC188:
	.ascii	"[ND]zone->cfg->nftl_need_erase: %x \012\000"
.LC189:
	.ascii	"[ND]zone->cfg->nftl_min_free_block_num: %x \012\000"
.LC190:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_free_block_num: %x"
	.ascii	" \012\000"
.LC191:
	.ascii	"[ND]zone->cfg->nftl_min_free_block: %x \012\000"
.LC192:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_ratio_numerator: %"
	.ascii	"x \012\000"
.LC193:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_ratio_denominator:"
	.ascii	" %x \012\000"
.LC194:
	.ascii	"[ND]zone->cfg->nftl_max_cache_num: %d \012\000"
.LC195:
	.ascii	"[ND]zone->cfg->nftl_max_cache_write_num: %d \012\000"
.LC196:
	.ascii	"[ND]zone->cfg->nftl_cross_talk: %x \012\000"
.LC197:
	.ascii	"[ND]zone->cfg->nftl_read_claim_interval: %d \012\000"
	.section	.rodata.print_smart.str1.1,"aMS",%progbits,1
.LC112:
	.ascii	"[ND]smart->version:%x;\012\000"
.LC113:
	.ascii	"[ND]smart->total_recv_read_sectors:%lld;\012\000"
.LC114:
	.ascii	"[ND]smart->total_recv_write_sectors:%lld;\012\000"
.LC115:
	.ascii	"[ND]smart->total_real_read_pages:%lld;\012\000"
.LC116:
	.ascii	"[ND]smart->total_real_write_pages:%lld;\012\000"
.LC117:
	.ascii	"[ND]smart->total_recv_discard_sectors:%lld;\012\000"
.LC118:
	.ascii	"[ND]smart->total_real_discard_sectors:%lld;\012\000"
.LC119:
	.ascii	"[ND]smart->total_recv_read_claim_pages:%d;\012\000"
.LC120:
	.ascii	"[ND]smart->total_gc_times:%d;\012\000"
.LC121:
	.ascii	"[ND]smart->total_gc_pages:%d;\012\000"
.LC122:
	.ascii	"[ND]smart->total_wl_times:%d;\012\000"
.LC123:
	.ascii	"[ND]smart->total_wl_gc_times:%d;\012\000"
.LC124:
	.ascii	"[ND]smart->total_real_read_error_pages:%d;\012\000"
.LC125:
	.ascii	"[ND]smart->total_real_write_error_pages:%d;\012\000"
.LC126:
	.ascii	"[ND]smart->total_normal_power_cycles:%x;\012\000"
.LC127:
	.ascii	"[ND]smart->total_unusual_power_cycles:%x;\012\000"
.LC128:
	.ascii	"[ND]smart->max_block_erase_times:%d;\012\000"
.LC129:
	.ascii	"[ND]smart->min_block_erase_times:%d;\012\000"
.LC130:
	.ascii	"[ND]smart->max_block_used_counter:%d;\012\000"
.LC131:
	.ascii	"[ND]smart->min_block_used_counter:%d;\012\000"
.LC132:
	.ascii	"[ND]smart->read_reclaim_utc:%d;\012\000"
.LC133:
	.ascii	"[ND]smart->cross_talk_times:%d;\012\000"
.LC134:
	.ascii	"[ND]smart->read_reclaim_zone_no:%d;\012\000"
.LC135:
	.ascii	"[ND]smart->read_reclaim_page_no:%d;\012\000"
	.section	.rodata.put_phy_block_to_free_list.str1.1,"aMS",%progbits,1
.LC213:
	.ascii	"[ND]free_list error !\012\000"
	.section	.rodata.put_phy_block_to_invalid_page_list.str1.1,"aMS",%progbits,1
.LC221:
	.ascii	"[ND]add invalid_list error !\012\000"
	.section	.rodata.recover_block_phy_page_mapping.str1.1,"aMS",%progbits,1
.LC310:
	.ascii	"[NE]ret:%d read fail %d %d,read one more time!!\012"
	.ascii	"\000"
.LC311:
	.ascii	"[NE]ret:%d read fail %d %d,%d times,don't read more"
	.ascii	"!!\012\000"
.LC312:
	.ascii	"[NE]power off ecc error 3!!\012\000"
.LC313:
	.ascii	"[NE]invalid logic_page block:%d page:%d,logic_page "
	.ascii	"0x%x.\012\000"
.LC314:
	.ascii	"[NE]recover sb@%d sp@%d phy page mapping error.\012"
	.ascii	"\000"
	.section	.rodata.recover_logic_page_mapping.str1.1,"aMS",%progbits,1
.LC368:
	.ascii	"[NI]logic_page_map is NULL\012\000"
.LC369:
	.ascii	"[NE]invalid_page_count more than pages_per_blk :%d\012"
	.ascii	"\000"
.LC370:
	.ascii	"[NE]inv P b:%d p:%d,lp %x\012\000"
.LC371:
	.ascii	"[NE]build invalid_page_count more than pages_per_bl"
	.ascii	"k\012\000"
	.section	.rodata.recover_phy_page_mapping.str1.1,"aMS",%progbits,1
.LC359:
	.ascii	"[NE]sb@%d sp@%d recover_phy_page_mapping no used pa"
	.ascii	"ge\012\000"
.LC360:
	.ascii	"[NE]sb@%d sp@%d power off ecc error1.\012\000"
.LC361:
	.ascii	"[NE]rppm invalid page %d!!\012\000"
.LC362:
	.ascii	"[NI]power_down page %d!!\012\000"
.LC363:
	.ascii	"[NE]recover_phy_page_mapping unkown page data %d!!\012"
	.ascii	"\000"
.LC364:
	.ascii	"[NE]recover_phy_page_mapping ecc error block:%d;pag"
	.ascii	"e:%d.\012\000"
	.section	.rodata.samsung_read_page_end.str1.1,"aMS",%progbits,1
.LC17:
	.ascii	"samsung retry!\012\000"
.LC18:
	.ascii	"samsung ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.samsung_readretry_init.str1.1,"aMS",%progbits,1
.LC19:
	.ascii	"samsung read retry conut: %d !\012\000"
	.section	.rodata.samsung_set_readretry.str1.1,"aMS",%progbits,1
.LC16:
	.ascii	"samsung set readretry error ! %x \012\000"
	.section	.rodata.samsung_special_exit.str1.1,"aMS",%progbits,1
.LC22:
	.ascii	" samsung_special_exit \012\000"
	.section	.rodata.samsung_special_init.str1.1,"aMS",%progbits,1
.LC20:
	.ascii	" samsung_special_init samsung_read_retry_mode:%d sa"
	.ascii	"msung_read_retry_cycle :%d \012\000"
.LC21:
	.ascii	" samsung_special_init error samsung_read_retry_mode"
	.ascii	":%d samsung_read_retry_cycle :%d \012\000"
	.section	.rodata.samsung_vender_set_param.str1.1,"aMS",%progbits,1
.LC15:
	.ascii	"rr value %x %x %x %x!\012\000"
	.section	.rodata.sandisk_A19_check_bad_block_first_burn.str1.1,"aMS",%progbits,1
.LC67:
	.ascii	"fatal err -0, wrong input parameter, ch: %d  chip: "
	.ascii	"%d/%d  block: %d/%d \012\000"
	.section	.rodata.sandisk_A19_read_page_end.str1.1,"aMS",%progbits,1
.LC290:
	.ascii	"sandisk_A19 retry!\012\000"
.LC291:
	.ascii	"sandisk_A19 set readretry error\012\000"
.LC292:
	.ascii	"sandisk_A19 ReadRetry ok! ch =%d, chip = %d  block "
	.ascii	"= %d, page = %d, RetryCount = %d  \012\000"
.LC293:
	.ascii	"sandisk_A19 ReadRetry ok with ecc limit! ch =%d, ch"
	.ascii	"ip = %d  block = %d, page = %d, RetryCount = %d  \012"
	.ascii	"\000"
	.section	.rodata.sandisk_A19_readretry_init.str1.1,"aMS",%progbits,1
.LC61:
	.ascii	"sandisk_A19 retry mode err : %d !\012\000"
.LC62:
	.ascii	"sandisk A19 read retry conut: %d !\012\000"
	.section	.rodata.sandisk_A19_special_exit.str1.1,"aMS",%progbits,1
.LC65:
	.ascii	"%s sandisk toggle vendor specific setting failed!\012"
	.ascii	"\000"
.LC66:
	.ascii	" sandisk_A19_special_exit \012\000"
	.section	.rodata.sandisk_A19_special_init.str1.1,"aMS",%progbits,1
.LC63:
	.ascii	" sandisk_A19_special_init sandisk_A19_read_retry_mo"
	.ascii	"de:%d sandisk_A19_read_retry_cycle :%d sandisk_A19_"
	.ascii	"read_retry_reg_cnt %d \012\000"
.LC64:
	.ascii	" sandisk_A19_special_init error sandisk_A19_read_re"
	.ascii	"try_mode:%d sandisk_A19_read_retry_cycle :%d sandis"
	.ascii	"k_A19_read_retry_reg_cnt %d \012\000"
	.section	.rodata.sandisk_activation_seq.str1.1,"aMS",%progbits,1
.LC105:
	.ascii	"sandisk activation seq fail 0x%x\012\000"
	.section	.rodata.sandisk_read_page_end.str1.1,"aMS",%progbits,1
.LC294:
	.ascii	"sandisk retry!\012\000"
.LC295:
	.ascii	"sandisk ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.sandisk_readretry_init.str1.1,"aMS",%progbits,1
.LC106:
	.ascii	"sandisk read retry conut: %d !\012\000"
	.section	.rodata.sandisk_special_exit.str1.1,"aMS",%progbits,1
.LC109:
	.ascii	" sandisk_special_exit \012\000"
	.section	.rodata.sandisk_special_init.str1.1,"aMS",%progbits,1
.LC107:
	.ascii	" sandisk_special_init sandisk_read_retry_mode:%d sa"
	.ascii	"ndisk_read_retry_cycle :%d sandisk_read_retry_reg_c"
	.ascii	"nt %d \012\000"
.LC108:
	.ascii	" sandisk_special_init error sandisk_read_retry_mode"
	.ascii	":%d sandisk_read_retry_cycle :%d sandisk_read_retry"
	.ascii	"_reg_cnt %d \012\000"
	.section	.rodata.second_scan_all_blocks.str1.1,"aMS",%progbits,1
.LC382:
	.ascii	"[NI]NAND_EVENT: 2 current used block found %d,%d!\012"
	.ascii	"\000"
.LC383:
	.ascii	"[NE]no crosstalk:2 block used count diff %d,%d %d,%"
	.ascii	"d !\012\000"
.LC384:
	.ascii	"[NE]NAND_EVENT: muti current used block found1 %d %"
	.ascii	"d!\012\000"
.LC385:
	.ascii	"[NE]NAND_EVENT: muti current used block found2 %d %"
	.ascii	"d!\012\000"
.LC386:
	.ascii	"[NE]NAND_EVENT: muti current used block found3 %d %"
	.ascii	"d!\012\000"
.LC387:
	.ascii	"[NE]NAND_EVENT: last page spare data %x,%x,%x,%x,%x"
	.ascii	",%x,%x %x %x %x %x %x %x %x %x %x!!\012\000"
.LC388:
	.ascii	"[NI]zone@%d b@%d last page unkown ecc ok.\012\000"
.LC389:
	.ascii	"[NE]zone@%d b@%d last page ecc error.\012\000"
.LC390:
	.ascii	"[NE]something strange %d,%d!!\012\000"
.LC391:
	.ascii	"[NI]all block full!!\012\000"
.LC392:
	.ascii	"[ND]corss talk rebuild 0 %d %d!!\012\000"
.LC393:
	.ascii	"[NE]1st current block:%d 1st current block uc:%d mu"
	.ascii	"ti current used block 1st.\012\000"
.LC394:
	.ascii	"[ND]2nd current block:%d 2nd current block uc:%d mu"
	.ascii	"ti current used block 2nd.\012\000"
.LC395:
	.ascii	"[NE]something is error here 7!\012\000"
.LC396:
	.ascii	"[NE]p_phy_block_info_last %d %d.\012\000"
.LC397:
	.ascii	"[NE]get_current_used_block fail.\012\000"
.LC398:
	.ascii	"[ND]free block nums is %d, aec: %d, iec: %d, a_buc:"
	.ascii	" %d, i_buc: %d!\012\000"
	.section	.rodata.shutdown_on_gc.str1.1,"aMS",%progbits,1
.LC457:
	.ascii	"[ND]%s %p %d %d %d %\012\000"
.LC458:
	.ascii	"[NI]shutdown_on_gc end! [%d %d %d]\012\000"
.LC459:
	.ascii	"[ND]shutdown_on_gc one ok! [%d %d %d]\012\000"
	.section	.rodata.torture_block_and_mark.str1.1,"aMS",%progbits,1
.LC269:
	.ascii	"[NI]torture b@%d.\012\000"
.LC270:
	.ascii	"[NE]%s write b@%d p@%d err\012\000"
.LC271:
	.ascii	"[NE]%s read b@%d p@%d err\012\000"
.LC272:
	.ascii	"[NE]%s b@%d p@%d patt %02x checking main data fail\012"
	.ascii	"\000"
.LC273:
	.ascii	"[NE]%s b@%d p@%d patt %02x checking spare data fail"
	.ascii	"\012\000"
.LC274:
	.ascii	"[NE][NE]erase_block block fail %d!\012\000"
	.section	.rodata.toshiba_read_page_end.str1.1,"aMS",%progbits,1
.LC46:
	.ascii	"toshiba retry!\012\000"
.LC47:
	.ascii	"toshiba ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.toshiba_readretry_init.str1.1,"aMS",%progbits,1
.LC45:
	.ascii	"toshiba read retry conut: %d !\012\000"
	.section	.rodata.toshiba_special_exit.str1.1,"aMS",%progbits,1
.LC50:
	.ascii	" toshiba_special_exit \012\000"
	.section	.rodata.toshiba_special_init.str1.1,"aMS",%progbits,1
.LC48:
	.ascii	" toshiba_special_init toshiba_read_retry_mode :%d t"
	.ascii	"oshiba_read_retry_cycle :%d toshiba_read_retry_reg_"
	.ascii	"cnt :%d \012\000"
.LC49:
	.ascii	" toshiba_special_init error toshiba_read_retry_mode"
	.ascii	" :%d toshiba_read_retry_cycle :%d toshiba_read_retr"
	.ascii	"y_reg_cnt :%d \012\000"
	.section	.rodata.toshiba_vender_pre_condition.str1.1,"aMS",%progbits,1
.LC44:
	.ascii	"toshiba vender_pre_condition error!\012\000"
	.section	.rodata.toshiba_vender_set_param.str1.1,"aMS",%progbits,1
.LC43:
	.ascii	"toshiba rr value 3 %x %x %x %x!\012\000"
	.section	.rodata.write_data_to_nand.str1.1,"aMS",%progbits,1
.LC235:
	.ascii	"[NE][NE]%s:malloc 512 fail!\012\000"
	.section	.rodata.write_data_to_page.str1.1,"aMS",%progbits,1
.LC417:
	.ascii	"[NE]write logic data to current block error\012\000"
	.section	.rodata.write_logic_data_to_current_block.str1.1,"aMS",%progbits,1
.LC412:
	.ascii	"[ND]logic_page_map NULL!!\012\000"
.LC413:
	.ascii	"[ND]invalid_page_count more than pages_per_blk at w"
	.ascii	"rite logic data to current block:%d!!\012\000"
.LC414:
	.ascii	"[NE]write_phy_data_to_current_block error2\012\000"
.LC415:
	.ascii	"[NE]invalid_page_count more than pages_per_blk at w"
	.ascii	"rite logic data to current block:%d!!\012\000"
.LC416:
	.ascii	"[NE]write phy data to current block error2\012\000"
	.section	.rodata.write_phy_data_to_current_block.str1.1,"aMS",%progbits,1
.LC404:
	.ascii	"[ND]last block can not used to logic page %d!!\012\000"
.LC405:
	.ascii	"[ND]last block can not used to power down page %d!!"
	.ascii	"\012\000"
.LC406:
	.ascii	"[ND]write_phy_data_to_current_block write error %d!"
	.ascii	"\012\000"
.LC407:
	.ascii	"[NE]do_write_error error\012\000"
	.section	.rodata.write_phy_page_map_to_current_block.str1.1,"aMS",%progbits,1
.LC408:
	.ascii	"[NE]write_phy_data_to_current_block error1\012\000"
	.section	.rodata.zone_param_init.str1.1,"aMS",%progbits,1
.LC468:
	.ascii	"[NE]%s:malloc fail for temp_page_buf\012\000"
.LC469:
	.ascii	"[NE]%s:malloc fail for logic_page_buf\012\000"
.LC470:
	.ascii	"[NE]zone_param_init error2\012\000"
.LC471:
	.ascii	"[NE]%s:malloc fail for current_block.user_info.buf\012"
	.ascii	"\000"
.LC472:
	.ascii	"[NE]%s:malloc fail for assist_block.user_info.buf\012"
	.ascii	"\000"
.LC473:
	.ascii	"[NE]%s:malloc fail for zone_phy_page_map_for_gc.buf"
	.ascii	"\012\000"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
	.section	.note.GNU-stack,"",%progbits
