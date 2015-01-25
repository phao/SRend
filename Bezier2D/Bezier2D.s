	.file	"Bezier2D.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.p2align 4,,15
	.type	Cleanup, @function
Cleanup:
.LFB571:
	.file 1 "Bezier2D.c"
	.loc 1 97 0
	.cfi_startproc
.LVL0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 97 0
	mov	rbx, rdi
	.loc 1 98 0
	mov	rdi, QWORD PTR [rdi+24]
.LVL1:
	test	rdi, rdi
	je	.L2
	.loc 1 98 0 is_stmt 0 discriminator 1
	call	SDL_DestroyTexture
.LVL2:
.L2:
	.loc 1 99 0 is_stmt 1
	mov	rdi, QWORD PTR [rbx+8]
	test	rdi, rdi
	je	.L3
	.loc 1 99 0 is_stmt 0 discriminator 1
	call	SDL_DestroyRenderer
.LVL3:
.L3:
	.loc 1 100 0 is_stmt 1
	mov	rdi, QWORD PTR [rbx]
	test	rdi, rdi
	je	.L4
	.loc 1 100 0 is_stmt 0 discriminator 1
	call	SDL_DestroyWindow
.LVL4:
.L4:
	.loc 1 102 0 is_stmt 1
	pop	rbx
	.cfi_def_cfa_offset 8
.LVL5:
	.loc 1 101 0
	jmp	SDL_Quit
.LVL6:
	.cfi_endproc
.LFE571:
	.size	Cleanup, .-Cleanup
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"(missing code)"
.LC6:
	.string	"(missing message)"
.LC7:
	.string	"(missing function name)"
.LC8:
	.string	"(missing file name)"
.LC9:
	.string	"SDL_Init(SDL_INIT_VIDEO)"
.LC10:
	.string	"Bezier2D.c"
.LC11:
	.string	"Splines 2D"
.LC12:
	.string	"win"
.LC13:
	.string	"rend"
.LC14:
	.string	"tex"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"SDL_LockTexture(s->texture, 0, &s->pixels, &s->pitch)"
	.align 8
.LC17:
	.string	"SDL_RenderCopy(vid->rend, s->texture, 0, 0)"
	.align 8
.LC18:
	.string	"Couldn't get error information.\n"
	.align 8
.LC19:
	.string	"Error! Aborting program.\nBread Crumbs:\n=============\n"
	.section	.rodata.str1.1
.LC20:
	.string	"\t%s: L%d: %s: %s\n\t\t%s\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Init(&video, \"Splines 2D\", DEFAULT_WIDTH, DEFAULT_HEIGHT)"
	.section	.rodata.str1.1
.LC22:
	.string	"DrawLoop(&video)"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB583:
	.loc 1 458 0
	.cfi_startproc
.LVL7:
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 462 0
	mov	ecx, 7
	.loc 1 458 0
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 232
	.cfi_def_cfa_offset 288
	.loc 1 458 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rsp+216], rax
	xor	eax, eax
	.loc 1 462 0
	lea	rdi, [rsp+96]
.LVL8:
	rep stosq
.LVL9:
.LBB179:
.LBB180:
.LBB181:
	.loc 1 69 0
	mov	edi, 32
	call	SDL_Init
.LVL10:
	test	eax, eax
	js	.L95
.LBE181:
	.loc 1 71 0
	mov	r9d, 4
	mov	ecx, 640
	mov	edx, 536805376
	mov	r8d, 480
	mov	esi, 536805376
	mov	edi, OFFSET FLAT:.LC11
	call	SDL_CreateWindow
.LVL11:
	.loc 1 74 0
	test	rax, rax
	je	.L96
	.loc 1 78 0
	mov	edx, 6
	mov	esi, -1
	mov	rdi, rax
	.loc 1 75 0
	mov	QWORD PTR [rsp+96], rax
	.loc 1 76 0
	mov	QWORD PTR [rsp+112], OFFSET FLAT:.LC11
	.loc 1 78 0
	call	SDL_CreateRenderer
.LVL12:
	.loc 1 81 0
	test	rax, rax
	je	.L97
	.loc 1 84 0
	mov	r8d, 480
	mov	ecx, 640
	mov	edx, 1
	mov	esi, 370546692
	mov	rdi, rax
	.loc 1 82 0
	mov	QWORD PTR [rsp+104], rax
	.loc 1 84 0
	call	SDL_CreateTexture
.LVL13:
	.loc 1 87 0
	test	rax, rax
	je	.L98
	.loc 1 88 0
	mov	QWORD PTR [rsp+120], rax
	lea	rax, [rsp+100]
.LVL14:
	.loc 1 90 0
	mov	DWORD PTR [rsp+128], 640
	.loc 1 91 0
	mov	DWORD PTR [rsp+132], 480
	mov	QWORD PTR [rsp+56], rax
.LVL15:
.L22:
.LBE180:
.LBE179:
.LBB186:
.LBB187:
	.loc 1 410 0
	lea	rdi, [rsp+160]
	call	SDL_PollEvent
.LVL16:
	test	eax, eax
	je	.L99
	.loc 1 411 0
	cmp	DWORD PTR [rsp+160], 256
	jne	.L22
.LBE187:
.LBE186:
	.loc 1 466 0
	lea	rdi, [rsp+96]
.LVL17:
	call	Cleanup
.LVL18:
	.loc 1 467 0
	xor	eax, eax
.LVL19:
.L62:
	.loc 1 473 0
	mov	rbx, QWORD PTR [rsp+216]
	xor	rbx, QWORD PTR fs:40
	jne	.L100
	add	rsp, 232
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
.LVL20:
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L99:
	.cfi_restore_state
.LBB319:
.LBB317:
.LBB188:
	.loc 1 415 0
	mov	rdi, QWORD PTR [rsp+120]
	lea	rcx, [rsp+136]
	xor	esi, esi
	lea	rdx, [rsp+144]
	call	SDL_LockTexture
.LVL21:
	test	eax, eax
	js	.L25
.LVL22:
.LBE188:
.LBB189:
.LBB190:
	.loc 1 116 0
	mov	r10d, DWORD PTR [rsp+132]
	test	r10d, r10d
	jle	.L26
	xor	esi, esi
.LVL23:
	.p2align 4,,10
	.p2align 3
.L27:
.LBB191:
	.loc 1 117 0
	mov	r9d, DWORD PTR [rsp+128]
	test	r9d, r9d
	jle	.L30
	xor	ecx, ecx
	xor	edx, edx
.LVL24:
	.p2align 4,,10
	.p2align 3
.L31:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
	.loc 1 106 0
	mov	eax, DWORD PTR [rsp+136]
.LBE195:
.LBE194:
.LBE193:
.LBE192:
	.loc 1 117 0
	add	edx, 1
.LVL25:
.LBB199:
.LBB198:
.LBB197:
.LBB196:
	.loc 1 106 0
	imul	eax, esi
	cdqe
.LBE196:
.LBE197:
.LBE198:
.LBE199:
	.loc 1 118 0
	add	rax, QWORD PTR [rsp+144]
	mov	DWORD PTR [rax+rcx], 16777215
	add	rcx, 4
	.loc 1 117 0
	cmp	edx, DWORD PTR [rsp+128]
	jl	.L31
.LVL26:
.L30:
.LBE191:
	.loc 1 116 0
	add	esi, 1
.LVL27:
	cmp	esi, DWORD PTR [rsp+132]
	jl	.L27
.LVL28:
.L26:
	vmovss	xmm10, DWORD PTR .LC1[rip]
.LBE190:
.LBE189:
.LBB200:
.LBB201:
.LBB202:
.LBB203:
	.loc 1 320 0
	mov	ebp, 0x42200000
.LBE203:
.LBE202:
	.loc 1 382 0
	mov	DWORD PTR [rsp+64], 40
	mov	DWORD PTR [rsp+68], 40
.LBB286:
.LBB281:
	.loc 1 321 0
	mov	r13d, ebp
	vxorps	xmm12, xmm12, xmm12
	vmovss	xmm8, DWORD PTR .LC3[rip]
.LBE281:
.LBE286:
	.loc 1 382 0
	mov	DWORD PTR [rsp+72], 50
.LBB287:
.LBB282:
.LBB204:
.LBB205:
	.loc 1 327 0
	vmovaps	xmm13, xmm10
.LBE205:
.LBE204:
.LBE282:
.LBE287:
	.loc 1 382 0
	mov	DWORD PTR [rsp+76], 100
	mov	DWORD PTR [rsp+80], 240
	mov	DWORD PTR [rsp+84], 30
	mov	DWORD PTR [rsp+88], 280
	mov	DWORD PTR [rsp+92], 60
.LVL29:
.LBB288:
.LBB283:
.LBB278:
	.loc 1 323 0
	mov	DWORD PTR [rsp+28], 1
	.p2align 4,,10
	.p2align 3
.L49:
.LVL30:
.LBB274:
	.loc 1 324 0
	vcvtsi2ss	xmm9, xmm9, DWORD PTR [rsp+28]
	.loc 1 327 0
	vmovaps	xmm11, xmm13
	.loc 1 324 0
	vmulss	xmm9, xmm9, DWORD PTR .LC16[rip]
.LVL31:
	.loc 1 326 0
	vsubss	xmm0, xmm10, xmm9
.LVL32:
	.loc 1 327 0
	vucomiss	xmm0, xmm12
	jbe	.L32
	vdivss	xmm11, xmm10, xmm0
.L32:
	.loc 1 335 0
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	DWORD PTR [rsp+52], xmm13
	vmovss	DWORD PTR [rsp+48], xmm12
	vmovss	DWORD PTR [rsp+44], xmm8
	vmovss	DWORD PTR [rsp+40], xmm10
	vmovss	DWORD PTR [rsp+36], xmm11
	vmovss	DWORD PTR [rsp+32], xmm9
.LVL33:
	call	powf
.LVL34:
	.loc 1 334 0
	vmovss	xmm13, DWORD PTR [rsp+52]
	.loc 1 335 0
	lea	rsi, [rsp+64]
.LVL35:
	.loc 1 330 0
	vmovss	xmm12, DWORD PTR [rsp+48]
	.loc 1 335 0
	mov	eax, 40
	mov	edi, 40
	.loc 1 333 0
	vmovss	xmm8, DWORD PTR [rsp+44]
	.loc 1 338 0
	xor	edx, edx
	.loc 1 334 0
	vmovaps	xmm4, xmm13
	.loc 1 336 0
	vmovss	xmm5, DWORD PTR .LC2[rip]
	.loc 1 332 0
	vmovaps	xmm2, xmm13
	.loc 1 330 0
	vmovaps	xmm7, xmm12
	.loc 1 333 0
	vmovaps	xmm3, xmm8
	.loc 1 329 0
	vmovaps	xmm6, xmm12
	vmovss	xmm9, DWORD PTR [rsp+32]
	vmovss	xmm11, DWORD PTR [rsp+36]
	vmovss	xmm10, DWORD PTR [rsp+40]
	jmp	.L34
.LVL36:
	.p2align 4,,10
	.p2align 3
.L101:
.LBB206:
	.loc 1 357 0
	vcvtsi2ss	xmm1, xmm1, edx
	.loc 1 358 0
	vdivss	xmm3, xmm3, xmm5
.LVL37:
	.loc 1 361 0
	cmp	edx, 3
	.loc 1 359 0
	vsubss	xmm5, xmm5, xmm10
.LVL38:
	.loc 1 360 0
	vmulss	xmm4, xmm4, xmm9
.LVL39:
	.loc 1 357 0
	vmulss	xmm2, xmm2, xmm1
.LVL40:
	.loc 1 361 0
	je	.L72
	vmulss	xmm0, xmm0, xmm11
.LVL41:
.L36:
	mov	edi, DWORD PTR [rsi+8]
	add	rsi, 8
	mov	eax, DWORD PTR [rsi+4]
.LVL42:
.L34:
	.loc 1 345 0
	vmulss	xmm1, xmm2, xmm3
	.loc 1 349 0
	vcvtsi2ss	xmm14, xmm14, edi
	.loc 1 352 0
	add	edx, 1
.LVL43:
	.loc 1 353 0
	cmp	edx, 4
	.loc 1 345 0
	vdivss	xmm1, xmm8, xmm1
	vmulss	xmm1, xmm1, xmm4
	vmulss	xmm1, xmm1, xmm0
.LVL44:
	.loc 1 349 0
	vmulss	xmm14, xmm1, xmm14
	vaddss	xmm6, xmm6, xmm14
.LVL45:
	.loc 1 350 0
	vcvtsi2ss	xmm14, xmm14, eax
	vmulss	xmm1, xmm1, xmm14
.LVL46:
	vaddss	xmm7, xmm7, xmm1
.LVL47:
	.loc 1 353 0
	jne	.L101
.LBE206:
	.loc 1 370 0
	vcvttss2si	edx, xmm7
.LVL48:
	vmovd	xmm5, r13d
.LVL49:
	vmovd	xmm2, ebp
.LVL50:
	vcvttss2si	r12d, xmm6
.LBB207:
.LBB208:
	.loc 1 170 0
	mov	r10d, 1
.LBE208:
.LBE207:
	.loc 1 370 0
	vcvttss2si	ecx, xmm5
	vcvttss2si	eax, xmm2
.LVL51:
.LBB269:
.LBB266:
	.loc 1 168 0
	mov	ebx, edx
	.loc 1 174 0
	mov	r15d, r12d
	.loc 1 168 0
	sub	ebx, ecx
.LVL52:
	.loc 1 174 0
	sub	r15d, eax
.LVL53:
	js	.L102
.LVL54:
.L37:
	.loc 1 183 0
	test	ebx, ebx
	.loc 1 171 0
	mov	r11d, 1
	.loc 1 183 0
	js	.L103
.LVL55:
.L38:
	.loc 1 196 0
	cmp	r15d, ebx
	jg	.L39
.LVL56:
	.loc 1 214 0
	xchg	ecx, eax
.LVL57:
	.loc 1 222 0
	xchg	r11d, r10d
.LVL58:
	.loc 1 216 0
	xor	r12d, edx
.LVL59:
	.loc 1 274 0
	mov	esi, eax
.LBB209:
.LBB210:
	.loc 1 130 0
	mov	r8, QWORD PTR [rsp+144]
.LBE210:
.LBE209:
	.loc 1 217 0
	xor	edx, r12d
.LVL60:
	.loc 1 274 0
	imul	esi, r10d
	.loc 1 218 0
	xor	r12d, edx
.LVL61:
	.loc 1 227 0
	sub	edx, ecx
.LVL62:
	.loc 1 271 0
	lea	ebx, [rdx+rdx]
	.loc 1 226 0
	mov	r15d, r12d
.LVL63:
	.loc 1 224 0
	mov	ebp, -1
.LVL64:
	.loc 1 226 0
	sub	r15d, eax
.LVL65:
	.loc 1 271 0
	mov	edx, ebx
.LBB224:
.LBB221:
.LBB211:
.LBB212:
.LBB213:
.LBB214:
	.loc 1 106 0
	imul	esi, DWORD PTR [rsp+136]
.LBE214:
.LBE213:
.LBE212:
.LBE211:
.LBE221:
.LBE224:
	.loc 1 271 0
	sub	edx, r15d
.LVL66:
.LBB225:
.LBB222:
.LBB219:
.LBB217:
.LBB216:
.LBB215:
	.loc 1 106 0
	movsx	rdi, esi
.LBE215:
.LBE216:
.LBE217:
.LBE219:
.LBE222:
.LBE225:
	.loc 1 274 0
	mov	esi, ecx
	imul	esi, r11d
.LVL67:
.LBB226:
.LBB223:
.LBB220:
.LBB218:
	.loc 1 111 0
	movsx	rsi, esi
.LBE218:
.LBE220:
	.loc 1 130 0
	lea	rsi, [r8+rsi*4]
.LVL68:
	mov	DWORD PTR [rsi+rdi], 0
.LVL69:
.L69:
.LBE223:
.LBE226:
	.loc 1 275 0
	add	eax, 1
.LVL70:
	cmp	eax, r12d
	jg	.L46
	mov	edi, eax
	add	r15d, r15d
.LVL71:
	movsx	r13, r10d
	imul	edi, r10d
	sal	r13, 2
	add	r12d, 1
.LVL72:
	neg	r15d
	movsx	r8, edi
	sal	r8, 2
	jmp	.L47
.LVL73:
	.p2align 4,,10
	.p2align 3
.L104:
.LBB227:
	.loc 1 277 0
	mov	r9d, r11d
	imul	r9d, ecx
.LVL74:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
	.loc 1 106 0
	imul	r9d, DWORD PTR [rsp+136]
.LVL75:
	movsx	r9, r9d
.LBE233:
.LBE232:
.LBE231:
.LBE230:
	.loc 1 130 0
	add	r9, QWORD PTR [rsp+144]
	mov	DWORD PTR [r9+r8], 0
.LVL76:
.L45:
.LBE229:
.LBE228:
	.loc 1 278 0
	add	esi, ebx
.LBE227:
	.loc 1 275 0
	add	eax, 1
.LVL77:
	add	r8, r13
.LBB250:
	.loc 1 278 0
	add	edx, esi
.LVL78:
	add	edi, r10d
.LBE250:
	.loc 1 275 0
	cmp	eax, r12d
	je	.L46
.LVL79:
.L47:
.LBB251:
	.loc 1 276 0
	xor	esi, esi
	test	edx, edx
	jle	.L43
	add	ecx, 1
.LVL80:
	mov	esi, r15d
.LVL81:
.L43:
	.loc 1 277 0
	test	ebp, ebp
	je	.L104
.LVL82:
	mov	r9d, r11d
.LBB234:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
	.loc 1 106 0
	mov	r14d, DWORD PTR [rsp+136]
.LBE239:
.LBE238:
.LBE237:
.LBE236:
.LBE235:
.LBE234:
	.loc 1 277 0
	imul	r9d, ecx
.LVL83:
.LBB249:
.LBB248:
.LBB246:
.LBB244:
	.loc 1 111 0
	movsx	r9, r9d
.LBB242:
.LBB240:
	.loc 1 106 0
	imul	r14d, edi
.LBE240:
.LBE242:
.LBE244:
.LBE246:
	.loc 1 130 0
	sal	r9, 2
.LVL84:
	add	r9, QWORD PTR [rsp+144]
.LBB247:
.LBB245:
.LBB243:
.LBB241:
	.loc 1 106 0
	movsx	r14, r14d
.LBE241:
.LBE243:
.LBE245:
.LBE247:
	.loc 1 130 0
	mov	DWORD PTR [r9+r14], 0
	jmp	.L45
.LVL85:
	.p2align 4,,10
	.p2align 3
.L46:
.LBE248:
.LBE249:
.LBE251:
.LBE266:
.LBE269:
.LBE274:
	.loc 1 323 0
	add	DWORD PTR [rsp+28], 1
.LVL86:
	cmp	DWORD PTR [rsp+28], 51
	je	.L105
.LBB275:
.LBB270:
	.loc 1 349 0
	vmovd	ebp, xmm6
	.loc 1 350 0
	vmovd	r13d, xmm7
	jmp	.L49
.LVL87:
	.p2align 4,,10
	.p2align 3
.L39:
.LBE270:
.LBB271:
.LBB267:
	.loc 1 274 0
	mov	esi, ecx
.LBB252:
.LBB253:
	.loc 1 130 0
	mov	r8, QWORD PTR [rsp+144]
.LBE253:
.LBE252:
	.loc 1 271 0
	add	ebx, ebx
	.loc 1 274 0
	imul	esi, r11d
	.loc 1 271 0
	mov	edx, ebx
.LVL88:
	.loc 1 172 0
	xor	ebp, ebp
.LVL89:
	.loc 1 271 0
	sub	edx, r15d
.LVL90:
.LBB262:
.LBB260:
.LBB254:
.LBB255:
.LBB256:
.LBB257:
	.loc 1 106 0
	imul	esi, DWORD PTR [rsp+136]
.LVL91:
	movsx	rdi, esi
.LBE257:
.LBE256:
.LBE255:
.LBE254:
.LBE260:
.LBE262:
	.loc 1 274 0
	mov	esi, eax
	imul	esi, r10d
.LBB263:
.LBB261:
.LBB259:
.LBB258:
	.loc 1 111 0
	movsx	rsi, esi
.LBE258:
.LBE259:
	.loc 1 130 0
	lea	rsi, [r8+rsi*4]
	mov	DWORD PTR [rsi+rdi], 0
	jmp	.L69
.LVL92:
	.p2align 4,,10
	.p2align 3
.L103:
	mov	ebx, ecx
.LVL93:
.LBE261:
.LBE263:
	.loc 1 189 0
	mov	r11d, -1
	.loc 1 190 0
	neg	ecx
.LVL94:
	sub	ebx, edx
.LVL95:
	.loc 1 191 0
	neg	edx
.LVL96:
	jmp	.L38
.LVL97:
	.p2align 4,,10
	.p2align 3
.L102:
	.loc 1 181 0
	mov	r15d, eax
.LVL98:
	.loc 1 179 0
	mov	r10d, -1
	.loc 1 180 0
	neg	eax
.LVL99:
	.loc 1 181 0
	sub	r15d, r12d
.LVL100:
	neg	r12d
.LVL101:
	jmp	.L37
.LVL102:
.L105:
	mov	r9, QWORD PTR [rsp+56]
	lea	rsi, [rsp+68]
.LVL103:
.L48:
.LBB264:
	.loc 1 276 0
	mov	edi, -2
.LVL104:
.L56:
.LBE264:
.LBE267:
.LBE271:
.LBE275:
.LBE278:
.LBE283:
.LBE288:
.LBB289:
.LBB290:
.LBB291:
	.loc 1 393 0
	mov	edx, edi
.LBE291:
.LBE290:
.LBE289:
.LBB308:
.LBB284:
.LBB279:
.LBB276:
.LBB272:
.LBB268:
.LBB265:
	.loc 1 276 0
	mov	eax, -2
.LBE265:
.LBE268:
.LBE272:
.LBE276:
.LBE279:
.LBE284:
.LBE308:
.LBB309:
.LBB306:
.LBB304:
	.loc 1 393 0
	sar	edx, 31
	mov	r8d, edx
	xor	r8d, edi
	sub	r8d, edx
.LVL105:
.L54:
	mov	ecx, eax
	sar	ecx, 31
	mov	edx, ecx
	xor	edx, eax
	sub	edx, ecx
	cmp	edx, 2
	je	.L106
.L50:
.LVL106:
	.loc 1 396 0
	mov	edx, DWORD PTR [rsi]
.LBB292:
.LBB293:
	.loc 1 130 0
	mov	r10, QWORD PTR [rsp+144]
.LBE293:
.LBE292:
	.loc 1 396 0
	add	edx, eax
.LVL107:
.LBB302:
.LBB300:
.LBB294:
.LBB295:
.LBB296:
.LBB297:
	.loc 1 106 0
	imul	edx, DWORD PTR [rsp+136]
.LVL108:
	movsx	rcx, edx
.LBE297:
.LBE296:
.LBE295:
.LBE294:
.LBE300:
.LBE302:
	.loc 1 396 0
	mov	edx, DWORD PTR [rsi-4]
	add	edx, edi
.LVL109:
.LBB303:
.LBB301:
.LBB299:
.LBB298:
	.loc 1 111 0
	movsx	rdx, edx
.LBE298:
.LBE299:
	.loc 1 130 0
	lea	rdx, [r10+rdx*4]
.LVL110:
	mov	DWORD PTR [rdx+rcx], 16711680
.LVL111:
.L51:
.LBE301:
.LBE303:
	.loc 1 392 0
	add	eax, 1
.LVL112:
	cmp	eax, 3
	jne	.L54
.LBE304:
	.loc 1 391 0
	add	edi, 1
.LVL113:
	cmp	edi, 3
	jne	.L56
.LVL114:
	add	rsi, 8
.LBE306:
	.loc 1 390 0
	cmp	rsi, r9
	jne	.L48
.LBE309:
.LBE201:
.LBE200:
	.loc 1 419 0
	mov	rdi, QWORD PTR [rsp+120]
.LVL115:
	call	SDL_UnlockTexture
.LVL116:
.LBB313:
	.loc 1 420 0
	mov	rsi, QWORD PTR [rsp+120]
	xor	ecx, ecx
	mov	rdi, QWORD PTR [rsp+104]
	xor	edx, edx
	call	SDL_RenderCopy
.LVL117:
	test	eax, eax
	js	.L107
.LBE313:
	.loc 1 421 0
	mov	rdi, QWORD PTR [rsp+104]
	call	SDL_RenderPresent
.LVL118:
	jmp	.L22
.LVL119:
	.p2align 4,,10
	.p2align 3
.L106:
.LBB314:
.LBB312:
.LBB310:
.LBB307:
.LBB305:
	.loc 1 393 0
	cmp	r8d, 2
	jne	.L50
	.p2align 4,,7
	jmp	.L51
.LVL120:
.L72:
.LBE305:
.LBE307:
.LBE310:
.LBB311:
.LBB285:
.LBB280:
.LBB277:
.LBB273:
	.loc 1 361 0
	vmovss	xmm0, DWORD PTR .LC1[rip]
.LVL121:
	jmp	.L36
.LVL122:
.L107:
.LBE273:
.LBE277:
.LBE280:
.LBE285:
.LBE311:
.LBE312:
.LBE314:
.LBB315:
	.loc 1 420 0
	call	SDL_GetError
.LVL123:
	mov	r8d, OFFSET FLAT:.LC17
	mov	ecx, OFFSET FLAT:__func__.9219
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 420
	mov	rdi, rax
	call	XERR_PushError
.LVL124:
.L28:
.LBE315:
.LBE317:
.LBE319:
	.loc 1 465 0
	mov	r8d, OFFSET FLAT:.LC22
	mov	ecx, OFFSET FLAT:__func__.9241
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 465
	xor	edi, edi
	call	XERR_PushError
.LVL125:
.L59:
.LBB320:
.LBB321:
	.loc 1 435 0
	call	XERR_CopyErrors
.LVL126:
	.loc 1 436 0
	test	rdx, rdx
	.loc 1 435 0
	mov	rbp, rax
	mov	r12, rdx
.LVL127:
	.loc 1 436 0
	je	.L108
.LVL128:
.L60:
	.loc 1 441 0
	mov	rcx, QWORD PTR stderr[rip]
	mov	edx, 53
.LVL129:
.LBB322:
	.loc 1 444 0
	xor	r14d, r14d
.LBE322:
	.loc 1 441 0
	mov	esi, 1
	mov	edi, OFFSET FLAT:.LC19
.LVL130:
	mov	rbx, r12
.LBB345:
.LBB323:
.LBB324:
.LBB325:
	.loc 1 430 0
	mov	r13d, OFFSET FLAT:.LC5
.LBE325:
.LBE324:
.LBE323:
.LBE345:
	.loc 1 441 0
	call	fwrite
.LVL131:
.LBB346:
	.loc 1 444 0
	test	rbp, rbp
	jne	.L88
.LVL132:
	jmp	.L67
.LVL133:
	.p2align 4,,10
	.p2align 3
.L109:
.LBB342:
.LBB328:
.LBB326:
	.loc 1 430 0
	cmp	BYTE PTR [rax], 0
	cmove	rax, r13
.LVL134:
	mov	rsi, rax
.L63:
.LBE326:
.LBE328:
	.loc 1 450 0
	mov	rdx, QWORD PTR [rbx+8]
.LVL135:
.LBB329:
.LBB330:
	.loc 1 430 0
	mov	eax, OFFSET FLAT:.LC6
	test	rdx, rdx
	je	.L64
	cmp	BYTE PTR [rdx], 0
	cmovne	rax, rdx
.L64:
.LBE330:
.LBE329:
	.loc 1 449 0
	mov	rdx, QWORD PTR [rbx+40]
.LVL136:
.LBB331:
.LBB332:
	.loc 1 430 0
	mov	r9d, OFFSET FLAT:.LC7
	test	rdx, rdx
	je	.L65
	cmp	BYTE PTR [rdx], 0
	cmovne	r9, rdx
.L65:
.LBE332:
.LBE331:
	.loc 1 447 0
	mov	rdx, QWORD PTR [rbx+24]
.LVL137:
.LBB333:
.LBB334:
	.loc 1 430 0
	mov	ecx, OFFSET FLAT:.LC8
.LBE334:
.LBE333:
	.loc 1 446 0
	mov	r8d, DWORD PTR [rbx]
.LBB336:
.LBB335:
	.loc 1 430 0
	test	rdx, rdx
	je	.L66
	cmp	BYTE PTR [rdx], 0
	cmovne	rcx, rdx
.L66:
.LVL138:
.LBE335:
.LBE336:
.LBB337:
.LBB338:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 97 0
	mov	rdi, QWORD PTR stderr[rip]
	mov	QWORD PTR [rsp+8], rsi
.LVL139:
.LBE338:
.LBE337:
.LBE342:
	.loc 1 444 0
	add	r14, 1
.LVL140:
.LBB343:
.LBB340:
.LBB339:
	.loc 2 97 0
	mov	QWORD PTR [rsp], rax
	mov	edx, OFFSET FLAT:.LC20
.LVL141:
	xor	eax, eax
	mov	esi, 1
	add	rbx, 72
.LVL142:
	call	__fprintf_chk
.LVL143:
.LBE339:
.LBE340:
.LBE343:
	.loc 1 444 0
	cmp	r14, rbp
	je	.L67
.LVL144:
.L88:
.LBB344:
	.loc 1 451 0
	mov	rax, QWORD PTR [rbx+56]
.LVL145:
.LBB341:
.LBB327:
	.loc 1 430 0
	test	rax, rax
	jne	.L109
	mov	esi, OFFSET FLAT:.LC5
	jmp	.L63
.LVL146:
.L67:
.LBE327:
.LBE341:
.LBE344:
.LBE346:
	.loc 1 453 0
	mov	rdi, rbp
	mov	rsi, r12
	call	XERR_FreeErrors
.LVL147:
	.loc 1 454 0
	call	XERR_ClearInternalSequence
.LVL148:
.LBE321:
.LBE320:
	.loc 1 471 0
	lea	rdi, [rsp+96]
.LVL149:
	call	Cleanup
.LVL150:
	.loc 1 472 0
	mov	eax, 1
	jmp	.L62
.LVL151:
.L25:
.LBB348:
.LBB318:
.LBB316:
	.loc 1 415 0
	call	SDL_GetError
.LVL152:
	mov	r8d, OFFSET FLAT:.LC15
	mov	ecx, OFFSET FLAT:__func__.9219
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 416
	mov	rdi, rax
	call	XERR_PushError
.LVL153:
	jmp	.L28
.LVL154:
.L95:
.LBE316:
.LBE318:
.LBE348:
.LBB349:
.LBB183:
.LBB182:
	.loc 1 69 0
	call	SDL_GetError
.LVL155:
	mov	r8d, OFFSET FLAT:.LC9
	mov	ecx, OFFSET FLAT:__func__.9094
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 69
	mov	rdi, rax
	call	XERR_PushError
.LVL156:
.L18:
.LBE182:
.LBE183:
.LBE349:
	.loc 1 464 0
	mov	r8d, OFFSET FLAT:.LC21
	mov	ecx, OFFSET FLAT:__func__.9241
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 464
	xor	edi, edi
	call	XERR_PushError
.LVL157:
	jmp	.L59
.LVL158:
.L96:
.LBB350:
.LBB184:
	.loc 1 74 0
	call	SDL_GetError
.LVL159:
	mov	r8d, OFFSET FLAT:.LC12
	mov	ecx, OFFSET FLAT:__func__.9094
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 74
	mov	rdi, rax
	call	XERR_PushError
.LVL160:
	jmp	.L18
.LVL161:
.L108:
.LBE184:
.LBE350:
.LBB351:
.LBB347:
	.loc 1 437 0
	mov	edx, 32
.LVL162:
	mov	esi, 1
	mov	edi, OFFSET FLAT:.LC18
	mov	rcx, QWORD PTR stderr[rip]
	call	fwrite
.LVL163:
	jmp	.L60
.LVL164:
.L100:
.LBE347:
.LBE351:
	.loc 1 473 0
	call	__stack_chk_fail
.LVL165:
.L98:
.LBB352:
.LBB185:
	.loc 1 87 0
	.p2align 4,,8
	call	SDL_GetError
.LVL166:
	mov	r8d, OFFSET FLAT:.LC14
	mov	ecx, OFFSET FLAT:__func__.9094
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 87
	mov	rdi, rax
	call	XERR_PushError
.LVL167:
	jmp	.L18
.LVL168:
.L97:
	.loc 1 81 0
	call	SDL_GetError
.LVL169:
	mov	r8d, OFFSET FLAT:.LC13
	mov	ecx, OFFSET FLAT:__func__.9094
	mov	edx, OFFSET FLAT:.LC10
	mov	esi, 81
	mov	rdi, rax
	call	XERR_PushError
.LVL170:
	jmp	.L18
.LBE185:
.LBE352:
	.cfi_endproc
.LFE583:
	.size	main, .-main
	.section	.rodata
	.type	__func__.9219, @object
	.size	__func__.9219, 9
__func__.9219:
	.string	"DrawLoop"
	.type	__func__.9094, @object
	.size	__func__.9094, 5
__func__.9094:
	.string	"Init"
	.type	__func__.9241, @object
	.size	__func__.9241, 5
__func__.9241:
	.string	"main"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1086324736
	.align 4
.LC16:
	.long	1017370378
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 8 "/usr/include/stdint.h"
	.file 9 "/usr/include/SDL2/SDL_stdinc.h"
	.file 10 "/usr/include/SDL2/SDL_pixels.h"
	.file 11 "/usr/include/SDL2/SDL_rect.h"
	.file 12 "/usr/include/SDL2/SDL_video.h"
	.file 13 "/usr/include/SDL2/SDL_scancode.h"
	.file 14 "/usr/include/SDL2/SDL_keycode.h"
	.file 15 "/usr/include/SDL2/SDL_keyboard.h"
	.file 16 "/usr/include/SDL2/SDL_joystick.h"
	.file 17 "/usr/include/SDL2/SDL_touch.h"
	.file 18 "/usr/include/SDL2/SDL_gesture.h"
	.file 19 "/usr/include/SDL2/SDL_events.h"
	.file 20 "/usr/include/SDL2/SDL_render.h"
	.file 21 "../XError.h"
	.file 22 "/usr/include/SDL2/SDL.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 24 "/usr/include/SDL2/SDL_error.h"
	.file 25 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d75
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF2088
	.byte	0x1
	.long	.LASF2089
	.long	.LASF2090
	.long	.Ldebug_ranges0+0x7e0
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF1535
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF1536
	.uleb128 0x4
	.long	.LASF1544
	.byte	0x3
	.byte	0xd4
	.long	0x4d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1537
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1538
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1539
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1540
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1541
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1542
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1543
	.uleb128 0x4
	.long	.LASF1545
	.byte	0x4
	.byte	0x83
	.long	0x77
	.uleb128 0x4
	.long	.LASF1546
	.byte	0x4
	.byte	0x84
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1547
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1548
	.uleb128 0x4
	.long	.LASF1549
	.byte	0x5
	.byte	0x30
	.long	0xb5
	.uleb128 0x7
	.long	.LASF1579
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x235
	.uleb128 0x8
	.long	.LASF1550
	.byte	0x6
	.byte	0xf6
	.long	0x34
	.byte	0
	.uleb128 0x8
	.long	.LASF1551
	.byte	0x6
	.byte	0xfb
	.long	0x9d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1552
	.byte	0x6
	.byte	0xfc
	.long	0x9d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1553
	.byte	0x6
	.byte	0xfd
	.long	0x9d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1554
	.byte	0x6
	.byte	0xfe
	.long	0x9d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1555
	.byte	0x6
	.byte	0xff
	.long	0x9d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF1556
	.byte	0x6
	.value	0x100
	.long	0x9d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF1557
	.byte	0x6
	.value	0x101
	.long	0x9d
	.byte	0x38
	.uleb128 0x9
	.long	.LASF1558
	.byte	0x6
	.value	0x102
	.long	0x9d
	.byte	0x40
	.uleb128 0x9
	.long	.LASF1559
	.byte	0x6
	.value	0x104
	.long	0x9d
	.byte	0x48
	.uleb128 0x9
	.long	.LASF1560
	.byte	0x6
	.value	0x105
	.long	0x9d
	.byte	0x50
	.uleb128 0x9
	.long	.LASF1561
	.byte	0x6
	.value	0x106
	.long	0x9d
	.byte	0x58
	.uleb128 0x9
	.long	.LASF1562
	.byte	0x6
	.value	0x108
	.long	0x26d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF1563
	.byte	0x6
	.value	0x10a
	.long	0x273
	.byte	0x68
	.uleb128 0x9
	.long	.LASF1564
	.byte	0x6
	.value	0x10c
	.long	0x34
	.byte	0x70
	.uleb128 0x9
	.long	.LASF1565
	.byte	0x6
	.value	0x110
	.long	0x34
	.byte	0x74
	.uleb128 0x9
	.long	.LASF1566
	.byte	0x6
	.value	0x112
	.long	0x7e
	.byte	0x78
	.uleb128 0x9
	.long	.LASF1567
	.byte	0x6
	.value	0x116
	.long	0x5b
	.byte	0x80
	.uleb128 0x9
	.long	.LASF1568
	.byte	0x6
	.value	0x117
	.long	0x69
	.byte	0x82
	.uleb128 0x9
	.long	.LASF1569
	.byte	0x6
	.value	0x118
	.long	0x279
	.byte	0x83
	.uleb128 0x9
	.long	.LASF1570
	.byte	0x6
	.value	0x11c
	.long	0x289
	.byte	0x88
	.uleb128 0x9
	.long	.LASF1571
	.byte	0x6
	.value	0x125
	.long	0x89
	.byte	0x90
	.uleb128 0x9
	.long	.LASF1572
	.byte	0x6
	.value	0x12e
	.long	0x9b
	.byte	0x98
	.uleb128 0x9
	.long	.LASF1573
	.byte	0x6
	.value	0x12f
	.long	0x9b
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF1574
	.byte	0x6
	.value	0x130
	.long	0x9b
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF1575
	.byte	0x6
	.value	0x131
	.long	0x9b
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF1576
	.byte	0x6
	.value	0x132
	.long	0x42
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF1577
	.byte	0x6
	.value	0x134
	.long	0x34
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF1578
	.byte	0x6
	.value	0x136
	.long	0x28f
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF2091
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF1580
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x26d
	.uleb128 0x8
	.long	.LASF1581
	.byte	0x6
	.byte	0xa1
	.long	0x26d
	.byte	0
	.uleb128 0x8
	.long	.LASF1582
	.byte	0x6
	.byte	0xa2
	.long	0x273
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1583
	.byte	0x6
	.byte	0xa6
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0xa3
	.long	0x289
	.uleb128 0xc
	.long	0x94
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x235
	.uleb128 0xb
	.long	0xa3
	.long	0x29f
	.uleb128 0xc
	.long	0x94
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a5
	.uleb128 0xd
	.long	0xa3
	.uleb128 0x4
	.long	.LASF1584
	.byte	0x7
	.byte	0xc3
	.long	0x70
	.uleb128 0x4
	.long	.LASF1585
	.byte	0x7
	.byte	0xc4
	.long	0x34
	.uleb128 0x4
	.long	.LASF1586
	.byte	0x7
	.byte	0xc5
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1587
	.uleb128 0x6
	.byte	0x8
	.long	0x2d8
	.uleb128 0xe
	.uleb128 0x4
	.long	.LASF1588
	.byte	0x8
	.byte	0x30
	.long	0x54
	.uleb128 0x4
	.long	.LASF1589
	.byte	0x8
	.byte	0x31
	.long	0x5b
	.uleb128 0x4
	.long	.LASF1590
	.byte	0x8
	.byte	0x33
	.long	0x62
	.uleb128 0x4
	.long	.LASF1591
	.byte	0x9
	.byte	0x81
	.long	0x2d9
	.uleb128 0x4
	.long	.LASF1592
	.byte	0x9
	.byte	0x85
	.long	0x2aa
	.uleb128 0x4
	.long	.LASF1593
	.byte	0x9
	.byte	0x89
	.long	0x2e4
	.uleb128 0x4
	.long	.LASF1594
	.byte	0x9
	.byte	0x8d
	.long	0x2b5
	.uleb128 0x4
	.long	.LASF1595
	.byte	0x9
	.byte	0x91
	.long	0x2ef
	.uleb128 0x4
	.long	.LASF1596
	.byte	0x9
	.byte	0x96
	.long	0x2c0
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x7
	.long	.LASF1597
	.byte	0x4
	.byte	0xa
	.byte	0xfe
	.long	0x37b
	.uleb128 0xf
	.string	"r"
	.byte	0xa
	.value	0x100
	.long	0x2fa
	.byte	0
	.uleb128 0xf
	.string	"g"
	.byte	0xa
	.value	0x101
	.long	0x2fa
	.byte	0x1
	.uleb128 0xf
	.string	"b"
	.byte	0xa
	.value	0x102
	.long	0x2fa
	.byte	0x2
	.uleb128 0xf
	.string	"a"
	.byte	0xa
	.value	0x103
	.long	0x2fa
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF1597
	.byte	0xa
	.value	0x104
	.long	0x342
	.uleb128 0x7
	.long	.LASF1598
	.byte	0x10
	.byte	0xb
	.byte	0x3f
	.long	0x3bc
	.uleb128 0x11
	.string	"x"
	.byte	0xb
	.byte	0x41
	.long	0x34
	.byte	0
	.uleb128 0x11
	.string	"y"
	.byte	0xb
	.byte	0x41
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.string	"w"
	.byte	0xb
	.byte	0x42
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.string	"h"
	.byte	0xb
	.byte	0x42
	.long	0x34
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF1598
	.byte	0xb
	.byte	0x43
	.long	0x387
	.uleb128 0x4
	.long	.LASF1599
	.byte	0xc
	.byte	0x59
	.long	0x3d2
	.uleb128 0x12
	.long	.LASF1599
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.byte	0x61
	.long	0x43d
	.uleb128 0x14
	.long	.LASF1600
	.sleb128 1
	.uleb128 0x14
	.long	.LASF1601
	.sleb128 2
	.uleb128 0x14
	.long	.LASF1602
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1603
	.sleb128 8
	.uleb128 0x14
	.long	.LASF1604
	.sleb128 16
	.uleb128 0x14
	.long	.LASF1605
	.sleb128 32
	.uleb128 0x14
	.long	.LASF1606
	.sleb128 64
	.uleb128 0x14
	.long	.LASF1607
	.sleb128 128
	.uleb128 0x14
	.long	.LASF1608
	.sleb128 256
	.uleb128 0x14
	.long	.LASF1609
	.sleb128 512
	.uleb128 0x14
	.long	.LASF1610
	.sleb128 1024
	.uleb128 0x14
	.long	.LASF1611
	.sleb128 4097
	.uleb128 0x14
	.long	.LASF1612
	.sleb128 2048
	.uleb128 0x14
	.long	.LASF1613
	.sleb128 8192
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xd
	.byte	0x2c
	.long	0xaa7
	.uleb128 0x14
	.long	.LASF1614
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1615
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1616
	.sleb128 5
	.uleb128 0x14
	.long	.LASF1617
	.sleb128 6
	.uleb128 0x14
	.long	.LASF1618
	.sleb128 7
	.uleb128 0x14
	.long	.LASF1619
	.sleb128 8
	.uleb128 0x14
	.long	.LASF1620
	.sleb128 9
	.uleb128 0x14
	.long	.LASF1621
	.sleb128 10
	.uleb128 0x14
	.long	.LASF1622
	.sleb128 11
	.uleb128 0x14
	.long	.LASF1623
	.sleb128 12
	.uleb128 0x14
	.long	.LASF1624
	.sleb128 13
	.uleb128 0x14
	.long	.LASF1625
	.sleb128 14
	.uleb128 0x14
	.long	.LASF1626
	.sleb128 15
	.uleb128 0x14
	.long	.LASF1627
	.sleb128 16
	.uleb128 0x14
	.long	.LASF1628
	.sleb128 17
	.uleb128 0x14
	.long	.LASF1629
	.sleb128 18
	.uleb128 0x14
	.long	.LASF1630
	.sleb128 19
	.uleb128 0x14
	.long	.LASF1631
	.sleb128 20
	.uleb128 0x14
	.long	.LASF1632
	.sleb128 21
	.uleb128 0x14
	.long	.LASF1633
	.sleb128 22
	.uleb128 0x14
	.long	.LASF1634
	.sleb128 23
	.uleb128 0x14
	.long	.LASF1635
	.sleb128 24
	.uleb128 0x14
	.long	.LASF1636
	.sleb128 25
	.uleb128 0x14
	.long	.LASF1637
	.sleb128 26
	.uleb128 0x14
	.long	.LASF1638
	.sleb128 27
	.uleb128 0x14
	.long	.LASF1639
	.sleb128 28
	.uleb128 0x14
	.long	.LASF1640
	.sleb128 29
	.uleb128 0x14
	.long	.LASF1641
	.sleb128 30
	.uleb128 0x14
	.long	.LASF1642
	.sleb128 31
	.uleb128 0x14
	.long	.LASF1643
	.sleb128 32
	.uleb128 0x14
	.long	.LASF1644
	.sleb128 33
	.uleb128 0x14
	.long	.LASF1645
	.sleb128 34
	.uleb128 0x14
	.long	.LASF1646
	.sleb128 35
	.uleb128 0x14
	.long	.LASF1647
	.sleb128 36
	.uleb128 0x14
	.long	.LASF1648
	.sleb128 37
	.uleb128 0x14
	.long	.LASF1649
	.sleb128 38
	.uleb128 0x14
	.long	.LASF1650
	.sleb128 39
	.uleb128 0x14
	.long	.LASF1651
	.sleb128 40
	.uleb128 0x14
	.long	.LASF1652
	.sleb128 41
	.uleb128 0x14
	.long	.LASF1653
	.sleb128 42
	.uleb128 0x14
	.long	.LASF1654
	.sleb128 43
	.uleb128 0x14
	.long	.LASF1655
	.sleb128 44
	.uleb128 0x14
	.long	.LASF1656
	.sleb128 45
	.uleb128 0x14
	.long	.LASF1657
	.sleb128 46
	.uleb128 0x14
	.long	.LASF1658
	.sleb128 47
	.uleb128 0x14
	.long	.LASF1659
	.sleb128 48
	.uleb128 0x14
	.long	.LASF1660
	.sleb128 49
	.uleb128 0x14
	.long	.LASF1661
	.sleb128 50
	.uleb128 0x14
	.long	.LASF1662
	.sleb128 51
	.uleb128 0x14
	.long	.LASF1663
	.sleb128 52
	.uleb128 0x14
	.long	.LASF1664
	.sleb128 53
	.uleb128 0x14
	.long	.LASF1665
	.sleb128 54
	.uleb128 0x14
	.long	.LASF1666
	.sleb128 55
	.uleb128 0x14
	.long	.LASF1667
	.sleb128 56
	.uleb128 0x14
	.long	.LASF1668
	.sleb128 57
	.uleb128 0x14
	.long	.LASF1669
	.sleb128 58
	.uleb128 0x14
	.long	.LASF1670
	.sleb128 59
	.uleb128 0x14
	.long	.LASF1671
	.sleb128 60
	.uleb128 0x14
	.long	.LASF1672
	.sleb128 61
	.uleb128 0x14
	.long	.LASF1673
	.sleb128 62
	.uleb128 0x14
	.long	.LASF1674
	.sleb128 63
	.uleb128 0x14
	.long	.LASF1675
	.sleb128 64
	.uleb128 0x14
	.long	.LASF1676
	.sleb128 65
	.uleb128 0x14
	.long	.LASF1677
	.sleb128 66
	.uleb128 0x14
	.long	.LASF1678
	.sleb128 67
	.uleb128 0x14
	.long	.LASF1679
	.sleb128 68
	.uleb128 0x14
	.long	.LASF1680
	.sleb128 69
	.uleb128 0x14
	.long	.LASF1681
	.sleb128 70
	.uleb128 0x14
	.long	.LASF1682
	.sleb128 71
	.uleb128 0x14
	.long	.LASF1683
	.sleb128 72
	.uleb128 0x14
	.long	.LASF1684
	.sleb128 73
	.uleb128 0x14
	.long	.LASF1685
	.sleb128 74
	.uleb128 0x14
	.long	.LASF1686
	.sleb128 75
	.uleb128 0x14
	.long	.LASF1687
	.sleb128 76
	.uleb128 0x14
	.long	.LASF1688
	.sleb128 77
	.uleb128 0x14
	.long	.LASF1689
	.sleb128 78
	.uleb128 0x14
	.long	.LASF1690
	.sleb128 79
	.uleb128 0x14
	.long	.LASF1691
	.sleb128 80
	.uleb128 0x14
	.long	.LASF1692
	.sleb128 81
	.uleb128 0x14
	.long	.LASF1693
	.sleb128 82
	.uleb128 0x14
	.long	.LASF1694
	.sleb128 83
	.uleb128 0x14
	.long	.LASF1695
	.sleb128 84
	.uleb128 0x14
	.long	.LASF1696
	.sleb128 85
	.uleb128 0x14
	.long	.LASF1697
	.sleb128 86
	.uleb128 0x14
	.long	.LASF1698
	.sleb128 87
	.uleb128 0x14
	.long	.LASF1699
	.sleb128 88
	.uleb128 0x14
	.long	.LASF1700
	.sleb128 89
	.uleb128 0x14
	.long	.LASF1701
	.sleb128 90
	.uleb128 0x14
	.long	.LASF1702
	.sleb128 91
	.uleb128 0x14
	.long	.LASF1703
	.sleb128 92
	.uleb128 0x14
	.long	.LASF1704
	.sleb128 93
	.uleb128 0x14
	.long	.LASF1705
	.sleb128 94
	.uleb128 0x14
	.long	.LASF1706
	.sleb128 95
	.uleb128 0x14
	.long	.LASF1707
	.sleb128 96
	.uleb128 0x14
	.long	.LASF1708
	.sleb128 97
	.uleb128 0x14
	.long	.LASF1709
	.sleb128 98
	.uleb128 0x14
	.long	.LASF1710
	.sleb128 99
	.uleb128 0x14
	.long	.LASF1711
	.sleb128 100
	.uleb128 0x14
	.long	.LASF1712
	.sleb128 101
	.uleb128 0x14
	.long	.LASF1713
	.sleb128 102
	.uleb128 0x14
	.long	.LASF1714
	.sleb128 103
	.uleb128 0x14
	.long	.LASF1715
	.sleb128 104
	.uleb128 0x14
	.long	.LASF1716
	.sleb128 105
	.uleb128 0x14
	.long	.LASF1717
	.sleb128 106
	.uleb128 0x14
	.long	.LASF1718
	.sleb128 107
	.uleb128 0x14
	.long	.LASF1719
	.sleb128 108
	.uleb128 0x14
	.long	.LASF1720
	.sleb128 109
	.uleb128 0x14
	.long	.LASF1721
	.sleb128 110
	.uleb128 0x14
	.long	.LASF1722
	.sleb128 111
	.uleb128 0x14
	.long	.LASF1723
	.sleb128 112
	.uleb128 0x14
	.long	.LASF1724
	.sleb128 113
	.uleb128 0x14
	.long	.LASF1725
	.sleb128 114
	.uleb128 0x14
	.long	.LASF1726
	.sleb128 115
	.uleb128 0x14
	.long	.LASF1727
	.sleb128 116
	.uleb128 0x14
	.long	.LASF1728
	.sleb128 117
	.uleb128 0x14
	.long	.LASF1729
	.sleb128 118
	.uleb128 0x14
	.long	.LASF1730
	.sleb128 119
	.uleb128 0x14
	.long	.LASF1731
	.sleb128 120
	.uleb128 0x14
	.long	.LASF1732
	.sleb128 121
	.uleb128 0x14
	.long	.LASF1733
	.sleb128 122
	.uleb128 0x14
	.long	.LASF1734
	.sleb128 123
	.uleb128 0x14
	.long	.LASF1735
	.sleb128 124
	.uleb128 0x14
	.long	.LASF1736
	.sleb128 125
	.uleb128 0x14
	.long	.LASF1737
	.sleb128 126
	.uleb128 0x14
	.long	.LASF1738
	.sleb128 127
	.uleb128 0x14
	.long	.LASF1739
	.sleb128 128
	.uleb128 0x14
	.long	.LASF1740
	.sleb128 129
	.uleb128 0x14
	.long	.LASF1741
	.sleb128 133
	.uleb128 0x14
	.long	.LASF1742
	.sleb128 134
	.uleb128 0x14
	.long	.LASF1743
	.sleb128 135
	.uleb128 0x14
	.long	.LASF1744
	.sleb128 136
	.uleb128 0x14
	.long	.LASF1745
	.sleb128 137
	.uleb128 0x14
	.long	.LASF1746
	.sleb128 138
	.uleb128 0x14
	.long	.LASF1747
	.sleb128 139
	.uleb128 0x14
	.long	.LASF1748
	.sleb128 140
	.uleb128 0x14
	.long	.LASF1749
	.sleb128 141
	.uleb128 0x14
	.long	.LASF1750
	.sleb128 142
	.uleb128 0x14
	.long	.LASF1751
	.sleb128 143
	.uleb128 0x14
	.long	.LASF1752
	.sleb128 144
	.uleb128 0x14
	.long	.LASF1753
	.sleb128 145
	.uleb128 0x14
	.long	.LASF1754
	.sleb128 146
	.uleb128 0x14
	.long	.LASF1755
	.sleb128 147
	.uleb128 0x14
	.long	.LASF1756
	.sleb128 148
	.uleb128 0x14
	.long	.LASF1757
	.sleb128 149
	.uleb128 0x14
	.long	.LASF1758
	.sleb128 150
	.uleb128 0x14
	.long	.LASF1759
	.sleb128 151
	.uleb128 0x14
	.long	.LASF1760
	.sleb128 152
	.uleb128 0x14
	.long	.LASF1761
	.sleb128 153
	.uleb128 0x14
	.long	.LASF1762
	.sleb128 154
	.uleb128 0x14
	.long	.LASF1763
	.sleb128 155
	.uleb128 0x14
	.long	.LASF1764
	.sleb128 156
	.uleb128 0x14
	.long	.LASF1765
	.sleb128 157
	.uleb128 0x14
	.long	.LASF1766
	.sleb128 158
	.uleb128 0x14
	.long	.LASF1767
	.sleb128 159
	.uleb128 0x14
	.long	.LASF1768
	.sleb128 160
	.uleb128 0x14
	.long	.LASF1769
	.sleb128 161
	.uleb128 0x14
	.long	.LASF1770
	.sleb128 162
	.uleb128 0x14
	.long	.LASF1771
	.sleb128 163
	.uleb128 0x14
	.long	.LASF1772
	.sleb128 164
	.uleb128 0x14
	.long	.LASF1773
	.sleb128 176
	.uleb128 0x14
	.long	.LASF1774
	.sleb128 177
	.uleb128 0x14
	.long	.LASF1775
	.sleb128 178
	.uleb128 0x14
	.long	.LASF1776
	.sleb128 179
	.uleb128 0x14
	.long	.LASF1777
	.sleb128 180
	.uleb128 0x14
	.long	.LASF1778
	.sleb128 181
	.uleb128 0x14
	.long	.LASF1779
	.sleb128 182
	.uleb128 0x14
	.long	.LASF1780
	.sleb128 183
	.uleb128 0x14
	.long	.LASF1781
	.sleb128 184
	.uleb128 0x14
	.long	.LASF1782
	.sleb128 185
	.uleb128 0x14
	.long	.LASF1783
	.sleb128 186
	.uleb128 0x14
	.long	.LASF1784
	.sleb128 187
	.uleb128 0x14
	.long	.LASF1785
	.sleb128 188
	.uleb128 0x14
	.long	.LASF1786
	.sleb128 189
	.uleb128 0x14
	.long	.LASF1787
	.sleb128 190
	.uleb128 0x14
	.long	.LASF1788
	.sleb128 191
	.uleb128 0x14
	.long	.LASF1789
	.sleb128 192
	.uleb128 0x14
	.long	.LASF1790
	.sleb128 193
	.uleb128 0x14
	.long	.LASF1791
	.sleb128 194
	.uleb128 0x14
	.long	.LASF1792
	.sleb128 195
	.uleb128 0x14
	.long	.LASF1793
	.sleb128 196
	.uleb128 0x14
	.long	.LASF1794
	.sleb128 197
	.uleb128 0x14
	.long	.LASF1795
	.sleb128 198
	.uleb128 0x14
	.long	.LASF1796
	.sleb128 199
	.uleb128 0x14
	.long	.LASF1797
	.sleb128 200
	.uleb128 0x14
	.long	.LASF1798
	.sleb128 201
	.uleb128 0x14
	.long	.LASF1799
	.sleb128 202
	.uleb128 0x14
	.long	.LASF1800
	.sleb128 203
	.uleb128 0x14
	.long	.LASF1801
	.sleb128 204
	.uleb128 0x14
	.long	.LASF1802
	.sleb128 205
	.uleb128 0x14
	.long	.LASF1803
	.sleb128 206
	.uleb128 0x14
	.long	.LASF1804
	.sleb128 207
	.uleb128 0x14
	.long	.LASF1805
	.sleb128 208
	.uleb128 0x14
	.long	.LASF1806
	.sleb128 209
	.uleb128 0x14
	.long	.LASF1807
	.sleb128 210
	.uleb128 0x14
	.long	.LASF1808
	.sleb128 211
	.uleb128 0x14
	.long	.LASF1809
	.sleb128 212
	.uleb128 0x14
	.long	.LASF1810
	.sleb128 213
	.uleb128 0x14
	.long	.LASF1811
	.sleb128 214
	.uleb128 0x14
	.long	.LASF1812
	.sleb128 215
	.uleb128 0x14
	.long	.LASF1813
	.sleb128 216
	.uleb128 0x14
	.long	.LASF1814
	.sleb128 217
	.uleb128 0x14
	.long	.LASF1815
	.sleb128 218
	.uleb128 0x14
	.long	.LASF1816
	.sleb128 219
	.uleb128 0x14
	.long	.LASF1817
	.sleb128 220
	.uleb128 0x14
	.long	.LASF1818
	.sleb128 221
	.uleb128 0x14
	.long	.LASF1819
	.sleb128 224
	.uleb128 0x14
	.long	.LASF1820
	.sleb128 225
	.uleb128 0x14
	.long	.LASF1821
	.sleb128 226
	.uleb128 0x14
	.long	.LASF1822
	.sleb128 227
	.uleb128 0x14
	.long	.LASF1823
	.sleb128 228
	.uleb128 0x14
	.long	.LASF1824
	.sleb128 229
	.uleb128 0x14
	.long	.LASF1825
	.sleb128 230
	.uleb128 0x14
	.long	.LASF1826
	.sleb128 231
	.uleb128 0x14
	.long	.LASF1827
	.sleb128 257
	.uleb128 0x14
	.long	.LASF1828
	.sleb128 258
	.uleb128 0x14
	.long	.LASF1829
	.sleb128 259
	.uleb128 0x14
	.long	.LASF1830
	.sleb128 260
	.uleb128 0x14
	.long	.LASF1831
	.sleb128 261
	.uleb128 0x14
	.long	.LASF1832
	.sleb128 262
	.uleb128 0x14
	.long	.LASF1833
	.sleb128 263
	.uleb128 0x14
	.long	.LASF1834
	.sleb128 264
	.uleb128 0x14
	.long	.LASF1835
	.sleb128 265
	.uleb128 0x14
	.long	.LASF1836
	.sleb128 266
	.uleb128 0x14
	.long	.LASF1837
	.sleb128 267
	.uleb128 0x14
	.long	.LASF1838
	.sleb128 268
	.uleb128 0x14
	.long	.LASF1839
	.sleb128 269
	.uleb128 0x14
	.long	.LASF1840
	.sleb128 270
	.uleb128 0x14
	.long	.LASF1841
	.sleb128 271
	.uleb128 0x14
	.long	.LASF1842
	.sleb128 272
	.uleb128 0x14
	.long	.LASF1843
	.sleb128 273
	.uleb128 0x14
	.long	.LASF1844
	.sleb128 274
	.uleb128 0x14
	.long	.LASF1845
	.sleb128 275
	.uleb128 0x14
	.long	.LASF1846
	.sleb128 276
	.uleb128 0x14
	.long	.LASF1847
	.sleb128 277
	.uleb128 0x14
	.long	.LASF1848
	.sleb128 278
	.uleb128 0x14
	.long	.LASF1849
	.sleb128 279
	.uleb128 0x14
	.long	.LASF1850
	.sleb128 280
	.uleb128 0x14
	.long	.LASF1851
	.sleb128 281
	.uleb128 0x14
	.long	.LASF1852
	.sleb128 282
	.uleb128 0x14
	.long	.LASF1853
	.sleb128 283
	.uleb128 0x14
	.long	.LASF1854
	.sleb128 284
	.uleb128 0x14
	.long	.LASF1855
	.sleb128 512
	.byte	0
	.uleb128 0x10
	.long	.LASF1856
	.byte	0xd
	.value	0x18d
	.long	0x43d
	.uleb128 0x4
	.long	.LASF1857
	.byte	0xe
	.byte	0x2a
	.long	0x31b
	.uleb128 0x7
	.long	.LASF1858
	.byte	0x10
	.byte	0xf
	.byte	0x2f
	.long	0xafb
	.uleb128 0x8
	.long	.LASF1859
	.byte	0xf
	.byte	0x31
	.long	0xaa7
	.byte	0
	.uleb128 0x11
	.string	"sym"
	.byte	0xf
	.byte	0x32
	.long	0xab3
	.byte	0x4
	.uleb128 0x11
	.string	"mod"
	.byte	0xf
	.byte	0x33
	.long	0x310
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1860
	.byte	0xf
	.byte	0x34
	.long	0x326
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF1858
	.byte	0xf
	.byte	0x35
	.long	0xabe
	.uleb128 0x4
	.long	.LASF1861
	.byte	0x10
	.byte	0x48
	.long	0x31b
	.uleb128 0x4
	.long	.LASF1862
	.byte	0x11
	.byte	0x29
	.long	0x331
	.uleb128 0x4
	.long	.LASF1863
	.byte	0x11
	.byte	0x2a
	.long	0x331
	.uleb128 0x4
	.long	.LASF1864
	.byte	0x12
	.byte	0x2c
	.long	0x331
	.uleb128 0x13
	.byte	0x4
	.byte	0x13
	.byte	0x38
	.long	0xc63
	.uleb128 0x14
	.long	.LASF1865
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1866
	.sleb128 256
	.uleb128 0x14
	.long	.LASF1867
	.sleb128 257
	.uleb128 0x14
	.long	.LASF1868
	.sleb128 258
	.uleb128 0x14
	.long	.LASF1869
	.sleb128 259
	.uleb128 0x14
	.long	.LASF1870
	.sleb128 260
	.uleb128 0x14
	.long	.LASF1871
	.sleb128 261
	.uleb128 0x14
	.long	.LASF1872
	.sleb128 262
	.uleb128 0x14
	.long	.LASF1873
	.sleb128 512
	.uleb128 0x14
	.long	.LASF1874
	.sleb128 513
	.uleb128 0x14
	.long	.LASF1875
	.sleb128 768
	.uleb128 0x14
	.long	.LASF1876
	.sleb128 769
	.uleb128 0x14
	.long	.LASF1877
	.sleb128 770
	.uleb128 0x14
	.long	.LASF1878
	.sleb128 771
	.uleb128 0x14
	.long	.LASF1879
	.sleb128 1024
	.uleb128 0x14
	.long	.LASF1880
	.sleb128 1025
	.uleb128 0x14
	.long	.LASF1881
	.sleb128 1026
	.uleb128 0x14
	.long	.LASF1882
	.sleb128 1027
	.uleb128 0x14
	.long	.LASF1883
	.sleb128 1536
	.uleb128 0x14
	.long	.LASF1884
	.sleb128 1537
	.uleb128 0x14
	.long	.LASF1885
	.sleb128 1538
	.uleb128 0x14
	.long	.LASF1886
	.sleb128 1539
	.uleb128 0x14
	.long	.LASF1887
	.sleb128 1540
	.uleb128 0x14
	.long	.LASF1888
	.sleb128 1541
	.uleb128 0x14
	.long	.LASF1889
	.sleb128 1542
	.uleb128 0x14
	.long	.LASF1890
	.sleb128 1616
	.uleb128 0x14
	.long	.LASF1891
	.sleb128 1617
	.uleb128 0x14
	.long	.LASF1892
	.sleb128 1618
	.uleb128 0x14
	.long	.LASF1893
	.sleb128 1619
	.uleb128 0x14
	.long	.LASF1894
	.sleb128 1620
	.uleb128 0x14
	.long	.LASF1895
	.sleb128 1621
	.uleb128 0x14
	.long	.LASF1896
	.sleb128 1792
	.uleb128 0x14
	.long	.LASF1897
	.sleb128 1793
	.uleb128 0x14
	.long	.LASF1898
	.sleb128 1794
	.uleb128 0x14
	.long	.LASF1899
	.sleb128 2048
	.uleb128 0x14
	.long	.LASF1900
	.sleb128 2049
	.uleb128 0x14
	.long	.LASF1901
	.sleb128 2050
	.uleb128 0x14
	.long	.LASF1902
	.sleb128 2304
	.uleb128 0x14
	.long	.LASF1903
	.sleb128 4096
	.uleb128 0x14
	.long	.LASF1904
	.sleb128 8192
	.uleb128 0x14
	.long	.LASF1905
	.sleb128 32768
	.uleb128 0x14
	.long	.LASF1906
	.sleb128 65535
	.byte	0
	.uleb128 0x7
	.long	.LASF1907
	.byte	0x8
	.byte	0x13
	.byte	0x9a
	.long	0xc88
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0x9c
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0x9d
	.long	0x326
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF1907
	.byte	0x13
	.byte	0x9e
	.long	0xc63
	.uleb128 0x7
	.long	.LASF1910
	.byte	0x18
	.byte	0x13
	.byte	0xa3
	.long	0xd0c
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xa5
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xa6
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xa7
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1912
	.byte	0x13
	.byte	0xa8
	.long	0x2fa
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1913
	.byte	0x13
	.byte	0xa9
	.long	0x2fa
	.byte	0xd
	.uleb128 0x8
	.long	.LASF1914
	.byte	0x13
	.byte	0xaa
	.long	0x2fa
	.byte	0xe
	.uleb128 0x8
	.long	.LASF1915
	.byte	0x13
	.byte	0xab
	.long	0x2fa
	.byte	0xf
	.uleb128 0x8
	.long	.LASF1916
	.byte	0x13
	.byte	0xac
	.long	0x31b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1917
	.byte	0x13
	.byte	0xad
	.long	0x31b
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF1910
	.byte	0x13
	.byte	0xae
	.long	0xc93
	.uleb128 0x7
	.long	.LASF1918
	.byte	0x20
	.byte	0x13
	.byte	0xb3
	.long	0xd84
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xb5
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xb6
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xb7
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1919
	.byte	0x13
	.byte	0xb8
	.long	0x2fa
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1920
	.byte	0x13
	.byte	0xb9
	.long	0x2fa
	.byte	0xd
	.uleb128 0x8
	.long	.LASF1914
	.byte	0x13
	.byte	0xba
	.long	0x2fa
	.byte	0xe
	.uleb128 0x8
	.long	.LASF1915
	.byte	0x13
	.byte	0xbb
	.long	0x2fa
	.byte	0xf
	.uleb128 0x8
	.long	.LASF1921
	.byte	0x13
	.byte	0xbc
	.long	0xafb
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF1918
	.byte	0x13
	.byte	0xbd
	.long	0xd17
	.uleb128 0x7
	.long	.LASF1922
	.byte	0x34
	.byte	0x13
	.byte	0xc3
	.long	0xde4
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xc5
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xc6
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xc7
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1923
	.byte	0x13
	.byte	0xc8
	.long	0xde4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1924
	.byte	0x13
	.byte	0xc9
	.long	0x31b
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF1925
	.byte	0x13
	.byte	0xca
	.long	0x31b
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	0xa3
	.long	0xdf4
	.uleb128 0xc
	.long	0x94
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.long	.LASF1922
	.byte	0x13
	.byte	0xcb
	.long	0xd8f
	.uleb128 0x7
	.long	.LASF1926
	.byte	0x2c
	.byte	0x13
	.byte	0xd2
	.long	0xe3c
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xd4
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xd5
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xd6
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1923
	.byte	0x13
	.byte	0xd7
	.long	0xde4
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF1926
	.byte	0x13
	.byte	0xd8
	.long	0xdff
	.uleb128 0x7
	.long	.LASF1927
	.byte	0x24
	.byte	0x13
	.byte	0xdd
	.long	0xebc
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xdf
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xe0
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xe1
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1928
	.byte	0x13
	.byte	0xe2
	.long	0x326
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1919
	.byte	0x13
	.byte	0xe3
	.long	0x326
	.byte	0x10
	.uleb128 0x11
	.string	"x"
	.byte	0x13
	.byte	0xe4
	.long	0x31b
	.byte	0x14
	.uleb128 0x11
	.string	"y"
	.byte	0x13
	.byte	0xe5
	.long	0x31b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1929
	.byte	0x13
	.byte	0xe6
	.long	0x31b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF1930
	.byte	0x13
	.byte	0xe7
	.long	0x31b
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF1927
	.byte	0x13
	.byte	0xe8
	.long	0xe47
	.uleb128 0x7
	.long	.LASF1931
	.byte	0x1c
	.byte	0x13
	.byte	0xed
	.long	0xf48
	.uleb128 0x8
	.long	.LASF1908
	.byte	0x13
	.byte	0xef
	.long	0x326
	.byte	0
	.uleb128 0x8
	.long	.LASF1909
	.byte	0x13
	.byte	0xf0
	.long	0x326
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1911
	.byte	0x13
	.byte	0xf1
	.long	0x326
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1928
	.byte	0x13
	.byte	0xf2
	.long	0x326
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1932
	.byte	0x13
	.byte	0xf3
	.long	0x2fa
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1919
	.byte	0x13
	.byte	0xf4
	.long	0x2fa
	.byte	0x11
	.uleb128 0x8
	.long	.LASF1933
	.byte	0x13
	.byte	0xf5
	.long	0x2fa
	.byte	0x12
	.uleb128 0x8
	.long	.LASF1913
	.byte	0x13
	.byte	0xf6
	.long	0x2fa
	.byte	0x13
	.uleb128 0x11
	.string	"x"
	.byte	0x13
	.byte	0xf7
	.long	0x31b
	.byte	0x14
	.uleb128 0x11
	.string	"y"
	.byte	0x13
	.byte	0xf8
	.long	0x31b
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1931
	.byte	0x13
	.byte	0xf9
	.long	0xec7
	.uleb128 0x7
	.long	.LASF1934
	.byte	0x18
	.byte	0x13
	.byte	0xfe
	.long	0xfaa
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x100
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x101
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1911
	.byte	0x13
	.value	0x102
	.long	0x326
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x103
	.long	0x326
	.byte	0xc
	.uleb128 0xf
	.string	"x"
	.byte	0x13
	.value	0x104
	.long	0x31b
	.byte	0x10
	.uleb128 0xf
	.string	"y"
	.byte	0x13
	.value	0x105
	.long	0x31b
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF1934
	.byte	0x13
	.value	0x106
	.long	0xf53
	.uleb128 0x15
	.long	.LASF1935
	.byte	0x14
	.byte	0x13
	.value	0x10b
	.long	0x1039
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x10d
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x10e
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x10f
	.long	0xb06
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1936
	.byte	0x13
	.value	0x110
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x111
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x112
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1915
	.byte	0x13
	.value	0x113
	.long	0x2fa
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1937
	.byte	0x13
	.value	0x114
	.long	0x305
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1938
	.byte	0x13
	.value	0x115
	.long	0x310
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.long	.LASF1935
	.byte	0x13
	.value	0x116
	.long	0xfb6
	.uleb128 0x15
	.long	.LASF1939
	.byte	0x14
	.byte	0x13
	.value	0x11b
	.long	0x10c8
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x11d
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x11e
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x11f
	.long	0xb06
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1940
	.byte	0x13
	.value	0x120
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x121
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x122
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1915
	.byte	0x13
	.value	0x123
	.long	0x2fa
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1929
	.byte	0x13
	.value	0x124
	.long	0x305
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1930
	.byte	0x13
	.value	0x125
	.long	0x305
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.long	.LASF1939
	.byte	0x13
	.value	0x126
	.long	0x1045
	.uleb128 0x15
	.long	.LASF1941
	.byte	0x10
	.byte	0x13
	.value	0x12b
	.long	0x113d
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x12d
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x12e
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x12f
	.long	0xb06
	.byte	0x8
	.uleb128 0xf
	.string	"hat"
	.byte	0x13
	.value	0x130
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1937
	.byte	0x13
	.value	0x131
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x138
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x139
	.long	0x2fa
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF1941
	.byte	0x13
	.value	0x13a
	.long	0x10d4
	.uleb128 0x15
	.long	.LASF1942
	.byte	0x10
	.byte	0x13
	.value	0x13f
	.long	0x11b2
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x141
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x142
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x143
	.long	0xb06
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1932
	.byte	0x13
	.value	0x144
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1919
	.byte	0x13
	.value	0x145
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x146
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x147
	.long	0x2fa
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF1942
	.byte	0x13
	.value	0x148
	.long	0x1149
	.uleb128 0x15
	.long	.LASF1943
	.byte	0xc
	.byte	0x13
	.value	0x14d
	.long	0x11f3
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x14f
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x150
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x151
	.long	0x31b
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF1943
	.byte	0x13
	.value	0x152
	.long	0x11be
	.uleb128 0x15
	.long	.LASF1944
	.byte	0x14
	.byte	0x13
	.value	0x158
	.long	0x1282
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x15a
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x15b
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x15c
	.long	0xb06
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1936
	.byte	0x13
	.value	0x15d
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x15e
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x15f
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1915
	.byte	0x13
	.value	0x160
	.long	0x2fa
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1937
	.byte	0x13
	.value	0x161
	.long	0x305
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1938
	.byte	0x13
	.value	0x162
	.long	0x310
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.long	.LASF1944
	.byte	0x13
	.value	0x163
	.long	0x11ff
	.uleb128 0x15
	.long	.LASF1945
	.byte	0x10
	.byte	0x13
	.value	0x169
	.long	0x12f7
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x16b
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x16c
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x16d
	.long	0xb06
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1932
	.byte	0x13
	.value	0x16e
	.long	0x2fa
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1919
	.byte	0x13
	.value	0x16f
	.long	0x2fa
	.byte	0xd
	.uleb128 0x9
	.long	.LASF1913
	.byte	0x13
	.value	0x170
	.long	0x2fa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF1914
	.byte	0x13
	.value	0x171
	.long	0x2fa
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF1945
	.byte	0x13
	.value	0x172
	.long	0x128e
	.uleb128 0x15
	.long	.LASF1946
	.byte	0xc
	.byte	0x13
	.value	0x178
	.long	0x1338
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x17a
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x17b
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1928
	.byte	0x13
	.value	0x17c
	.long	0x31b
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF1946
	.byte	0x13
	.value	0x17d
	.long	0x1303
	.uleb128 0x15
	.long	.LASF1947
	.byte	0x30
	.byte	0x13
	.value	0x183
	.long	0x13c1
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x185
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x186
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1948
	.byte	0x13
	.value	0x187
	.long	0xb11
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1949
	.byte	0x13
	.value	0x188
	.long	0xb1c
	.byte	0x10
	.uleb128 0xf
	.string	"x"
	.byte	0x13
	.value	0x189
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.string	"y"
	.byte	0x13
	.value	0x18a
	.long	0x2d
	.byte	0x1c
	.uleb128 0xf
	.string	"dx"
	.byte	0x13
	.value	0x18b
	.long	0x2d
	.byte	0x20
	.uleb128 0xf
	.string	"dy"
	.byte	0x13
	.value	0x18c
	.long	0x2d
	.byte	0x24
	.uleb128 0x9
	.long	.LASF1950
	.byte	0x13
	.value	0x18d
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF1947
	.byte	0x13
	.value	0x18e
	.long	0x1344
	.uleb128 0x15
	.long	.LASF1951
	.byte	0x28
	.byte	0x13
	.value	0x194
	.long	0x144c
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x196
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x197
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1948
	.byte	0x13
	.value	0x198
	.long	0xb11
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1952
	.byte	0x13
	.value	0x199
	.long	0x2d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1953
	.byte	0x13
	.value	0x19a
	.long	0x2d
	.byte	0x14
	.uleb128 0xf
	.string	"x"
	.byte	0x13
	.value	0x19b
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.string	"y"
	.byte	0x13
	.value	0x19c
	.long	0x2d
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF1954
	.byte	0x13
	.value	0x19d
	.long	0x310
	.byte	0x20
	.uleb128 0x9
	.long	.LASF1955
	.byte	0x13
	.value	0x19e
	.long	0x310
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.long	.LASF1951
	.byte	0x13
	.value	0x19f
	.long	0x13cd
	.uleb128 0x15
	.long	.LASF1956
	.byte	0x28
	.byte	0x13
	.value	0x1a5
	.long	0x14ca
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x1a7
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x1a8
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1948
	.byte	0x13
	.value	0x1a9
	.long	0xb11
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1957
	.byte	0x13
	.value	0x1aa
	.long	0xb27
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1954
	.byte	0x13
	.value	0x1ab
	.long	0x326
	.byte	0x18
	.uleb128 0x9
	.long	.LASF1958
	.byte	0x13
	.value	0x1ac
	.long	0x2d
	.byte	0x1c
	.uleb128 0xf
	.string	"x"
	.byte	0x13
	.value	0x1ad
	.long	0x2d
	.byte	0x20
	.uleb128 0xf
	.string	"y"
	.byte	0x13
	.value	0x1ae
	.long	0x2d
	.byte	0x24
	.byte	0
	.uleb128 0x10
	.long	.LASF1956
	.byte	0x13
	.value	0x1af
	.long	0x1458
	.uleb128 0x15
	.long	.LASF1959
	.byte	0x10
	.byte	0x13
	.value	0x1b7
	.long	0x150b
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x1b9
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x1ba
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1960
	.byte	0x13
	.value	0x1bb
	.long	0x9d
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF1959
	.byte	0x13
	.value	0x1bc
	.long	0x14d6
	.uleb128 0x15
	.long	.LASF1961
	.byte	0x8
	.byte	0x13
	.value	0x1c2
	.long	0x153f
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x1c4
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x1c5
	.long	0x326
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF1961
	.byte	0x13
	.value	0x1c6
	.long	0x1517
	.uleb128 0x15
	.long	.LASF1962
	.byte	0x20
	.byte	0x13
	.value	0x1d4
	.long	0x15a7
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x1d6
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x1d7
	.long	0x326
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1911
	.byte	0x13
	.value	0x1d8
	.long	0x326
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1963
	.byte	0x13
	.value	0x1d9
	.long	0x31b
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1916
	.byte	0x13
	.value	0x1da
	.long	0x9b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1917
	.byte	0x13
	.value	0x1db
	.long	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF1962
	.byte	0x13
	.value	0x1dc
	.long	0x154b
	.uleb128 0x10
	.long	.LASF1964
	.byte	0x13
	.value	0x1e0
	.long	0x15bf
	.uleb128 0x12
	.long	.LASF1964
	.uleb128 0x15
	.long	.LASF1965
	.byte	0x10
	.byte	0x13
	.value	0x1e8
	.long	0x15f9
	.uleb128 0x9
	.long	.LASF1908
	.byte	0x13
	.value	0x1ea
	.long	0x326
	.byte	0
	.uleb128 0x9
	.long	.LASF1909
	.byte	0x13
	.value	0x1eb
	.long	0x326
	.byte	0x4
	.uleb128 0xf
	.string	"msg"
	.byte	0x13
	.value	0x1ec
	.long	0x15f9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15b3
	.uleb128 0x10
	.long	.LASF1965
	.byte	0x13
	.value	0x1ed
	.long	0x15c4
	.uleb128 0x16
	.long	.LASF1986
	.byte	0x38
	.byte	0x13
	.value	0x1f2
	.long	0x1745
	.uleb128 0x17
	.long	.LASF1908
	.byte	0x13
	.value	0x1f4
	.long	0x326
	.uleb128 0x17
	.long	.LASF1966
	.byte	0x13
	.value	0x1f5
	.long	0xc88
	.uleb128 0x17
	.long	.LASF1967
	.byte	0x13
	.value	0x1f6
	.long	0xd0c
	.uleb128 0x18
	.string	"key"
	.byte	0x13
	.value	0x1f7
	.long	0xd84
	.uleb128 0x17
	.long	.LASF1968
	.byte	0x13
	.value	0x1f8
	.long	0xdf4
	.uleb128 0x17
	.long	.LASF1923
	.byte	0x13
	.value	0x1f9
	.long	0xe3c
	.uleb128 0x17
	.long	.LASF1969
	.byte	0x13
	.value	0x1fa
	.long	0xebc
	.uleb128 0x17
	.long	.LASF1932
	.byte	0x13
	.value	0x1fb
	.long	0xf48
	.uleb128 0x17
	.long	.LASF1970
	.byte	0x13
	.value	0x1fc
	.long	0xfaa
	.uleb128 0x17
	.long	.LASF1971
	.byte	0x13
	.value	0x1fd
	.long	0x1039
	.uleb128 0x17
	.long	.LASF1972
	.byte	0x13
	.value	0x1fe
	.long	0x10c8
	.uleb128 0x17
	.long	.LASF1973
	.byte	0x13
	.value	0x1ff
	.long	0x113d
	.uleb128 0x17
	.long	.LASF1974
	.byte	0x13
	.value	0x200
	.long	0x11b2
	.uleb128 0x17
	.long	.LASF1975
	.byte	0x13
	.value	0x201
	.long	0x11f3
	.uleb128 0x17
	.long	.LASF1976
	.byte	0x13
	.value	0x202
	.long	0x1282
	.uleb128 0x17
	.long	.LASF1977
	.byte	0x13
	.value	0x203
	.long	0x12f7
	.uleb128 0x17
	.long	.LASF1978
	.byte	0x13
	.value	0x204
	.long	0x1338
	.uleb128 0x17
	.long	.LASF1979
	.byte	0x13
	.value	0x205
	.long	0x153f
	.uleb128 0x17
	.long	.LASF1980
	.byte	0x13
	.value	0x206
	.long	0x15a7
	.uleb128 0x17
	.long	.LASF1981
	.byte	0x13
	.value	0x207
	.long	0x15ff
	.uleb128 0x17
	.long	.LASF1982
	.byte	0x13
	.value	0x208
	.long	0x13c1
	.uleb128 0x17
	.long	.LASF1983
	.byte	0x13
	.value	0x209
	.long	0x144c
	.uleb128 0x17
	.long	.LASF1984
	.byte	0x13
	.value	0x20a
	.long	0x14ca
	.uleb128 0x17
	.long	.LASF1985
	.byte	0x13
	.value	0x20b
	.long	0x150b
	.uleb128 0x17
	.long	.LASF1955
	.byte	0x13
	.value	0x214
	.long	0x1745
	.byte	0
	.uleb128 0xb
	.long	0x2fa
	.long	0x1755
	.uleb128 0xc
	.long	0x94
	.byte	0x37
	.byte	0
	.uleb128 0x10
	.long	.LASF1986
	.byte	0x13
	.value	0x215
	.long	0x160b
	.uleb128 0x6
	.byte	0x8
	.long	0x1755
	.uleb128 0x6
	.byte	0x8
	.long	0x3c7
	.uleb128 0x13
	.byte	0x4
	.byte	0x14
	.byte	0x41
	.long	0x178e
	.uleb128 0x14
	.long	.LASF1987
	.sleb128 1
	.uleb128 0x14
	.long	.LASF1988
	.sleb128 2
	.uleb128 0x14
	.long	.LASF1989
	.sleb128 4
	.uleb128 0x14
	.long	.LASF1990
	.sleb128 8
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x14
	.byte	0x5c
	.long	0x17a9
	.uleb128 0x14
	.long	.LASF1991
	.sleb128 0
	.uleb128 0x14
	.long	.LASF1992
	.sleb128 1
	.uleb128 0x14
	.long	.LASF1993
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF1994
	.byte	0x14
	.byte	0x7a
	.long	0x17b4
	.uleb128 0x12
	.long	.LASF1994
	.uleb128 0x4
	.long	.LASF1995
	.byte	0x14
	.byte	0x80
	.long	0x17c4
	.uleb128 0x12
	.long	.LASF1995
	.uleb128 0x7
	.long	.LASF1996
	.byte	0x10
	.byte	0x15
	.byte	0x4
	.long	0x17ee
	.uleb128 0x8
	.long	.LASF1997
	.byte	0x15
	.byte	0x5
	.long	0x9d
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x15
	.byte	0x6
	.long	0x34
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF1998
	.byte	0x48
	.byte	0x15
	.byte	0x9
	.long	0x1837
	.uleb128 0x8
	.long	.LASF1999
	.byte	0x15
	.byte	0xa
	.long	0x34
	.byte	0
	.uleb128 0x11
	.string	"msg"
	.byte	0x15
	.byte	0xb
	.long	0x17c9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1960
	.byte	0x15
	.byte	0xb
	.long	0x17c9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF2000
	.byte	0x15
	.byte	0xb
	.long	0x17c9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1963
	.byte	0x15
	.byte	0xb
	.long	0x17c9
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF2001
	.byte	0x10
	.byte	0x15
	.byte	0xe
	.long	0x185c
	.uleb128 0x8
	.long	.LASF2002
	.byte	0x15
	.byte	0xf
	.long	0x42
	.byte	0
	.uleb128 0x8
	.long	.LASF2003
	.byte	0x15
	.byte	0x10
	.long	0x185c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17ee
	.uleb128 0x13
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.long	0x1879
	.uleb128 0x14
	.long	.LASF2004
	.sleb128 640
	.uleb128 0x14
	.long	.LASF2005
	.sleb128 480
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x1
	.byte	0x20
	.long	0x188c
	.uleb128 0x14
	.long	.LASF2006
	.sleb128 370546692
	.byte	0
	.uleb128 0x4
	.long	.LASF2007
	.byte	0x1
	.byte	0x24
	.long	0x326
	.uleb128 0x7
	.long	.LASF2008
	.byte	0x20
	.byte	0x1
	.byte	0x32
	.long	0x18e0
	.uleb128 0x8
	.long	.LASF2009
	.byte	0x1
	.byte	0x33
	.long	0x18e0
	.byte	0
	.uleb128 0x8
	.long	.LASF2010
	.byte	0x1
	.byte	0x34
	.long	0x34
	.byte	0x8
	.uleb128 0x8
	.long	.LASF2011
	.byte	0x1
	.byte	0x34
	.long	0x34
	.byte	0xc
	.uleb128 0x8
	.long	.LASF2012
	.byte	0x1
	.byte	0x34
	.long	0x34
	.byte	0x10
	.uleb128 0x8
	.long	.LASF2013
	.byte	0x1
	.byte	0x35
	.long	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17b9
	.uleb128 0x7
	.long	.LASF2014
	.byte	0x38
	.byte	0x1
	.byte	0x3a
	.long	0x1923
	.uleb128 0x11
	.string	"win"
	.byte	0x1
	.byte	0x3b
	.long	0x1767
	.byte	0
	.uleb128 0x8
	.long	.LASF2015
	.byte	0x1
	.byte	0x3c
	.long	0x1923
	.byte	0x8
	.uleb128 0x8
	.long	.LASF2016
	.byte	0x1
	.byte	0x3d
	.long	0x29f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF2017
	.byte	0x1
	.byte	0x3e
	.long	0x1897
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17a9
	.uleb128 0x15
	.long	.LASF2018
	.byte	0x8
	.byte	0x1
	.value	0x11d
	.long	0x194d
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.value	0x11e
	.long	0x34
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.value	0x11e
	.long	0x34
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.long	.LASF2019
	.byte	0x1
	.byte	0x69
	.long	0x1972
	.byte	0x3
	.long	0x1972
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x69
	.long	0x1978
	.uleb128 0x1a
	.string	"row"
	.byte	0x1
	.byte	0x69
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x188c
	.uleb128 0x6
	.byte	0x8
	.long	0x1897
	.uleb128 0x19
	.long	.LASF2020
	.byte	0x1
	.byte	0x6e
	.long	0x1972
	.byte	0x3
	.long	0x19ae
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x6e
	.long	0x1978
	.uleb128 0x1a
	.string	"row"
	.byte	0x1
	.byte	0x6e
	.long	0x34
	.uleb128 0x1a
	.string	"col"
	.byte	0x1
	.byte	0x6e
	.long	0x34
	.byte	0
	.uleb128 0x1b
	.long	.LASF2023
	.byte	0x1
	.byte	0x7c
	.byte	0x3
	.long	0x19e1
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x7c
	.long	0x1978
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.long	0x34
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0x7c
	.long	0x34
	.uleb128 0x1c
	.long	.LASF2021
	.byte	0x1
	.byte	0x7c
	.long	0x188c
	.byte	0
	.uleb128 0x1d
	.long	.LASF2022
	.byte	0x1
	.value	0x122
	.long	0x34
	.byte	0x3
	.long	0x1a09
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.value	0x122
	.long	0x34
	.uleb128 0x1f
	.long	.LASF2025
	.byte	0x1
	.value	0x125
	.long	0x34
	.byte	0
	.uleb128 0x1b
	.long	.LASF2024
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0x1a46
	.uleb128 0x1c
	.long	.LASF2017
	.byte	0x1
	.byte	0x73
	.long	0x1978
	.uleb128 0x1c
	.long	.LASF2021
	.byte	0x1
	.byte	0x73
	.long	0x188c
	.uleb128 0x20
	.uleb128 0x21
	.string	"row"
	.byte	0x1
	.byte	0x74
	.long	0x34
	.uleb128 0x20
	.uleb128 0x21
	.string	"col"
	.byte	0x1
	.byte	0x75
	.long	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF2026
	.byte	0x1
	.value	0x1ad
	.long	0x29f
	.byte	0x3
	.long	0x1a70
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.value	0x1ad
	.long	0x29f
	.uleb128 0x1e
	.string	"alt"
	.byte	0x1
	.value	0x1ad
	.long	0x29f
	.byte	0
	.uleb128 0x22
	.long	.LASF2083
	.byte	0x2
	.byte	0x5f
	.long	0x34
	.byte	0x3
	.long	0x1a98
	.uleb128 0x1c
	.long	.LASF2027
	.byte	0x2
	.byte	0x5f
	.long	0x33c
	.uleb128 0x1c
	.long	.LASF2028
	.byte	0x2
	.byte	0x5f
	.long	0x29f
	.uleb128 0x23
	.byte	0
	.uleb128 0x19
	.long	.LASF2029
	.byte	0x1
	.byte	0x44
	.long	0x34
	.byte	0x1
	.long	0x1b10
	.uleb128 0x1c
	.long	.LASF2030
	.byte	0x1
	.byte	0x44
	.long	0x1b10
	.uleb128 0x1c
	.long	.LASF2016
	.byte	0x1
	.byte	0x44
	.long	0x29f
	.uleb128 0x1c
	.long	.LASF2010
	.byte	0x1
	.byte	0x44
	.long	0x34
	.uleb128 0x1c
	.long	.LASF2011
	.byte	0x1
	.byte	0x44
	.long	0x34
	.uleb128 0x24
	.long	.LASF2031
	.long	0x1b26
	.long	.LASF2029
	.uleb128 0x21
	.string	"win"
	.byte	0x1
	.byte	0x47
	.long	0x1767
	.uleb128 0x25
	.long	.LASF2015
	.byte	0x1
	.byte	0x4e
	.long	0x1923
	.uleb128 0x21
	.string	"tex"
	.byte	0x1
	.byte	0x54
	.long	0x18e0
	.uleb128 0x20
	.uleb128 0x25
	.long	.LASF2032
	.byte	0x1
	.byte	0x45
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x18e6
	.uleb128 0xb
	.long	0xa3
	.long	0x1b26
	.uleb128 0xc
	.long	0x94
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x1b16
	.uleb128 0x1b
	.long	.LASF2033
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	0x1bd7
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x86
	.long	0x1978
	.uleb128 0x1a
	.string	"x1"
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x1a
	.string	"y1"
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x1a
	.string	"x2"
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x1a
	.string	"y2"
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x1c
	.long	.LASF2021
	.byte	0x1
	.byte	0x88
	.long	0x188c
	.uleb128 0x21
	.string	"dx"
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x21
	.string	"dy"
	.byte	0x1
	.byte	0xa8
	.long	0x34
	.uleb128 0x25
	.long	.LASF2034
	.byte	0x1
	.byte	0xaa
	.long	0x34
	.uleb128 0x25
	.long	.LASF2035
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x25
	.long	.LASF2036
	.byte	0x1
	.byte	0xac
	.long	0x34
	.uleb128 0x1f
	.long	.LASF2037
	.byte	0x1
	.value	0x10f
	.long	0x34
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x110
	.long	0x34
	.uleb128 0x1f
	.long	.LASF2038
	.byte	0x1
	.value	0x111
	.long	0x34
	.uleb128 0x20
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.value	0x114
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF2039
	.byte	0x1
	.value	0x12e
	.byte	0x1
	.long	0x1cf3
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x12e
	.long	0x1978
	.uleb128 0x28
	.long	.LASF2040
	.byte	0x1
	.value	0x12f
	.long	0x1cf3
	.uleb128 0x28
	.long	.LASF2041
	.byte	0x1
	.value	0x130
	.long	0x34
	.uleb128 0x28
	.long	.LASF2021
	.byte	0x1
	.value	0x131
	.long	0x188c
	.uleb128 0x1f
	.long	.LASF2042
	.byte	0x1
	.value	0x135
	.long	0x1cfe
	.uleb128 0x1f
	.long	.LASF2043
	.byte	0x1
	.value	0x136
	.long	0x1d03
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x13d
	.long	0x1cfe
	.uleb128 0x1f
	.long	.LASF2044
	.byte	0x1
	.value	0x13e
	.long	0x1cfe
	.uleb128 0x26
	.string	"x1"
	.byte	0x1
	.value	0x140
	.long	0x2d
	.uleb128 0x26
	.string	"y1"
	.byte	0x1
	.value	0x141
	.long	0x2d
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF2045
	.byte	0x1
	.value	0x143
	.long	0x34
	.uleb128 0x20
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.value	0x144
	.long	0x1d03
	.uleb128 0x1f
	.long	.LASF2046
	.byte	0x1
	.value	0x146
	.long	0x1d03
	.uleb128 0x1f
	.long	.LASF2047
	.byte	0x1
	.value	0x147
	.long	0x1d03
	.uleb128 0x26
	.string	"x2"
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x26
	.string	"y2"
	.byte	0x1
	.value	0x14a
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF2048
	.byte	0x1
	.value	0x14c
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF2049
	.byte	0x1
	.value	0x14d
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF2050
	.byte	0x1
	.value	0x14e
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF2051
	.byte	0x1
	.value	0x14f
	.long	0x2d
	.uleb128 0x1f
	.long	.LASF2052
	.byte	0x1
	.value	0x150
	.long	0x2d
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x152
	.long	0x34
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF2053
	.byte	0x1
	.value	0x159
	.long	0x1d03
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cf9
	.uleb128 0xd
	.long	0x1929
	.uleb128 0xd
	.long	0x34
	.uleb128 0xd
	.long	0x2d
	.uleb128 0x29
	.long	.LASF2092
	.byte	0x1
	.byte	0x61
	.quad	.LFB571
	.quad	.LFE571-.LFB571
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d69
	.uleb128 0x2a
	.string	"vid"
	.byte	0x1
	.byte	0x61
	.long	0x1b10
	.long	.LLST0
	.uleb128 0x2b
	.quad	.LVL2
	.long	0x2b56
	.uleb128 0x2b
	.quad	.LVL3
	.long	0x2b68
	.uleb128 0x2b
	.quad	.LVL4
	.long	0x2b7a
	.uleb128 0x2c
	.quad	.LVL6
	.long	0x2b8c
	.byte	0
	.uleb128 0x1d
	.long	.LASF2054
	.byte	0x1
	.value	0x193
	.long	0x34
	.byte	0x1
	.long	0x1dd4
	.uleb128 0x1e
	.string	"vid"
	.byte	0x1
	.value	0x193
	.long	0x1b10
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0x194
	.long	0x1755
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x195
	.long	0x1978
	.uleb128 0x1f
	.long	.LASF2055
	.byte	0x1
	.value	0x197
	.long	0x188c
	.uleb128 0x24
	.long	.LASF2031
	.long	0x1de4
	.long	.LASF2054
	.uleb128 0x2d
	.long	0x1dc5
	.uleb128 0x1f
	.long	.LASF2032
	.byte	0x1
	.value	0x19f
	.long	0x34
	.byte	0
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF2032
	.byte	0x1
	.value	0x1a4
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xa3
	.long	0x1de4
	.uleb128 0xc
	.long	0x94
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x1dd4
	.uleb128 0x27
	.long	.LASF2056
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	0x1e49
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x179
	.long	0x1978
	.uleb128 0x1f
	.long	.LASF2057
	.byte	0x1
	.value	0x17a
	.long	0x1e49
	.uleb128 0x26
	.string	"red"
	.byte	0x1
	.value	0x17b
	.long	0x1e49
	.uleb128 0x1f
	.long	.LASF2040
	.byte	0x1
	.value	0x17e
	.long	0x1e5e
	.uleb128 0x20
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x186
	.long	0x34
	.uleb128 0x20
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x187
	.long	0x34
	.uleb128 0x20
	.uleb128 0x26
	.string	"k"
	.byte	0x1
	.value	0x188
	.long	0x34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x188c
	.uleb128 0xb
	.long	0x1929
	.long	0x1e5e
	.uleb128 0xc
	.long	0x94
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x1e4e
	.uleb128 0x27
	.long	.LASF2058
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0x1ea3
	.uleb128 0x1f
	.long	.LASF2059
	.byte	0x1
	.value	0x1b3
	.long	0x1837
	.uleb128 0x26
	.string	"fmt"
	.byte	0x1
	.value	0x1b7
	.long	0x29f
	.uleb128 0x20
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x1bc
	.long	0x42
	.uleb128 0x20
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x1bd
	.long	0x185c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF2093
	.byte	0x1
	.value	0x1ca
	.long	0x34
	.quad	.LFB583
	.quad	.LFE583-.LFB583
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b1a
	.uleb128 0x2f
	.long	.LASF2060
	.byte	0x1
	.value	0x1ca
	.long	0x34
	.long	.LLST1
	.uleb128 0x2f
	.long	.LASF2061
	.byte	0x1
	.value	0x1ca
	.long	0x2b1a
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF2094
	.byte	0x1
	.value	0x1ce
	.long	0x18e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.long	.LASF2031
	.long	0x2b20
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9241
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.value	0x1d5
	.quad	.L59
	.uleb128 0x33
	.long	0x1a98
	.quad	.LBB179
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1d0
	.long	0x216a
	.uleb128 0x34
	.long	0x1ab3
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.uleb128 0x35
	.long	0x1abe
	.value	0x280
	.uleb128 0x35
	.long	0x1ac9
	.value	0x1e0
	.uleb128 0x36
	.long	0x1aa8
	.long	.LLST3
	.uleb128 0x37
	.long	.Ldebug_ranges0+0
	.uleb128 0x38
	.long	0x1ae1
	.long	.LLST4
	.uleb128 0x38
	.long	0x1aec
	.long	.LLST5
	.uleb128 0x38
	.long	0x1af7
	.long	.LLST6
	.uleb128 0x39
	.long	0x1ad4
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9094
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x50
	.long	0x1ff9
	.uleb128 0x38
	.long	0x1b03
	.long	.LLST7
	.uleb128 0x3b
	.quad	.LVL10
	.long	0x2b93
	.long	0x1fb0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2b
	.quad	.LVL155
	.long	0x2ba8
	.uleb128 0x3d
	.quad	.LVL156
	.long	0x2bb3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x45
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9094
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL11
	.long	0x2bdc
	.long	0x203d
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x1fff0000
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.long	0x1fff0000
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x280
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.value	0x1e0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3b
	.quad	.LVL12
	.long	0x2c0b
	.long	0x205a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3b
	.quad	.LVL13
	.long	0x2c2a
	.long	0x2088
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x16161804
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x280
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.value	0x1e0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL159
	.long	0x2ba8
	.uleb128 0x3b
	.quad	.LVL160
	.long	0x2bb3
	.long	0x20d4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9094
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x2b
	.quad	.LVL166
	.long	0x2ba8
	.uleb128 0x3b
	.quad	.LVL167
	.long	0x2bb3
	.long	0x2120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x57
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9094
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.uleb128 0x2b
	.quad	.LVL169
	.long	0x2ba8
	.uleb128 0x3d
	.quad	.LVL170
	.long	0x2bb3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9094
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x1d69
	.quad	.LBB186
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.value	0x1d1
	.long	0x288f
	.uleb128 0x3e
	.long	0x1d7a
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x39
	.long	0x1d86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3f
	.long	0x1d90
	.uleb128 0x3f
	.long	0x1d9a
	.uleb128 0x39
	.long	0x1da6
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9219
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0xc0
	.long	0x222f
	.uleb128 0x38
	.long	0x1db8
	.long	.LLST8
	.uleb128 0x3b
	.quad	.LVL21
	.long	0x2c53
	.long	0x21e5
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x2b
	.quad	.LVL152
	.long	0x2ba8
	.uleb128 0x3d
	.quad	.LVL153
	.long	0x2bb3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1a0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9219
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1a09
	.quad	.LBB189
	.quad	.LBE189-.LBB189
	.byte	0x1
	.value	0x1a1
	.long	0x22e2
	.uleb128 0x3e
	.long	0x1a20
	.uleb128 0x3e
	.long	0x1a15
	.uleb128 0x41
	.quad	.LBB190
	.quad	.LBE190-.LBB190
	.uleb128 0x38
	.long	0x1a2c
	.long	.LLST9
	.uleb128 0x41
	.quad	.LBB191
	.quad	.LBE191-.LBB191
	.uleb128 0x38
	.long	0x1a38
	.long	.LLST10
	.uleb128 0x42
	.long	0x197e
	.quad	.LBB192
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x76
	.uleb128 0x36
	.long	0x19a2
	.long	.LLST11
	.uleb128 0x36
	.long	0x1997
	.long	.LLST12
	.uleb128 0x36
	.long	0x198e
	.long	.LLST13
	.uleb128 0x42
	.long	0x194d
	.quad	.LBB194
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x36
	.long	0x1966
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x1de9
	.quad	.LBB200
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.value	0x1a2
	.long	0x27e2
	.uleb128 0x36
	.long	0x1df6
	.long	.LLST15
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x150
	.uleb128 0x38
	.long	0x1e00
	.long	.LLST16
	.uleb128 0x38
	.long	0x1e0c
	.long	.LLST17
	.uleb128 0x39
	.long	0x1e18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x33
	.long	0x1bd7
	.quad	.LBB202
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.value	0x184
	.long	0x2724
	.uleb128 0x36
	.long	0x1bfa
	.long	.LLST18
	.uleb128 0x36
	.long	0x1c06
	.long	.LLST19
	.uleb128 0x36
	.long	0x1bee
	.long	.LLST20
	.uleb128 0x36
	.long	0x1be4
	.long	.LLST21
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x38
	.long	0x1c12
	.long	.LLST22
	.uleb128 0x38
	.long	0x1c1e
	.long	.LLST23
	.uleb128 0x38
	.long	0x1c2a
	.long	.LLST24
	.uleb128 0x3f
	.long	0x1c34
	.uleb128 0x38
	.long	0x1c40
	.long	.LLST25
	.uleb128 0x38
	.long	0x1c4b
	.long	.LLST26
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x38
	.long	0x1c57
	.long	.LLST27
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x38
	.long	0x1c64
	.long	.LLST28
	.uleb128 0x38
	.long	0x1c6e
	.long	.LLST29
	.uleb128 0x38
	.long	0x1c7a
	.long	.LLST30
	.uleb128 0x38
	.long	0x1c86
	.long	.LLST31
	.uleb128 0x38
	.long	0x1c91
	.long	.LLST32
	.uleb128 0x38
	.long	0x1c9c
	.long	.LLST33
	.uleb128 0x38
	.long	0x1ca8
	.long	.LLST34
	.uleb128 0x38
	.long	0x1cb4
	.long	.LLST35
	.uleb128 0x38
	.long	0x1cc0
	.long	.LLST36
	.uleb128 0x38
	.long	0x1ccc
	.long	.LLST37
	.uleb128 0x38
	.long	0x1cd8
	.long	.LLST38
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x250
	.long	0x241f
	.uleb128 0x38
	.long	0x1ce3
	.long	.LLST39
	.byte	0
	.uleb128 0x33
	.long	0x1b2b
	.quad	.LBB207
	.long	.Ldebug_ranges0+0x290
	.byte	0x1
	.value	0x172
	.long	0x2707
	.uleb128 0x36
	.long	0x1b68
	.long	.LLST40
	.uleb128 0x36
	.long	0x1b5e
	.long	.LLST41
	.uleb128 0x36
	.long	0x1b54
	.long	.LLST42
	.uleb128 0x36
	.long	0x1b4a
	.long	.LLST43
	.uleb128 0x36
	.long	0x1b40
	.long	.LLST44
	.uleb128 0x36
	.long	0x1b37
	.long	.LLST45
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x290
	.uleb128 0x38
	.long	0x1b73
	.long	.LLST46
	.uleb128 0x38
	.long	0x1b7d
	.long	.LLST47
	.uleb128 0x38
	.long	0x1b87
	.long	.LLST48
	.uleb128 0x38
	.long	0x1b92
	.long	.LLST49
	.uleb128 0x38
	.long	0x1b9d
	.long	.LLST50
	.uleb128 0x38
	.long	0x1ba8
	.long	.LLST51
	.uleb128 0x38
	.long	0x1bb4
	.long	.LLST52
	.uleb128 0x38
	.long	0x1bbe
	.long	.LLST53
	.uleb128 0x33
	.long	0x19ae
	.quad	.LBB209
	.long	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.value	0x112
	.long	0x2541
	.uleb128 0x36
	.long	0x19d5
	.long	.LLST54
	.uleb128 0x3e
	.long	0x19cc
	.uleb128 0x36
	.long	0x19c3
	.long	.LLST55
	.uleb128 0x36
	.long	0x19ba
	.long	.LLST56
	.uleb128 0x42
	.long	0x197e
	.quad	.LBB211
	.long	.Ldebug_ranges0+0x330
	.byte	0x1
	.byte	0x82
	.uleb128 0x36
	.long	0x19a2
	.long	.LLST55
	.uleb128 0x3e
	.long	0x1997
	.uleb128 0x36
	.long	0x198e
	.long	.LLST56
	.uleb128 0x42
	.long	0x194d
	.quad	.LBB213
	.long	.Ldebug_ranges0+0x370
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x1966
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x3a0
	.long	0x267a
	.uleb128 0x38
	.long	0x1bcb
	.long	.LLST59
	.uleb128 0x40
	.long	0x19ae
	.quad	.LBB228
	.quad	.LBE228-.LBB228
	.byte	0x1
	.value	0x115
	.long	0x25ea
	.uleb128 0x36
	.long	0x19d5
	.long	.LLST60
	.uleb128 0x36
	.long	0x19cc
	.long	.LLST61
	.uleb128 0x3e
	.long	0x19c3
	.uleb128 0x36
	.long	0x19ba
	.long	.LLST62
	.uleb128 0x43
	.long	0x197e
	.quad	.LBB230
	.quad	.LBE230-.LBB230
	.byte	0x1
	.byte	0x82
	.uleb128 0x3e
	.long	0x19a2
	.uleb128 0x36
	.long	0x1997
	.long	.LLST61
	.uleb128 0x36
	.long	0x198e
	.long	.LLST62
	.uleb128 0x43
	.long	0x194d
	.quad	.LBB232
	.quad	.LBE232-.LBB232
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x36
	.long	0x1966
	.long	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x19ae
	.quad	.LBB234
	.long	.Ldebug_ranges0+0x400
	.byte	0x1
	.value	0x115
	.uleb128 0x36
	.long	0x19d5
	.long	.LLST66
	.uleb128 0x36
	.long	0x19cc
	.long	.LLST67
	.uleb128 0x36
	.long	0x19c3
	.long	.LLST68
	.uleb128 0x36
	.long	0x19ba
	.long	.LLST69
	.uleb128 0x42
	.long	0x197e
	.quad	.LBB236
	.long	.Ldebug_ranges0+0x430
	.byte	0x1
	.byte	0x82
	.uleb128 0x36
	.long	0x19a2
	.long	.LLST68
	.uleb128 0x36
	.long	0x1997
	.long	.LLST67
	.uleb128 0x36
	.long	0x198e
	.long	.LLST69
	.uleb128 0x42
	.long	0x194d
	.quad	.LBB238
	.long	.Ldebug_ranges0+0x470
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x36
	.long	0x1966
	.long	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x19ae
	.quad	.LBB252
	.long	.Ldebug_ranges0+0x4b0
	.byte	0x1
	.value	0x112
	.uleb128 0x36
	.long	0x19d5
	.long	.LLST74
	.uleb128 0x36
	.long	0x19cc
	.long	.LLST75
	.uleb128 0x3e
	.long	0x19c3
	.uleb128 0x36
	.long	0x19ba
	.long	.LLST76
	.uleb128 0x42
	.long	0x197e
	.quad	.LBB254
	.long	.Ldebug_ranges0+0x4f0
	.byte	0x1
	.byte	0x82
	.uleb128 0x3e
	.long	0x19a2
	.uleb128 0x36
	.long	0x1997
	.long	.LLST75
	.uleb128 0x36
	.long	0x198e
	.long	.LLST76
	.uleb128 0x43
	.long	0x194d
	.quad	.LBB256
	.quad	.LBE256-.LBB256
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x36
	.long	0x1966
	.long	.LLST75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.quad	.LVL34
	.long	0x2c8f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x4
	.long	0x40400000
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x520
	.uleb128 0x3f
	.long	0x1e25
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x560
	.uleb128 0x38
	.long	0x1e30
	.long	.LLST80
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x5a0
	.uleb128 0x38
	.long	0x1e3b
	.long	.LLST81
	.uleb128 0x44
	.long	0x19ae
	.quad	.LBB292
	.long	.Ldebug_ranges0+0x5e0
	.byte	0x1
	.value	0x18c
	.uleb128 0x36
	.long	0x19d5
	.long	.LLST82
	.uleb128 0x36
	.long	0x19cc
	.long	.LLST83
	.uleb128 0x36
	.long	0x19c3
	.long	.LLST84
	.uleb128 0x36
	.long	0x19ba
	.long	.LLST85
	.uleb128 0x42
	.long	0x197e
	.quad	.LBB294
	.long	.Ldebug_ranges0+0x620
	.byte	0x1
	.byte	0x82
	.uleb128 0x36
	.long	0x19a2
	.long	.LLST84
	.uleb128 0x36
	.long	0x1997
	.long	.LLST83
	.uleb128 0x36
	.long	0x198e
	.long	.LLST85
	.uleb128 0x43
	.long	0x194d
	.quad	.LBB296
	.quad	.LBE296-.LBB296
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x3e
	.long	0x195d
	.uleb128 0x36
	.long	0x1966
	.long	.LLST83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x650
	.long	0x285a
	.uleb128 0x38
	.long	0x1dc6
	.long	.LLST90
	.uleb128 0x3b
	.quad	.LVL117
	.long	0x2ca9
	.long	0x2810
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL123
	.long	0x2ba8
	.uleb128 0x3d
	.quad	.LVL124
	.long	0x2bb3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1a4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9219
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL16
	.long	0x2cce
	.long	0x2873
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2b
	.quad	.LVL116
	.long	0x2ce4
	.uleb128 0x2b
	.quad	.LVL118
	.long	0x2cf6
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x1e63
	.quad	.LBB320
	.long	.Ldebug_ranges0+0x680
	.byte	0x1
	.value	0x1d6
	.long	0x2a50
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x680
	.uleb128 0x38
	.long	0x1e70
	.long	.LLST91
	.uleb128 0x38
	.long	0x1e7c
	.long	.LLST92
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x6b0
	.long	0x29d7
	.uleb128 0x38
	.long	0x1e89
	.long	.LLST93
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x6f0
	.uleb128 0x38
	.long	0x1e94
	.long	.LLST94
	.uleb128 0x33
	.long	0x1a46
	.quad	.LBB324
	.long	.Ldebug_ranges0+0x740
	.byte	0x1
	.value	0x1be
	.long	0x2909
	.uleb128 0x36
	.long	0x1a63
	.long	.LLST95
	.uleb128 0x36
	.long	0x1a57
	.long	.LLST96
	.byte	0
	.uleb128 0x40
	.long	0x1a46
	.quad	.LBB329
	.quad	.LBE329-.LBB329
	.byte	0x1
	.value	0x1be
	.long	0x2938
	.uleb128 0x36
	.long	0x1a63
	.long	.LLST97
	.uleb128 0x36
	.long	0x1a57
	.long	.LLST98
	.byte	0
	.uleb128 0x40
	.long	0x1a46
	.quad	.LBB331
	.quad	.LBE331-.LBB331
	.byte	0x1
	.value	0x1be
	.long	0x2967
	.uleb128 0x36
	.long	0x1a63
	.long	.LLST99
	.uleb128 0x36
	.long	0x1a57
	.long	.LLST100
	.byte	0
	.uleb128 0x33
	.long	0x1a46
	.quad	.LBB333
	.long	.Ldebug_ranges0+0x780
	.byte	0x1
	.value	0x1be
	.long	0x2992
	.uleb128 0x36
	.long	0x1a63
	.long	.LLST101
	.uleb128 0x36
	.long	0x1a57
	.long	.LLST102
	.byte	0
	.uleb128 0x44
	.long	0x1a70
	.quad	.LBB337
	.long	.Ldebug_ranges0+0x7b0
	.byte	0x1
	.value	0x1be
	.uleb128 0x36
	.long	0x1a8b
	.long	.LLST103
	.uleb128 0x3e
	.long	0x1a80
	.uleb128 0x3d
	.quad	.LVL143
	.long	0x2d08
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL126
	.long	0x2d28
	.uleb128 0x3b
	.quad	.LVL131
	.long	0x2d33
	.long	0x2a0e
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL147
	.long	0x2d5b
	.uleb128 0x2b
	.quad	.LVL148
	.long	0x2d6c
	.uleb128 0x3d
	.quad	.LVL163
	.long	0x2d33
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL18
	.long	0x1d08
	.long	0x2a69
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x3b
	.quad	.LVL125
	.long	0x2bb3
	.long	0x2aae
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9241
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.uleb128 0x3b
	.quad	.LVL150
	.long	0x1d08
	.long	0x2ac7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x3b
	.quad	.LVL157
	.long	0x2bb3
	.long	0x2b0c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1d0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.9241
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x2b
	.quad	.LVL165
	.long	0x2d73
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0xd
	.long	0x1b16
	.uleb128 0x25
	.long	.LASF2062
	.byte	0x1
	.byte	0x18
	.long	0x2b30
	.uleb128 0xd
	.long	0x37b
	.uleb128 0x45
	.long	.LASF2063
	.byte	0x5
	.byte	0xa8
	.long	0x273
	.uleb128 0x45
	.long	.LASF2064
	.byte	0x5
	.byte	0xa9
	.long	0x273
	.uleb128 0x45
	.long	.LASF2065
	.byte	0x5
	.byte	0xaa
	.long	0x273
	.uleb128 0x46
	.long	.LASF2066
	.byte	0x14
	.value	0x33d
	.long	0x2b68
	.uleb128 0x47
	.long	0x18e0
	.byte	0
	.uleb128 0x46
	.long	.LASF2067
	.byte	0x14
	.value	0x345
	.long	0x2b7a
	.uleb128 0x47
	.long	0x1923
	.byte	0
	.uleb128 0x46
	.long	.LASF2068
	.byte	0xc
	.value	0x31c
	.long	0x2b8c
	.uleb128 0x47
	.long	0x1767
	.byte	0
	.uleb128 0x48
	.long	.LASF2086
	.byte	0x16
	.byte	0x99
	.uleb128 0x49
	.long	.LASF2069
	.byte	0x16
	.byte	0x81
	.long	0x34
	.long	0x2ba8
	.uleb128 0x47
	.long	0x326
	.byte	0
	.uleb128 0x4a
	.long	.LASF2081
	.byte	0x18
	.byte	0x2a
	.long	0x29f
	.uleb128 0x49
	.long	.LASF2070
	.byte	0x15
	.byte	0x1d
	.long	0x34
	.long	0x2bdc
	.uleb128 0x47
	.long	0x29f
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x29f
	.uleb128 0x47
	.long	0x29f
	.uleb128 0x47
	.long	0x29f
	.byte	0
	.uleb128 0x4b
	.long	.LASF2071
	.byte	0xc
	.value	0x198
	.long	0x1767
	.long	0x2c0b
	.uleb128 0x47
	.long	0x29f
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x326
	.byte	0
	.uleb128 0x49
	.long	.LASF2072
	.byte	0x14
	.byte	0xbf
	.long	0x1923
	.long	0x2c2a
	.uleb128 0x47
	.long	0x1767
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x326
	.byte	0
	.uleb128 0x49
	.long	.LASF2073
	.byte	0x14
	.byte	0xf0
	.long	0x18e0
	.long	0x2c53
	.uleb128 0x47
	.long	0x1923
	.uleb128 0x47
	.long	0x326
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x34
	.byte	0
	.uleb128 0x4b
	.long	.LASF2074
	.byte	0x14
	.value	0x1a8
	.long	0x34
	.long	0x2c78
	.uleb128 0x47
	.long	0x18e0
	.uleb128 0x47
	.long	0x2c78
	.uleb128 0x47
	.long	0x2c83
	.uleb128 0x47
	.long	0x2c89
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c7e
	.uleb128 0xd
	.long	0x3bc
	.uleb128 0x6
	.byte	0x8
	.long	0x9b
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x49
	.long	.LASF2075
	.byte	0x17
	.byte	0x99
	.long	0x2d
	.long	0x2ca9
	.uleb128 0x47
	.long	0x2d
	.uleb128 0x47
	.long	0x2d
	.byte	0
	.uleb128 0x4b
	.long	.LASF2076
	.byte	0x14
	.value	0x302
	.long	0x34
	.long	0x2cce
	.uleb128 0x47
	.long	0x1923
	.uleb128 0x47
	.long	0x18e0
	.uleb128 0x47
	.long	0x2c78
	.uleb128 0x47
	.long	0x2c78
	.byte	0
	.uleb128 0x4b
	.long	.LASF2077
	.byte	0x13
	.value	0x256
	.long	0x34
	.long	0x2ce4
	.uleb128 0x47
	.long	0x1761
	.byte	0
	.uleb128 0x46
	.long	.LASF2078
	.byte	0x14
	.value	0x1b1
	.long	0x2cf6
	.uleb128 0x47
	.long	0x18e0
	.byte	0
	.uleb128 0x46
	.long	.LASF2079
	.byte	0x14
	.value	0x335
	.long	0x2d08
	.uleb128 0x47
	.long	0x1923
	.byte	0
	.uleb128 0x49
	.long	.LASF2080
	.byte	0x2
	.byte	0x55
	.long	0x34
	.long	0x2d28
	.uleb128 0x47
	.long	0x33c
	.uleb128 0x47
	.long	0x34
	.uleb128 0x47
	.long	0x29f
	.uleb128 0x23
	.byte	0
	.uleb128 0x4a
	.long	.LASF2082
	.byte	0x15
	.byte	0x28
	.long	0x1837
	.uleb128 0x4c
	.long	.LASF2084
	.byte	0x19
	.byte	0
	.long	.LASF2095
	.long	0x4d
	.long	0x2d5b
	.uleb128 0x47
	.long	0x2d2
	.uleb128 0x47
	.long	0x4d
	.uleb128 0x47
	.long	0x4d
	.uleb128 0x47
	.long	0x9b
	.byte	0
	.uleb128 0x4d
	.long	.LASF2085
	.byte	0x15
	.byte	0x2b
	.long	0x2d6c
	.uleb128 0x47
	.long	0x1837
	.byte	0
	.uleb128 0x48
	.long	.LASF2087
	.byte	0x15
	.byte	0x2e
	.uleb128 0x4e
	.long	.LASF2096
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL5
	.value	0x1
	.byte	0x53
	.quad	.LVL5
	.quad	.LFE571
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x55
	.quad	.LVL8
	.quad	.LFE583
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL7
	.quad	.LVL10-1
	.value	0x1
	.byte	0x54
	.quad	.LVL10-1
	.quad	.LFE583
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL9
	.quad	.LVL17
	.value	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL18-1
	.value	0x1
	.byte	0x55
	.quad	.LVL18-1
	.quad	.LVL149
	.value	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.quad	.LVL149
	.quad	.LVL150-1
	.value	0x1
	.byte	0x55
	.quad	.LVL150-1
	.quad	.LFE583
	.value	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x1
	.byte	0x50
	.quad	.LVL158
	.quad	.LVL159-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL12
	.quad	.LVL13-1
	.value	0x1
	.byte	0x50
	.quad	.LVL168
	.quad	.LVL169-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	.LVL14
	.quad	.LVL15
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	.LVL165
	.quad	.LVL166-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL10
	.quad	.LVL11-1
	.value	0x1
	.byte	0x50
	.quad	.LVL154
	.quad	.LVL155-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL21
	.quad	.LVL23
	.value	0x1
	.byte	0x50
	.quad	.LVL151
	.quad	.LVL152-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL28
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL24
	.quad	.LVL26
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL24
	.quad	.LVL25
	.value	0x1
	.byte	0x51
	.quad	.LVL25
	.quad	.LVL26
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL28
	.quad	.LVL124
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL28
	.quad	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL28
	.quad	.LVL124
	.value	0x5
	.byte	0x8
	.byte	0xff
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL29
	.quad	.LVL35
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x54
	.quad	.LVL36
	.quad	.LVL124
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3ca3d70a
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL29
	.quad	.LVL124
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL30
	.quad	.LVL64
	.value	0x1
	.byte	0x56
	.quad	.LVL64
	.quad	.LVL85
	.value	0x1
	.byte	0x63
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x67
	.quad	.LVL87
	.quad	.LVL89
	.value	0x1
	.byte	0x56
	.quad	.LVL89
	.quad	.LVL92
	.value	0x1
	.byte	0x63
	.quad	.LVL92
	.quad	.LVL102
	.value	0x1
	.byte	0x56
	.quad	.LVL102
	.quad	.LVL116-1
	.value	0x1
	.byte	0x67
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x67
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL30
	.quad	.LVL54
	.value	0x1
	.byte	0x5d
	.quad	.LVL54
	.quad	.LVL85
	.value	0x1
	.byte	0x66
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x68
	.quad	.LVL87
	.quad	.LVL102
	.value	0x1
	.byte	0x66
	.quad	.LVL102
	.quad	.LVL116-1
	.value	0x1
	.byte	0x68
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x68
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL30
	.quad	.LVL124
	.value	0x3
	.byte	0x91
	.sleb128 -260
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL31
	.quad	.LVL34-1
	.value	0x1
	.byte	0x6a
	.quad	.LVL34-1
	.quad	.LVL124
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL32
	.quad	.LVL34-1
	.value	0x1
	.byte	0x61
	.quad	.LVL34-1
	.quad	.LVL124
	.value	0xe
	.byte	0x91
	.sleb128 -248
	.byte	0xf6
	.byte	0x4
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -256
	.byte	0xf6
	.byte	0x4
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL33
	.quad	.LVL34-1
	.value	0x1
	.byte	0x6c
	.quad	.LVL34-1
	.quad	.LVL124
	.value	0x3
	.byte	0x91
	.sleb128 -252
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL36
	.quad	.LVL116-1
	.value	0x1
	.byte	0x67
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL36
	.quad	.LVL116-1
	.value	0x1
	.byte	0x68
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.quad	.LVL36
	.quad	.LVL50
	.value	0x1
	.byte	0x63
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40c00000
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x64
	.quad	.LVL40
	.quad	.LVL116-1
	.value	0x1
	.byte	0x64
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.quad	.LVL36
	.quad	.LVL39
	.value	0x1
	.byte	0x65
	.quad	.LVL40
	.quad	.LVL116-1
	.value	0x1
	.byte	0x65
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL34
	.quad	.LVL41
	.value	0x1
	.byte	0x61
	.quad	.LVL42
	.quad	.LVL116-1
	.value	0x1
	.byte	0x61
	.quad	.LVL119
	.quad	.LVL121
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL34
	.quad	.LVL36
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x66
	.quad	.LVL40
	.quad	.LVL49
	.value	0x1
	.byte	0x66
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL34
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL43
	.value	0x1
	.byte	0x51
	.quad	.LVL43
	.quad	.LVL47
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x51
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x14
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x62
	.quad	.LVL46
	.quad	.LVL50
	.value	0x14
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL51
	.quad	.LVL120
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL122
	.quad	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL51
	.quad	.LVL62
	.value	0x1
	.byte	0x51
	.quad	.LVL87
	.quad	.LVL88
	.value	0x1
	.byte	0x51
	.quad	.LVL92
	.quad	.LVL96
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL102
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL51
	.quad	.LVL72
	.value	0x1
	.byte	0x5c
	.quad	.LVL72
	.quad	.LVL85
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL97
	.value	0x1
	.byte	0x5c
	.quad	.LVL97
	.quad	.LVL101
	.value	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL101
	.quad	.LVL102
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL51
	.quad	.LVL56
	.value	0x1
	.byte	0x52
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x50
	.quad	.LVL57
	.quad	.LVL73
	.value	0x1
	.byte	0x52
	.quad	.LVL87
	.quad	.LVL92
	.value	0x1
	.byte	0x52
	.quad	.LVL92
	.quad	.LVL94
	.value	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL102
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL51
	.quad	.LVL56
	.value	0x1
	.byte	0x50
	.quad	.LVL56
	.quad	.LVL57
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL70
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL73
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL97
	.value	0x1
	.byte	0x50
	.quad	.LVL97
	.quad	.LVL99
	.value	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL102
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL51
	.quad	.LVL120
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	.LVL122
	.quad	.LVL124
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL51
	.quad	.LVL53
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x5f
	.quad	.LVL54
	.quad	.LVL55
	.value	0x10
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2d
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL63
	.value	0x1
	.byte	0x5f
	.quad	.LVL65
	.quad	.LVL71
	.value	0x1
	.byte	0x5f
	.quad	.LVL87
	.quad	.LVL92
	.value	0x1
	.byte	0x5f
	.quad	.LVL92
	.quad	.LVL97
	.value	0x10
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2d
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x5f
	.quad	.LVL98
	.quad	.LVL99
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL100
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL100
	.quad	.LVL101
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL101
	.quad	.LVL102
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL52
	.quad	.LVL55
	.value	0x1
	.byte	0x53
	.quad	.LVL92
	.quad	.LVL93
	.value	0x1
	.byte	0x53
	.quad	.LVL93
	.quad	.LVL94
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL95
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL96
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL97
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL102
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL52
	.quad	.LVL54
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL102
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL52
	.quad	.LVL55
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL58
	.value	0x1
	.byte	0x5b
	.quad	.LVL58
	.quad	.LVL61
	.value	0x1
	.byte	0x5a
	.quad	.LVL65
	.quad	.LVL92
	.value	0x1
	.byte	0x5b
	.quad	.LVL92
	.quad	.LVL97
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL102
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL116-1
	.value	0x1
	.byte	0x5b
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL52
	.quad	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL61
	.quad	.LVL69
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL102
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL66
	.quad	.LVL87
	.value	0x1
	.byte	0x51
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x51
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL66
	.quad	.LVL77
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL78
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL87
	.value	0x1
	.byte	0x50
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x50
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL66
	.quad	.LVL73
	.value	0x1
	.byte	0x52
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x52
	.quad	.LVL80
	.quad	.LVL81
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x52
	.quad	.LVL90
	.quad	.LVL92
	.value	0x1
	.byte	0x52
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL66
	.quad	.LVL69
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x54
	.quad	.LVL68
	.quad	.LVL69
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL66
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL73
	.quad	.LVL79
	.value	0x1
	.byte	0x52
	.quad	.LVL81
	.quad	.LVL85
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL73
	.quad	.LVL76
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL73
	.quad	.LVL74
	.value	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.value	0x1
	.byte	0x59
	.quad	.LVL75
	.quad	.LVL76
	.value	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL73
	.quad	.LVL76
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL82
	.quad	.LVL85
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL82
	.quad	.LVL85
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x1
	.byte	0x59
	.quad	.LVL84
	.quad	.LVL85
	.value	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL82
	.quad	.LVL85
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL90
	.quad	.LVL92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x54
	.quad	.LVL91
	.quad	.LVL92
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL90
	.quad	.LVL92
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL103
	.quad	.LVL104
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.quad	.LVL104
	.quad	.LVL115
	.value	0x1
	.byte	0x55
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL104
	.quad	.LVL105
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.quad	.LVL105
	.quad	.LVL116-1
	.value	0x1
	.byte	0x50
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL106
	.quad	.LVL111
	.value	0x5
	.byte	0x8
	.byte	0xff
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL106
	.quad	.LVL107
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x51
	.quad	.LVL108
	.quad	.LVL111
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL106
	.quad	.LVL109
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 -4
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	.LVL109
	.quad	.LVL110
	.value	0x1
	.byte	0x51
	.quad	.LVL110
	.quad	.LVL111
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 -4
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL106
	.quad	.LVL111
	.value	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL117
	.quad	.LVL118-1
	.value	0x1
	.byte	0x50
	.quad	.LVL122
	.quad	.LVL123-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL127
	.quad	.LVL128
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL128
	.quad	.LVL129
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL130
	.quad	.LVL132
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL132
	.quad	.LVL133
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x53
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL133
	.quad	.LVL144
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL144
	.quad	.LVL151
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL161
	.quad	.LVL162
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL162
	.quad	.LVL163-1
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL163-1
	.quad	.LVL164
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL128
	.quad	.LVL151
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL131
	.quad	.LVL133
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL140
	.value	0x1
	.byte	0x5e
	.quad	.LVL140
	.quad	.LVL143
	.value	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL143
	.quad	.LVL146
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL133
	.quad	.LVL142
	.value	0x1
	.byte	0x53
	.quad	.LVL142
	.quad	.LVL144
	.value	0x4
	.byte	0x73
	.sleb128 -72
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL146
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL133
	.quad	.LVL144
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL146
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST96:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x1
	.byte	0x50
	.quad	.LVL134
	.quad	.LVL139
	.value	0x2
	.byte	0x73
	.sleb128 56
	.quad	.LVL145
	.quad	.LVL146
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL135
	.quad	.LVL144
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL135
	.quad	.LVL136
	.value	0x1
	.byte	0x51
	.quad	.LVL136
	.quad	.LVL139
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL136
	.quad	.LVL144
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x51
	.quad	.LVL137
	.quad	.LVL139
	.value	0x2
	.byte	0x73
	.sleb128 40
	.quad	0
	.quad	0
.LLST101:
	.quad	.LVL137
	.quad	.LVL144
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL137
	.quad	.LVL141
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL138
	.quad	.LVL144
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB583
	.quad	.LFE583-.LFB583
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB179
	.quad	.LBE179
	.quad	.LBB349
	.quad	.LBE349
	.quad	.LBB350
	.quad	.LBE350
	.quad	.LBB352
	.quad	.LBE352
	.quad	0
	.quad	0
	.quad	.LBB181
	.quad	.LBE181
	.quad	.LBB182
	.quad	.LBE182
	.quad	0
	.quad	0
	.quad	.LBB186
	.quad	.LBE186
	.quad	.LBB319
	.quad	.LBE319
	.quad	.LBB348
	.quad	.LBE348
	.quad	0
	.quad	0
	.quad	.LBB188
	.quad	.LBE188
	.quad	.LBB316
	.quad	.LBE316
	.quad	0
	.quad	0
	.quad	.LBB192
	.quad	.LBE192
	.quad	.LBB199
	.quad	.LBE199
	.quad	0
	.quad	0
	.quad	.LBB194
	.quad	.LBE194
	.quad	.LBB197
	.quad	.LBE197
	.quad	0
	.quad	0
	.quad	.LBB200
	.quad	.LBE200
	.quad	.LBB314
	.quad	.LBE314
	.quad	0
	.quad	0
	.quad	.LBB202
	.quad	.LBE202
	.quad	.LBB286
	.quad	.LBE286
	.quad	.LBB287
	.quad	.LBE287
	.quad	.LBB288
	.quad	.LBE288
	.quad	.LBB308
	.quad	.LBE308
	.quad	.LBB311
	.quad	.LBE311
	.quad	0
	.quad	0
	.quad	.LBB205
	.quad	.LBE205
	.quad	.LBB274
	.quad	.LBE274
	.quad	.LBB275
	.quad	.LBE275
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB277
	.quad	.LBE277
	.quad	0
	.quad	0
	.quad	.LBB206
	.quad	.LBE206
	.quad	.LBB270
	.quad	.LBE270
	.quad	.LBB273
	.quad	.LBE273
	.quad	0
	.quad	0
	.quad	.LBB207
	.quad	.LBE207
	.quad	.LBB269
	.quad	.LBE269
	.quad	.LBB271
	.quad	.LBE271
	.quad	.LBB272
	.quad	.LBE272
	.quad	0
	.quad	0
	.quad	.LBB209
	.quad	.LBE209
	.quad	.LBB224
	.quad	.LBE224
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB226
	.quad	.LBE226
	.quad	0
	.quad	0
	.quad	.LBB211
	.quad	.LBE211
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB220
	.quad	.LBE220
	.quad	0
	.quad	0
	.quad	.LBB213
	.quad	.LBE213
	.quad	.LBB216
	.quad	.LBE216
	.quad	0
	.quad	0
	.quad	.LBB227
	.quad	.LBE227
	.quad	.LBB250
	.quad	.LBE250
	.quad	.LBB251
	.quad	.LBE251
	.quad	.LBB264
	.quad	.LBE264
	.quad	.LBB265
	.quad	.LBE265
	.quad	0
	.quad	0
	.quad	.LBB234
	.quad	.LBE234
	.quad	.LBB249
	.quad	.LBE249
	.quad	0
	.quad	0
	.quad	.LBB236
	.quad	.LBE236
	.quad	.LBB246
	.quad	.LBE246
	.quad	.LBB247
	.quad	.LBE247
	.quad	0
	.quad	0
	.quad	.LBB238
	.quad	.LBE238
	.quad	.LBB242
	.quad	.LBE242
	.quad	.LBB243
	.quad	.LBE243
	.quad	0
	.quad	0
	.quad	.LBB252
	.quad	.LBE252
	.quad	.LBB262
	.quad	.LBE262
	.quad	.LBB263
	.quad	.LBE263
	.quad	0
	.quad	0
	.quad	.LBB254
	.quad	.LBE254
	.quad	.LBB259
	.quad	.LBE259
	.quad	0
	.quad	0
	.quad	.LBB289
	.quad	.LBE289
	.quad	.LBB309
	.quad	.LBE309
	.quad	.LBB310
	.quad	.LBE310
	.quad	0
	.quad	0
	.quad	.LBB290
	.quad	.LBE290
	.quad	.LBB306
	.quad	.LBE306
	.quad	.LBB307
	.quad	.LBE307
	.quad	0
	.quad	0
	.quad	.LBB291
	.quad	.LBE291
	.quad	.LBB304
	.quad	.LBE304
	.quad	.LBB305
	.quad	.LBE305
	.quad	0
	.quad	0
	.quad	.LBB292
	.quad	.LBE292
	.quad	.LBB302
	.quad	.LBE302
	.quad	.LBB303
	.quad	.LBE303
	.quad	0
	.quad	0
	.quad	.LBB294
	.quad	.LBE294
	.quad	.LBB299
	.quad	.LBE299
	.quad	0
	.quad	0
	.quad	.LBB313
	.quad	.LBE313
	.quad	.LBB315
	.quad	.LBE315
	.quad	0
	.quad	0
	.quad	.LBB320
	.quad	.LBE320
	.quad	.LBB351
	.quad	.LBE351
	.quad	0
	.quad	0
	.quad	.LBB322
	.quad	.LBE322
	.quad	.LBB345
	.quad	.LBE345
	.quad	.LBB346
	.quad	.LBE346
	.quad	0
	.quad	0
	.quad	.LBB323
	.quad	.LBE323
	.quad	.LBB342
	.quad	.LBE342
	.quad	.LBB343
	.quad	.LBE343
	.quad	.LBB344
	.quad	.LBE344
	.quad	0
	.quad	0
	.quad	.LBB324
	.quad	.LBE324
	.quad	.LBB328
	.quad	.LBE328
	.quad	.LBB341
	.quad	.LBE341
	.quad	0
	.quad	0
	.quad	.LBB333
	.quad	.LBE333
	.quad	.LBB336
	.quad	.LBE336
	.quad	0
	.quad	0
	.quad	.LBB337
	.quad	.LBE337
	.quad	.LBB340
	.quad	.LBE340
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB583
	.quad	.LFE583
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 26 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 27 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF256
	.file 28 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x6
	.long	.LASF257
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1b
	.file 29 "/usr/include/limits.h"
	.byte	0x3
	.uleb128 0xa8
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x17
	.long	.LASF258
	.file 30 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro3
	.file 31 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x176
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro4
	.file 32 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x181
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0x186
	.long	.LASF360
	.file 33 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x18e
	.uleb128 0x21
	.file 34 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x22
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.uleb128 0x8
	.long	.LASF379
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 35 "/usr/include/math.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x23
	.byte	0x5
	.uleb128 0x18
	.long	.LASF416
	.file 36 "/usr/include/x86_64-linux-gnu/bits/huge_val.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x24
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x4
	.file 37 "/usr/include/x86_64-linux-gnu/bits/huge_valf.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x4
	.file 38 "/usr/include/x86_64-linux-gnu/bits/huge_vall.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x26
	.byte	0x5
	.uleb128 0x19
	.long	.LASF419
	.byte	0x4
	.file 39 "/usr/include/x86_64-linux-gnu/bits/inf.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF420
	.byte	0x4
	.file 40 "/usr/include/x86_64-linux-gnu/bits/nan.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF421
	.byte	0x4
	.file 41 "/usr/include/x86_64-linux-gnu/bits/mathdef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x29
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x3
	.uleb128 0x58
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x3
	.uleb128 0x84
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.file 42 "/usr/include/x86_64-linux-gnu/bits/mathinline.h"
	.byte	0x3
	.uleb128 0x1aa
	.uleb128 0x2a
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF471
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x18
	.long	.LASF496
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.file 43 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x79
	.uleb128 0x2b
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x6
	.uleb128 0xc0
	.long	.LASF549
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF557
	.file 44 "/usr/include/_G_config.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2c
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF559
	.file 45 "/usr/include/wchar.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.file 46 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro27
	.file 47 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0xa4
	.uleb128 0x2f
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro29
	.file 48 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x355
	.uleb128 0x30
	.byte	0x4
	.file 49 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.byte	0x3
	.uleb128 0x3a6
	.uleb128 0x31
	.byte	0x7
	.long	.Ldebug_macro30
	.byte	0x4
	.byte	0x3
	.uleb128 0x3a9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 50 "/usr/include/assert.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x32
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x41
	.long	.LASF676
	.file 51 "/usr/include/SDL2/SDL_main.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x33
	.byte	0x5
	.uleb128 0x17
	.long	.LASF677
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF678
	.file 52 "/usr/include/SDL2/SDL_config.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x5
	.uleb128 0x18
	.long	.LASF679
	.file 53 "/usr/include/SDL2/SDL_platform.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x35
	.byte	0x7
	.long	.Ldebug_macro32
	.file 54 "/usr/include/SDL2/begin_code.h"
	.byte	0x3
	.uleb128 0x81
	.uleb128 0x36
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x4
	.file 55 "/usr/include/SDL2/close_code.h"
	.byte	0x3
	.uleb128 0x90
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro35
	.file 56 "/usr/include/time.h"
	.byte	0x3
	.uleb128 0x84
	.uleb128 0x38
	.byte	0x7
	.long	.Ldebug_macro36
	.byte	0x4
	.byte	0x5
	.uleb128 0x91
	.long	.LASF473
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro37
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro38
	.byte	0x4
	.file 57 "/usr/include/stdlib.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x39
	.byte	0x7
	.long	.Ldebug_macro39
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro40
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro41
	.file 58 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.byte	0x3
	.uleb128 0x2f8
	.uleb128 0x3a
	.byte	0x4
	.file 59 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.byte	0x3
	.uleb128 0x3bb
	.uleb128 0x3b
	.byte	0x4
	.file 60 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.byte	0x3
	.uleb128 0x3bf
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x58
	.long	.LASF873
	.byte	0x4
	.byte	0x6
	.uleb128 0x3c6
	.long	.LASF874
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro42
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x7
	.long	.Ldebug_macro43
	.byte	0x4
	.file 61 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x3d
	.byte	0x7
	.long	.Ldebug_macro44
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x4
	.file 62 "/usr/include/x86_64-linux-gnu/bits/string.h"
	.byte	0x3
	.uleb128 0x278
	.uleb128 0x3e
	.byte	0x5
	.uleb128 0x18
	.long	.LASF901
	.byte	0x4
	.file 63 "/usr/include/x86_64-linux-gnu/bits/string2.h"
	.byte	0x3
	.uleb128 0x27b
	.uleb128 0x3f
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF902
	.file 64 "/usr/include/endian.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x40
	.byte	0x7
	.long	.Ldebug_macro46
	.file 65 "/usr/include/x86_64-linux-gnu/bits/endian.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x41
	.byte	0x5
	.uleb128 0x7
	.long	.LASF907
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro47
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro48
	.byte	0x4
	.file 66 "/usr/include/x86_64-linux-gnu/bits/string3.h"
	.byte	0x3
	.uleb128 0x280
	.uleb128 0x42
	.byte	0x7
	.long	.Ldebug_macro49
	.byte	0x4
	.byte	0x4
	.file 67 "/usr/include/strings.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x43
	.byte	0x7
	.long	.Ldebug_macro50
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x4
	.byte	0x4
	.file 68 "/usr/include/inttypes.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x44
	.byte	0x5
	.uleb128 0x17
	.long	.LASF936
	.file 69 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdint.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x45
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x17
	.long	.LASF937
	.file 70 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x46
	.byte	0x7
	.long	.Ldebug_macro51
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro52
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF1004
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro53
	.byte	0x4
	.file 71 "/usr/include/ctype.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x47
	.byte	0x7
	.long	.Ldebug_macro54
	.byte	0x4
	.file 72 "/usr/include/iconv.h"
	.byte	0x3
	.uleb128 0x4d
	.uleb128 0x48
	.byte	0x7
	.long	.Ldebug_macro55
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro56
	.byte	0x3
	.uleb128 0xc2
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.file 73 "/usr/include/alloca.h"
	.byte	0x3
	.uleb128 0xca
	.uleb128 0x49
	.byte	0x7
	.long	.Ldebug_macro57
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro58
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro59
	.byte	0x3
	.uleb128 0x187
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1207
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x79
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 74 "/usr/include/SDL2/SDL_assert.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x4a
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1208
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro60
	.byte	0x3
	.uleb128 0x118
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 75 "/usr/include/SDL2/SDL_atomic.h"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x4b
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1221
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro61
	.byte	0x3
	.uleb128 0x100
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 76 "/usr/include/SDL2/SDL_audio.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x4c
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1227
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1228
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro62
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 77 "/usr/include/SDL2/SDL_endian.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x4d
	.byte	0x7
	.long	.Ldebug_macro63
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro64
	.byte	0x3
	.uleb128 0xeb
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 78 "/usr/include/SDL2/SDL_mutex.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x4e
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1244
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro65
	.byte	0x3
	.uleb128 0xf7
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 79 "/usr/include/SDL2/SDL_thread.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x4f
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1249
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x11b
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 80 "/usr/include/SDL2/SDL_rwops.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x50
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF1250
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro66
	.byte	0x3
	.uleb128 0xe4
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro67
	.byte	0x3
	.uleb128 0x1f6
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 81 "/usr/include/SDL2/SDL_clipboard.h"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x51
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1302
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 82 "/usr/include/SDL2/SDL_cpuinfo.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x52
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1303
	.file 83 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/mmintrin.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x53
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF1304
	.byte	0x4
	.file 84 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x54
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF1305
	.file 85 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/mm_malloc.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x55
	.byte	0x5
	.uleb128 0x19
	.long	.LASF1306
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro68
	.file 86 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/emmintrin.h"
	.byte	0x3
	.uleb128 0x4de
	.uleb128 0x56
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF1331
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x54
	.byte	0x4
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1332
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1333
	.byte	0x3
	.uleb128 0x98
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4c
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1334
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1335
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1336
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro69
	.byte	0x3
	.uleb128 0x1a9
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1351
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x86
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 87 "/usr/include/SDL2/SDL_surface.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x57
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1352
	.file 88 "/usr/include/SDL2/SDL_blendmode.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x58
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1353
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro70
	.byte	0x3
	.uleb128 0x1f3
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro71
	.byte	0x3
	.uleb128 0x3cf
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1371
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1372
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1373
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro72
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0xd5
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 89 "/usr/include/SDL2/SDL_mouse.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x59
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1380
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro73
	.byte	0x3
	.uleb128 0xdc
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1392
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro74
	.byte	0x3
	.uleb128 0xf9
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 90 "/usr/include/SDL2/SDL_gamecontroller.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5a
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1402
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1403
	.byte	0x3
	.uleb128 0x138
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 91 "/usr/include/SDL2/SDL_quit.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x5b
	.byte	0x7
	.long	.Ldebug_macro75
	.byte	0x4
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1406
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1407
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1408
	.byte	0x3
	.uleb128 0x52
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro76
	.byte	0x3
	.uleb128 0x2cf
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 92 "/usr/include/SDL2/SDL_filesystem.h"
	.byte	0x3
	.uleb128 0x4d
	.uleb128 0x5c
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1418
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x84
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 93 "/usr/include/SDL2/SDL_haptic.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x5d
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1419
	.byte	0x3
	.uleb128 0x77
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro77
	.byte	0x3
	.uleb128 0x4c5
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 94 "/usr/include/SDL2/SDL_hints.h"
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x5e
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1440
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro78
	.byte	0x3
	.uleb128 0x1bc
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 95 "/usr/include/SDL2/SDL_loadso.h"
	.byte	0x3
	.uleb128 0x52
	.uleb128 0x5f
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1467
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x4d
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 96 "/usr/include/SDL2/SDL_log.h"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x60
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1468
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1469
	.byte	0x3
	.uleb128 0xcf
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 97 "/usr/include/SDL2/SDL_messagebox.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x61
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1470
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x8c
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 98 "/usr/include/SDL2/SDL_power.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x62
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1471
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1472
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x362
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 99 "/usr/include/SDL2/SDL_system.h"
	.byte	0x3
	.uleb128 0x59
	.uleb128 0x63
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1473
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x3
	.uleb128 0x7b
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 100 "/usr/include/SDL2/SDL_timer.h"
	.byte	0x3
	.uleb128 0x5b
	.uleb128 0x64
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1474
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1475
	.byte	0x3
	.uleb128 0x6f
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.file 101 "/usr/include/SDL2/SDL_version.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x65
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1476
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro79
	.byte	0x3
	.uleb128 0x9e
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5f
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro80
	.byte	0x3
	.uleb128 0x9f
	.uleb128 0x37
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro81
	.byte	0x4
	.file 102 "../XFlow.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x66
	.byte	0x7
	.long	.Ldebug_macro82
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1524
	.byte	0x5
	.uleb128 0xf
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x16
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1530
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1531
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1532
	.byte	0x5
	.uleb128 0x104
	.long	.LASF1533
	.byte	0x6
	.uleb128 0x11a
	.long	.LASF1534
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.1.0ef8d6d9aa1fbad0252064bd8b566c5b,comdat
.Ldebug_macro1:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF2
	.byte	0x5
	.uleb128 0x1
	.long	.LASF3
	.byte	0x5
	.uleb128 0x1
	.long	.LASF4
	.byte	0x5
	.uleb128 0x1
	.long	.LASF5
	.byte	0x5
	.uleb128 0x1
	.long	.LASF6
	.byte	0x5
	.uleb128 0x1
	.long	.LASF7
	.byte	0x5
	.uleb128 0x1
	.long	.LASF8
	.byte	0x5
	.uleb128 0x1
	.long	.LASF9
	.byte	0x5
	.uleb128 0x1
	.long	.LASF10
	.byte	0x5
	.uleb128 0x1
	.long	.LASF11
	.byte	0x5
	.uleb128 0x1
	.long	.LASF12
	.byte	0x5
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.uleb128 0x1
	.long	.LASF55
	.byte	0x5
	.uleb128 0x1
	.long	.LASF56
	.byte	0x5
	.uleb128 0x1
	.long	.LASF57
	.byte	0x5
	.uleb128 0x1
	.long	.LASF58
	.byte	0x5
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.uleb128 0x1
	.long	.LASF60
	.byte	0x5
	.uleb128 0x1
	.long	.LASF61
	.byte	0x5
	.uleb128 0x1
	.long	.LASF62
	.byte	0x5
	.uleb128 0x1
	.long	.LASF63
	.byte	0x5
	.uleb128 0x1
	.long	.LASF64
	.byte	0x5
	.uleb128 0x1
	.long	.LASF65
	.byte	0x5
	.uleb128 0x1
	.long	.LASF66
	.byte	0x5
	.uleb128 0x1
	.long	.LASF67
	.byte	0x5
	.uleb128 0x1
	.long	.LASF68
	.byte	0x5
	.uleb128 0x1
	.long	.LASF69
	.byte	0x5
	.uleb128 0x1
	.long	.LASF70
	.byte	0x5
	.uleb128 0x1
	.long	.LASF71
	.byte	0x5
	.uleb128 0x1
	.long	.LASF72
	.byte	0x5
	.uleb128 0x1
	.long	.LASF73
	.byte	0x5
	.uleb128 0x1
	.long	.LASF74
	.byte	0x5
	.uleb128 0x1
	.long	.LASF75
	.byte	0x5
	.uleb128 0x1
	.long	.LASF76
	.byte	0x5
	.uleb128 0x1
	.long	.LASF77
	.byte	0x5
	.uleb128 0x1
	.long	.LASF78
	.byte	0x5
	.uleb128 0x1
	.long	.LASF79
	.byte	0x5
	.uleb128 0x1
	.long	.LASF80
	.byte	0x5
	.uleb128 0x1
	.long	.LASF81
	.byte	0x5
	.uleb128 0x1
	.long	.LASF82
	.byte	0x5
	.uleb128 0x1
	.long	.LASF83
	.byte	0x5
	.uleb128 0x1
	.long	.LASF84
	.byte	0x5
	.uleb128 0x1
	.long	.LASF85
	.byte	0x5
	.uleb128 0x1
	.long	.LASF86
	.byte	0x5
	.uleb128 0x1
	.long	.LASF87
	.byte	0x5
	.uleb128 0x1
	.long	.LASF88
	.byte	0x5
	.uleb128 0x1
	.long	.LASF89
	.byte	0x5
	.uleb128 0x1
	.long	.LASF90
	.byte	0x5
	.uleb128 0x1
	.long	.LASF91
	.byte	0x5
	.uleb128 0x1
	.long	.LASF92
	.byte	0x5
	.uleb128 0x1
	.long	.LASF93
	.byte	0x5
	.uleb128 0x1
	.long	.LASF94
	.byte	0x5
	.uleb128 0x1
	.long	.LASF95
	.byte	0x5
	.uleb128 0x1
	.long	.LASF96
	.byte	0x5
	.uleb128 0x1
	.long	.LASF97
	.byte	0x5
	.uleb128 0x1
	.long	.LASF98
	.byte	0x5
	.uleb128 0x1
	.long	.LASF99
	.byte	0x5
	.uleb128 0x1
	.long	.LASF100
	.byte	0x5
	.uleb128 0x1
	.long	.LASF101
	.byte	0x5
	.uleb128 0x1
	.long	.LASF102
	.byte	0x5
	.uleb128 0x1
	.long	.LASF103
	.byte	0x5
	.uleb128 0x1
	.long	.LASF104
	.byte	0x5
	.uleb128 0x1
	.long	.LASF105
	.byte	0x5
	.uleb128 0x1
	.long	.LASF106
	.byte	0x5
	.uleb128 0x1
	.long	.LASF107
	.byte	0x5
	.uleb128 0x1
	.long	.LASF108
	.byte	0x5
	.uleb128 0x1
	.long	.LASF109
	.byte	0x5
	.uleb128 0x1
	.long	.LASF110
	.byte	0x5
	.uleb128 0x1
	.long	.LASF111
	.byte	0x5
	.uleb128 0x1
	.long	.LASF112
	.byte	0x5
	.uleb128 0x1
	.long	.LASF113
	.byte	0x5
	.uleb128 0x1
	.long	.LASF114
	.byte	0x5
	.uleb128 0x1
	.long	.LASF115
	.byte	0x5
	.uleb128 0x1
	.long	.LASF116
	.byte	0x5
	.uleb128 0x1
	.long	.LASF117
	.byte	0x5
	.uleb128 0x1
	.long	.LASF118
	.byte	0x5
	.uleb128 0x1
	.long	.LASF119
	.byte	0x5
	.uleb128 0x1
	.long	.LASF120
	.byte	0x5
	.uleb128 0x1
	.long	.LASF121
	.byte	0x5
	.uleb128 0x1
	.long	.LASF122
	.byte	0x5
	.uleb128 0x1
	.long	.LASF123
	.byte	0x5
	.uleb128 0x1
	.long	.LASF124
	.byte	0x5
	.uleb128 0x1
	.long	.LASF125
	.byte	0x5
	.uleb128 0x1
	.long	.LASF126
	.byte	0x5
	.uleb128 0x1
	.long	.LASF127
	.byte	0x5
	.uleb128 0x1
	.long	.LASF128
	.byte	0x5
	.uleb128 0x1
	.long	.LASF129
	.byte	0x5
	.uleb128 0x1
	.long	.LASF130
	.byte	0x5
	.uleb128 0x1
	.long	.LASF131
	.byte	0x5
	.uleb128 0x1
	.long	.LASF132
	.byte	0x5
	.uleb128 0x1
	.long	.LASF133
	.byte	0x5
	.uleb128 0x1
	.long	.LASF134
	.byte	0x5
	.uleb128 0x1
	.long	.LASF135
	.byte	0x5
	.uleb128 0x1
	.long	.LASF136
	.byte	0x5
	.uleb128 0x1
	.long	.LASF137
	.byte	0x5
	.uleb128 0x1
	.long	.LASF138
	.byte	0x5
	.uleb128 0x1
	.long	.LASF139
	.byte	0x5
	.uleb128 0x1
	.long	.LASF140
	.byte	0x5
	.uleb128 0x1
	.long	.LASF141
	.byte	0x5
	.uleb128 0x1
	.long	.LASF142
	.byte	0x5
	.uleb128 0x1
	.long	.LASF143
	.byte	0x5
	.uleb128 0x1
	.long	.LASF144
	.byte	0x5
	.uleb128 0x1
	.long	.LASF145
	.byte	0x5
	.uleb128 0x1
	.long	.LASF146
	.byte	0x5
	.uleb128 0x1
	.long	.LASF147
	.byte	0x5
	.uleb128 0x1
	.long	.LASF148
	.byte	0x5
	.uleb128 0x1
	.long	.LASF149
	.byte	0x5
	.uleb128 0x1
	.long	.LASF150
	.byte	0x5
	.uleb128 0x1
	.long	.LASF151
	.byte	0x5
	.uleb128 0x1
	.long	.LASF152
	.byte	0x5
	.uleb128 0x1
	.long	.LASF153
	.byte	0x5
	.uleb128 0x1
	.long	.LASF154
	.byte	0x5
	.uleb128 0x1
	.long	.LASF155
	.byte	0x5
	.uleb128 0x1
	.long	.LASF156
	.byte	0x5
	.uleb128 0x1
	.long	.LASF157
	.byte	0x5
	.uleb128 0x1
	.long	.LASF158
	.byte	0x5
	.uleb128 0x1
	.long	.LASF159
	.byte	0x5
	.uleb128 0x1
	.long	.LASF160
	.byte	0x5
	.uleb128 0x1
	.long	.LASF161
	.byte	0x5
	.uleb128 0x1
	.long	.LASF162
	.byte	0x5
	.uleb128 0x1
	.long	.LASF163
	.byte	0x5
	.uleb128 0x1
	.long	.LASF164
	.byte	0x5
	.uleb128 0x1
	.long	.LASF165
	.byte	0x5
	.uleb128 0x1
	.long	.LASF166
	.byte	0x5
	.uleb128 0x1
	.long	.LASF167
	.byte	0x5
	.uleb128 0x1
	.long	.LASF168
	.byte	0x5
	.uleb128 0x1
	.long	.LASF169
	.byte	0x5
	.uleb128 0x1
	.long	.LASF170
	.byte	0x5
	.uleb128 0x1
	.long	.LASF171
	.byte	0x5
	.uleb128 0x1
	.long	.LASF172
	.byte	0x5
	.uleb128 0x1
	.long	.LASF173
	.byte	0x5
	.uleb128 0x1
	.long	.LASF174
	.byte	0x5
	.uleb128 0x1
	.long	.LASF175
	.byte	0x5
	.uleb128 0x1
	.long	.LASF176
	.byte	0x5
	.uleb128 0x1
	.long	.LASF177
	.byte	0x5
	.uleb128 0x1
	.long	.LASF178
	.byte	0x5
	.uleb128 0x1
	.long	.LASF179
	.byte	0x5
	.uleb128 0x1
	.long	.LASF180
	.byte	0x5
	.uleb128 0x1
	.long	.LASF181
	.byte	0x5
	.uleb128 0x1
	.long	.LASF182
	.byte	0x5
	.uleb128 0x1
	.long	.LASF183
	.byte	0x5
	.uleb128 0x1
	.long	.LASF184
	.byte	0x5
	.uleb128 0x1
	.long	.LASF185
	.byte	0x5
	.uleb128 0x1
	.long	.LASF186
	.byte	0x5
	.uleb128 0x1
	.long	.LASF187
	.byte	0x5
	.uleb128 0x1
	.long	.LASF188
	.byte	0x5
	.uleb128 0x1
	.long	.LASF189
	.byte	0x5
	.uleb128 0x1
	.long	.LASF190
	.byte	0x5
	.uleb128 0x1
	.long	.LASF191
	.byte	0x5
	.uleb128 0x1
	.long	.LASF192
	.byte	0x5
	.uleb128 0x1
	.long	.LASF193
	.byte	0x5
	.uleb128 0x1
	.long	.LASF194
	.byte	0x5
	.uleb128 0x1
	.long	.LASF195
	.byte	0x5
	.uleb128 0x1
	.long	.LASF196
	.byte	0x5
	.uleb128 0x1
	.long	.LASF197
	.byte	0x5
	.uleb128 0x1
	.long	.LASF198
	.byte	0x5
	.uleb128 0x1
	.long	.LASF199
	.byte	0x5
	.uleb128 0x1
	.long	.LASF200
	.byte	0x5
	.uleb128 0x1
	.long	.LASF201
	.byte	0x5
	.uleb128 0x1
	.long	.LASF202
	.byte	0x5
	.uleb128 0x1
	.long	.LASF203
	.byte	0x5
	.uleb128 0x1
	.long	.LASF204
	.byte	0x5
	.uleb128 0x1
	.long	.LASF205
	.byte	0x5
	.uleb128 0x1
	.long	.LASF206
	.byte	0x5
	.uleb128 0x1
	.long	.LASF207
	.byte	0x5
	.uleb128 0x1
	.long	.LASF208
	.byte	0x5
	.uleb128 0x1
	.long	.LASF209
	.byte	0x5
	.uleb128 0x1
	.long	.LASF210
	.byte	0x5
	.uleb128 0x1
	.long	.LASF211
	.byte	0x5
	.uleb128 0x1
	.long	.LASF212
	.byte	0x5
	.uleb128 0x1
	.long	.LASF213
	.byte	0x5
	.uleb128 0x1
	.long	.LASF214
	.byte	0x5
	.uleb128 0x1
	.long	.LASF215
	.byte	0x5
	.uleb128 0x1
	.long	.LASF216
	.byte	0x5
	.uleb128 0x1
	.long	.LASF217
	.byte	0x5
	.uleb128 0x1
	.long	.LASF218
	.byte	0x5
	.uleb128 0x1
	.long	.LASF219
	.byte	0x5
	.uleb128 0x1
	.long	.LASF220
	.byte	0x5
	.uleb128 0x1
	.long	.LASF221
	.byte	0x5
	.uleb128 0x1
	.long	.LASF222
	.byte	0x5
	.uleb128 0x1
	.long	.LASF223
	.byte	0x5
	.uleb128 0x1
	.long	.LASF224
	.byte	0x5
	.uleb128 0x1
	.long	.LASF225
	.byte	0x5
	.uleb128 0x1
	.long	.LASF226
	.byte	0x5
	.uleb128 0x1
	.long	.LASF227
	.byte	0x5
	.uleb128 0x1
	.long	.LASF228
	.byte	0x5
	.uleb128 0x1
	.long	.LASF229
	.byte	0x5
	.uleb128 0x1
	.long	.LASF230
	.byte	0x5
	.uleb128 0x1
	.long	.LASF231
	.byte	0x5
	.uleb128 0x1
	.long	.LASF232
	.byte	0x5
	.uleb128 0x1
	.long	.LASF233
	.byte	0x5
	.uleb128 0x1
	.long	.LASF234
	.byte	0x5
	.uleb128 0x1
	.long	.LASF235
	.byte	0x5
	.uleb128 0x1
	.long	.LASF236
	.byte	0x5
	.uleb128 0x1
	.long	.LASF237
	.byte	0x5
	.uleb128 0x1
	.long	.LASF238
	.byte	0x5
	.uleb128 0x1
	.long	.LASF239
	.byte	0x5
	.uleb128 0x1
	.long	.LASF240
	.byte	0x5
	.uleb128 0x1
	.long	.LASF241
	.byte	0x5
	.uleb128 0x1
	.long	.LASF242
	.byte	0x5
	.uleb128 0x1
	.long	.LASF243
	.byte	0x5
	.uleb128 0x1
	.long	.LASF244
	.byte	0x5
	.uleb128 0x1
	.long	.LASF245
	.byte	0x5
	.uleb128 0x1
	.long	.LASF246
	.byte	0x5
	.uleb128 0x1
	.long	.LASF247
	.byte	0x5
	.uleb128 0x1
	.long	.LASF248
	.byte	0x5
	.uleb128 0x1
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.13d357f53e03e35e37f3aa674f978c59,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF251
	.byte	0x5
	.uleb128 0x29
	.long	.LASF252
	.byte	0x5
	.uleb128 0x31
	.long	.LASF253
	.byte	0x5
	.uleb128 0x36
	.long	.LASF254
	.byte	0x5
	.uleb128 0x39
	.long	.LASF255
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.f73f1ed718ee42da5569eec534166492,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF259
	.byte	0x6
	.uleb128 0x65
	.long	.LASF260
	.byte	0x6
	.uleb128 0x66
	.long	.LASF261
	.byte	0x6
	.uleb128 0x67
	.long	.LASF262
	.byte	0x6
	.uleb128 0x68
	.long	.LASF263
	.byte	0x6
	.uleb128 0x69
	.long	.LASF264
	.byte	0x6
	.uleb128 0x6a
	.long	.LASF265
	.byte	0x6
	.uleb128 0x6b
	.long	.LASF266
	.byte	0x6
	.uleb128 0x6c
	.long	.LASF267
	.byte	0x6
	.uleb128 0x6d
	.long	.LASF268
	.byte	0x6
	.uleb128 0x6e
	.long	.LASF269
	.byte	0x6
	.uleb128 0x6f
	.long	.LASF270
	.byte	0x6
	.uleb128 0x70
	.long	.LASF271
	.byte	0x6
	.uleb128 0x71
	.long	.LASF272
	.byte	0x6
	.uleb128 0x72
	.long	.LASF273
	.byte	0x6
	.uleb128 0x73
	.long	.LASF274
	.byte	0x6
	.uleb128 0x74
	.long	.LASF275
	.byte	0x6
	.uleb128 0x75
	.long	.LASF276
	.byte	0x6
	.uleb128 0x76
	.long	.LASF277
	.byte	0x6
	.uleb128 0x77
	.long	.LASF278
	.byte	0x6
	.uleb128 0x78
	.long	.LASF279
	.byte	0x6
	.uleb128 0x79
	.long	.LASF280
	.byte	0x6
	.uleb128 0x7a
	.long	.LASF281
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF282
	.byte	0x6
	.uleb128 0x7c
	.long	.LASF283
	.byte	0x6
	.uleb128 0x7d
	.long	.LASF284
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF285
	.byte	0x5
	.uleb128 0x83
	.long	.LASF286
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF287
	.byte	0x5
	.uleb128 0xca
	.long	.LASF288
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF289
	.byte	0x5
	.uleb128 0x156
	.long	.LASF290
	.byte	0x6
	.uleb128 0x168
	.long	.LASF291
	.byte	0x5
	.uleb128 0x169
	.long	.LASF292
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF293
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF294
	.byte	0x5
	.uleb128 0x170
	.long	.LASF295
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.184eb7416f4f77996ae14b24892e9f2f,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF296
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF297
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF298
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x5
	.uleb128 0x37
	.long	.LASF300
	.byte	0x5
	.uleb128 0x38
	.long	.LASF301
	.byte	0x5
	.uleb128 0x39
	.long	.LASF302
	.byte	0x5
	.uleb128 0x52
	.long	.LASF303
	.byte	0x5
	.uleb128 0x53
	.long	.LASF304
	.byte	0x5
	.uleb128 0x58
	.long	.LASF305
	.byte	0x5
	.uleb128 0x59
	.long	.LASF306
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF307
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF308
	.byte	0x5
	.uleb128 0x65
	.long	.LASF309
	.byte	0x5
	.uleb128 0x66
	.long	.LASF310
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF311
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF312
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF313
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF314
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF315
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF316
	.byte	0x5
	.uleb128 0x84
	.long	.LASF317
	.byte	0x5
	.uleb128 0x85
	.long	.LASF318
	.byte	0x5
	.uleb128 0x86
	.long	.LASF319
	.byte	0x5
	.uleb128 0x89
	.long	.LASF320
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF321
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF322
	.byte	0x5
	.uleb128 0x97
	.long	.LASF323
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF324
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF325
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF326
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF327
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF328
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF329
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF330
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF331
	.byte	0x5
	.uleb128 0xed
	.long	.LASF332
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF333
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF334
	.byte	0x5
	.uleb128 0xff
	.long	.LASF335
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF336
	.byte	0x5
	.uleb128 0x115
	.long	.LASF337
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF338
	.byte	0x5
	.uleb128 0x126
	.long	.LASF339
	.byte	0x5
	.uleb128 0x129
	.long	.LASF340
	.byte	0x5
	.uleb128 0x134
	.long	.LASF341
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF342
	.byte	0x5
	.uleb128 0x147
	.long	.LASF343
	.byte	0x5
	.uleb128 0x148
	.long	.LASF344
	.byte	0x5
	.uleb128 0x156
	.long	.LASF345
	.byte	0x5
	.uleb128 0x157
	.long	.LASF346
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF347
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF348
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF349
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.256e8fdbd37801980286acdbc40d0280,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF350
	.byte	0x5
	.uleb128 0xa
	.long	.LASF351
	.byte	0x5
	.uleb128 0xc
	.long	.LASF352
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.407.c122ddb2157a4c1fbd957332b50319ec,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x197
	.long	.LASF353
	.byte	0x5
	.uleb128 0x198
	.long	.LASF354
	.byte	0x5
	.uleb128 0x199
	.long	.LASF355
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF356
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF357
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF358
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF359
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.6fb4b470a4f113ab27ac07383b62200b,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF361
	.byte	0x5
	.uleb128 0xb
	.long	.LASF362
	.byte	0x5
	.uleb128 0xc
	.long	.LASF363
	.byte	0x5
	.uleb128 0xd
	.long	.LASF364
	.byte	0x5
	.uleb128 0xe
	.long	.LASF365
	.byte	0x5
	.uleb128 0xf
	.long	.LASF366
	.byte	0x5
	.uleb128 0x10
	.long	.LASF367
	.byte	0x5
	.uleb128 0x11
	.long	.LASF368
	.byte	0x5
	.uleb128 0x12
	.long	.LASF369
	.byte	0x5
	.uleb128 0x13
	.long	.LASF370
	.byte	0x5
	.uleb128 0x14
	.long	.LASF371
	.byte	0x5
	.uleb128 0x15
	.long	.LASF372
	.byte	0x5
	.uleb128 0x16
	.long	.LASF373
	.byte	0x5
	.uleb128 0x17
	.long	.LASF374
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.limits.h.31.2fdf7af691b23d9aae929df7655088eb,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF375
	.byte	0x5
	.uleb128 0x83
	.long	.LASF376
	.byte	0x5
	.uleb128 0x86
	.long	.LASF377
	.byte	0x5
	.uleb128 0x89
	.long	.LASF378
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.limits.h.60.7bfe30ae3ff4e90f07238e284348f8e7,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF380
	.byte	0x6
	.uleb128 0x3f
	.long	.LASF381
	.byte	0x5
	.uleb128 0x40
	.long	.LASF382
	.byte	0x6
	.uleb128 0x48
	.long	.LASF383
	.byte	0x5
	.uleb128 0x49
	.long	.LASF384
	.byte	0x6
	.uleb128 0x4a
	.long	.LASF385
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF386
	.byte	0x6
	.uleb128 0x4e
	.long	.LASF387
	.byte	0x5
	.uleb128 0x52
	.long	.LASF388
	.byte	0x6
	.uleb128 0x60
	.long	.LASF389
	.byte	0x5
	.uleb128 0x61
	.long	.LASF390
	.byte	0x6
	.uleb128 0x62
	.long	.LASF391
	.byte	0x5
	.uleb128 0x63
	.long	.LASF392
	.byte	0x6
	.uleb128 0x67
	.long	.LASF393
	.byte	0x5
	.uleb128 0x68
	.long	.LASF394
	.byte	0x6
	.uleb128 0x69
	.long	.LASF395
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF396
	.byte	0x6
	.uleb128 0x6d
	.long	.LASF397
	.byte	0x5
	.uleb128 0x71
	.long	.LASF398
	.byte	0x6
	.uleb128 0x75
	.long	.LASF399
	.byte	0x5
	.uleb128 0x76
	.long	.LASF400
	.byte	0x6
	.uleb128 0x77
	.long	.LASF401
	.byte	0x5
	.uleb128 0x78
	.long	.LASF402
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF403
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF404
	.byte	0x6
	.uleb128 0x80
	.long	.LASF405
	.byte	0x5
	.uleb128 0x81
	.long	.LASF406
	.byte	0x6
	.uleb128 0x82
	.long	.LASF407
	.byte	0x5
	.uleb128 0x83
	.long	.LASF408
	.byte	0x6
	.uleb128 0x86
	.long	.LASF409
	.byte	0x5
	.uleb128 0x87
	.long	.LASF410
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF411
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF412
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF413
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF377
	.byte	0x6
	.uleb128 0x91
	.long	.LASF414
	.byte	0x5
	.uleb128 0x92
	.long	.LASF415
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mathdef.h.23.67c0aa4a204f1f427459dfc651aba565,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF422
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF423
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF424
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.52.4752be6f35bf841b45d66be7fdb6c34e,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x34
	.long	.LASF425
	.byte	0x5
	.uleb128 0x36
	.long	.LASF426
	.byte	0x5
	.uleb128 0x39
	.long	.LASF427
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF428
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF429
	.byte	0x5
	.uleb128 0x41
	.long	.LASF430
	.byte	0x5
	.uleb128 0x42
	.long	.LASF431
	.byte	0x5
	.uleb128 0x43
	.long	.LASF432
	.byte	0x5
	.uleb128 0x44
	.long	.LASF433
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.70.2c3a5e7a71cd788056d88783c1ae3269,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x46
	.long	.LASF434
	.byte	0x6
	.uleb128 0x47
	.long	.LASF435
	.byte	0x6
	.uleb128 0x48
	.long	.LASF436
	.byte	0x6
	.uleb128 0x49
	.long	.LASF437
	.byte	0x5
	.uleb128 0x52
	.long	.LASF438
	.byte	0x5
	.uleb128 0x54
	.long	.LASF439
	.byte	0x5
	.uleb128 0x55
	.long	.LASF440
	.byte	0x5
	.uleb128 0x56
	.long	.LASF441
	.byte	0x5
	.uleb128 0x57
	.long	.LASF442
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.89.397fc708cb1dd39f4ff6187f6b02b210,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x59
	.long	.LASF434
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF435
	.byte	0x6
	.uleb128 0x5b
	.long	.LASF436
	.byte	0x6
	.uleb128 0x5c
	.long	.LASF437
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF443
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF444
	.byte	0x5
	.uleb128 0x80
	.long	.LASF445
	.byte	0x5
	.uleb128 0x81
	.long	.LASF441
	.byte	0x5
	.uleb128 0x82
	.long	.LASF442
	.byte	0x5
	.uleb128 0x83
	.long	.LASF446
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.133.6b6e6d173b21fc3a1f7a3065aa0bce58,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x85
	.long	.LASF434
	.byte	0x6
	.uleb128 0x86
	.long	.LASF435
	.byte	0x6
	.uleb128 0x87
	.long	.LASF436
	.byte	0x6
	.uleb128 0x88
	.long	.LASF437
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF447
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF448
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF449
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF450
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF451
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF452
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF453
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF454
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF455
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF456
	.byte	0x5
	.uleb128 0xed
	.long	.LASF457
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF458
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF459
	.byte	0x5
	.uleb128 0x109
	.long	.LASF460
	.byte	0x5
	.uleb128 0x111
	.long	.LASF461
	.byte	0x5
	.uleb128 0x112
	.long	.LASF462
	.byte	0x5
	.uleb128 0x118
	.long	.LASF463
	.byte	0x5
	.uleb128 0x196
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF465
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF466
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF467
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF468
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF469
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF470
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.26.4719156f1aea2bb9662fd6c582dc9a4c,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF472
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF473
	.byte	0x5
	.uleb128 0x20
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.184.159df79b4ca79c76561572a55985524c,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF475
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF476
	.byte	0x5
	.uleb128 0xba
	.long	.LASF477
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF478
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF479
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF480
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF481
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF482
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF483
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF484
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF485
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF486
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF487
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF488
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF489
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF490
	.byte	0x5
	.uleb128 0xce
	.long	.LASF491
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x192
	.long	.LASF494
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.89.468e2451361e3b92f048f6cad51690ff,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x59
	.long	.LASF497
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF498
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF499
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF500
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF501
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF502
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF503
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF504
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF505
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF506
	.byte	0x5
	.uleb128 0x70
	.long	.LASF507
	.byte	0x5
	.uleb128 0x71
	.long	.LASF508
	.byte	0x5
	.uleb128 0x72
	.long	.LASF509
	.byte	0x5
	.uleb128 0x73
	.long	.LASF510
	.byte	0x5
	.uleb128 0x75
	.long	.LASF511
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.c4a72432ea65bcf9f35838c785ffdcc8,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF512
	.byte	0x5
	.uleb128 0x22
	.long	.LASF513
	.byte	0x5
	.uleb128 0x23
	.long	.LASF514
	.byte	0x5
	.uleb128 0x26
	.long	.LASF515
	.byte	0x5
	.uleb128 0x27
	.long	.LASF516
	.byte	0x5
	.uleb128 0x28
	.long	.LASF517
	.byte	0x5
	.uleb128 0x29
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF519
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF520
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF521
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF522
	.byte	0x5
	.uleb128 0x33
	.long	.LASF523
	.byte	0x5
	.uleb128 0x34
	.long	.LASF524
	.byte	0x5
	.uleb128 0x35
	.long	.LASF525
	.byte	0x5
	.uleb128 0x36
	.long	.LASF526
	.byte	0x5
	.uleb128 0x37
	.long	.LASF527
	.byte	0x5
	.uleb128 0x38
	.long	.LASF528
	.byte	0x5
	.uleb128 0x39
	.long	.LASF529
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF530
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF531
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF532
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF533
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF534
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF535
	.byte	0x5
	.uleb128 0x40
	.long	.LASF536
	.byte	0x5
	.uleb128 0x41
	.long	.LASF537
	.byte	0x5
	.uleb128 0x42
	.long	.LASF538
	.byte	0x5
	.uleb128 0x43
	.long	.LASF539
	.byte	0x5
	.uleb128 0x44
	.long	.LASF540
	.byte	0x5
	.uleb128 0x45
	.long	.LASF541
	.byte	0x5
	.uleb128 0x46
	.long	.LASF542
	.byte	0x5
	.uleb128 0x47
	.long	.LASF543
	.byte	0x5
	.uleb128 0x48
	.long	.LASF544
	.byte	0x5
	.uleb128 0x49
	.long	.LASF545
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF546
	.byte	0x5
	.uleb128 0x52
	.long	.LASF547
	.byte	0x5
	.uleb128 0x56
	.long	.LASF548
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.36.2dd12c1fd035242ad5cfd0152a01be5a,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF550
	.byte	0x5
	.uleb128 0x25
	.long	.LASF551
	.byte	0x5
	.uleb128 0x38
	.long	.LASF552
	.byte	0x6
	.uleb128 0x3a
	.long	.LASF553
	.byte	0x5
	.uleb128 0x42
	.long	.LASF554
	.byte	0x6
	.uleb128 0x44
	.long	.LASF555
	.byte	0x5
	.uleb128 0x48
	.long	.LASF556
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._G_config.h.5.b0f37d9e474454cf6e459063458db32f,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF558
	.byte	0x5
	.uleb128 0xa
	.long	.LASF473
	.byte	0x5
	.uleb128 0xe
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.5fa44232df77937e0d1fcac1468785aa,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x192
	.long	.LASF494
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.80.628010d306c9ecbd260f9d4475ab1db1,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x50
	.long	.LASF560
	.byte	0x6
	.uleb128 0x60
	.long	.LASF561
	.byte	0x6
	.uleb128 0x383
	.long	.LASF561
	.byte	0x6
	.uleb128 0x384
	.long	.LASF562
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._G_config.h.46.5187c97b14fd664662cb32e6b94fc49e,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF563
	.byte	0x5
	.uleb128 0x30
	.long	.LASF564
	.byte	0x5
	.uleb128 0x31
	.long	.LASF565
	.byte	0x5
	.uleb128 0x33
	.long	.LASF566
	.byte	0x5
	.uleb128 0x36
	.long	.LASF567
	.byte	0x5
	.uleb128 0x38
	.long	.LASF568
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libio.h.33.a775b9ecae273f33bc59931e9891e4ca,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.long	.LASF569
	.byte	0x5
	.uleb128 0x22
	.long	.LASF570
	.byte	0x5
	.uleb128 0x23
	.long	.LASF571
	.byte	0x5
	.uleb128 0x24
	.long	.LASF572
	.byte	0x5
	.uleb128 0x25
	.long	.LASF573
	.byte	0x5
	.uleb128 0x26
	.long	.LASF574
	.byte	0x5
	.uleb128 0x27
	.long	.LASF575
	.byte	0x5
	.uleb128 0x28
	.long	.LASF576
	.byte	0x5
	.uleb128 0x29
	.long	.LASF577
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF579
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF580
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF581
	.byte	0x5
	.uleb128 0x30
	.long	.LASF582
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF583
	.byte	0x5
	.uleb128 0x27
	.long	.LASF584
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libio.h.51.981a9f406a7830caa4638ead01d5e3e6,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x33
	.long	.LASF585
	.byte	0x5
	.uleb128 0x34
	.long	.LASF586
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF587
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF588
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF589
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF590
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF591
	.byte	0x5
	.uleb128 0x50
	.long	.LASF592
	.byte	0x5
	.uleb128 0x51
	.long	.LASF593
	.byte	0x5
	.uleb128 0x52
	.long	.LASF594
	.byte	0x5
	.uleb128 0x53
	.long	.LASF595
	.byte	0x5
	.uleb128 0x54
	.long	.LASF596
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF597
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF598
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF599
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF600
	.byte	0x5
	.uleb128 0x60
	.long	.LASF601
	.byte	0x5
	.uleb128 0x61
	.long	.LASF602
	.byte	0x5
	.uleb128 0x62
	.long	.LASF603
	.byte	0x5
	.uleb128 0x63
	.long	.LASF604
	.byte	0x5
	.uleb128 0x64
	.long	.LASF605
	.byte	0x5
	.uleb128 0x65
	.long	.LASF606
	.byte	0x5
	.uleb128 0x66
	.long	.LASF607
	.byte	0x5
	.uleb128 0x67
	.long	.LASF608
	.byte	0x5
	.uleb128 0x68
	.long	.LASF609
	.byte	0x5
	.uleb128 0x69
	.long	.LASF610
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF611
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF612
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF613
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF614
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF615
	.byte	0x5
	.uleb128 0x70
	.long	.LASF616
	.byte	0x5
	.uleb128 0x71
	.long	.LASF617
	.byte	0x5
	.uleb128 0x75
	.long	.LASF618
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF619
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF620
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF621
	.byte	0x5
	.uleb128 0x80
	.long	.LASF622
	.byte	0x5
	.uleb128 0x81
	.long	.LASF623
	.byte	0x5
	.uleb128 0x82
	.long	.LASF624
	.byte	0x5
	.uleb128 0x83
	.long	.LASF625
	.byte	0x5
	.uleb128 0x84
	.long	.LASF626
	.byte	0x5
	.uleb128 0x85
	.long	.LASF627
	.byte	0x5
	.uleb128 0x86
	.long	.LASF628
	.byte	0x5
	.uleb128 0x87
	.long	.LASF629
	.byte	0x5
	.uleb128 0x88
	.long	.LASF630
	.byte	0x5
	.uleb128 0x89
	.long	.LASF631
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF632
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF633
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF634
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF635
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF636
	.byte	0x5
	.uleb128 0x114
	.long	.LASF637
	.byte	0x5
	.uleb128 0x144
	.long	.LASF638
	.byte	0x5
	.uleb128 0x145
	.long	.LASF639
	.byte	0x5
	.uleb128 0x146
	.long	.LASF640
	.byte	0x5
	.uleb128 0x190
	.long	.LASF641
	.byte	0x5
	.uleb128 0x195
	.long	.LASF642
	.byte	0x5
	.uleb128 0x198
	.long	.LASF643
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF644
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF645
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF646
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF647
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF648
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF649
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF650
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF651
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF652
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF653
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.120.80cbf0ec1718a5b27e6428218e29c72d,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x78
	.long	.LASF654
	.byte	0x5
	.uleb128 0x79
	.long	.LASF655
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF656
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF657
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF658
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF659
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF660
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.23.5601568edf6da86ede461f368e1c5446,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF661
	.byte	0x5
	.uleb128 0x18
	.long	.LASF662
	.byte	0x5
	.uleb128 0x19
	.long	.LASF663
	.byte	0x6
	.uleb128 0x24
	.long	.LASF664
	.byte	0x5
	.uleb128 0x25
	.long	.LASF665
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.172.df21df34a7396d7da2e08f9b617d582f,comdat
.Ldebug_macro29:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xac
	.long	.LASF666
	.byte	0x5
	.uleb128 0xad
	.long	.LASF667
	.byte	0x5
	.uleb128 0xae
	.long	.LASF668
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF669
	.byte	0x5
	.uleb128 0x249
	.long	.LASF670
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.26.e50fc3808d57d965ceefc6f6dd102eb7,comdat
.Ldebug_macro30:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF671
	.byte	0x6
	.uleb128 0xbe
	.long	.LASF672
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.assert.h.34.a0a01ff176489bbcb2fb53ee4afe6396,comdat
.Ldebug_macro31:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF673
	.byte	0x5
	.uleb128 0x28
	.long	.LASF674
	.byte	0x5
	.uleb128 0x32
	.long	.LASF675
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_platform.h.29.67f2c311862ba7648176e202e01b970b,comdat
.Ldebug_macro32:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF680
	.byte	0x6
	.uleb128 0x3c
	.long	.LASF681
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF682
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.begin_code.h.34.49f30f2cfc71afab7f8524ac8aa9b7f0,comdat
.Ldebug_macro33:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x5
	.uleb128 0x26
	.long	.LASF684
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF685
	.byte	0x5
	.uleb128 0x48
	.long	.LASF686
	.byte	0x5
	.uleb128 0x68
	.long	.LASF687
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF688
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_config.h.47.077b062f5006602e31a1f67a95751156,comdat
.Ldebug_macro34:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF690
	.byte	0x5
	.uleb128 0x33
	.long	.LASF691
	.byte	0x5
	.uleb128 0x35
	.long	.LASF692
	.byte	0x5
	.uleb128 0x38
	.long	.LASF693
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF694
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF695
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF696
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF697
	.byte	0x5
	.uleb128 0x40
	.long	.LASF698
	.byte	0x5
	.uleb128 0x41
	.long	.LASF699
	.byte	0x5
	.uleb128 0x42
	.long	.LASF700
	.byte	0x5
	.uleb128 0x43
	.long	.LASF701
	.byte	0x5
	.uleb128 0x44
	.long	.LASF702
	.byte	0x5
	.uleb128 0x45
	.long	.LASF703
	.byte	0x5
	.uleb128 0x46
	.long	.LASF704
	.byte	0x5
	.uleb128 0x47
	.long	.LASF705
	.byte	0x5
	.uleb128 0x48
	.long	.LASF706
	.byte	0x5
	.uleb128 0x49
	.long	.LASF707
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF708
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF709
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF710
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF711
	.byte	0x5
	.uleb128 0x52
	.long	.LASF712
	.byte	0x5
	.uleb128 0x53
	.long	.LASF713
	.byte	0x5
	.uleb128 0x54
	.long	.LASF714
	.byte	0x5
	.uleb128 0x55
	.long	.LASF715
	.byte	0x5
	.uleb128 0x56
	.long	.LASF716
	.byte	0x5
	.uleb128 0x58
	.long	.LASF717
	.byte	0x5
	.uleb128 0x59
	.long	.LASF718
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF719
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF720
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF721
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF722
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF723
	.byte	0x5
	.uleb128 0x60
	.long	.LASF724
	.byte	0x5
	.uleb128 0x61
	.long	.LASF725
	.byte	0x5
	.uleb128 0x62
	.long	.LASF726
	.byte	0x5
	.uleb128 0x63
	.long	.LASF727
	.byte	0x5
	.uleb128 0x64
	.long	.LASF728
	.byte	0x5
	.uleb128 0x67
	.long	.LASF729
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF730
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF731
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF732
	.byte	0x5
	.uleb128 0x74
	.long	.LASF733
	.byte	0x5
	.uleb128 0x75
	.long	.LASF734
	.byte	0x5
	.uleb128 0x78
	.long	.LASF735
	.byte	0x5
	.uleb128 0x79
	.long	.LASF736
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF737
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF738
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF739
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF740
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF741
	.byte	0x5
	.uleb128 0x80
	.long	.LASF742
	.byte	0x5
	.uleb128 0x82
	.long	.LASF743
	.byte	0x5
	.uleb128 0x84
	.long	.LASF744
	.byte	0x5
	.uleb128 0x86
	.long	.LASF745
	.byte	0x5
	.uleb128 0x87
	.long	.LASF746
	.byte	0x5
	.uleb128 0x88
	.long	.LASF747
	.byte	0x5
	.uleb128 0x89
	.long	.LASF748
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF749
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF750
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF751
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF752
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF753
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF754
	.byte	0x5
	.uleb128 0x90
	.long	.LASF755
	.byte	0x5
	.uleb128 0x91
	.long	.LASF756
	.byte	0x5
	.uleb128 0x92
	.long	.LASF757
	.byte	0x5
	.uleb128 0x93
	.long	.LASF758
	.byte	0x5
	.uleb128 0x94
	.long	.LASF759
	.byte	0x5
	.uleb128 0x95
	.long	.LASF760
	.byte	0x5
	.uleb128 0x96
	.long	.LASF761
	.byte	0x5
	.uleb128 0x97
	.long	.LASF762
	.byte	0x5
	.uleb128 0x98
	.long	.LASF763
	.byte	0x5
	.uleb128 0x99
	.long	.LASF764
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF765
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF766
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF767
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF768
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF769
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF770
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF771
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF772
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF773
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF774
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF775
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF776
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF777
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF778
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF779
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF780
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF781
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF782
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF783
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF784
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF785
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF786
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF787
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF788
	.byte	0x5
	.uleb128 0xff
	.long	.LASF789
	.byte	0x5
	.uleb128 0x107
	.long	.LASF790
	.byte	0x5
	.uleb128 0x109
	.long	.LASF791
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF792
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF793
	.byte	0x5
	.uleb128 0x110
	.long	.LASF794
	.byte	0x5
	.uleb128 0x111
	.long	.LASF795
	.byte	0x5
	.uleb128 0x112
	.long	.LASF796
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF797
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF798
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF799
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF800
	.byte	0x5
	.uleb128 0x120
	.long	.LASF801
	.byte	0x5
	.uleb128 0x121
	.long	.LASF802
	.byte	0x5
	.uleb128 0x122
	.long	.LASF803
	.byte	0x5
	.uleb128 0x123
	.long	.LASF804
	.byte	0x5
	.uleb128 0x124
	.long	.LASF805
	.byte	0x5
	.uleb128 0x125
	.long	.LASF806
	.byte	0x5
	.uleb128 0x126
	.long	.LASF807
	.byte	0x5
	.uleb128 0x127
	.long	.LASF808
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF809
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF810
	.byte	0x5
	.uleb128 0x130
	.long	.LASF811
	.byte	0x5
	.uleb128 0x132
	.long	.LASF812
	.byte	0x5
	.uleb128 0x135
	.long	.LASF813
	.byte	0x5
	.uleb128 0x136
	.long	.LASF814
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF815
	.byte	0x5
	.uleb128 0x146
	.long	.LASF816
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF817
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.23.5bb7b6dfdc756e2005a79269fe3f89c5,comdat
.Ldebug_macro35:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF818
	.byte	0x5
	.uleb128 0x34
	.long	.LASF819
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF820
	.byte	0x5
	.uleb128 0x42
	.long	.LASF821
	.byte	0x5
	.uleb128 0x47
	.long	.LASF822
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF823
	.byte	0x5
	.uleb128 0x51
	.long	.LASF824
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF825
	.byte	0x5
	.uleb128 0x63
	.long	.LASF826
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF827
	.byte	0x5
	.uleb128 0x81
	.long	.LASF828
	.byte	0x5
	.uleb128 0x82
	.long	.LASF829
	.byte	0x5
	.uleb128 0x83
	.long	.LASF830
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time.h.66.9d976b554b28e761bcb8c6783470326a,comdat
.Ldebug_macro36:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x42
	.long	.LASF831
	.byte	0x5
	.uleb128 0x45
	.long	.LASF832
	.byte	0x6
	.uleb128 0x52
	.long	.LASF833
	.byte	0x5
	.uleb128 0x56
	.long	.LASF834
	.byte	0x6
	.uleb128 0x5e
	.long	.LASF835
	.byte	0x5
	.uleb128 0x62
	.long	.LASF836
	.byte	0x6
	.uleb128 0x6a
	.long	.LASF837
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF838
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.7b49b621169e2007451b8fadbcc644ca,comdat
.Ldebug_macro37:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.187.12f6c32afb936b45a5f241219964ce93,comdat
.Ldebug_macro38:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF839
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF840
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF841
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF842
	.byte	0x5
	.uleb128 0xec
	.long	.LASF843
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF844
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF845
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.27.59e2586c75bdbcb991b248ad7257b993,comdat
.Ldebug_macro39:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF846
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.6f23eed7302c690ea7fa44a242ca26d6,comdat
.Ldebug_macro40:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x5
	.uleb128 0x107
	.long	.LASF847
	.byte	0x5
	.uleb128 0x108
	.long	.LASF848
	.byte	0x5
	.uleb128 0x109
	.long	.LASF849
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF850
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF851
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF852
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF853
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF854
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF855
	.byte	0x5
	.uleb128 0x110
	.long	.LASF856
	.byte	0x5
	.uleb128 0x111
	.long	.LASF857
	.byte	0x5
	.uleb128 0x112
	.long	.LASF858
	.byte	0x5
	.uleb128 0x113
	.long	.LASF859
	.byte	0x5
	.uleb128 0x114
	.long	.LASF860
	.byte	0x5
	.uleb128 0x115
	.long	.LASF861
	.byte	0x6
	.uleb128 0x122
	.long	.LASF862
	.byte	0x6
	.uleb128 0x157
	.long	.LASF863
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x192
	.long	.LASF494
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.37.1d8f9478a2b4385225b3cb11efc1dc9e,comdat
.Ldebug_macro41:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x25
	.long	.LASF864
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF865
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF866
	.byte	0x5
	.uleb128 0x80
	.long	.LASF867
	.byte	0x5
	.uleb128 0x85
	.long	.LASF868
	.byte	0x5
	.uleb128 0x86
	.long	.LASF869
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF870
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF871
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF872
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.d0197034aa5fd947cae140b9289e6734,comdat
.Ldebug_macro42:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF875
	.byte	0x5
	.uleb128 0x28
	.long	.LASF876
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF877
	.byte	0x5
	.uleb128 0x88
	.long	.LASF878
	.byte	0x5
	.uleb128 0x89
	.long	.LASF879
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF880
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF881
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF882
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF883
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF884
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF885
	.byte	0x6
	.uleb128 0x9e
	.long	.LASF886
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x6
	.uleb128 0x157
	.long	.LASF863
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x192
	.long	.LASF494
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF887
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.48e922dd0aaedfb616aafd8a7b7a4949,comdat
.Ldebug_macro43:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF888
	.byte	0x5
	.uleb128 0x20
	.long	.LASF889
	.byte	0x6
	.uleb128 0x22
	.long	.LASF583
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF890
	.byte	0x5
	.uleb128 0x30
	.long	.LASF891
	.byte	0x5
	.uleb128 0x31
	.long	.LASF892
	.byte	0x5
	.uleb128 0x33
	.long	.LASF893
	.byte	0x5
	.uleb128 0x35
	.long	.LASF894
	.byte	0x5
	.uleb128 0x68
	.long	.LASF895
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF896
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF897
	.byte	0x5
	.uleb128 0x71
	.long	.LASF898
	.byte	0x5
	.uleb128 0x74
	.long	.LASF899
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.23.8394011d5995a16f15d67d04e84a1d69,comdat
.Ldebug_macro44:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF900
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.158.a7efb00f6cbc6f43213b50e183c9830c,comdat
.Ldebug_macro45:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x9e
	.long	.LASF886
	.byte	0x6
	.uleb128 0xea
	.long	.LASF492
	.byte	0x6
	.uleb128 0x157
	.long	.LASF863
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x192
	.long	.LASF494
	.byte	0x6
	.uleb128 0x198
	.long	.LASF495
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF887
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.19.ff00c9c0f5e9f9a9719c5de76ace57b4,comdat
.Ldebug_macro46:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF903
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF904
	.byte	0x5
	.uleb128 0x20
	.long	.LASF905
	.byte	0x5
	.uleb128 0x21
	.long	.LASF906
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.41.27d650ce666b76881e2a2a218ea61984,comdat
.Ldebug_macro47:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF908
	.byte	0x5
	.uleb128 0x34
	.long	.LASF909
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string2.h.55.0bb081fd1d7ed43684369a4ce341483b,comdat
.Ldebug_macro48:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x37
	.long	.LASF910
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF911
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF912
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF913
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF914
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF915
	.byte	0x5
	.uleb128 0x310
	.long	.LASF916
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF917
	.byte	0x5
	.uleb128 0x349
	.long	.LASF918
	.byte	0x5
	.uleb128 0x364
	.long	.LASF919
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF920
	.byte	0x5
	.uleb128 0x380
	.long	.LASF921
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF922
	.byte	0x5
	.uleb128 0x3db
	.long	.LASF923
	.byte	0x5
	.uleb128 0x427
	.long	.LASF924
	.byte	0x5
	.uleb128 0x473
	.long	.LASF925
	.byte	0x5
	.uleb128 0x49c
	.long	.LASF926
	.byte	0x6
	.uleb128 0x52e
	.long	.LASF927
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string3.h.29.c6de584285784ba3f084efed949a576b,comdat
.Ldebug_macro49:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF928
	.byte	0x6
	.uleb128 0x1e
	.long	.LASF929
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF930
	.byte	0x6
	.uleb128 0x20
	.long	.LASF931
	.byte	0x6
	.uleb128 0x21
	.long	.LASF932
	.byte	0x6
	.uleb128 0x22
	.long	.LASF933
	.byte	0x6
	.uleb128 0x23
	.long	.LASF934
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.strings.h.19.a01f1f6ee761d4f7d4fd20752488c547,comdat
.Ldebug_macro50:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF935
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF473
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro51:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF938
	.byte	0x5
	.uleb128 0x22
	.long	.LASF939
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF940
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.52.d64d6f3836f089eea9a99c28bf03cbcd,comdat
.Ldebug_macro52:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x34
	.long	.LASF941
	.byte	0x5
	.uleb128 0x78
	.long	.LASF942
	.byte	0x5
	.uleb128 0x91
	.long	.LASF101
	.byte	0x5
	.uleb128 0x92
	.long	.LASF109
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF943
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF944
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF945
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF946
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF947
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF948
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF949
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF950
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF951
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF952
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF953
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF954
	.byte	0x5
	.uleb128 0xad
	.long	.LASF955
	.byte	0x5
	.uleb128 0xae
	.long	.LASF956
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF957
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF958
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF959
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF960
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF961
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF962
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF963
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF964
	.byte	0x5
	.uleb128 0xba
	.long	.LASF965
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF966
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF967
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF968
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF969
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF970
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF971
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF972
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF973
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF974
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF975
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF976
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF977
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF978
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF979
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF980
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF981
	.byte	0x5
	.uleb128 0xec
	.long	.LASF982
	.byte	0x5
	.uleb128 0xee
	.long	.LASF983
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF984
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF985
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF986
	.byte	0x5
	.uleb128 0x100
	.long	.LASF987
	.byte	0x5
	.uleb128 0x101
	.long	.LASF988
	.byte	0x5
	.uleb128 0x105
	.long	.LASF989
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF990
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF991
	.byte	0x5
	.uleb128 0x112
	.long	.LASF992
	.byte	0x5
	.uleb128 0x113
	.long	.LASF993
	.byte	0x5
	.uleb128 0x116
	.long	.LASF994
	.byte	0x5
	.uleb128 0x117
	.long	.LASF995
	.byte	0x5
	.uleb128 0x118
	.long	.LASF996
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF997
	.byte	0x5
	.uleb128 0x120
	.long	.LASF998
	.byte	0x5
	.uleb128 0x121
	.long	.LASF999
	.byte	0x5
	.uleb128 0x122
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF1003
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.40.9b4093ebb088b8f5e87bb4f79c8d9d5e,comdat
.Ldebug_macro53:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1015
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x52
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x73
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x82
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x87
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x88
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x92
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x98
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x99
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF1085
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1086
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF1087
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF1088
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF1089
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1090
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF1091
	.byte	0x5
	.uleb128 0xab
	.long	.LASF1092
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1093
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1094
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1095
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF1096
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1097
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF1098
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1099
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF1100
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1101
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF1102
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1103
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1104
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1105
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1106
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1107
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1108
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1109
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1110
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1111
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1112
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1113
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1114
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1115
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1116
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1117
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1118
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1119
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1120
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1121
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1122
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1123
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1124
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1125
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1126
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1127
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF1128
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1129
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1130
	.byte	0x5
	.uleb128 0xde
	.long	.LASF1131
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1132
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1133
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1134
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1135
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF1136
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1137
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1138
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF1139
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1140
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1141
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1142
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1143
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1144
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF1145
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF1146
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1147
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1148
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1149
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1150
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1151
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF1152
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF1153
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF1154
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x100
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x104
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x106
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x107
	.long	.LASF1161
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ctype.h.23.ed12862ac000549aee0bc9e37bfdb5a7,comdat
.Ldebug_macro54:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1167
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF1168
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1169
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1170
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1171
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1172
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1173
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1174
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1175
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1176
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1177
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1178
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1179
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1180
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF1181
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF1182
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iconv.h.19.6819a94130dd4dec607bcf1750799039,comdat
.Ldebug_macro55:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x16
	.long	.LASF473
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_stdinc.h.83.13296fe4d75cf435ed55c71b8f27bdcc,comdat
.Ldebug_macro56:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1190
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.alloca.h.19.edefa922a76c1cbaaf1e416903ba2d1c,comdat
.Ldebug_macro57:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x17
	.long	.LASF473
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.alloca.h.29.156e12058824cc23d961c4d3b13031f6,comdat
.Ldebug_macro58:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1193
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_stdinc.h.223.702a686f0823e4aa94dcd0633110c709,comdat
.Ldebug_macro59:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1194
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1195
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1196
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1197
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF1198
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x180
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1206
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_assert.h.40.08aa286bbdb2fc3e45d96a2b40c42153,comdat
.Ldebug_macro60:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1216
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF1217
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF1218
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF1219
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1220
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_atomic.h.126.5f6d20992a93a3c96e646be8ce838959,comdat
.Ldebug_macro61:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1222
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1223
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1224
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1225
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1226
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_error.h.52.dba3062a226035abcc91d7910b5f5de5,comdat
.Ldebug_macro62:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1231
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_endian.h.29.9292697d331323c7652f2eae100eb805,comdat
.Ldebug_macro63:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1235
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_endian.h.211.b82f826d6ec3f37e8c5587dfcd964fe5,comdat
.Ldebug_macro64:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1236
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1237
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1238
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1239
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1240
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1241
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1242
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1243
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_mutex.h.44.3fe9af3de1be47cedfc511aa738b0cc3,comdat
.Ldebug_macro65:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1248
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_rwops.h.42.8a8b0f0f879bc87a6a558c7c7ddeb0e9,comdat
.Ldebug_macro66:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1256
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1257
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF1258
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF1259
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1260
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1261
	.byte	0x5
	.uleb128 0xba
	.long	.LASF1262
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1263
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1264
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1265
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_audio.h.71.1086cdacf2fd7f284d4cccd68fff5546,comdat
.Ldebug_macro67:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1298
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF1301
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.xmmintrin.h.48.e659a3c7db01a7b4a891f9f2ede9f66f,comdat
.Ldebug_macro68:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x55
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x4cf
	.long	.LASF1330
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_pixels.h.45.e2151f3f337e7083c675a63413563660,comdat
.Ldebug_macro69:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1350
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_surface.h.52.d4a1e3ff1b3907f68d96991aa9419b7b,comdat
.Ldebug_macro70:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1358
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1359
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1362
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_video.h.117.3c5587f2447a19efddf474ac59372cf3,comdat
.Ldebug_macro71:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1370
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_keycode.h.44.d4a6972d1e68033bae4250e3bf30a79c,comdat
.Ldebug_macro72:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1379
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_mouse.h.203.6e4a8c659d292f73a6ad3bdcc781faa4,comdat
.Ldebug_macro73:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1381
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1382
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1383
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1384
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1385
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1386
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1387
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1388
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1389
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1390
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1391
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_joystick.h.191.1418dda843d30c5fe21ce469fa67d325,comdat
.Ldebug_macro74:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1393
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1394
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1395
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1396
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1397
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1398
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1399
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1400
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1401
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_quit.h.29.6213657b01679784368b43c2283fae44,comdat
.Ldebug_macro75:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1405
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_events.h.49.86ac9e0ee4952c5c98898d27aed84979,comdat
.Ldebug_macro76:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1410
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1411
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1412
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1413
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1414
	.byte	0x5
	.uleb128 0x2b2
	.long	.LASF1415
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1416
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1417
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_haptic.h.157.bdb7159fc6459d7b5914b16b82f307d5,comdat
.Ldebug_macro77:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1420
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF1421
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1422
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1423
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1424
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1425
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1426
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1427
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1428
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x100
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x107
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x126
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x142
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1438
	.byte	0x5
	.uleb128 0x158
	.long	.LASF1439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_hints.h.65.e0986f4810e26df9a8f02d5e87d34839,comdat
.Ldebug_macro78:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1441
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1442
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1443
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1444
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1445
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1446
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1447
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1448
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF1449
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1450
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1451
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1452
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1453
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1454
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1455
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1456
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1462
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1464
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF1465
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF1466
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_version.h.60.0c99a4ad068508d67ffd85e9fddcd39e,comdat
.Ldebug_macro79:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1477
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1478
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1479
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1483
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL.h.110.3b3c64d05f43d1975c89fbb67be2d240,comdat
.Ldebug_macro80:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1484
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x73
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1492
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.XError.h.2.2983f383177badfc3e80a4da7adeb1e2,comdat
.Ldebug_macro81:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1496
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1498
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1499
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1500
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1501
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1502
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1503
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1504
	.byte	0x5
	.uleb128 0x88
	.long	.LASF1505
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1506
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.XFlow.h.2.f9dbe948e5c87451fa0ba3a657ac81ce,comdat
.Ldebug_macro82:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x5
	.uleb128 0x4
	.long	.LASF1508
	.byte	0x5
	.uleb128 0x5
	.long	.LASF1509
	.byte	0x5
	.uleb128 0x6
	.long	.LASF1510
	.byte	0x5
	.uleb128 0x8
	.long	.LASF1511
	.byte	0x5
	.uleb128 0x9
	.long	.LASF1512
	.byte	0x5
	.uleb128 0xa
	.long	.LASF1513
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1514
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x21
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x27
	.long	.LASF1523
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF913:
	.string	"__bzero(s,n) __builtin_memset (s, '\\0', n)"
.LASF1763:
	.string	"SDL_SCANCODE_CANCEL"
.LASF889:
	.string	"_ANSI_STDARG_H_ "
.LASF462:
	.string	"MATH_ERREXCEPT 2"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF395:
	.string	"SHRT_MAX"
.LASF1192:
	.string	"alloca"
.LASF1032:
	.string	"PRIo8 \"o\""
.LASF1912:
	.string	"event"
.LASF775:
	.string	"SDL_LOADSO_DISABLED 1"
.LASF1217:
	.string	"SDL_assert(condition) SDL_disabled_assert(condition)"
.LASF1659:
	.string	"SDL_SCANCODE_RIGHTBRACKET"
.LASF1578:
	.string	"_unused2"
.LASF1976:
	.string	"caxis"
.LASF746:
	.string	"HAVE_M_PI "
.LASF1156:
	.string	"SCNxMAX __PRI64_PREFIX \"x\""
.LASF1695:
	.string	"SDL_SCANCODE_KP_DIVIDE"
.LASF688:
	.string	"SDL_FORCE_INLINE __attribute__((always_inline)) static __inline__"
.LASF856:
	.string	"_WCHAR_T_DEFINED "
.LASF390:
	.string	"CHAR_MIN SCHAR_MIN"
.LASF1564:
	.string	"_fileno"
.LASF396:
	.string	"SHRT_MAX __SHRT_MAX__"
.LASF2031:
	.string	"__func__"
.LASF1416:
	.string	"SDL_ENABLE 1"
.LASF1288:
	.string	"AUDIO_F32LSB 0x8120"
.LASF327:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF1220:
	.string	"SDL_assert_always(condition) SDL_enabled_assert(condition)"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF2018:
	.string	"Int2"
.LASF254:
	.string	"__STDC_ISO_10646__ 201103L"
.LASF1486:
	.string	"SDL_INIT_VIDEO 0x00000020"
.LASF267:
	.string	"__USE_POSIX199506"
.LASF815:
	.string	"SDL_POWER_LINUX 1"
.LASF128:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF503:
	.string	"__SQUAD_TYPE long int"
.LASF2082:
	.string	"XERR_CopyErrors"
.LASF1369:
	.string	"SDL_WINDOWPOS_CENTERED SDL_WINDOWPOS_CENTERED_DISPLAY(0)"
.LASF586:
	.string	"_IO_va_list __gnuc_va_list"
.LASF1082:
	.string	"PRIoMAX __PRI64_PREFIX \"o\""
.LASF1739:
	.string	"SDL_SCANCODE_VOLUMEUP"
.LASF1907:
	.string	"SDL_CommonEvent"
.LASF2081:
	.string	"SDL_GetError"
.LASF1182:
	.string	"toupper(c) __tobody (c, toupper, *__ctype_toupper_loc (), (c))"
.LASF1947:
	.string	"SDL_TouchFingerEvent"
.LASF419:
	.string	"HUGE_VALL (__builtin_huge_vall())"
.LASF311:
	.string	"__BEGIN_NAMESPACE_STD "
.LASF826:
	.string	"__pid_t_defined "
.LASF1457:
	.string	"SDL_HINT_XINPUT_ENABLED \"SDL_XINPUT_ENABLED\""
.LASF932:
	.string	"strcpy"
.LASF342:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF319:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF219:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF1129:
	.string	"SCNo16 \"ho\""
.LASF1331:
	.string	"_EMMINTRIN_H_INCLUDED "
.LASF938:
	.string	"_BITS_WCHAR_H 1"
.LASF1034:
	.string	"PRIo32 \"o\""
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF0:
	.string	"__STDC__ 1"
.LASF306:
	.string	"__STRING(x) #x"
.LASF232:
	.string	"__PCLMUL__ 1"
.LASF1031:
	.string	"PRIiFAST64 __PRI64_PREFIX \"i\""
.LASF354:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF1121:
	.string	"SCNuLEAST16 \"hu\""
.LASF1802:
	.string	"SDL_SCANCODE_KP_SPACE"
.LASF1176:
	.string	"ispunct(c) __isctype((c), _ISpunct)"
.LASF1354:
	.string	"SDL_SWSURFACE 0"
.LASF180:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF1426:
	.string	"SDL_HAPTIC_RAMP (1<<6)"
.LASF1603:
	.string	"SDL_WINDOW_HIDDEN"
.LASF1614:
	.string	"SDL_SCANCODE_UNKNOWN"
.LASF299:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF1472:
	.string	"_SDL_render_h "
.LASF1441:
	.string	"SDL_HINT_FRAMEBUFFER_ACCELERATION \"SDL_FRAMEBUFFER_ACCELERATION\""
.LASF1411:
	.string	"SDL_TEXTEDITINGEVENT_TEXT_SIZE (32)"
.LASF1489:
	.string	"SDL_INIT_GAMECONTROLLER 0x00002000"
.LASF142:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF339:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF1371:
	.string	"_SDL_keyboard_h "
.LASF1781:
	.string	"SDL_SCANCODE_KP_LEFTBRACE"
.LASF636:
	.string	"_IO_file_flags _flags"
.LASF1887:
	.string	"SDL_JOYBUTTONUP"
.LASF1966:
	.string	"common"
.LASF1558:
	.string	"_IO_buf_end"
.LASF1131:
	.string	"SCNo64 __PRI64_PREFIX \"o\""
.LASF221:
	.string	"__corei7__ 1"
.LASF1569:
	.string	"_shortbuf"
.LASF248:
	.string	"__ELF__ 1"
.LASF2003:
	.string	"errors"
.LASF152:
	.string	"__LDBL_DIG__ 18"
.LASF1128:
	.string	"SCNo8 \"hho\""
.LASF1060:
	.string	"PRIxLEAST8 \"x\""
.LASF18:
	.string	"__SIZEOF_LONG__ 8"
.LASF2074:
	.string	"SDL_LockTexture"
.LASF1130:
	.string	"SCNo32 \"o\""
.LASF764:
	.string	"HAVE_FSEEKO64 1"
.LASF257:
	.string	"_GCC_NEXT_LIMITS_H "
.LASF1953:
	.string	"dDist"
.LASF894:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF634:
	.string	"_IO_DONT_CLOSE 0100000"
.LASF1153:
	.string	"SCNiMAX __PRI64_PREFIX \"i\""
.LASF848:
	.string	"__WCHAR_T__ "
.LASF957:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF1870:
	.string	"SDL_APP_DIDENTERBACKGROUND"
.LASF864:
	.string	"_STDLIB_H 1"
.LASF1256:
	.string	"SDL_RWOPS_MEMORY_RO 5"
.LASF1825:
	.string	"SDL_SCANCODE_RALT"
.LASF583:
	.string	"__need___va_list"
.LASF231:
	.string	"__AES__ 1"
.LASF1209:
	.string	"SDL_ASSERT_LEVEL 1"
.LASF1133:
	.string	"SCNoLEAST16 \"ho\""
.LASF699:
	.string	"HAVE_STDARG_H 1"
.LASF1973:
	.string	"jhat"
.LASF386:
	.string	"SCHAR_MAX __SCHAR_MAX__"
.LASF649:
	.string	"_IO_flockfile(_fp) "
.LASF190:
	.string	"__STRICT_ANSI__ 1"
.LASF404:
	.string	"UINT_MAX (INT_MAX * 2U + 1U)"
.LASF1215:
	.string	"SDL_disabled_assert(condition) do { (void) sizeof ((condition)); } while (SDL_NULL_WHILE_LOOP_CONDITION)"
.LASF1339:
	.string	"SDL_DEFINE_PIXELFOURCC(A,B,C,D) SDL_FOURCC(A, B, C, D)"
.LASF149:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF1747:
	.string	"SDL_SCANCODE_INTERNATIONAL5"
.LASF325:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF1974:
	.string	"jbutton"
.LASF1111:
	.string	"SCNiLEAST64 __PRI64_PREFIX \"i\""
.LASF1041:
	.string	"PRIoFAST16 __PRIPTR_PREFIX \"o\""
.LASF1397:
	.string	"SDL_HAT_LEFT 0x08"
.LASF135:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1575:
	.string	"__pad4"
.LASF808:
	.string	"SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM 1"
.LASF1184:
	.string	"SDL_arraysize(array) (sizeof(array)/sizeof(array[0]))"
.LASF96:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF71:
	.string	"__INT_MAX__ 2147483647"
.LASF75:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF417:
	.string	"HUGE_VAL (__builtin_huge_val())"
.LASF173:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF548:
	.string	"__FD_SETSIZE 1024"
.LASF511:
	.string	"__STD_TYPE typedef"
.LASF159:
	.string	"__LDBL_MIN__ 3.36210314311209350626e-4932L"
.LASF400:
	.string	"INT_MIN (-INT_MAX - 1)"
.LASF1853:
	.string	"SDL_SCANCODE_APP1"
.LASF1826:
	.string	"SDL_SCANCODE_RGUI"
.LASF1854:
	.string	"SDL_SCANCODE_APP2"
.LASF651:
	.string	"_IO_ftrylockfile(_fp) "
.LASF1550:
	.string	"_flags"
.LASF1485:
	.string	"SDL_INIT_AUDIO 0x00000010"
.LASF933:
	.string	"strncat"
.LASF1688:
	.string	"SDL_SCANCODE_END"
.LASF1651:
	.string	"SDL_SCANCODE_RETURN"
.LASF416:
	.string	"_MATH_H 1"
.LASF1164:
	.string	"__isctype(c,type) ((*__ctype_b_loc ())[(int) (c)] & (unsigned short int) type)"
.LASF1442:
	.string	"SDL_HINT_RENDER_DRIVER \"SDL_RENDER_DRIVER\""
.LASF1071:
	.string	"PRIX64 __PRI64_PREFIX \"X\""
.LASF766:
	.string	"HAVE_SA_SIGACTION 1"
.LASF879:
	.string	"_T_PTRDIFF_ "
.LASF1712:
	.string	"SDL_SCANCODE_APPLICATION"
.LASF750:
	.string	"HAVE_ASIN 1"
.LASF945:
	.string	"INT32_MIN (-2147483647-1)"
.LASF500:
	.string	"__U32_TYPE unsigned int"
.LASF1265:
	.string	"SDL_RWclose(ctx) (ctx)->close(ctx)"
.LASF615:
	.string	"_IO_USER_LOCK 0x8000"
.LASF1795:
	.string	"SDL_SCANCODE_KP_GREATER"
.LASF1865:
	.string	"SDL_FIRSTEVENT"
.LASF1307:
	.string	"_MM_SHUFFLE(fp3,fp2,fp1,fp0) (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | (fp0))"
.LASF1087:
	.string	"PRIiPTR __PRIPTR_PREFIX \"i\""
.LASF1380:
	.string	"_SDL_mouse_h "
.LASF1520:
	.string	"BreakIf0(expr) DoIf0(expr, break)"
.LASF1098:
	.string	"SCNdLEAST32 \"d\""
.LASF2077:
	.string	"SDL_PollEvent"
.LASF540:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF613:
	.string	"_IO_IS_FILEBUF 0x2000"
.LASF658:
	.string	"SEEK_SET 0"
.LASF1462:
	.string	"SDL_HINT_VIDEO_HIGHDPI_DISABLED \"SDL_VIDEO_HIGHDPI_DISABLED\""
.LASF714:
	.string	"HAVE_REALLOC 1"
.LASF280:
	.string	"__USE_MISC"
.LASF451:
	.string	"FP_INFINITE 1"
.LASF2048:
	.string	"i_fact"
.LASF579:
	.string	"_IO_BUFSIZ _G_BUFSIZ"
.LASF82:
	.string	"__UINTMAX_MAX__ 18446744073709551615UL"
.LASF1094:
	.string	"SCNd32 \"d\""
.LASF1856:
	.string	"SDL_Scancode"
.LASF897:
	.string	"_VA_LIST_DEFINED "
.LASF179:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF823:
	.string	"__nlink_t_defined "
.LASF1723:
	.string	"SDL_SCANCODE_F21"
.LASF1448:
	.string	"SDL_HINT_VIDEO_X11_XVIDMODE \"SDL_VIDEO_X11_XVIDMODE\""
.LASF2011:
	.string	"height"
.LASF66:
	.string	"__INTPTR_TYPE__ long int"
.LASF847:
	.string	"__wchar_t__ "
.LASF223:
	.string	"__code_model_small__ 1"
.LASF598:
	.string	"_OLD_STDIO_MAGIC 0xFABC0000"
.LASF1570:
	.string	"_lock"
.LASF1190:
	.string	"SDL_COMPILE_TIME_ASSERT(name,x) typedef int SDL_dummy_ ## name[(x) * 2 - 1]"
.LASF737:
	.string	"HAVE_STRTOD 1"
.LASF269:
	.string	"__USE_XOPEN_EXTENDED"
.LASF1484:
	.string	"SDL_INIT_TIMER 0x00000001"
.LASF1027:
	.string	"PRIiLEAST64 __PRI64_PREFIX \"i\""
.LASF998:
	.string	"UINT8_C(c) c"
.LASF376:
	.string	"LLONG_MIN (-LLONG_MAX-1)"
.LASF693:
	.string	"HAVE_LIBC 1"
.LASF661:
	.string	"L_tmpnam 20"
.LASF520:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF782:
	.string	"SDL_INPUT_LINUXKD 1"
.LASF1476:
	.string	"_SDL_version_h "
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF1077:
	.string	"PRIXFAST16 __PRIPTR_PREFIX \"X\""
.LASF910:
	.string	"__STRING2_SMALL_GET16(src,idx) (((const unsigned char *) (const char *) (src))[idx + 1] << 8 | ((const unsigned char *) (const char *) (src))[idx])"
.LASF1039:
	.string	"PRIoLEAST64 __PRI64_PREFIX \"o\""
.LASF1455:
	.string	"SDL_HINT_ORIENTATIONS \"SDL_IOS_ORIENTATIONS\""
.LASF2090:
	.string	"/home/phao/projects/sdl/srend/Bezier2D"
.LASF743:
	.string	"HAVE_STRNCASECMP 1"
.LASF1070:
	.string	"PRIX32 \"X\""
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF1090:
	.string	"PRIxPTR __PRIPTR_PREFIX \"x\""
.LASF1388:
	.string	"SDL_BUTTON_MMASK SDL_BUTTON(SDL_BUTTON_MIDDLE)"
.LASF547:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF618:
	.string	"_IO_FLAGS2_USER_WBUF 8"
.LASF796:
	.string	"SDL_VIDEO_DRIVER_X11 1"
.LASF1590:
	.string	"uint32_t"
.LASF2009:
	.string	"texture"
.LASF833:
	.string	"__need_time_t"
.LASF1051:
	.string	"PRIuLEAST64 __PRI64_PREFIX \"u\""
.LASF1103:
	.string	"SCNdFAST64 __PRI64_PREFIX \"d\""
.LASF1345:
	.string	"SDL_BITSPERPIXEL(X) (((X) >> 8) & 0xFF)"
.LASF1101:
	.string	"SCNdFAST16 __PRIPTR_PREFIX \"d\""
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1833:
	.string	"SDL_SCANCODE_MEDIASELECT"
.LASF486:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1458:
	.string	"SDL_HINT_GAMECONTROLLERCONFIG \"SDL_GAMECONTROLLERCONFIG\""
.LASF1967:
	.string	"window"
.LASF1394:
	.string	"SDL_HAT_UP 0x01"
.LASF1364:
	.string	"SDL_WINDOWPOS_UNDEFINED_DISPLAY(X) (SDL_WINDOWPOS_UNDEFINED_MASK|(X))"
.LASF975:
	.string	"UINT_FAST8_MAX (255)"
.LASF1549:
	.string	"FILE"
.LASF839:
	.string	"__intN_t(N,MODE) typedef int int ##N ##_t __attribute__ ((__mode__ (MODE)))"
.LASF1367:
	.string	"SDL_WINDOWPOS_CENTERED_MASK 0x2FFF0000"
.LASF203:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF105:
	.string	"__UINT16_C(c) c"
.LASF1521:
	.string	"ContinueIf(cond) DoIf(cond, continue)"
.LASF208:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF434:
	.string	"_Mdouble_"
.LASF1585:
	.string	"int32_t"
.LASF771:
	.string	"HAVE_MPROTECT 1"
.LASF1199:
	.string	"SDL_zerop(x) SDL_memset((x), 0, sizeof(*(x)))"
.LASF695:
	.string	"HAVE_SYS_TYPES_H 1"
.LASF646:
	.string	"_IO_ferror_unlocked(__fp) (((__fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF1946:
	.string	"SDL_ControllerDeviceEvent"
.LASF457:
	.string	"isfinite(x) (sizeof (x) == sizeof (float) ? __finitef (x) : sizeof (x) == sizeof (double) ? __finite (x) : __finitel (x))"
.LASF1317:
	.string	"_MM_MASK_DENORM 0x0100"
.LASF1692:
	.string	"SDL_SCANCODE_DOWN"
.LASF1511:
	.string	"ReturnIf(cond,val) DoIf(cond, return (val))"
.LASF739:
	.string	"HAVE_ATOF 1"
.LASF858:
	.string	"___int_wchar_t_h "
.LASF1681:
	.string	"SDL_SCANCODE_PRINTSCREEN"
.LASF260:
	.string	"__USE_ISOC11"
.LASF88:
	.string	"__INT32_MAX__ 2147483647"
.LASF464:
	.string	"__NO_MATH_INLINES 1"
.LASF1086:
	.string	"PRIdPTR __PRIPTR_PREFIX \"d\""
.LASF891:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF1904:
	.string	"SDL_RENDER_TARGETS_RESET"
.LASF580:
	.string	"_IO_va_list _G_va_list"
.LASF67:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF1274:
	.string	"SDL_AUDIO_ISINT(x) (!SDL_AUDIO_ISFLOAT(x))"
.LASF1841:
	.string	"SDL_SCANCODE_AC_FORWARD"
.LASF619:
	.string	"_IO_SKIPWS 01"
.LASF928:
	.string	"memcpy"
.LASF899:
	.string	"__va_list__ "
.LASF1830:
	.string	"SDL_SCANCODE_AUDIOSTOP"
.LASF1771:
	.string	"SDL_SCANCODE_CRSEL"
.LASF680:
	.string	"_SDL_platform_h "
.LASF805:
	.string	"SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS 1"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF989:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF117:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615UL"
.LASF1306:
	.string	"_MM_MALLOC_H_INCLUDED "
.LASF702:
	.string	"HAVE_STRING_H 1"
.LASF1258:
	.string	"RW_SEEK_CUR 1"
.LASF1838:
	.string	"SDL_SCANCODE_AC_SEARCH"
.LASF729:
	.string	"HAVE_STRDUP 1"
.LASF1238:
	.string	"SDL_SwapLE64(X) (X)"
.LASF1229:
	.string	"SDL_OutOfMemory() SDL_Error(SDL_ENOMEM)"
.LASF631:
	.string	"_IO_FIXED 010000"
.LASF1453:
	.string	"SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS \"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS\""
.LASF1188:
	.string	"SDL_const_cast(type,expression) ((type)(expression))"
.LASF437:
	.string	"__MATH_PRECNAME"
.LASF1305:
	.string	"_XMMINTRIN_H_INCLUDED "
.LASF1384:
	.string	"SDL_BUTTON_RIGHT 3"
.LASF939:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF1727:
	.string	"SDL_SCANCODE_EXECUTE"
.LASF624:
	.string	"_IO_OCT 040"
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 32"
.LASF1933:
	.string	"clicks"
.LASF1016:
	.string	"PRIdFAST8 \"d\""
.LASF2084:
	.string	"__builtin_fwrite"
.LASF1713:
	.string	"SDL_SCANCODE_POWER"
.LASF1556:
	.string	"_IO_write_end"
.LASF379:
	.string	"_GCC_NEXT_LIMITS_H"
.LASF1117:
	.string	"SCNu16 \"hu\""
.LASF1223:
	.string	"SDL_MemoryBarrierRelease() SDL_CompilerBarrier()"
.LASF1996:
	.string	"XERR_String"
.LASF47:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF602:
	.string	"_IO_NO_READS 4"
.LASF34:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF967:
	.string	"INT_FAST8_MIN (-128)"
.LASF102:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF1773:
	.string	"SDL_SCANCODE_KP_00"
.LASF1515:
	.string	"GotoIf(cond,label) DoIf(cond, goto label)"
.LASF530:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF425:
	.string	"__MATHCALL(function,suffix,args) __MATHDECL (_Mdouble_,function,suffix, args)"
.LASF2035:
	.string	"y_sign"
.LASF329:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF2078:
	.string	"SDL_UnlockTexture"
.LASF479:
	.string	"_T_SIZE_ "
.LASF1797:
	.string	"SDL_SCANCODE_KP_DBLAMPERSAND"
.LASF804:
	.string	"SDL_VIDEO_DRIVER_X11_XVIDMODE 1"
.LASF1044:
	.string	"PRIu8 \"u\""
.LASF1827:
	.string	"SDL_SCANCODE_MODE"
.LASF2086:
	.string	"SDL_Quit"
.LASF95:
	.string	"__INT8_C(c) c"
.LASF362:
	.string	"__stub_chflags "
.LASF790:
	.string	"SDL_VIDEO_DRIVER_DUMMY 1"
.LASF1122:
	.string	"SCNuLEAST32 \"u\""
.LASF576:
	.string	"_IO_uid_t __uid_t"
.LASF1975:
	.string	"jdevice"
.LASF1768:
	.string	"SDL_SCANCODE_OUT"
.LASF1163:
	.string	"_ISbit(bit) ((bit) < 8 ? ((1 << (bit)) << 8) : ((1 << (bit)) >> 8))"
.LASF560:
	.string	"____mbstate_t_defined 1"
.LASF388:
	.string	"UCHAR_MAX (SCHAR_MAX * 2 + 1)"
.LASF2088:
	.ascii	"GNU C 4.8.2 -march=core-avx-i -mcx16 -msahf -mno-movbe -maes"
	.ascii	" -mpclmul -mpopcnt -mno-abm -mno-lwp -mno-fma -mno-fma4 -mno"
	.ascii	"-xop -mno-bmi -mno-bmi2 -mno-tbm -mavx -mno-avx2 -msse4.2 -m"
	.ascii	"sse4.1 -mno-lzcnt -mno"
	.string	"-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase -mno-rdseed -mno-prfchw -mno-adx -mfxsr -mxsave -mxsaveopt --param l1-cache-size=32 --param l1-cache-line-size=64 --param l2-cache-size=4096 -mtune=core-avx-i -masm=intel -g3 -O2 -std=c99 -ftree-vrp -fstack-protector"
.LASF127:
	.string	"__FLT_MAX_EXP__ 128"
.LASF565:
	.string	"_G_HAVE_MREMAP 1"
.LASF925:
	.string	"__strtok_r(s,sep,nextp) (__extension__ (__builtin_constant_p (sep) && __string2_1bptr_p (sep) && ((const char *) (sep))[0] != '\\0' && ((const char *) (sep))[1] == '\\0' ? __strtok_r_1c (s, ((const char *) (sep))[0], nextp) : __strtok_r (s, sep, nextp)))"
.LASF2034:
	.string	"x_sign"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF621:
	.string	"_IO_RIGHT 04"
.LASF371:
	.string	"__stub_setlogin "
.LASF1552:
	.string	"_IO_read_end"
.LASF672:
	.string	"__STDIO_INLINE"
.LASF1669:
	.string	"SDL_SCANCODE_F1"
.LASF1670:
	.string	"SDL_SCANCODE_F2"
.LASF1671:
	.string	"SDL_SCANCODE_F3"
.LASF1672:
	.string	"SDL_SCANCODE_F4"
.LASF1673:
	.string	"SDL_SCANCODE_F5"
.LASF1674:
	.string	"SDL_SCANCODE_F6"
.LASF1675:
	.string	"SDL_SCANCODE_F7"
.LASF1676:
	.string	"SDL_SCANCODE_F8"
.LASF1677:
	.string	"SDL_SCANCODE_F9"
.LASF1793:
	.string	"SDL_SCANCODE_KP_PERCENT"
.LASF2006:
	.string	"PIXEL_FORMAT"
.LASF138:
	.string	"__DBL_DIG__ 15"
.LASF1241:
	.string	"SDL_SwapBE32(X) SDL_Swap32(X)"
.LASF1007:
	.string	"__PRIPTR_PREFIX \"l\""
.LASF1150:
	.string	"SCNxFAST32 __PRIPTR_PREFIX \"x\""
.LASF1494:
	.string	"jErrLt0(EXPR,GOTO,MSG) do { if ((EXPR) < 0) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #EXPR); goto GOTO; } } while (0)"
.LASF426:
	.string	"__MATHDECL(type,function,suffix,args) __MATHDECL_1(type, function,suffix, args); __MATHDECL_1(type, __CONCAT(__,function),suffix, args)"
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF996:
	.string	"INT32_C(c) c"
.LASF824:
	.string	"__uid_t_defined "
.LASF1600:
	.string	"SDL_WINDOW_FULLSCREEN"
.LASF1356:
	.string	"SDL_RLEACCEL 0x00000002"
.LASF308:
	.string	"__long_double_t long double"
.LASF2096:
	.string	"__stack_chk_fail"
.LASF1822:
	.string	"SDL_SCANCODE_LGUI"
.LASF1089:
	.string	"PRIuPTR __PRIPTR_PREFIX \"u\""
.LASF1221:
	.string	"_SDL_atomic_h_ "
.LASF1228:
	.string	"_SDL_error_h "
.LASF430:
	.string	"_Mdouble_ double"
.LASF1355:
	.string	"SDL_PREALLOC 0x00000001"
.LASF745:
	.string	"HAVE_VSNPRINTF 1"
.LASF1522:
	.string	"ContinueLt0(expr) DoLt0(expr, continue)"
.LASF1232:
	.string	"_SDL_endian_h "
.LASF1970:
	.string	"wheel"
.LASF927:
	.string	"__STRING_INLINE"
.LASF1294:
	.string	"AUDIO_F32SYS AUDIO_F32LSB"
.LASF187:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1850:
	.string	"SDL_SCANCODE_KBDILLUMUP"
.LASF414:
	.string	"ULLONG_MAX"
.LASF748:
	.string	"HAVE_ATAN2 1"
.LASF1598:
	.string	"SDL_Rect"
.LASF393:
	.string	"SHRT_MIN"
.LASF1004:
	.string	"_GCC_WRAP_STDINT_H "
.LASF811:
	.string	"SDL_VIDEO_OPENGL 1"
.LASF290:
	.string	"__USE_FORTIFY_LEVEL 2"
.LASF157:
	.string	"__DECIMAL_DIG__ 21"
.LASF1499:
	.string	"jPErrIf(COND,LABEL) jErrIf(COND, LABEL, 0)"
.LASF512:
	.string	"_BITS_TYPESIZES_H 1"
.LASF1353:
	.string	"_SDL_blendmode_h "
.LASF1210:
	.string	"SDL_TriggerBreakpoint() __asm__ __volatile__ ( \"int $3\\n\\t\" )"
.LASF681:
	.string	"__LINUX__"
.LASF732:
	.string	"HAVE_STRSTR 1"
.LASF1194:
	.string	"SDL_stack_alloc(type,count) (type*)alloca(sizeof(type)*(count))"
.LASF1740:
	.string	"SDL_SCANCODE_VOLUMEDOWN"
.LASF1994:
	.string	"SDL_Renderer"
.LASF336:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF958:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF368:
	.string	"__stub_lchmod "
.LASF1836:
	.string	"SDL_SCANCODE_CALCULATOR"
.LASF194:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF849:
	.string	"_WCHAR_T "
.LASF1474:
	.string	"_SDL_timer_h "
.LASF567:
	.string	"_G_HAVE_ST_BLKSIZE defined (_STATBUF_ST_BLKSIZE)"
.LASF1072:
	.string	"PRIXLEAST8 \"X\""
.LASF1969:
	.string	"motion"
.LASF1095:
	.string	"SCNd64 __PRI64_PREFIX \"d\""
.LASF121:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF115:
	.string	"__UINT_FAST16_MAX__ 18446744073709551615UL"
.LASF224:
	.string	"__MMX__ 1"
.LASF239:
	.string	"__XSAVE__ 1"
.LASF1293:
	.string	"AUDIO_S32SYS AUDIO_S32LSB"
.LASF1971:
	.string	"jaxis"
.LASF564:
	.string	"_G_HAVE_MMAP 1"
.LASF1368:
	.string	"SDL_WINDOWPOS_CENTERED_DISPLAY(X) (SDL_WINDOWPOS_CENTERED_MASK|(X))"
.LASF1908:
	.string	"type"
.LASF1505:
	.string	"PErrIf(COND,VAL) ErrIf(COND, VAL, 0)"
.LASF1454:
	.string	"SDL_HINT_IDLE_TIMER_DISABLED \"SDL_IOS_IDLE_TIMER_DISABLED\""
.LASF92:
	.string	"__UINT32_MAX__ 4294967295U"
.LASF1948:
	.string	"touchId"
.LASF1608:
	.string	"SDL_WINDOW_INPUT_GRABBED"
.LASF140:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF686:
	.string	"SDLCALL "
.LASF1460:
	.string	"SDL_HINT_ALLOW_TOPMOST \"SDL_ALLOW_TOPMOST\""
.LASF870:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF2013:
	.string	"pixels"
.LASF1096:
	.string	"SCNdLEAST8 \"hhd\""
.LASF976:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF1113:
	.string	"SCNiFAST16 __PRIPTR_PREFIX \"i\""
.LASF126:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF1428:
	.string	"SDL_HAPTIC_DAMPER (1<<8)"
.LASF993:
	.string	"WINT_MAX (4294967295u)"
.LASF1211:
	.string	"SDL_FUNCTION __func__"
.LASF1019:
	.string	"PRIdFAST64 __PRI64_PREFIX \"d\""
.LASF1508:
	.string	"DoIf(cond,effect) if (cond) { effect; } else (void) 0"
.LASF1533:
	.string	"WRITE_PIXEL(x,y) do { if (flip == 0) WritePixel(s, (x)*x_sign, (y)*y_sign, color); else WritePixel(s, (y)*y_sign, (x)*x_sign, color); } while (0)"
.LASF382:
	.string	"CHAR_BIT __CHAR_BIT__"
.LASF137:
	.string	"__DBL_MANT_DIG__ 53"
.LASF1682:
	.string	"SDL_SCANCODE_SCROLLLOCK"
.LASF1927:
	.string	"SDL_MouseMotionEvent"
.LASF264:
	.string	"__USE_POSIX"
.LASF859:
	.string	"__INT_WCHAR_T_H "
.LASF363:
	.string	"__stub_fattach "
.LASF821:
	.string	"__gid_t_defined "
.LASF960:
	.string	"INT_LEAST16_MAX (32767)"
.LASF170:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF1890:
	.string	"SDL_CONTROLLERAXISMOTION"
.LASF575:
	.string	"_IO_pid_t __pid_t"
.LASF1052:
	.string	"PRIuFAST8 \"u\""
.LASF1698:
	.string	"SDL_SCANCODE_KP_PLUS"
.LASF1076:
	.string	"PRIXFAST8 \"X\""
.LASF1137:
	.string	"SCNoFAST16 __PRIPTR_PREFIX \"o\""
.LASF288:
	.string	"__USE_ISOC99 1"
.LASF1935:
	.string	"SDL_JoyAxisEvent"
.LASF1615:
	.string	"SDL_SCANCODE_A"
.LASF491:
	.string	"__size_t "
.LASF2071:
	.string	"SDL_CreateWindow"
.LASF974:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF1655:
	.string	"SDL_SCANCODE_SPACE"
.LASF1858:
	.string	"SDL_Keysym"
.LASF652:
	.string	"_IO_cleanup_region_start(_fct,_fp) "
.LASF322:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF227:
	.string	"__SSE3__ 1"
.LASF1955:
	.string	"padding"
.LASF792:
	.string	"SDL_VIDEO_DRIVER_WAYLAND_QT_TOUCH 1"
.LASF205:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1957:
	.string	"gestureId"
.LASF1631:
	.string	"SDL_SCANCODE_Q"
.LASF1160:
	.string	"SCNuPTR __PRIPTR_PREFIX \"u\""
.LASF1085:
	.string	"PRIXMAX __PRI64_PREFIX \"X\""
.LASF1563:
	.string	"_chain"
.LASF349:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF103:
	.string	"__UINT8_C(c) c"
.LASF822:
	.string	"__mode_t_defined "
.LASF784:
	.string	"SDL_JOYSTICK_LINUX 1"
.LASF1048:
	.string	"PRIuLEAST8 \"u\""
.LASF340:
	.string	"__wur __attribute_warn_unused_result__"
.LASF1783:
	.string	"SDL_SCANCODE_KP_TAB"
.LASF1283:
	.string	"AUDIO_U16 AUDIO_U16LSB"
.LASF1074:
	.string	"PRIXLEAST32 \"X\""
.LASF212:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1200:
	.string	"SDL_ICONV_ERROR (size_t)-1"
.LASF1357:
	.string	"SDL_DONTFREE 0x00000004"
.LASF741:
	.string	"HAVE_STRNCMP 1"
.LASF37:
	.string	"__INTMAX_TYPE__ long int"
.LASF716:
	.string	"HAVE_ALLOCA 1"
.LASF1818:
	.string	"SDL_SCANCODE_KP_HEXADECIMAL"
.LASF630:
	.string	"_IO_SCIENTIFIC 04000"
.LASF48:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF1989:
	.string	"SDL_RENDERER_PRESENTVSYNC"
.LASF1889:
	.string	"SDL_JOYDEVICEREMOVED"
.LASF1983:
	.string	"mgesture"
.LASF1538:
	.string	"unsigned char"
.LASF758:
	.string	"HAVE_POW 1"
.LASF924:
	.ascii	"strpbrk(s,accept) __extension__ ({ char __a0, __a1, __a2; (_"
	.ascii	"_builtin_constant_p (accept) && __string2_1bptr_p (accept) ?"
	.ascii	" ((__builtin_constant_p (s) && __string2_1bptr_p (s)) ? __bu"
	.ascii	"iltin_strpbrk (s, accept) : ((__a0 = ((const char *) (accept"
	.ascii	"))[0], __a0 == '\\0') ? ((void) (s), (char *) NULL) : ((__a1"
	.ascii	" = ((const char *) (accept))[1], __a1 == '\\0') ? __built"
	.string	"in_strchr (s, __a0) : ((__a2 = ((const char *) (accept))[2], __a2 == '\\0') ? __strpbrk_c2 (s, __a0, __a1) : (((const char *) (accept))[3] == '\\0' ? __strpbrk_c3 (s, __a0, __a1, __a2) : __builtin_strpbrk (s, accept)))))) : __builtin_strpbrk (s, accept)); })"
.LASF968:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF73:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF1487:
	.string	"SDL_INIT_JOYSTICK 0x00000200"
.LASF421:
	.string	"NAN (__builtin_nanf (\"\"))"
.LASF1504:
	.string	"ErrIf(COND,VAL,MSG) do { if (COND) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #COND); return (VAL); } } while (0)"
.LASF1736:
	.string	"SDL_SCANCODE_PASTE"
.LASF871:
	.string	"__malloc_and_calloc_defined "
.LASF669:
	.string	"getc(_fp) _IO_getc (_fp)"
.LASF1877:
	.string	"SDL_TEXTEDITING"
.LASF1875:
	.string	"SDL_KEYDOWN"
.LASF74:
	.string	"__WCHAR_MAX__ 2147483647"
.LASF798:
	.string	"SDL_VIDEO_DRIVER_X11_XINERAMA 1"
.LASF995:
	.string	"INT16_C(c) c"
.LASF514:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF124:
	.string	"__FLT_DIG__ 6"
.LASF1876:
	.string	"SDL_KEYUP"
.LASF832:
	.string	"__time_t_defined 1"
.LASF1535:
	.string	"float"
.LASF459:
	.string	"isnan(x) (sizeof (x) == sizeof (float) ? __isnanf (x) : sizeof (x) == sizeof (double) ? __isnan (x) : __isnanl (x))"
.LASF141:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1373:
	.string	"_SDL_scancode_h "
.LASF2094:
	.string	"video"
.LASF703:
	.string	"HAVE_STRINGS_H 1"
.LASF1261:
	.string	"SDL_RWseek(ctx,offset,whence) (ctx)->seek(ctx, offset, whence)"
.LASF1998:
	.string	"XERR_Error"
.LASF261:
	.string	"__USE_ISOC99"
.LASF2028:
	.string	"__fmt"
.LASF1693:
	.string	"SDL_SCANCODE_UP"
.LASF734:
	.string	"HAVE_STRTOUL 1"
.LASF1706:
	.string	"SDL_SCANCODE_KP_7"
.LASF111:
	.string	"__INT_FAST16_MAX__ 9223372036854775807L"
.LASF1979:
	.string	"quit"
.LASF448:
	.string	"__MATHDECL"
.LASF829:
	.string	"__need_timer_t "
.LASF1413:
	.string	"SDL_QUERY -1"
.LASF1141:
	.string	"SCNx16 \"hx\""
.LASF456:
	.string	"signbit(x) (sizeof (x) == sizeof (float) ? __signbitf (x) : sizeof (x) == sizeof (double) ? __signbit (x) : __signbitl (x))"
.LASF1694:
	.string	"SDL_SCANCODE_NUMLOCKCLEAR"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF1402:
	.string	"_SDL_gamecontroller_h "
.LASF183:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF1842:
	.string	"SDL_SCANCODE_AC_STOP"
.LASF1801:
	.string	"SDL_SCANCODE_KP_HASH"
.LASF878:
	.string	"_PTRDIFF_T "
.LASF919:
	.ascii	"__strcmp_cg(s1,s2,l1) (__extension__ ({ const unsigned char "
	.ascii	"*__s2 = (const unsigned char *) (const char *) (s2); int __r"
	.ascii	"esult = (((const unsigned char *) (const char *) (s1))[0] - "
	.ascii	"__s2[0]); if (l1 > 0 && __result == 0) { __result = (((const"
	.ascii	" unsigned char *) (co"
	.string	"nst char *) (s1))[1] - __s2[1]); if (l1 > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (s1))[2] - __s2[2]); if (l1 > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s1))[3] - __s2[3]); } } __result; }))"
.LASF358:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF1527:
	.string	"MAP_COLOR_RGB(r,g,b) ((~(Uint32)0 >> 8) & (((r) << 16) | ((g) << 8) | (b)))"
.LASF271:
	.string	"__USE_XOPEN2K"
.LASF394:
	.string	"SHRT_MIN (-SHRT_MAX - 1)"
.LASF2065:
	.string	"stderr"
.LASF1490:
	.string	"SDL_INIT_EVENTS 0x00004000"
.LASF302:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF247:
	.string	"__unix__ 1"
.LASF2015:
	.string	"rend"
.LASF918:
	.ascii	"__strcmp_cc(s1,s2,l) (__extension__ ({ int __result = (((con"
	.ascii	"st unsigned char *) (const char *) (s1))[0] - ((const unsign"
	.ascii	"ed char *) (const char *)(s2))[0]); if (l > 0 && __result =="
	.ascii	" 0) { __result = (((const unsigned char *) (const char *) (s"
	.ascii	"1))[1] - ((const unsigned char *) (const char *) (s2))[1]); "
	.ascii	"if (l > 1 && __result == 0) { __result = (((con"
	.string	"st unsigned char *) (const char *) (s1))[2] - ((const unsigned char *) (const char *) (s2))[2]); if (l > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s1))[3] - ((const unsigned char *) (const char *) (s2))[3]); } } __result; }))"
.LASF1218:
	.string	"SDL_assert_release(condition) SDL_enabled_assert(condition)"
.LASF1418:
	.string	"_SDL_filesystem_h "
.LASF1292:
	.string	"AUDIO_S16SYS AUDIO_S16LSB"
.LASF1435:
	.string	"SDL_HAPTIC_PAUSE (1<<15)"
.LASF1255:
	.string	"SDL_RWOPS_MEMORY 4"
.LASF1468:
	.string	"_SDL_log_h "
.LASF1873:
	.string	"SDL_WINDOWEVENT"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF1929:
	.string	"xrel"
.LASF1084:
	.string	"PRIxMAX __PRI64_PREFIX \"x\""
.LASF593:
	.string	"_IOS_TRUNC 16"
.LASF1597:
	.string	"SDL_Color"
.LASF415:
	.string	"ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL)"
.LASF143:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF1116:
	.string	"SCNu8 \"hhu\""
.LASF1008:
	.string	"PRId8 \"d\""
.LASF1033:
	.string	"PRIo16 \"o\""
.LASF1204:
	.string	"SDL_iconv_utf8_locale(S) SDL_iconv_string(\"\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF2080:
	.string	"__fprintf_chk"
.LASF461:
	.string	"MATH_ERRNO 1"
.LASF754:
	.string	"HAVE_COSF 1"
.LASF599:
	.string	"_IO_MAGIC_MASK 0xFFFF0000"
.LASF1080:
	.string	"PRIdMAX __PRI64_PREFIX \"d\""
.LASF608:
	.string	"_IO_IN_BACKUP 0x100"
.LASF717:
	.string	"HAVE_GETENV 1"
.LASF445:
	.string	"__MATH_PRECNAME(name,r) name ##l ##r"
.LASF84:
	.string	"__SIG_ATOMIC_MAX__ 2147483647"
.LASF1134:
	.string	"SCNoLEAST32 \"o\""
.LASF454:
	.string	"FP_NORMAL 4"
.LASF391:
	.string	"CHAR_MAX"
.LASF648:
	.string	"_IO_peekc(_fp) _IO_peekc_unlocked (_fp)"
.LASF1011:
	.string	"PRId64 __PRI64_PREFIX \"d\""
.LASF855:
	.string	"_WCHAR_T_DEFINED_ "
.LASF471:
	.string	"__MATH_INLINE __extern_always_inline"
.LASF522:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF2016:
	.string	"title"
.LASF36:
	.string	"__WINT_TYPE__ unsigned int"
.LASF1295:
	.string	"SDL_AUDIO_ALLOW_FREQUENCY_CHANGE 0x00000001"
.LASF557:
	.string	"_IO_STDIO_H "
.LASF301:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF315:
	.string	"__END_NAMESPACE_C99 "
.LASF1387:
	.string	"SDL_BUTTON_LMASK SDL_BUTTON(SDL_BUTTON_LEFT)"
.LASF1501:
	.string	"PErrLt0(EXPR) ErrLt0(EXPR, 0)"
.LASF770:
	.string	"HAVE_CLOCK_GETTIME 1"
.LASF1752:
	.string	"SDL_SCANCODE_LANG1"
.LASF1753:
	.string	"SDL_SCANCODE_LANG2"
.LASF1754:
	.string	"SDL_SCANCODE_LANG3"
.LASF1755:
	.string	"SDL_SCANCODE_LANG4"
.LASF300:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF1757:
	.string	"SDL_SCANCODE_LANG6"
.LASF1758:
	.string	"SDL_SCANCODE_LANG7"
.LASF1759:
	.string	"SDL_SCANCODE_LANG8"
.LASF1760:
	.string	"SDL_SCANCODE_LANG9"
.LASF950:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF961:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF353:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF123:
	.string	"__FLT_MANT_DIG__ 24"
.LASF366:
	.string	"__stub_getmsg "
.LASF1149:
	.string	"SCNxFAST16 __PRIPTR_PREFIX \"x\""
.LASF1154:
	.string	"SCNoMAX __PRI64_PREFIX \"o\""
.LASF1456:
	.string	"SDL_HINT_ACCELEROMETER_AS_JOYSTICK \"SDL_ACCELEROMETER_AS_JOYSTICK\""
.LASF110:
	.string	"__INT_FAST8_MAX__ 127"
.LASF1064:
	.string	"PRIxFAST8 \"x\""
.LASF1088:
	.string	"PRIoPTR __PRIPTR_PREFIX \"o\""
.LASF504:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF1613:
	.string	"SDL_WINDOW_ALLOW_HIGHDPI"
.LASF460:
	.string	"isinf(x) (sizeof (x) == sizeof (float) ? __isinff (x) : sizeof (x) == sizeof (double) ? __isinf (x) : __isinfl (x))"
.LASF1949:
	.string	"fingerId"
.LASF274:
	.string	"__USE_XOPEN2K8XSI"
.LASF550:
	.string	"__need_FILE "
.LASF1372:
	.string	"_SDL_keycode_h "
.LASF458:
	.string	"isnormal(x) (fpclassify (x) == FP_NORMAL)"
.LASF836:
	.string	"__timer_t_defined 1"
.LASF1756:
	.string	"SDL_SCANCODE_LANG5"
.LASF978:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF1872:
	.string	"SDL_APP_DIDENTERFOREGROUND"
.LASF2064:
	.string	"stdout"
.LASF582:
	.string	"__need___va_list "
.LASF1078:
	.string	"PRIXFAST32 __PRIPTR_PREFIX \"X\""
.LASF795:
	.string	"SDL_VIDEO_DRIVER_MIR_DYNAMIC_XKBCOMMON \"libxkbcommon.so.0\""
.LASF637:
	.string	"__HAVE_COLUMN "
.LASF1799:
	.string	"SDL_SCANCODE_KP_DBLVERTICALBAR"
.LASF857:
	.string	"_WCHAR_T_H "
.LASF168:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF113:
	.string	"__INT_FAST64_MAX__ 9223372036854775807L"
.LASF125:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF1798:
	.string	"SDL_SCANCODE_KP_VERTICALBAR"
.LASF1119:
	.string	"SCNu64 __PRI64_PREFIX \"u\""
.LASF1324:
	.string	"_MM_ROUND_DOWN 0x2000"
.LASF1399:
	.string	"SDL_HAT_RIGHTDOWN (SDL_HAT_RIGHT|SDL_HAT_DOWN)"
.LASF1819:
	.string	"SDL_SCANCODE_LCTRL"
.LASF1654:
	.string	"SDL_SCANCODE_TAB"
.LASF436:
	.string	"_Mdouble_END_NAMESPACE"
.LASF1689:
	.string	"SDL_SCANCODE_PAGEDOWN"
.LASF1214:
	.string	"SDL_NULL_WHILE_LOOP_CONDITION (0)"
.LASF78:
	.string	"__PTRDIFF_MAX__ 9223372036854775807L"
.LASF1466:
	.string	"SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES \"SDL_VIDEO_MAC_FULLSCREEN_SPACES\""
.LASF2005:
	.string	"DEFAULT_HEIGHT"
.LASF1778:
	.string	"SDL_SCANCODE_CURRENCYSUBUNIT"
.LASF122:
	.string	"__FLT_RADIX__ 2"
.LASF99:
	.string	"__INT32_C(c) c"
.LASF1869:
	.string	"SDL_APP_WILLENTERBACKGROUND"
.LASF1824:
	.string	"SDL_SCANCODE_RSHIFT"
.LASF1269:
	.string	"SDL_AUDIO_MASK_SIGNED (1<<15)"
.LASF1000:
	.string	"UINT32_C(c) c ## U"
.LASF355:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF1254:
	.string	"SDL_RWOPS_JNIFILE 3"
.LASF954:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF1816:
	.string	"SDL_SCANCODE_KP_OCTAL"
.LASF934:
	.string	"strncpy"
.LASF1009:
	.string	"PRId16 \"d\""
.LASF1696:
	.string	"SDL_SCANCODE_KP_MULTIPLY"
.LASF1243:
	.string	"SDL_SwapFloatBE(X) SDL_SwapFloat(X)"
.LASF1018:
	.string	"PRIdFAST32 __PRIPTR_PREFIX \"d\""
.LASF2095:
	.string	"fwrite"
.LASF1770:
	.string	"SDL_SCANCODE_CLEARAGAIN"
.LASF1846:
	.string	"SDL_SCANCODE_BRIGHTNESSUP"
.LASF1837:
	.string	"SDL_SCANCODE_COMPUTER"
.LASF895:
	.string	"_VA_LIST_ "
.LASF1978:
	.string	"cdevice"
.LASF1233:
	.string	"SDL_LIL_ENDIAN 1234"
.LASF181:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF946:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF79:
	.string	"__SIZE_MAX__ 18446744073709551615UL"
.LASF1920:
	.string	"repeat"
.LASF1710:
	.string	"SDL_SCANCODE_KP_PERIOD"
.LASF1995:
	.string	"SDL_Texture"
.LASF365:
	.string	"__stub_fdetach "
.LASF997:
	.string	"INT64_C(c) c ## L"
.LASF1605:
	.string	"SDL_WINDOW_RESIZABLE"
.LASF1829:
	.string	"SDL_SCANCODE_AUDIOPREV"
.LASF1281:
	.string	"AUDIO_U16MSB 0x1010"
.LASF1999:
	.string	"line"
.LASF171:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF285:
	.string	"__KERNEL_STRICT_NAMES"
.LASF872:
	.string	"__COMPAR_FN_T "
.LASF38:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF510:
	.string	"__U64_TYPE unsigned long int"
.LASF920:
	.string	"__strcmp_gc(s1,s2,l2) (- __strcmp_cg (s2, s1, l2))"
.LASF641:
	.string	"_IO_BE(expr,res) __builtin_expect ((expr), res)"
.LASF973:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF1606:
	.string	"SDL_WINDOW_MINIMIZED"
.LASF40:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF427:
	.string	"__MATHCALLX(function,suffix,args,attrib) __MATHDECLX (_Mdouble_,function,suffix, args, attrib)"
.LASF534:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF49:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF689:
	.string	"_begin_code_h"
.LASF240:
	.string	"__XSAVEOPT__ 1"
.LASF1697:
	.string	"SDL_SCANCODE_KP_MINUS"
.LASF626:
	.string	"_IO_SHOWBASE 0200"
.LASF1010:
	.string	"PRId32 \"d\""
.LASF375:
	.string	"MB_LEN_MAX 16"
.LASF276:
	.string	"__USE_LARGEFILE64"
.LASF842:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF1762:
	.string	"SDL_SCANCODE_SYSREQ"
.LASF341:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF1315:
	.string	"_MM_MASK_MASK 0x1f80"
.LASF16:
	.string	"__LP64__ 1"
.LASF1020:
	.string	"PRIi8 \"i\""
.LASF779:
	.string	"SDL_AUDIO_DRIVER_DUMMY 1"
.LASF498:
	.string	"__U16_TYPE unsigned short int"
.LASF387:
	.string	"UCHAR_MAX"
.LASF1383:
	.string	"SDL_BUTTON_MIDDLE 2"
.LASF1391:
	.string	"SDL_BUTTON_X2MASK SDL_BUTTON(SDL_BUTTON_X2)"
.LASF360:
	.string	"__USE_EXTERN_INLINES 1"
.LASF331:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF1482:
	.string	"SDL_COMPILEDVERSION SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL)"
.LASF1142:
	.string	"SCNx32 \"x\""
.LASF1942:
	.string	"SDL_JoyButtonEvent"
.LASF199:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF43:
	.string	"__INT16_TYPE__ short int"
.LASF286:
	.string	"__KERNEL_STRICT_NAMES "
.LASF552:
	.string	"__FILE_defined 1"
.LASF2054:
	.string	"DrawLoop"
.LASF645:
	.string	"_IO_feof_unlocked(__fp) (((__fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF488:
	.string	"___int_size_t_h "
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF222:
	.string	"__tune_corei7__ 1"
.LASF484:
	.string	"_SIZE_T_DEFINED_ "
.LASF1267:
	.string	"SDL_AUDIO_MASK_DATATYPE (1<<8)"
.LASF1958:
	.string	"error"
.LASF1544:
	.string	"size_t"
.LASF1729:
	.string	"SDL_SCANCODE_MENU"
.LASF1941:
	.string	"SDL_JoyHatEvent"
.LASF158:
	.string	"__LDBL_MAX__ 1.18973149535723176502e+4932L"
.LASF776:
	.string	"SDL_AUDIO_DRIVER_ALSA 1"
.LASF1152:
	.string	"SCNdMAX __PRI64_PREFIX \"d\""
.LASF536:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1588:
	.string	"uint8_t"
.LASF1311:
	.string	"_MM_EXCEPT_DIV_ZERO 0x0004"
.LASF116:
	.string	"__UINT_FAST32_MAX__ 18446744073709551615UL"
.LASF195:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 1"
.LASF364:
	.string	"__stub_fchflags "
.LASF1985:
	.string	"drop"
.LASF789:
	.string	"SDL_TIMER_UNIX 1"
.LASF1376:
	.string	"KMOD_CTRL (KMOD_LCTRL|KMOD_RCTRL)"
.LASF6:
	.string	"__VERSION__ \"4.8.2\""
.LASF1737:
	.string	"SDL_SCANCODE_FIND"
.LASF502:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF493:
	.string	"NULL"
.LASF258:
	.string	"_LIBC_LIMITS_H_ 1"
.LASF1860:
	.string	"unused"
.LASF268:
	.string	"__USE_XOPEN"
.LASF1186:
	.string	"SDL_reinterpret_cast(type,expression) ((type)(expression))"
.LASF606:
	.string	"_IO_DELETE_DONT_CLOSE 0x40"
.LASF1817:
	.string	"SDL_SCANCODE_KP_DECIMAL"
.LASF1266:
	.string	"SDL_AUDIO_MASK_BITSIZE (0xFF)"
.LASF820:
	.string	"__dev_t_defined "
.LASF351:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF209:
	.string	"__SSP__ 1"
.LASF1594:
	.string	"Sint32"
.LASF860:
	.string	"_GCC_WCHAR_T "
.LASF1612:
	.string	"SDL_WINDOW_FOREIGN"
.LASF1313:
	.string	"_MM_EXCEPT_UNDERFLOW 0x0010"
.LASF1931:
	.string	"SDL_MouseButtonEvent"
.LASF89:
	.string	"__INT64_MAX__ 9223372036854775807L"
.LASF515:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF1742:
	.string	"SDL_SCANCODE_KP_EQUALSAS400"
.LASF837:
	.string	"__need_timer_t"
.LASF506:
	.string	"__UWORD_TYPE unsigned long int"
.LASF941:
	.string	"__uint32_t_defined "
.LASF953:
	.string	"UINT32_MAX (4294967295U)"
.LASF555:
	.string	"__need___FILE"
.LASF1104:
	.string	"SCNi8 \"hhi\""
.LASF1451:
	.string	"SDL_HINT_GRAB_KEYBOARD \"SDL_GRAB_KEYBOARD\""
.LASF1559:
	.string	"_IO_save_base"
.LASF357:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF409:
	.string	"ULONG_MAX"
.LASF1690:
	.string	"SDL_SCANCODE_RIGHT"
.LASF936:
	.string	"_INTTYPES_H 1"
.LASF890:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF1891:
	.string	"SDL_CONTROLLERBUTTONDOWN"
.LASF678:
	.string	"_SDL_stdinc_h "
.LASF1443:
	.string	"SDL_HINT_RENDER_OPENGL_SHADERS \"SDL_RENDER_OPENGL_SHADERS\""
.LASF1893:
	.string	"SDL_CONTROLLERDEVICEADDED"
.LASF1815:
	.string	"SDL_SCANCODE_KP_BINARY"
.LASF153:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF1523:
	.string	"ContinueIf0(expr) DoIf0(expr, continue)"
.LASF834:
	.string	"__clockid_t_defined 1"
.LASF862:
	.string	"_BSD_WCHAR_T_"
.LASF2050:
	.string	"t_power"
.LASF278:
	.string	"__USE_BSD"
.LASF207:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF482:
	.string	"_SIZE_T_ "
.LASF595:
	.string	"_IOS_NOREPLACE 64"
.LASF220:
	.string	"__corei7 1"
.LASF801:
	.string	"SDL_VIDEO_DRIVER_X11_XRANDR 1"
.LASF2092:
	.string	"Cleanup"
.LASF470:
	.string	"isunordered(u,v) __builtin_isunordered(u, v)"
.LASF1968:
	.string	"edit"
.LASF492:
	.string	"__need_size_t"
.LASF1555:
	.string	"_IO_write_ptr"
.LASF1839:
	.string	"SDL_SCANCODE_AC_HOME"
.LASF1988:
	.string	"SDL_RENDERER_ACCELERATED"
.LASF1079:
	.string	"PRIXFAST64 __PRI64_PREFIX \"X\""
.LASF760:
	.string	"HAVE_SIN 1"
.LASF2052:
	.string	"back_n"
.LASF727:
	.string	"HAVE_MEMCMP 1"
.LASF402:
	.string	"INT_MAX __INT_MAX__"
.LASF638:
	.string	"_IO_stdin ((_IO_FILE*)(&_IO_2_1_stdin_))"
.LASF1936:
	.string	"axis"
.LASF875:
	.string	"_STDDEF_H "
.LASF182:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF1263:
	.string	"SDL_RWread(ctx,ptr,size,n) (ctx)->read(ctx, ptr, size, n)"
.LASF988:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF45:
	.string	"__INT64_TYPE__ long int"
.LASF1725:
	.string	"SDL_SCANCODE_F23"
.LASF1765:
	.string	"SDL_SCANCODE_PRIOR"
.LASF1059:
	.string	"PRIx64 __PRI64_PREFIX \"x\""
.LASF136:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1960:
	.string	"file"
.LASF731:
	.string	"HAVE_STRRCHR 1"
.LASF1135:
	.string	"SCNoLEAST64 __PRI64_PREFIX \"o\""
.LASF1165:
	.string	"__isascii(c) (((c) & ~0x7f) == 0)"
.LASF2033:
	.string	"DrawLine_Bresenham"
.LASF1003:
	.string	"UINTMAX_C(c) c ## UL"
.LASF270:
	.string	"__USE_UNIX98"
.LASF1963:
	.string	"code"
.LASF578:
	.string	"_IO_HAVE_ST_BLKSIZE _G_HAVE_ST_BLKSIZE"
.LASF2058:
	.string	"ReportError"
.LASF809:
	.string	"SDL_VIDEO_RENDER_OGL 1"
.LASF1984:
	.string	"dgesture"
.LASF1392:
	.string	"_SDL_joystick_h "
.LASF440:
	.string	"__MATH_PRECNAME(name,r) name ##f ##r"
.LASF305:
	.string	"__CONCAT(x,y) x ## y"
.LASF1480:
	.string	"SDL_VERSION(x) { (x)->major = SDL_MAJOR_VERSION; (x)->minor = SDL_MINOR_VERSION; (x)->patch = SDL_PATCHLEVEL; }"
.LASF1343:
	.string	"SDL_PIXELORDER(X) (((X) >> 20) & 0x0F)"
.LASF632:
	.string	"_IO_UNITBUF 020000"
.LASF1461:
	.string	"SDL_HINT_TIMER_RESOLUTION \"SDL_TIMER_RESOLUTION\""
.LASF1202:
	.string	"SDL_ICONV_EILSEQ (size_t)-3"
.LASF2004:
	.string	"DEFAULT_WIDTH"
.LASF1730:
	.string	"SDL_SCANCODE_SELECT"
.LASF1136:
	.string	"SCNoFAST8 \"hho\""
.LASF367:
	.string	"__stub_gtty "
.LASF1532:
	.string	"VIDEO_SCREEN_INIT_EMPTY {0, 0, 0, SCREEN_INIT_ZERO}"
.LASF1396:
	.string	"SDL_HAT_DOWN 0x04"
.LASF2024:
	.string	"ClearScreen"
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF546:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1832:
	.string	"SDL_SCANCODE_AUDIOMUTE"
.LASF617:
	.string	"_IO_FLAGS2_NOTCANCEL 2"
.LASF633:
	.string	"_IO_STDIO 040000"
.LASF914:
	.string	"strchr(s,c) (__extension__ (__builtin_constant_p (c) && !__builtin_constant_p (s) && (c) == '\\0' ? (char *) __rawmemchr (s, c) : __builtin_strchr (s, c)))"
.LASF1407:
	.string	"_SDL_touch_h "
.LASF1246:
	.string	"SDL_MUTEX_MAXWAIT (~(Uint32)0)"
.LASF487:
	.string	"_SIZE_T_DECLARED "
.LASF1340:
	.string	"SDL_DEFINE_PIXELFORMAT(type,order,layout,bits,bytes) ((1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | ((bits) << 8) | ((bytes) << 0))"
.LASF1828:
	.string	"SDL_SCANCODE_AUDIONEXT"
.LASF1581:
	.string	"_next"
.LASF1991:
	.string	"SDL_TEXTUREACCESS_STATIC"
.LASF905:
	.string	"__BIG_ENDIAN 4321"
.LASF1207:
	.string	"C_LINKAGE "
.LASF1806:
	.string	"SDL_SCANCODE_KP_MEMRECALL"
.LASF955:
	.string	"INT_LEAST8_MIN (-128)"
.LASF573:
	.string	"_IO_off_t __off_t"
.LASF694:
	.string	"HAVE_ALLOCA_H 1"
.LASF1342:
	.string	"SDL_PIXELTYPE(X) (((X) >> 24) & 0x0F)"
.LASF676:
	.string	"_SDL_H "
.LASF1459:
	.string	"SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS \"SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS\""
.LASF1786:
	.string	"SDL_SCANCODE_KP_B"
.LASF1479:
	.string	"SDL_PATCHLEVEL 2"
.LASF682:
	.string	"__LINUX__ 1"
.LASF413:
	.string	"LLONG_MAX"
.LASF1001:
	.string	"UINT64_C(c) c ## UL"
.LASF1510:
	.string	"DoIf0(expr,effect) DoIf(!(expr), effect)"
.LASF1683:
	.string	"SDL_SCANCODE_PAUSE"
.LASF956:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF1148:
	.string	"SCNxFAST8 \"hhx\""
.LASF1909:
	.string	"timestamp"
.LASF346:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF2073:
	.string	"SDL_CreateTexture"
.LASF1650:
	.string	"SDL_SCANCODE_0"
.LASF1641:
	.string	"SDL_SCANCODE_1"
.LASF1642:
	.string	"SDL_SCANCODE_2"
.LASF1643:
	.string	"SDL_SCANCODE_3"
.LASF1644:
	.string	"SDL_SCANCODE_4"
.LASF1645:
	.string	"SDL_SCANCODE_5"
.LASF1646:
	.string	"SDL_SCANCODE_6"
.LASF1647:
	.string	"SDL_SCANCODE_7"
.LASF1648:
	.string	"SDL_SCANCODE_8"
.LASF1649:
	.string	"SDL_SCANCODE_9"
.LASF559:
	.string	"__need_mbstate_t "
.LASF144:
	.string	"__DBL_MAX__ ((double)1.79769313486231570815e+308L)"
.LASF1937:
	.string	"value"
.LASF845:
	.string	"__fsfilcnt_t_defined "
.LASF1616:
	.string	"SDL_SCANCODE_B"
.LASF1617:
	.string	"SDL_SCANCODE_C"
.LASF1618:
	.string	"SDL_SCANCODE_D"
.LASF1619:
	.string	"SDL_SCANCODE_E"
.LASF1620:
	.string	"SDL_SCANCODE_F"
.LASF1621:
	.string	"SDL_SCANCODE_G"
.LASF1622:
	.string	"SDL_SCANCODE_H"
.LASF1623:
	.string	"SDL_SCANCODE_I"
.LASF1624:
	.string	"SDL_SCANCODE_J"
.LASF1625:
	.string	"SDL_SCANCODE_K"
.LASF1626:
	.string	"SDL_SCANCODE_L"
.LASF1627:
	.string	"SDL_SCANCODE_M"
.LASF1628:
	.string	"SDL_SCANCODE_N"
.LASF1629:
	.string	"SDL_SCANCODE_O"
.LASF1630:
	.string	"SDL_SCANCODE_P"
.LASF130:
	.string	"__FLT_MAX__ 3.40282346638528859812e+38F"
.LASF1632:
	.string	"SDL_SCANCODE_R"
.LASF1633:
	.string	"SDL_SCANCODE_S"
.LASF1634:
	.string	"SDL_SCANCODE_T"
.LASF1635:
	.string	"SDL_SCANCODE_U"
.LASF1636:
	.string	"SDL_SCANCODE_V"
.LASF1637:
	.string	"SDL_SCANCODE_W"
.LASF1638:
	.string	"SDL_SCANCODE_X"
.LASF1639:
	.string	"SDL_SCANCODE_Y"
.LASF1640:
	.string	"SDL_SCANCODE_Z"
.LASF291:
	.string	"__GNU_LIBRARY__"
.LASF622:
	.string	"_IO_INTERNAL 010"
.LASF1349:
	.string	"SDL_ISPIXELFORMAT_FOURCC(format) ((format) && (SDL_PIXELFLAG(format) != 1))"
.LASF1516:
	.string	"GotoLt0(expr,label) DoLt0(cond, goto label)"
.LASF963:
	.string	"UINT_LEAST8_MAX (255)"
.LASF786:
	.string	"SDL_LOADSO_DLOPEN 1"
.LASF1439:
	.string	"SDL_HAPTIC_INFINITY 4294967295U"
.LASF592:
	.string	"_IOS_APPEND 8"
.LASF1433:
	.string	"SDL_HAPTIC_AUTOCENTER (1<<13)"
.LASF656:
	.string	"_IONBF 2"
.LASF1906:
	.string	"SDL_LASTEVENT"
.LASF590:
	.string	"_IOS_OUTPUT 2"
.LASF1329:
	.string	"_MM_FLUSH_ZERO_OFF 0x0000"
.LASF952:
	.string	"UINT16_MAX (65535)"
.LASF757:
	.string	"HAVE_LOG 1"
.LASF1405:
	.string	"SDL_QuitRequested() (SDL_PumpEvents(), (SDL_PeepEvents(NULL,0,SDL_PEEKEVENT,SDL_QUIT,SDL_QUIT) > 0))"
.LASF749:
	.string	"HAVE_ACOS 1"
.LASF1198:
	.string	"SDL_zero(x) SDL_memset(&(x), 0, sizeof((x)))"
.LASF2022:
	.string	"Factorial"
.LASF1857:
	.string	"SDL_Keycode"
.LASF965:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF326:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF2083:
	.string	"fprintf"
.LASF2020:
	.string	"GetPixel"
.LASF2019:
	.string	"RowPixels"
.LASF662:
	.string	"TMP_MAX 238328"
.LASF1780:
	.string	"SDL_SCANCODE_KP_RIGHTPAREN"
.LASF1821:
	.string	"SDL_SCANCODE_LALT"
.LASF1813:
	.string	"SDL_SCANCODE_KP_CLEAR"
.LASF2044:
	.string	"n_fact"
.LASF2012:
	.string	"pitch"
.LASF407:
	.string	"LONG_MAX"
.LASF250:
	.string	"NDEBUG 1"
.LASF705:
	.string	"HAVE_STDINT_H 1"
.LASF551:
	.string	"__need___FILE "
.LASF406:
	.string	"LONG_MIN (-LONG_MAX - 1L)"
.LASF1213:
	.string	"SDL_LINE __LINE__"
.LASF756:
	.string	"HAVE_FLOOR 1"
.LASF1905:
	.string	"SDL_USEREVENT"
.LASF297:
	.string	"__PMT"
.LASF373:
	.string	"__stub_sstk "
.LASF861:
	.string	"_WCHAR_T_DECLARED "
.LASF1900:
	.string	"SDL_DOLLARRECORD"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF68:
	.string	"__GXX_ABI_VERSION 1002"
.LASF916:
	.string	"strncat(dest,src,n) __builtin_strncat (dest, src, n)"
.LASF1665:
	.string	"SDL_SCANCODE_COMMA"
.LASF2087:
	.string	"XERR_ClearInternalSequence"
.LASF983:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF1333:
	.string	"SDL_CACHELINE_SIZE 128"
.LASF1370:
	.string	"SDL_WINDOWPOS_ISCENTERED(X) (((X)&0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK)"
.LASF1514:
	.string	"ReturnMeLt0(expr) if (1) { int X_FLOW_test = (expr); if (X_FLOW_test < 0) return X_FLOW_test; } else (void) 0"
.LASF841:
	.string	"__int8_t_defined "
.LASF1881:
	.string	"SDL_MOUSEBUTTONUP"
.LASF1952:
	.string	"dTheta"
.LASF806:
	.string	"SDL_VIDEO_DRIVER_X11_CONST_PARAM_XDATA32 1"
.LASF785:
	.string	"SDL_HAPTIC_LINUX 1"
.LASF1884:
	.string	"SDL_JOYBALLMOTION"
.LASF901:
	.string	"_STRING_ARCH_unaligned 1"
.LASF2047:
	.string	"t_compl_inverse_ish"
.LASF768:
	.string	"HAVE_NANOSLEEP 1"
.LASF1251:
	.string	"SDL_RWOPS_UNKNOWN 0"
.LASF1002:
	.string	"INTMAX_C(c) c ## L"
.LASF650:
	.string	"_IO_funlockfile(_fp) "
.LASF628:
	.string	"_IO_UPPERCASE 01000"
.LASF670:
	.string	"putc(_ch,_fp) _IO_putc (_ch, _fp)"
.LASF1350:
	.string	"SDL_Colour SDL_Color"
.LASF1774:
	.string	"SDL_SCANCODE_KP_000"
.LASF609:
	.string	"_IO_LINE_BUF 0x200"
.LASF361:
	.string	"__stub_bdflush "
.LASF410:
	.string	"ULONG_MAX (LONG_MAX * 2UL + 1UL)"
.LASF1477:
	.string	"SDL_MAJOR_VERSION 2"
.LASF1338:
	.string	"SDL_ALPHA_TRANSPARENT 0"
.LASF1118:
	.string	"SCNu32 \"u\""
.LASF1106:
	.string	"SCNi32 \"i\""
.LASF825:
	.string	"__off_t_defined "
.LASF132:
	.string	"__FLT_EPSILON__ 1.19209289550781250000e-7F"
.LASF345:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1332:
	.string	"_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))"
.LASF1235:
	.string	"SDL_BYTEORDER __BYTE_ORDER"
.LASF2066:
	.string	"SDL_DestroyTexture"
.LASF226:
	.string	"__SSE2__ 1"
.LASF797:
	.string	"SDL_VIDEO_DRIVER_X11_XCURSOR 1"
.LASF501:
	.string	"__SLONGWORD_TYPE long int"
.LASF411:
	.string	"LLONG_MIN"
.LASF1855:
	.string	"SDL_NUM_SCANCODES"
.LASF2043:
	.string	"interval_length"
.LASF1962:
	.string	"SDL_UserEvent"
.LASF211:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF2025:
	.string	"fact"
.LASF2027:
	.string	"__stream"
.LASF120:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF283:
	.string	"__USE_REENTRANT"
.LASF293:
	.string	"__GLIBC__ 2"
.LASF77:
	.string	"__WINT_MIN__ 0U"
.LASF969:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF949:
	.string	"INT32_MAX (2147483647)"
.LASF853:
	.string	"_WCHAR_T_ "
.LASF585:
	.string	"_IO_va_list"
.LASF1178:
	.string	"isupper(c) __isctype((c), _ISupper)"
.LASF1545:
	.string	"__off_t"
.LASF1666:
	.string	"SDL_SCANCODE_PERIOD"
.LASF1531:
	.string	"SCREEN_INIT_ZERO {0, 0, 0, 0, 0}"
.LASF1395:
	.string	"SDL_HAT_RIGHT 0x02"
.LASF709:
	.string	"HAVE_SIGNAL_H 1"
.LASF1318:
	.string	"_MM_MASK_DIV_ZERO 0x0200"
.LASF303:
	.string	"__P(args) args"
.LASF1151:
	.string	"SCNxFAST64 __PRI64_PREFIX \"x\""
.LASF660:
	.string	"SEEK_END 2"
.LASF553:
	.string	"__need_FILE"
.LASF1792:
	.string	"SDL_SCANCODE_KP_POWER"
.LASF981:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF959:
	.string	"INT_LEAST8_MAX (127)"
.LASF607:
	.string	"_IO_LINKED 0x80"
.LASF1173:
	.string	"islower(c) __isctype((c), _ISlower)"
.LASF478:
	.string	"_SYS_SIZE_T_H "
.LASF526:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF133:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092e-45F"
.LASF930:
	.string	"memset"
.LASF439:
	.string	"_Mdouble_ _Mfloat_"
.LASF1189:
	.ascii	"SDL_FOURCC(A,"
	.string	"B,C,D) ((SDL_static_cast(Uint32, SDL_static_cast(Uint8, (A))) << 0) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (B))) << 8) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (C))) << 16) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (D))) << 24))"
.LASF1902:
	.string	"SDL_CLIPBOARDUPDATE"
.LASF216:
	.string	"__x86_64 1"
.LASF1447:
	.string	"SDL_HINT_VIDEO_ALLOW_SCREENSAVER \"SDL_VIDEO_ALLOW_SCREENSAVER\""
.LASF408:
	.string	"LONG_MAX __LONG_MAX__"
.LASF1366:
	.string	"SDL_WINDOWPOS_ISUNDEFINED(X) (((X)&0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK)"
.LASF1067:
	.string	"PRIxFAST64 __PRI64_PREFIX \"x\""
.LASF1528:
	.string	"COLOR_RED(c) (((c) >> 16) & 0xff)"
.LASF1058:
	.string	"PRIx32 \"x\""
.LASF1169:
	.string	"isalnum(c) __isctype((c), _ISalnum)"
.LASF1359:
	.string	"SDL_LoadBMP(file) SDL_LoadBMP_RW(SDL_RWFromFile(file, \"rb\"), 1)"
.LASF679:
	.string	"_SDL_config_h "
.LASF284:
	.string	"__USE_FORTIFY_LEVEL"
.LASF1582:
	.string	"_sbuf"
.LASF1471:
	.string	"_SDL_power_h "
.LASF1551:
	.string	"_IO_read_ptr"
.LASF1320:
	.string	"_MM_MASK_UNDERFLOW 0x0800"
.LASF1561:
	.string	"_IO_save_end"
.LASF1308:
	.string	"_MM_EXCEPT_MASK 0x003f"
.LASF1899:
	.string	"SDL_DOLLARGESTURE"
.LASF1972:
	.string	"jball"
.LASF537:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF947:
	.string	"INT8_MAX (127)"
.LASF736:
	.string	"HAVE_STRTOULL 1"
.LASF1172:
	.string	"isdigit(c) __isctype((c), _ISdigit)"
.LASF1282:
	.string	"AUDIO_S16MSB 0x9010"
.LASF1247:
	.string	"SDL_mutexP(m) SDL_LockMutex(m)"
.LASF1497:
	.string	"jPErrIf0(COND,LABEL) jErrIf0(COND, LABEL, 0)"
.LASF1301:
	.string	"SDL_MIX_MAXVOLUME 128"
.LASF1280:
	.string	"AUDIO_S16LSB 0x8010"
.LASF1844:
	.string	"SDL_SCANCODE_AC_BOOKMARKS"
.LASF218:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF273:
	.string	"__USE_XOPEN2K8"
.LASF472:
	.string	"_STDIO_H 1"
.LASF569:
	.string	"_IO_fpos_t _G_fpos_t"
.LASF1212:
	.string	"SDL_FILE __FILE__"
.LASF1775:
	.string	"SDL_SCANCODE_THOUSANDSSEPARATOR"
.LASF538:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF495:
	.string	"__need_NULL"
.LASF2049:
	.string	"n_sub_i_fact"
.LASF1177:
	.string	"isspace(c) __isctype((c), _ISspace)"
.LASF1415:
	.string	"SDL_DISABLE 0"
.LASF2041:
	.string	"n_points"
.LASF314:
	.string	"__BEGIN_NAMESPACE_C99 "
.LASF1139:
	.string	"SCNoFAST64 __PRI64_PREFIX \"o\""
.LASF352:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF1195:
	.string	"SDL_stack_free(data) "
.LASF275:
	.string	"__USE_LARGEFILE"
.LASF1257:
	.string	"RW_SEEK_SET 0"
.LASF166:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF1073:
	.string	"PRIXLEAST16 \"X\""
.LASF191:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF317:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF1400:
	.string	"SDL_HAT_LEFTUP (SDL_HAT_LEFT|SDL_HAT_UP)"
.LASF903:
	.string	"_ENDIAN_H 1"
.LASF1201:
	.string	"SDL_ICONV_E2BIG (size_t)-2"
.LASF2051:
	.string	"t_compl_power"
.LASF991:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF665:
	.string	"FOPEN_MAX 16"
.LASF1732:
	.string	"SDL_SCANCODE_AGAIN"
.LASF675:
	.string	"assert(expr) (__ASSERT_VOID_CAST (0))"
.LASF2046:
	.string	"t_compl"
.LASF1043:
	.string	"PRIoFAST64 __PRI64_PREFIX \"o\""
.LASF1328:
	.string	"_MM_FLUSH_ZERO_ON 0x8000"
.LASF1866:
	.string	"SDL_QUIT"
.LASF1351:
	.string	"_SDL_rect_h "
.LASF1820:
	.string	"SDL_SCANCODE_LSHIFT"
.LASF1242:
	.string	"SDL_SwapBE64(X) SDL_Swap64(X)"
.LASF838:
	.string	"__need_timespec"
.LASF310:
	.string	"__END_DECLS "
.LASF1348:
	.ascii	"SDL_ISPIXELFORMAT_ALP"
	.string	"HA(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELORDER(format) == SDL_PACKEDORDER_ARGB) || (SDL_PIXELORDER(format) == SDL_PACKEDORDER_RGBA) || (SDL_PIXELORDER(format) == SDL_PACKEDORDER_ABGR) || (SDL_PIXELORDER(format) == SDL_PACKEDORDER_BGRA)))"
.LASF1547:
	.string	"sizetype"
.LASF1352:
	.string	"_SDL_surface_h "
.LASF177:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF663:
	.string	"FILENAME_MAX 4096"
.LASF229:
	.string	"__SSE4_1__ 1"
.LASF1146:
	.string	"SCNxLEAST32 \"x\""
.LASF1735:
	.string	"SDL_SCANCODE_COPY"
.LASF466:
	.string	"isgreaterequal(x,y) __builtin_isgreaterequal(x, y)"
.LASF1423:
	.string	"SDL_HAPTIC_TRIANGLE (1<<3)"
.LASF747:
	.string	"HAVE_ATAN 1"
.LASF900:
	.string	"_STRING_H 1"
.LASF1037:
	.string	"PRIoLEAST16 \"o\""
.LASF1286:
	.string	"AUDIO_S32MSB 0x9020"
.LASF577:
	.string	"_IO_iconv_t _G_iconv_t"
.LASF167:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF523:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1928:
	.string	"which"
.LASF1030:
	.string	"PRIiFAST32 __PRIPTR_PREFIX \"i\""
.LASF687:
	.string	"SDL_INLINE __inline__"
.LASF1939:
	.string	"SDL_JoyBallEvent"
.LASF1584:
	.string	"int16_t"
.LASF1219:
	.string	"SDL_assert_paranoid(condition) SDL_disabled_assert(condition)"
.LASF1807:
	.string	"SDL_SCANCODE_KP_MEMCLEAR"
.LASF971:
	.string	"INT_FAST8_MAX (127)"
.LASF1668:
	.string	"SDL_SCANCODE_CAPSLOCK"
.LASF863:
	.string	"__need_wchar_t"
.LASF1539:
	.string	"short unsigned int"
.LASF1851:
	.string	"SDL_SCANCODE_EJECT"
.LASF1403:
	.string	"SDL_GameControllerAddMappingsFromFile(file) SDL_GameControllerAddMappingsFromRW(SDL_RWFromFile(file, \"rb\"), 1)"
.LASF1321:
	.string	"_MM_MASK_INEXACT 0x1000"
.LASF1541:
	.string	"signed char"
.LASF692:
	.string	"HAVE_PTHREAD_SPINLOCK 1"
.LASF1157:
	.string	"SCNdPTR __PRIPTR_PREFIX \"d\""
.LASF1278:
	.string	"AUDIO_S8 0x8008"
.LASF2038:
	.string	"y_prev"
.LASF1901:
	.string	"SDL_MULTIGESTURE"
.LASF1042:
	.string	"PRIoFAST32 __PRIPTR_PREFIX \"o\""
.LASF389:
	.string	"CHAR_MIN"
.LASF1924:
	.string	"start"
.LASF1303:
	.string	"_SDL_cpuinfo_h "
.LASF475:
	.string	"__size_t__ "
.LASF942:
	.string	"__intptr_t_defined "
.LASF1992:
	.string	"SDL_TEXTUREACCESS_STREAMING"
.LASF1216:
	.ascii	"SDL_enabled_assert(condition) do { while ( !(condition) ) { "
	.ascii	"static struct SDL_assert_data assert_data = { 0, 0, #conditi"
	.ascii	"on, 0, 0, 0, 0 }; const SD"
	.string	"L_assert_state state = SDL_ReportAssertion(&assert_data, SDL_FUNCTION, SDL_FILE, SDL_LINE); if (state == SDL_ASSERTION_RETRY) { continue; } else if (state == SDL_ASSERTION_BREAK) { SDL_TriggerBreakpoint(); } break; } } while (SDL_NULL_WHILE_LOOP_CONDITION)"
.LASF1253:
	.string	"SDL_RWOPS_STDFILE 2"
.LASF684:
	.string	"SDL_DEPRECATED __attribute__((deprecated))"
.LASF333:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF1610:
	.string	"SDL_WINDOW_MOUSE_FOCUS"
.LASF25:
	.string	"__CHAR_BIT__ 8"
.LASF1054:
	.string	"PRIuFAST32 __PRIPTR_PREFIX \"u\""
.LASF432:
	.string	"_Mdouble_BEGIN_NAMESPACE __BEGIN_NAMESPACE_STD"
.LASF588:
	.string	"EOF (-1)"
.LASF313:
	.string	"__USING_NAMESPACE_STD(name) "
.LASF465:
	.string	"isgreater(x,y) __builtin_isgreater(x, y)"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF2002:
	.string	"count"
.LASF620:
	.string	"_IO_LEFT 02"
.LASF87:
	.string	"__INT16_MAX__ 32767"
.LASF1040:
	.string	"PRIoFAST8 \"o\""
.LASF1159:
	.string	"SCNoPTR __PRIPTR_PREFIX \"o\""
.LASF1296:
	.string	"SDL_AUDIO_ALLOW_FORMAT_CHANGE 0x00000002"
.LASF1050:
	.string	"PRIuLEAST32 \"u\""
.LASF259:
	.string	"_FEATURES_H 1"
.LASF441:
	.string	"_Mdouble_BEGIN_NAMESPACE __BEGIN_NAMESPACE_C99"
.LASF483:
	.string	"_BSD_SIZE_T_ "
.LASF1714:
	.string	"SDL_SCANCODE_KP_EQUALS"
.LASF1699:
	.string	"SDL_SCANCODE_KP_ENTER"
.LASF726:
	.string	"HAVE_MEMMOVE 1"
.LASF335:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF1268:
	.string	"SDL_AUDIO_MASK_ENDIAN (1<<12)"
.LASF44:
	.string	"__INT32_TYPE__ int"
.LASF1784:
	.string	"SDL_SCANCODE_KP_BACKSPACE"
.LASF467:
	.string	"isless(x,y) __builtin_isless(x, y)"
.LASF964:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF206:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF1808:
	.string	"SDL_SCANCODE_KP_MEMADD"
.LASF1183:
	.string	"_ICONV_H 1"
.LASF1702:
	.string	"SDL_SCANCODE_KP_3"
.LASF2053:
	.string	"bezier_pol"
.LASF1553:
	.string	"_IO_read_base"
.LASF524:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF773:
	.string	"HAVE_PTHREAD_SETNAME_NP 1"
.LASF1871:
	.string	"SDL_APP_WILLENTERFOREGROUND"
.LASF1401:
	.string	"SDL_HAT_LEFTDOWN (SDL_HAT_LEFT|SDL_HAT_DOWN)"
.LASF1571:
	.string	"_offset"
.LASF1005:
	.string	"____gwchar_t_defined 1"
.LASF1977:
	.string	"cbutton"
.LASF1231:
	.string	"SDL_InvalidParamError(param) SDL_SetError(\"Parameter '%s' is invalid\", (param))"
.LASF1299:
	.string	"SDL_AUDIOCVT_PACKED __attribute__((packed))"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1360:
	.string	"SDL_SaveBMP(surface,file) SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, \"wb\"), 1)"
.LASF627:
	.string	"_IO_SHOWPOINT 0400"
.LASF1859:
	.string	"scancode"
.LASF1379:
	.string	"KMOD_GUI (KMOD_LGUI|KMOD_RGUI)"
.LASF1864:
	.string	"SDL_GestureID"
.LASF446:
	.string	"__MATH_DECLARE_LDOUBLE 1"
.LASF174:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF1919:
	.string	"state"
.LASF1959:
	.string	"SDL_DropEvent"
.LASF1951:
	.string	"SDL_MultiGestureEvent"
.LASF1377:
	.string	"KMOD_SHIFT (KMOD_LSHIFT|KMOD_RSHIFT)"
.LASF447:
	.string	"__MATHDECL_1"
.LASF2072:
	.string	"SDL_CreateRenderer"
.LASF516:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF17:
	.string	"__SIZEOF_INT__ 4"
.LASF162:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF765:
	.string	"HAVE_SIGACTION 1"
.LASF1287:
	.string	"AUDIO_S32 AUDIO_S32LSB"
.LASF877:
	.string	"_ANSI_STDDEF_H "
.LASF799:
	.string	"SDL_VIDEO_DRIVER_X11_XINPUT2 1"
.LASF188:
	.string	"_FORTIFY_SOURCE 2"
.LASF442:
	.string	"_Mdouble_END_NAMESPACE __END_NAMESPACE_C99"
.LASF917:
	.ascii	"strcmp(s1,s2) __extension__ ({ size_t __s1_len, __s2_len; (_"
	.ascii	"_builtin_constant_p (s1) && __builtin_constant_p (s2) && (__"
	.ascii	"s1_len = __builtin_strlen (s1), __s2_len = __builtin_strlen "
	.ascii	"(s2), (!__string2_1bptr_p (s1) || __s1_len >= 4) && (!__stri"
	.ascii	"ng2_1bptr_p (s2) || __s2_len >= 4)) ? __builtin_strcmp (s1, "
	.ascii	"s2) : (__builtin_constant_p (s1) && __string2_1bptr_p (s1) &"
	.ascii	"& (__s1_len = __builtin_strlen (s1), __s1_len < 4) ? (__buil"
	.ascii	"tin_constant_p (s2) && __string2_1bptr_p (s2) ? __builtin_st"
	.ascii	"rcmp (s1, s2) : __strcmp_cg (s1, s2, __s1_len)) : "
	.string	"(__builtin_constant_p (s2) && __string2_1bptr_p (s2) && (__s2_len = __builtin_strlen (s2), __s2_len < 4) ? (__builtin_constant_p (s1) && __string2_1bptr_p (s1) ? __builtin_strcmp (s1, s2) : __strcmp_gc (s1, s2, __s2_len)) : __builtin_strcmp (s1, s2)))); })"
.LASF463:
	.string	"math_errhandling (MATH_ERRNO | MATH_ERREXCEPT)"
.LASF298:
	.string	"__LEAF , __leaf__"
.LASF1445:
	.string	"SDL_HINT_RENDER_SCALE_QUALITY \"SDL_RENDER_SCALE_QUALITY\""
.LASF1143:
	.string	"SCNx64 __PRI64_PREFIX \"x\""
.LASF405:
	.string	"LONG_MIN"
.LASF723:
	.string	"HAVE_BCOPY 1"
.LASF1298:
	.string	"SDL_AUDIO_ALLOW_ANY_CHANGE (SDL_AUDIO_ALLOW_FREQUENCY_CHANGE|SDL_AUDIO_ALLOW_FORMAT_CHANGE|SDL_AUDIO_ALLOW_CHANNELS_CHANGE)"
.LASF1385:
	.string	"SDL_BUTTON_X1 4"
.LASF1794:
	.string	"SDL_SCANCODE_KP_LESS"
.LASF697:
	.string	"STDC_HEADERS 1"
.LASF1592:
	.string	"Sint16"
.LASF1903:
	.string	"SDL_DROPFILE"
.LASF202:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF107:
	.string	"__UINT32_C(c) c ## U"
.LASF13:
	.string	"__OPTIMIZE__ 1"
.LASF1446:
	.string	"SDL_HINT_RENDER_VSYNC \"SDL_RENDER_VSYNC\""
.LASF186:
	.string	"__REGISTER_PREFIX__ "
.LASF1862:
	.string	"SDL_TouchID"
.LASF597:
	.string	"_IO_MAGIC 0xFBAD0000"
.LASF1986:
	.string	"SDL_Event"
.LASF596:
	.string	"_IOS_BIN 128"
.LASF763:
	.string	"HAVE_FSEEKO 1"
.LASF572:
	.string	"_IO_ssize_t __ssize_t"
.LASF1934:
	.string	"SDL_MouseWheelEvent"
.LASF359:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF970:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF1554:
	.string	"_IO_write_base"
.LASF1393:
	.string	"SDL_HAT_CENTERED 0x00"
.LASF2070:
	.string	"XERR_PushError"
.LASF2000:
	.string	"func"
.LASF518:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1140:
	.string	"SCNx8 \"hhx\""
.LASF1330:
	.ascii	"_MM_TRANSPOSE4_PS(row0,row1,row2,row3) do { __v4sf __r0 = (r"
	.ascii	"ow0), __r1 = (row1), __r2 = (row2), __r3 = (row3); __v4sf __"
	.ascii	"t0 = __builtin_ia32_unpcklps (__r0, __r1); __v4sf __t1 = __b"
	.ascii	"uiltin_ia32_unpcklps (__r2, __r3); __v4sf __t2 = __builtin_i"
	.ascii	"a32_unpckhps (__r0"
	.string	", __r1); __v4sf __t3 = __builtin_ia32_unpckhps (__r2, __r3); (row0) = __builtin_ia32_movlhps (__t0, __t1); (row1) = __builtin_ia32_movhlps (__t1, __t0); (row2) = __builtin_ia32_movlhps (__t2, __t3); (row3) = __builtin_ia32_movhlps (__t3, __t2); } while (0)"
.LASF659:
	.string	"SEEK_CUR 1"
.LASF452:
	.string	"FP_ZERO 2"
.LASF614:
	.string	"_IO_BAD_SEEN 0x4000"
.LASF517:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF245:
	.string	"__linux__ 1"
.LASF1337:
	.string	"SDL_ALPHA_OPAQUE 255"
.LASF1100:
	.string	"SCNdFAST8 \"hhd\""
.LASF1465:
	.string	"SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT \"SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT\""
.LASF1918:
	.string	"SDL_KeyboardEvent"
.LASF307:
	.string	"__ptr_t void *"
.LASF1244:
	.string	"_SDL_mutex_h "
.LASF643:
	.string	"_IO_peekc_unlocked(_fp) (_IO_BE ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end, 0) && __underflow (_fp) == EOF ? EOF : *(unsigned char *) (_fp)->_IO_read_ptr)"
.LASF1658:
	.string	"SDL_SCANCODE_LEFTBRACKET"
.LASF369:
	.string	"__stub_putmsg "
.LASF507:
	.string	"__SLONG32_TYPE int"
.LASF1120:
	.string	"SCNuLEAST8 \"hhu\""
.LASF926:
	.ascii	"__strsep(s,reject) __extension__ ({ char __r0, __r1, __r2; ("
	.ascii	"__builtin_constant_p (reject) && __string2_1bptr_p (reject) "
	.ascii	"&& (__r0 = ((const char *) (reject))[0], ((const char *) (re"
	.ascii	"ject))[0] != '\\0') ? ((__r1 = ((const char *) (reject))[1],"
	.ascii	" ((const char *) (reject)"
	.string	")[1] == '\\0') ? __strsep_1c (s, __r0) : ((__r2 = ((const char *) (reject))[2], __r2 == '\\0') ? __strsep_2c (s, __r0, __r1) : (((const char *) (reject))[3] == '\\0' ? __strsep_3c (s, __r0, __r1, __r2) : __strsep_g (s, reject)))) : __strsep_g (s, reject)); })"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF178:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF886:
	.string	"__need_ptrdiff_t"
.LASF1950:
	.string	"pressure"
.LASF1093:
	.string	"SCNd16 \"hd\""
.LASF1063:
	.string	"PRIxLEAST64 __PRI64_PREFIX \"x\""
.LASF263:
	.string	"__USE_ISOCXX11"
.LASF1300:
	.string	"SDL_LoadWAV(file,spec,audio_buf,audio_len) SDL_LoadWAV_RW(SDL_RWFromFile(file, \"rb\"),1, spec,audio_buf,audio_len)"
.LASF1036:
	.string	"PRIoLEAST8 \"o\""
.LASF1543:
	.string	"long int"
.LASF999:
	.string	"UINT16_C(c) c"
.LASF1483:
	.string	"SDL_VERSION_ATLEAST(X,Y,Z) (SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z))"
.LASF148:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF1847:
	.string	"SDL_SCANCODE_DISPLAYSWITCH"
.LASF192:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF1525:
	.string	"UNUSED_PARAM(p) ((void) (p))"
.LASF1502:
	.string	"ErrIf0(COND,VAL,MSG) do { if (!(COND)) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #COND); return (VAL); } } while (0)"
.LASF589:
	.string	"_IOS_INPUT 1"
.LASF81:
	.string	"__INTMAX_C(c) c ## L"
.LASF2069:
	.string	"SDL_Init"
.LASF943:
	.string	"INT8_MIN (-128)"
.LASF198:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF951:
	.string	"UINT8_MAX (255)"
.LASF1519:
	.string	"BreakLt0(expr) DoLt0(expr, break)"
.LASF1580:
	.string	"_IO_marker"
.LASF189:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF666:
	.string	"stdin stdin"
.LASF1022:
	.string	"PRIi32 \"i\""
.LASF1102:
	.string	"SCNdFAST32 __PRIPTR_PREFIX \"d\""
.LASF2059:
	.string	"err_seq"
.LASF228:
	.string	"__SSSE3__ 1"
.LASF1596:
	.string	"Sint64"
.LASF1609:
	.string	"SDL_WINDOW_INPUT_FOCUS"
.LASF1325:
	.string	"_MM_ROUND_UP 0x4000"
.LASF443:
	.string	"_Mlong_double_ long double"
.LASF304:
	.string	"__PMT(args) args"
.LASF2021:
	.string	"color"
.LASF882:
	.string	"_PTRDIFF_T_ "
.LASF1878:
	.string	"SDL_TEXTINPUT"
.LASF664:
	.string	"FOPEN_MAX"
.LASF1882:
	.string	"SDL_MOUSEWHEEL"
.LASF706:
	.string	"HAVE_CTYPE_H 1"
.LASF1410:
	.string	"SDL_PRESSED 1"
.LASF1109:
	.string	"SCNiLEAST16 \"hi\""
.LASF881:
	.string	"__PTRDIFF_T "
.LASF1810:
	.string	"SDL_SCANCODE_KP_MEMMULTIPLY"
.LASF1270:
	.string	"SDL_AUDIO_BITSIZE(x) (x & SDL_AUDIO_MASK_BITSIZE)"
.LASF869:
	.string	"EXIT_SUCCESS 0"
.LASF1503:
	.string	"PErrIf0(EXPR) ErrIf0(COND, VAL, 0)"
.LASF629:
	.string	"_IO_SHOWPOS 02000"
.LASF86:
	.string	"__INT8_MAX__ 127"
.LASF1990:
	.string	"SDL_RENDERER_TARGETTEXTURE"
.LASF539:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF1091:
	.string	"PRIXPTR __PRIPTR_PREFIX \"X\""
.LASF874:
	.string	"__need_malloc_and_calloc"
.LASF296:
	.string	"_SYS_CDEFS_H 1"
.LASF1921:
	.string	"keysym"
.LASF1138:
	.string	"SCNoFAST32 __PRIPTR_PREFIX \"o\""
.LASF667:
	.string	"stdout stdout"
.LASF561:
	.string	"__need_mbstate_t"
.LASF2062:
	.string	"BG_COLOR"
.LASF431:
	.string	"__MATH_PRECNAME(name,r) __CONCAT(name,r)"
.LASF653:
	.string	"_IO_cleanup_region_end(_Doit) "
.LASF781:
	.string	"SDL_INPUT_LINUXEV 1"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF481:
	.string	"__SIZE_T "
.LASF544:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF1686:
	.string	"SDL_SCANCODE_PAGEUP"
.LASF2036:
	.string	"flip"
.LASF712:
	.string	"HAVE_MALLOC 1"
.LASF1488:
	.string	"SDL_INIT_HAPTIC 0x00001000"
.LASF1493:
	.string	"X_ERROR_H "
.LASF1316:
	.string	"_MM_MASK_INVALID 0x0080"
.LASF201:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF256:
	.string	"_GCC_LIMITS_H_ "
.LASF1378:
	.string	"KMOD_ALT (KMOD_LALT|KMOD_RALT)"
.LASF1611:
	.string	"SDL_WINDOW_FULLSCREEN_DESKTOP"
.LASF1273:
	.string	"SDL_AUDIO_ISSIGNED(x) (x & SDL_AUDIO_MASK_SIGNED)"
.LASF721:
	.string	"HAVE_QSORT 1"
.LASF1772:
	.string	"SDL_SCANCODE_EXSEL"
.LASF528:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF543:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF32:
	.string	"__SIZEOF_POINTER__ 8"
.LASF730:
	.string	"HAVE_STRCHR 1"
.LASF1653:
	.string	"SDL_SCANCODE_BACKSPACE"
.LASF698:
	.string	"HAVE_STDLIB_H 1"
.LASF2089:
	.string	"Bezier2D.c"
.LASF1326:
	.string	"_MM_ROUND_TOWARD_ZERO 0x6000"
.LASF1171:
	.string	"iscntrl(c) __isctype((c), _IScntrl)"
.LASF1161:
	.string	"SCNxPTR __PRIPTR_PREFIX \"x\""
.LASF2030:
	.string	"vid_out"
.LASF480:
	.string	"_T_SIZE "
.LASF100:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807L"
.LASF1419:
	.string	"_SDL_haptic_h "
.LASF594:
	.string	"_IOS_NOCREATE 32"
.LASF1045:
	.string	"PRIu16 \"u\""
.LASF2014:
	.string	"VideoScreen"
.LASF108:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615UL"
.LASF581:
	.string	"_IO_wint_t wint_t"
.LASF1284:
	.string	"AUDIO_S16 AUDIO_S16LSB"
.LASF323:
	.string	"__flexarr []"
.LASF1509:
	.string	"DoLt0(expr,effect) DoIf((expr) < 0, effect)"
.LASF287:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF328:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF496:
	.string	"_BITS_TYPES_H 1"
.LASF1035:
	.string	"PRIo64 __PRI64_PREFIX \"o\""
.LASF1537:
	.string	"long unsigned int"
.LASF1895:
	.string	"SDL_CONTROLLERDEVICEREMAPPED"
.LASF603:
	.string	"_IO_NO_WRITES 8"
.LASF1429:
	.string	"SDL_HAPTIC_INERTIA (1<<9)"
.LASF324:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF1279:
	.string	"AUDIO_U16LSB 0x0010"
.LASF850:
	.string	"_T_WCHAR_ "
.LASF1424:
	.string	"SDL_HAPTIC_SAWTOOTHUP (1<<4)"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF1310:
	.string	"_MM_EXCEPT_DENORM 0x0002"
.LASF1660:
	.string	"SDL_SCANCODE_BACKSLASH"
.LASF742:
	.string	"HAVE_STRCASECMP 1"
.LASF921:
	.string	"strncmp(s1,s2,n) (__extension__ (__builtin_constant_p (n) && ((__builtin_constant_p (s1) && strlen (s1) < ((size_t) (n))) || (__builtin_constant_p (s2) && strlen (s2) < ((size_t) (n)))) ? strcmp (s1, s2) : strncmp (s1, s2, n)))"
.LASF867:
	.string	"RAND_MAX 2147483647"
.LASF817:
	.string	"SDL_ASSEMBLY_ROUTINES 1"
.LASF1327:
	.string	"_MM_FLUSH_ZERO_MASK 0x8000"
.LASF2037:
	.string	"discriminant"
.LASF1144:
	.string	"SCNxLEAST8 \"hhx\""
.LASF1365:
	.string	"SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED_DISPLAY(0)"
.LASF499:
	.string	"__S32_TYPE int"
.LASF469:
	.string	"islessgreater(x,y) __builtin_islessgreater(x, y)"
.LASF1125:
	.string	"SCNuFAST16 __PRIPTR_PREFIX \"u\""
.LASF204:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF1427:
	.string	"SDL_HAPTIC_SPRING (1<<7)"
.LASF625:
	.string	"_IO_HEX 0100"
.LASF700:
	.string	"HAVE_MALLOC_H 1"
.LASF2057:
	.string	"black"
.LASF1492:
	.string	"SDL_INIT_EVERYTHING ( SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER )"
.LASF1180:
	.string	"isblank(c) __isctype((c), _ISblank)"
.LASF1158:
	.string	"SCNiPTR __PRIPTR_PREFIX \"i\""
.LASF1386:
	.string	"SDL_BUTTON_X2 5"
.LASF1406:
	.string	"_SDL_gesture_h "
.LASF1548:
	.string	"char"
.LASF2029:
	.string	"Init"
.LASF1422:
	.string	"SDL_HAPTIC_LEFTRIGHT (1<<2)"
.LASF591:
	.string	"_IOS_ATEND 4"
.LASF1591:
	.string	"Uint8"
.LASF1831:
	.string	"SDL_SCANCODE_AUDIOPLAY"
.LASF1012:
	.string	"PRIdLEAST8 \"d\""
.LASF1684:
	.string	"SDL_SCANCODE_INSERT"
.LASF1475:
	.string	"SDL_TICKS_PASSED(A,B) ((Sint32)((B) - (A)) <= 0)"
.LASF519:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF696:
	.string	"HAVE_STDIO_H 1"
.LASF372:
	.string	"__stub_sigreturn "
.LASF1038:
	.string	"PRIoLEAST32 \"o\""
.LASF312:
	.string	"__END_NAMESPACE_STD "
.LASF793:
	.string	"SDL_VIDEO_DRIVER_MIR 1"
.LASF769:
	.string	"HAVE_SYSCONF 1"
.LASF835:
	.string	"__clockid_time_t"
.LASF1777:
	.string	"SDL_SCANCODE_CURRENCYUNIT"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1028:
	.string	"PRIiFAST8 \"i\""
.LASF840:
	.string	"__u_intN_t(N,MODE) typedef unsigned int u_int ##N ##_t __attribute__ ((__mode__ (MODE)))"
.LASF385:
	.string	"SCHAR_MAX"
.LASF1277:
	.string	"AUDIO_U8 0x0008"
.LASF164:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF497:
	.string	"__S16_TYPE short int"
.LASF1678:
	.string	"SDL_SCANCODE_F10"
.LASF1679:
	.string	"SDL_SCANCODE_F11"
.LASF1680:
	.string	"SDL_SCANCODE_F12"
.LASF1715:
	.string	"SDL_SCANCODE_F13"
.LASF1716:
	.string	"SDL_SCANCODE_F14"
.LASF1717:
	.string	"SDL_SCANCODE_F15"
.LASF1718:
	.string	"SDL_SCANCODE_F16"
.LASF1719:
	.string	"SDL_SCANCODE_F17"
.LASF1720:
	.string	"SDL_SCANCODE_F18"
.LASF1721:
	.string	"SDL_SCANCODE_F19"
.LASF1879:
	.string	"SDL_MOUSEMOTION"
.LASF1249:
	.string	"_SDL_thread_h "
.LASF1236:
	.string	"SDL_SwapLE16(X) (X)"
.LASF2067:
	.string	"SDL_DestroyRenderer"
.LASF831:
	.string	"__need_clock_t"
.LASF1382:
	.string	"SDL_BUTTON_LEFT 1"
.LASF940:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF794:
	.string	"SDL_VIDEO_DRIVER_MIR_DYNAMIC \"libmirclient.so.7\""
.LASF566:
	.string	"_G_IO_IO_FILE_VERSION 0x20001"
.LASF1162:
	.string	"_CTYPE_H 1"
.LASF2056:
	.string	"Draw"
.LASF146:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)"
.LASF1940:
	.string	"ball"
.LASF1017:
	.string	"PRIdFAST16 __PRIPTR_PREFIX \"d\""
.LASF374:
	.string	"__stub_stty "
.LASF1599:
	.string	"SDL_Window"
.LASF1013:
	.string	"PRIdLEAST16 \"d\""
.LASF1656:
	.string	"SDL_SCANCODE_MINUS"
.LASF1449:
	.string	"SDL_HINT_VIDEO_X11_XINERAMA \"SDL_VIDEO_X11_XINERAMA\""
.LASF531:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF485:
	.string	"_SIZE_T_DEFINED "
.LASF1861:
	.string	"SDL_JoystickID"
.LASF236:
	.string	"__RDRND__ 1"
.LASF744:
	.string	"HAVE_VSSCANF 1"
.LASF489:
	.string	"_GCC_SIZE_T "
.LASF1234:
	.string	"SDL_BIG_ENDIAN 4321"
.LASF1425:
	.string	"SDL_HAPTIC_SAWTOOTHDOWN (1<<5)"
.LASF1438:
	.string	"SDL_HAPTIC_SPHERICAL 2"
.LASF2045:
	.string	"inter"
.LASF549:
	.string	"__STD_TYPE"
.LASF1722:
	.string	"SDL_SCANCODE_F20"
.LASF541:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF1724:
	.string	"SDL_SCANCODE_F22"
.LASF1577:
	.string	"_mode"
.LASF1726:
	.string	"SDL_SCANCODE_F24"
.LASF1097:
	.string	"SCNdLEAST16 \"hd\""
.LASF1362:
	.string	"SDL_BlitScaled SDL_UpperBlitScaled"
.LASF508:
	.string	"__ULONG32_TYPE unsigned int"
.LASF429:
	.string	"__MATHDECL_1(type,function,suffix,args) extern type __MATH_PRECNAME(function,suffix) args __THROW"
.LASF1579:
	.string	"_IO_FILE"
.LASF210:
	.string	"__SIZEOF_INT128__ 16"
.LASF474:
	.string	"__need_NULL "
.LASF725:
	.string	"HAVE_MEMCPY 1"
.LASF2017:
	.string	"screen"
.LASF1731:
	.string	"SDL_SCANCODE_STOP"
.LASF1061:
	.string	"PRIxLEAST16 \"x\""
.LASF151:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF1687:
	.string	"SDL_SCANCODE_DELETE"
.LASF1814:
	.string	"SDL_SCANCODE_KP_CLEARENTRY"
.LASF880:
	.string	"_T_PTRDIFF "
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF494:
	.string	"NULL ((void *)0)"
.LASF145:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309e-308L)"
.LASF1421:
	.string	"SDL_HAPTIC_SINE (1<<1)"
.LASF2032:
	.string	"X_ERROR_test"
.LASF473:
	.string	"__need_size_t "
.LASF1124:
	.string	"SCNuFAST8 \"hhu\""
.LASF1259:
	.string	"RW_SEEK_END 2"
.LASF243:
	.string	"__gnu_linux__ 1"
.LASF616:
	.string	"_IO_FLAGS2_MMAP 1"
.LASF1068:
	.string	"PRIX8 \"X\""
.LASF1657:
	.string	"SDL_SCANCODE_EQUALS"
.LASF1709:
	.string	"SDL_SCANCODE_KP_0"
.LASF1700:
	.string	"SDL_SCANCODE_KP_1"
.LASF1701:
	.string	"SDL_SCANCODE_KP_2"
.LASF673:
	.string	"_ASSERT_H 1"
.LASF1703:
	.string	"SDL_SCANCODE_KP_4"
.LASF1704:
	.string	"SDL_SCANCODE_KP_5"
.LASF1705:
	.string	"SDL_SCANCODE_KP_6"
.LASF85:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1707:
	.string	"SDL_SCANCODE_KP_8"
.LASF1708:
	.string	"SDL_SCANCODE_KP_9"
.LASF1185:
	.string	"SDL_TABLESIZE(table) SDL_arraysize(table)"
.LASF1346:
	.string	"SDL_BYTESPERPIXEL(X) (SDL_ISPIXELFORMAT_FOURCC(X) ? ((((X) == SDL_PIXELFORMAT_YUY2) || ((X) == SDL_PIXELFORMAT_UYVY) || ((X) == SDL_PIXELFORMAT_YVYU)) ? 2 : 1) : (((X) >> 0) & 0xFF))"
.LASF1944:
	.string	"SDL_ControllerAxisEvent"
.LASF253:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF1785:
	.string	"SDL_SCANCODE_KP_A"
.LASF654:
	.string	"_IOFBF 0"
.LASF1787:
	.string	"SDL_SCANCODE_KP_C"
.LASF1788:
	.string	"SDL_SCANCODE_KP_D"
.LASF1789:
	.string	"SDL_SCANCODE_KP_E"
.LASF1790:
	.string	"SDL_SCANCODE_KP_F"
.LASF356:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF813:
	.string	"SDL_VIDEO_OPENGL_EGL 1"
.LASF1652:
	.string	"SDL_SCANCODE_ESCAPE"
.LASF343:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF1197:
	.string	"SDL_max(x,y) (((x) > (y)) ? (x) : (y))"
.LASF1711:
	.string	"SDL_SCANCODE_NONUSBACKSLASH"
.LASF728:
	.string	"HAVE_STRLEN 1"
.LASF129:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF980:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF1769:
	.string	"SDL_SCANCODE_OPER"
.LASF428:
	.string	"__MATHDECLX(type,function,suffix,args,attrib) __MATHDECL_1(type, function,suffix, args) __attribute__ (attrib); __MATHDECL_1(type, __CONCAT(__,function),suffix, args) __attribute__ (attrib)"
.LASF902:
	.string	"__STRING_INLINE __extern_inline"
.LASF412:
	.string	"LLONG_MIN (-LLONG_MAX - 1LL)"
.LASF892:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF1667:
	.string	"SDL_SCANCODE_SLASH"
.LASF1432:
	.string	"SDL_HAPTIC_GAIN (1<<12)"
.LASF640:
	.string	"_IO_stderr ((_IO_FILE*)(&_IO_2_1_stderr_))"
.LASF762:
	.string	"HAVE_SQRT 1"
.LASF1913:
	.string	"padding1"
.LASF1914:
	.string	"padding2"
.LASF1915:
	.string	"padding3"
.LASF1938:
	.string	"padding4"
.LASF791:
	.string	"SDL_VIDEO_DRIVER_WAYLAND 1"
.LASF885:
	.string	"_GCC_PTRDIFF_T "
.LASF1262:
	.string	"SDL_RWtell(ctx) (ctx)->seek(ctx, 0, RW_SEEK_CUR)"
.LASF708:
	.string	"HAVE_ICONV_H 1"
.LASF244:
	.string	"__linux 1"
.LASF1099:
	.string	"SCNdLEAST64 __PRI64_PREFIX \"d\""
.LASF1691:
	.string	"SDL_SCANCODE_LEFT"
.LASF295:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF468:
	.string	"islessequal(x,y) __builtin_islessequal(x, y)"
.LASF948:
	.string	"INT16_MAX (32767)"
.LASF450:
	.string	"FP_NAN 0"
.LASF14:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1572:
	.string	"__pad1"
.LASF1573:
	.string	"__pad2"
.LASF1574:
	.string	"__pad3"
.LASF1965:
	.string	"SDL_SysWMEvent"
.LASF1576:
	.string	"__pad5"
.LASF1264:
	.string	"SDL_RWwrite(ctx,ptr,size,n) (ctx)->write(ctx, ptr, size, n)"
.LASF1092:
	.string	"SCNd8 \"hhd\""
.LASF783:
	.string	"SDL_INPUT_TSLIB 1"
.LASF830:
	.string	"__need_clockid_t "
.LASF1304:
	.string	"_MMINTRIN_H_INCLUDED "
.LASF1593:
	.string	"Uint16"
.LASF1168:
	.string	"__tobody(c,f,a,args) (__extension__ ({ int __res; if (sizeof (c) > 1) { if (__builtin_constant_p (c)) { int __c = (c); __res = __c < -128 || __c > 255 ? __c : (a)[__c]; } else __res = f args; } else __res = (a)[(int) (c)]; __res; }))"
.LASF1290:
	.string	"AUDIO_F32 AUDIO_F32LSB"
.LASF1205:
	.string	"SDL_iconv_utf8_ucs2(S) (Uint16 *)SDL_iconv_string(\"UCS-2-INTERNAL\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF1312:
	.string	"_MM_EXCEPT_OVERFLOW 0x0008"
.LASF251:
	.string	"_STDC_PREDEF_H 1"
.LASF1843:
	.string	"SDL_SCANCODE_AC_REFRESH"
.LASF91:
	.string	"__UINT16_MAX__ 65535"
.LASF344:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF1066:
	.string	"PRIxFAST32 __PRIPTR_PREFIX \"x\""
.LASF610:
	.string	"_IO_TIED_PUT_GET 0x400"
.LASF1562:
	.string	"_markers"
.LASF1583:
	.string	"_pos"
.LASF1208:
	.string	"_SDL_assert_h "
.LASF1586:
	.string	"int64_t"
.LASF992:
	.string	"WINT_MIN (0u)"
.LASF318:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF234:
	.string	"__POPCNT__ 1"
.LASF1023:
	.string	"PRIi64 __PRI64_PREFIX \"i\""
.LASF1452:
	.string	"SDL_HINT_MOUSE_RELATIVE_MODE_WARP \"SDL_MOUSE_RELATIVE_MODE_WARP\""
.LASF907:
	.string	"__BYTE_ORDER __LITTLE_ENDIAN"
.LASF1047:
	.string	"PRIu64 __PRI64_PREFIX \"u\""
.LASF1888:
	.string	"SDL_JOYDEVICEADDED"
.LASF320:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF1930:
	.string	"yrel"
.LASF1323:
	.string	"_MM_ROUND_NEAREST 0x0000"
.LASF433:
	.string	"_Mdouble_END_NAMESPACE __END_NAMESPACE_STD"
.LASF72:
	.string	"__LONG_MAX__ 9223372036854775807L"
.LASF196:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF176:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF1222:
	.string	"SDL_CompilerBarrier() __asm__ __volatile__ (\"\" : : : \"memory\")"
.LASF277:
	.string	"__USE_FILE_OFFSET64"
.LASF1530:
	.string	"COLOR_BLUE(c) ((c) & 0xff)"
.LASF1954:
	.string	"numFingers"
.LASF1108:
	.string	"SCNiLEAST8 \"hhi\""
.LASF1127:
	.string	"SCNuFAST64 __PRI64_PREFIX \"u\""
.LASF119:
	.string	"__UINTPTR_MAX__ 18446744073709551615UL"
.LASF715:
	.string	"HAVE_FREE 1"
.LASF668:
	.string	"stderr stderr"
.LASF1993:
	.string	"SDL_TEXTUREACCESS_TARGET"
.LASF94:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF1803:
	.string	"SDL_SCANCODE_KP_AT"
.LASF262:
	.string	"__USE_ISOC95"
.LASF2010:
	.string	"width"
.LASF1174:
	.string	"isgraph(c) __isctype((c), _ISgraph)"
.LASF719:
	.string	"HAVE_PUTENV 1"
.LASF1495:
	.string	"jPErrLt0(EXPR,GOTO) jErrLt0(EXPR, GOTO, 0)"
.LASF1536:
	.string	"double"
.LASF1883:
	.string	"SDL_JOYAXISMOTION"
.LASF1761:
	.string	"SDL_SCANCODE_ALTERASE"
.LASF1874:
	.string	"SDL_SYSWMEVENT"
.LASF112:
	.string	"__INT_FAST32_MAX__ 9223372036854775807L"
.LASF338:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF685:
	.string	"DECLSPEC __attribute__ ((visibility(\"default\")))"
.LASF529:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF671:
	.string	"__STDIO_INLINE __extern_inline"
.LASF611:
	.string	"_IO_CURRENTLY_PUTTING 0x800"
.LASF906:
	.string	"__PDP_ENDIAN 3412"
.LASF1809:
	.string	"SDL_SCANCODE_KP_MEMSUBTRACT"
.LASF449:
	.string	"__MATHCALL"
.LASF1961:
	.string	"SDL_QuitEvent"
.LASF1981:
	.string	"syswm"
.LASF2060:
	.string	"argc"
.LASF1481:
	.string	"SDL_VERSIONNUM(X,Y,Z) ((X)*1000 + (Y)*100 + (Z))"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF1595:
	.string	"Uint32"
.LASF931:
	.string	"strcat"
.LASF1526:
	.string	"DEFAULT_TITLE \"Splines 2D\""
.LASF556:
	.string	"_STDIO_USES_IOSTREAM "
.LASF1297:
	.string	"SDL_AUDIO_ALLOW_CHANNELS_CHANGE 0x00000004"
.LASF1057:
	.string	"PRIx16 \"x\""
.LASF2061:
	.string	"argv"
.LASF854:
	.string	"_BSD_WCHAR_T_ "
.LASF1175:
	.string	"isprint(c) __isctype((c), _ISprint)"
.LASF156:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF866:
	.string	"__lldiv_t_defined 1"
.LASF1776:
	.string	"SDL_SCANCODE_DECIMALSEPARATOR"
.LASF1849:
	.string	"SDL_SCANCODE_KBDILLUMDOWN"
.LASF966:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF380:
	.string	"_LIMITS_H___ "
.LASF334:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF887:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF707:
	.string	"HAVE_MATH_H 1"
.LASF423:
	.string	"FP_ILOGB0 (-2147483647 - 1)"
.LASF1916:
	.string	"data1"
.LASF1917:
	.string	"data2"
.LASF1685:
	.string	"SDL_SCANCODE_HOME"
.LASF282:
	.string	"__USE_GNU"
.LASF990:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF265:
	.string	"__USE_POSIX2"
.LASF1997:
	.string	"data"
.LASF114:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF1604:
	.string	"SDL_WINDOW_BORDERLESS"
.LASF2039:
	.string	"DrawBezier2D"
.LASF1922:
	.string	"SDL_TextEditingEvent"
.LASF1417:
	.string	"SDL_GetEventState(type) SDL_EventState(type, SDL_QUERY)"
.LASF1436:
	.string	"SDL_HAPTIC_POLAR 0"
.LASF1347:
	.string	"SDL_ISPIXELFORMAT_INDEXED(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX1) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX4) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX8)))"
.LASF1006:
	.string	"__PRI64_PREFIX \"l\""
.LASF994:
	.string	"INT8_C(c) c"
.LASF1248:
	.string	"SDL_mutexV(m) SDL_UnlockMutex(m)"
.LASF1291:
	.string	"AUDIO_U16SYS AUDIO_U16LSB"
.LASF332:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF378:
	.string	"ULLONG_MAX (LLONG_MAX * 2ULL + 1)"
.LASF642:
	.string	"_IO_getc_unlocked(_fp) (_IO_BE ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end, 0) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF1945:
	.string	"SDL_ControllerButtonEvent"
.LASF118:
	.string	"__INTPTR_MAX__ 9223372036854775807L"
.LASF738:
	.string	"HAVE_ATOI 1"
.LASF1206:
	.string	"SDL_iconv_utf8_ucs4(S) (Uint32 *)SDL_iconv_string(\"UCS-4-INTERNAL\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF505:
	.string	"__SWORD_TYPE long int"
.LASF846:
	.string	"__need_wchar_t "
.LASF2008:
	.string	"Screen"
.LASF272:
	.string	"__USE_XOPEN2KXSI"
.LASF1800:
	.string	"SDL_SCANCODE_KP_COLON"
.LASF1105:
	.string	"SCNi16 \"hi\""
.LASF977:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF843:
	.string	"__blkcnt_t_defined "
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1943:
	.string	"SDL_JoyDeviceEvent"
.LASF909:
	.string	"__LONG_LONG_PAIR(HI,LO) LO, HI"
.LASF851:
	.string	"_T_WCHAR "
.LASF1409:
	.string	"SDL_RELEASED 0"
.LASF490:
	.string	"_SIZET_ "
.LASF1507:
	.string	"X_FLOW_H "
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF704:
	.string	"HAVE_INTTYPES_H 1"
.LASF563:
	.string	"_G_va_list __gnuc_va_list"
.LASF1319:
	.string	"_MM_MASK_OVERFLOW 0x0400"
.LASF242:
	.string	"__SSE2_MATH__ 1"
.LASF193:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF1863:
	.string	"SDL_FingerID"
.LASF710:
	.string	"HAVE_LIBUDEV_H 1"
.LASF1414:
	.string	"SDL_IGNORE 0"
.LASF165:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF1250:
	.string	"_SDL_rwops_h "
.LASF876:
	.string	"_STDDEF_H_ "
.LASF912:
	.string	"__string2_1bptr_p(__x) ((size_t)(const void *)((__x) + 1) - (size_t)(const void *)(__x) == 1)"
.LASF1046:
	.string	"PRIu32 \"u\""
.LASF1289:
	.string	"AUDIO_F32MSB 0x9120"
.LASF1964:
	.string	"SDL_SysWMmsg"
.LASF655:
	.string	"_IOLBF 1"
.LASF1880:
	.string	"SDL_MOUSEBUTTONDOWN"
.LASF1015:
	.string	"PRIdLEAST64 __PRI64_PREFIX \"d\""
.LASF972:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF2085:
	.string	"XERR_FreeErrors"
.LASF1782:
	.string	"SDL_SCANCODE_KP_RIGHTBRACE"
.LASF2076:
	.string	"SDL_RenderCopy"
.LASF383:
	.string	"SCHAR_MIN"
.LASF657:
	.string	"BUFSIZ _IO_BUFSIZ"
.LASF1764:
	.string	"SDL_SCANCODE_CLEAR"
.LASF772:
	.string	"HAVE_ICONV 1"
.LASF1191:
	.string	"_ALLOCA_H 1"
.LASF1272:
	.string	"SDL_AUDIO_ISBIGENDIAN(x) (x & SDL_AUDIO_MASK_ENDIAN)"
.LASF985:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF1898:
	.string	"SDL_FINGERMOTION"
.LASF2026:
	.string	"FmtMessage"
.LASF1302:
	.string	"_SDL_clipboard_h "
.LASF238:
	.string	"__FXSR__ 1"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF172:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF677:
	.string	"_SDL_main_h "
.LASF1534:
	.string	"WRITE_PIXEL"
.LASF1056:
	.string	"PRIx8 \"x\""
.LASF106:
	.string	"__UINT_LEAST32_MAX__ 4294967295U"
.LASF1408:
	.string	"SDL_TOUCH_MOUSEID ((Uint32)-1)"
.LASF266:
	.string	"__USE_POSIX199309"
.LASF987:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF401:
	.string	"INT_MAX"
.LASF1361:
	.string	"SDL_BlitSurface SDL_UpperBlit"
.LASF674:
	.string	"__ASSERT_VOID_CAST (void)"
.LASF883:
	.string	"_BSD_PTRDIFF_T_ "
.LASF852:
	.string	"__WCHAR_T "
.LASF1322:
	.string	"_MM_ROUND_MASK 0x6000"
.LASF1344:
	.string	"SDL_PIXELLAYOUT(X) (((X) >> 16) & 0x0F)"
.LASF562:
	.string	"__need_wint_t"
.LASF803:
	.string	"SDL_VIDEO_DRIVER_X11_XSHAPE 1"
.LASF252:
	.string	"__STDC_IEC_559__ 1"
.LASF753:
	.string	"HAVE_COS 1"
.LASF1115:
	.string	"SCNiFAST64 __PRI64_PREFIX \"i\""
.LASF818:
	.string	"_SYS_TYPES_H 1"
.LASF1524:
	.string	"M_PI 3.141592f"
.LASF381:
	.string	"CHAR_BIT"
.LASF175:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF97:
	.string	"__INT16_C(c) c"
.LASF1662:
	.string	"SDL_SCANCODE_SEMICOLON"
.LASF1336:
	.string	"_SDL_pixels_h "
.LASF1114:
	.string	"SCNiFAST32 __PRIPTR_PREFIX \"i\""
.LASF453:
	.string	"FP_SUBNORMAL 3"
.LASF1049:
	.string	"PRIuLEAST16 \"u\""
.LASF612:
	.string	"_IO_IS_APPENDING 0x1000"
.LASF392:
	.string	"CHAR_MAX SCHAR_MAX"
.LASF1518:
	.string	"BreakIf(cond) DoIf(cond, break)"
.LASF819:
	.string	"__ino_t_defined "
.LASF929:
	.string	"memmove"
.LASF1925:
	.string	"length"
.LASF1055:
	.string	"PRIuFAST64 __PRI64_PREFIX \"u\""
.LASF63:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF1567:
	.string	"_cur_column"
.LASF755:
	.string	"HAVE_FABS 1"
.LASF982:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF230:
	.string	"__SSE4_2__ 1"
.LASF780:
	.string	"SDL_AUDIO_DRIVER_OSS 1"
.LASF1607:
	.string	"SDL_WINDOW_MAXIMIZED"
.LASF1240:
	.string	"SDL_SwapBE16(X) SDL_Swap16(X)"
.LASF1546:
	.string	"__off64_t"
.LASF1025:
	.string	"PRIiLEAST16 \"i\""
.LASF249:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF1517:
	.string	"GotoIf0(expr,label) DoIf0(cond, goto label)"
.LASF759:
	.string	"HAVE_SCALBN 1"
.LASF1237:
	.string	"SDL_SwapLE32(X) (X)"
.LASF1227:
	.string	"_SDL_audio_h "
.LASF1358:
	.string	"SDL_MUSTLOCK(S) (((S)->flags & SDL_RLEACCEL) != 0)"
.LASF1529:
	.string	"COLOR_GREEN(c) (((c) >> 8) & 0xff)"
.LASF787:
	.string	"SDL_THREAD_PTHREAD 1"
.LASF1126:
	.string	"SCNuFAST32 __PRIPTR_PREFIX \"u\""
.LASF309:
	.string	"__BEGIN_DECLS "
.LASF347:
	.string	"__restrict_arr __restrict"
.LASF915:
	.string	"strncpy(dest,src,n) __builtin_strncpy (dest, src, n)"
.LASF937:
	.string	"_STDINT_H 1"
.LASF2040:
	.string	"points"
.LASF558:
	.string	"_G_config_h 1"
.LASF2079:
	.string	"SDL_RenderPresent"
.LASF1897:
	.string	"SDL_FINGERUP"
.LASF1791:
	.string	"SDL_SCANCODE_KP_XOR"
.LASF1014:
	.string	"PRIdLEAST32 \"d\""
.LASF635:
	.string	"_IO_BOOLALPHA 0200000"
.LASF896:
	.string	"_VA_LIST "
.LASF255:
	.string	"__STDC_NO_THREADS__ 1"
.LASF1389:
	.string	"SDL_BUTTON_RMASK SDL_BUTTON(SDL_BUTTON_RIGHT)"
.LASF109:
	.string	"__UINT64_C(c) c ## UL"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF1557:
	.string	"_IO_buf_base"
.LASF76:
	.string	"__WINT_MAX__ 4294967295U"
.LASF370:
	.string	"__stub_revoke "
.LASF51:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF348:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF1987:
	.string	"SDL_RENDERER_SOFTWARE"
.LASF1741:
	.string	"SDL_SCANCODE_KP_COMMA"
.LASF1956:
	.string	"SDL_DollarGestureEvent"
.LASF1560:
	.string	"_IO_backup_base"
.LASF733:
	.string	"HAVE_STRTOL 1"
.LASF527:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF873:
	.string	"__STDLIB_MB_LEN_MAX 16"
.LASF98:
	.string	"__INT_LEAST32_MAX__ 2147483647"
.LASF200:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF865:
	.string	"__ldiv_t_defined 1"
.LASF2001:
	.string	"XERR_ErrorSequence"
.LASF1170:
	.string	"isalpha(c) __isctype((c), _ISalpha)"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF1271:
	.string	"SDL_AUDIO_ISFLOAT(x) (x & SDL_AUDIO_MASK_DATATYPE)"
.LASF1081:
	.string	"PRIiMAX __PRI64_PREFIX \"i\""
.LASF213:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF1275:
	.string	"SDL_AUDIO_ISLITTLEENDIAN(x) (!SDL_AUDIO_ISBIGENDIAN(x))"
.LASF160:
	.string	"__LDBL_EPSILON__ 1.08420217248550443401e-19L"
.LASF1285:
	.string	"AUDIO_S32LSB 0x8020"
.LASF1375:
	.string	"SDL_SCANCODE_TO_KEYCODE(X) (X | SDLK_SCANCODE_MASK)"
.LASF1167:
	.string	"__exctype(name) extern int name (int) __THROW"
.LASF350:
	.string	"__WORDSIZE 64"
.LASF214:
	.string	"__amd64 1"
.LASF574:
	.string	"_IO_off64_t __off64_t"
.LASF545:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF935:
	.string	"_STRINGS_H 1"
.LASF587:
	.string	"_IO_UNIFIED_JUMPTABLES 1"
.LASF777:
	.string	"SDL_AUDIO_DRIVER_PULSEAUDIO 1"
.LASF898:
	.string	"_VA_LIST_T_H "
.LASF827:
	.string	"__ssize_t_defined "
.LASF1166:
	.string	"__toascii(c) ((c) & 0x7f)"
.LASF1239:
	.string	"SDL_SwapFloatLE(X) (X)"
.LASF1363:
	.string	"SDL_WINDOWPOS_UNDEFINED_MASK 0x1FFF0000"
.LASF554:
	.string	"____FILE_defined 1"
.LASF435:
	.string	"_Mdouble_BEGIN_NAMESPACE"
.LASF104:
	.string	"__UINT_LEAST16_MAX__ 65535"
.LASF844:
	.string	"__fsblkcnt_t_defined "
.LASF139:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF1225:
	.string	"SDL_AtomicIncRef(a) SDL_AtomicAdd(a, 1)"
.LASF1589:
	.string	"uint16_t"
.LASF802:
	.string	"SDL_VIDEO_DRIVER_X11_XSCRNSAVER 1"
.LASF1835:
	.string	"SDL_SCANCODE_MAIL"
.LASF2063:
	.string	"stdin"
.LASF1845:
	.string	"SDL_SCANCODE_BRIGHTNESSDOWN"
.LASF147:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)"
.LASF1145:
	.string	"SCNxLEAST16 \"hx\""
.LASF403:
	.string	"UINT_MAX"
.LASF1374:
	.string	"SDLK_SCANCODE_MASK (1<<30)"
.LASF1805:
	.string	"SDL_SCANCODE_KP_MEMSTORE"
.LASF330:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF722:
	.string	"HAVE_ABS 1"
.LASF1885:
	.string	"SDL_JOYHATMOTION"
.LASF1894:
	.string	"SDL_CONTROLLERDEVICEREMOVED"
.LASF1193:
	.string	"alloca(size) __builtin_alloca (size)"
.LASF1069:
	.string	"PRIX16 \"X\""
.LASF169:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF984:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF1566:
	.string	"_old_offset"
.LASF1892:
	.string	"SDL_CONTROLLERBUTTONUP"
.LASF884:
	.string	"___int_ptrdiff_t_h "
.LASF1469:
	.string	"SDL_MAX_LOG_MESSAGE 4096"
.LASF605:
	.string	"_IO_ERR_SEEN 0x20"
.LASF1852:
	.string	"SDL_SCANCODE_SLEEP"
.LASF197:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF70:
	.string	"__SHRT_MAX__ 32767"
.LASF542:
	.string	"__TIMER_T_TYPE void *"
.LASF1437:
	.string	"SDL_HAPTIC_CARTESIAN 1"
.LASF600:
	.string	"_IO_USER_BUF 1"
.LASF1868:
	.string	"SDL_APP_LOWMEMORY"
.LASF420:
	.string	"INFINITY (__builtin_inff())"
.LASF1796:
	.string	"SDL_SCANCODE_KP_AMPERSAND"
.LASF904:
	.string	"__LITTLE_ENDIAN 1234"
.LASF1467:
	.string	"_SDL_loadso_h "
.LASF774:
	.string	"HAVE_SEM_TIMEDWAIT 1"
.LASF1463:
	.string	"SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK \"SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK\""
.LASF1444:
	.string	"SDL_HINT_RENDER_DIRECT3D_THREADSAFE \"SDL_RENDER_DIRECT3D_THREADSAFE\""
.LASF1823:
	.string	"SDL_SCANCODE_RCTRL"
.LASF1107:
	.string	"SCNi64 __PRI64_PREFIX \"i\""
.LASF1021:
	.string	"PRIi16 \"i\""
.LASF292:
	.string	"__GNU_LIBRARY__ 6"
.LASF1132:
	.string	"SCNoLEAST8 \"hho\""
.LASF1587:
	.string	"long long int"
.LASF422:
	.string	"_MATH_H_MATHDEF 1"
.LASF533:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF1923:
	.string	"text"
.LASF1779:
	.string	"SDL_SCANCODE_KP_LEFTPAREN"
.LASF571:
	.string	"_IO_size_t size_t"
.LASF683:
	.string	"_begin_code_h "
.LASF1565:
	.string	"_flags2"
.LASF751:
	.string	"HAVE_CEIL 1"
.LASF1728:
	.string	"SDL_SCANCODE_HELP"
.LASF868:
	.string	"EXIT_FAILURE 1"
.LASF1661:
	.string	"SDL_SCANCODE_NONUSHASH"
.LASF1390:
	.string	"SDL_BUTTON_X1MASK SDL_BUTTON(SDL_BUTTON_X1)"
.LASF2007:
	.string	"ColorUint"
.LASF816:
	.string	"SDL_FILESYSTEM_UNIX 1"
.LASF185:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1926:
	.string	"SDL_TextInputEvent"
.LASF752:
	.string	"HAVE_COPYSIGN 1"
.LASF1260:
	.string	"SDL_RWsize(ctx) (ctx)->size(ctx)"
.LASF1147:
	.string	"SCNxLEAST64 __PRI64_PREFIX \"x\""
.LASF1179:
	.string	"isxdigit(c) __isctype((c), _ISxdigit)"
.LASF90:
	.string	"__UINT8_MAX__ 255"
.LASF1491:
	.string	"SDL_INIT_NOPARACHUTE 0x00100000"
.LASF316:
	.string	"__USING_NAMESPACE_C99(name) "
.LASF455:
	.string	"fpclassify(x) (sizeof (x) == sizeof (float) ? __fpclassifyf (x) : sizeof (x) == sizeof (double) ? __fpclassify (x) : __fpclassifyl (x))"
.LASF1029:
	.string	"PRIiFAST16 __PRIPTR_PREFIX \"i\""
.LASF691:
	.string	"HAVE_GCC_ATOMICS 1"
.LASF1506:
	.string	"ErrIgnore(x) x"
.LASF735:
	.string	"HAVE_STRTOLL 1"
.LASF1911:
	.string	"windowID"
.LASF1733:
	.string	"SDL_SCANCODE_UNDO"
.LASF778:
	.string	"SDL_AUDIO_DRIVER_DISK 1"
.LASF1664:
	.string	"SDL_SCANCODE_GRAVE"
.LASF701:
	.string	"HAVE_MEMORY_H 1"
.LASF217:
	.string	"__x86_64__ 1"
.LASF1496:
	.string	"jErrIf0(COND,LABEL,MSG) do { if (!(COND)) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #COND); goto LABEL; } } while (0)"
.LASF1309:
	.string	"_MM_EXCEPT_INVALID 0x0001"
.LASF377:
	.string	"LLONG_MAX __LONG_LONG_MAX__"
.LASF1601:
	.string	"SDL_WINDOW_OPENGL"
.LASF788:
	.string	"SDL_THREAD_PTHREAD_RECURSIVE_MUTEX 1"
.LASF161:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L"
.LASF1498:
	.string	"jErrIf(COND,LABEL,MSG) do { if ((COND)) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #COND); goto LABEL; } } while (0)"
.LASF438:
	.string	"_Mfloat_ float"
.LASF1341:
	.string	"SDL_PIXELFLAG(X) (((X) >> 28) & 0x0F)"
.LASF711:
	.string	"HAVE_DBUS_DBUS_H 1"
.LASF2042:
	.string	"num_intervals"
.LASF1478:
	.string	"SDL_MINOR_VERSION 0"
.LASF225:
	.string	"__SSE__ 1"
.LASF150:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1181:
	.string	"tolower(c) __tobody (c, tolower, *__ctype_tolower_loc (), (c))"
.LASF647:
	.string	"_IO_PENDING_OUTPUT_COUNT(_fp) ((_fp)->_IO_write_ptr - (_fp)->_IO_write_base)"
.LASF281:
	.string	"__USE_ATFILE"
.LASF814:
	.string	"SDL_VIDEO_OPENGL_GLX 1"
.LASF1431:
	.string	"SDL_HAPTIC_CUSTOM (1<<11)"
.LASF1980:
	.string	"user"
.LASF1053:
	.string	"PRIuFAST16 __PRIPTR_PREFIX \"u\""
.LASF1811:
	.string	"SDL_SCANCODE_KP_MEMDIVIDE"
.LASF2023:
	.string	"WritePixel"
.LASF1886:
	.string	"SDL_JOYBUTTONDOWN"
.LASF1663:
	.string	"SDL_SCANCODE_APOSTROPHE"
.LASF1187:
	.string	"SDL_static_cast(type,expression) ((type)(expression))"
.LASF1434:
	.string	"SDL_HAPTIC_STATUS (1<<14)"
.LASF384:
	.string	"SCHAR_MIN (-SCHAR_MAX - 1)"
.LASF246:
	.string	"__unix 1"
.LASF2075:
	.string	"powf"
.LASF767:
	.string	"HAVE_SETJMP 1"
.LASF163:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF337:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF724:
	.string	"HAVE_MEMSET 1"
.LASF979:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF1982:
	.string	"tfinger"
.LASF1430:
	.string	"SDL_HAPTIC_FRICTION (1<<10)"
.LASF986:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF911:
	.ascii	"__STRING2_SMALL_GET32"
	.string	"(src,idx) (((((const unsigned char *) (const char *) (src))[idx + 3] << 8 | ((const unsigned char *) (const char *) (src))[idx + 2]) << 8 | ((const unsigned char *) (const char *) (src))[idx + 1]) << 8 | ((const unsigned char *) (const char *) (src))[idx])"
.LASF1464:
	.string	"SDL_HINT_VIDEO_WIN_D3DCOMPILER \"SDL_VIDEO_WIN_D3DCOMPILER\""
.LASF535:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1602:
	.string	"SDL_WINDOW_SHOWN"
.LASF810:
	.string	"SDL_VIDEO_RENDER_OGL_ES2 1"
.LASF690:
	.string	"SIZEOF_VOIDP 8"
.LASF604:
	.string	"_IO_EOF_SEEN 0x10"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1512:
	.string	"ReturnLt0(expr,val) DoLt0(expr, return (val))"
.LASF59:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF1910:
	.string	"SDL_WindowEvent"
.LASF1743:
	.string	"SDL_SCANCODE_INTERNATIONAL1"
.LASF1744:
	.string	"SDL_SCANCODE_INTERNATIONAL2"
.LASF1745:
	.string	"SDL_SCANCODE_INTERNATIONAL3"
.LASF1746:
	.string	"SDL_SCANCODE_INTERNATIONAL4"
.LASF532:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1748:
	.string	"SDL_SCANCODE_INTERNATIONAL6"
.LASF1749:
	.string	"SDL_SCANCODE_INTERNATIONAL7"
.LASF1750:
	.string	"SDL_SCANCODE_INTERNATIONAL8"
.LASF1751:
	.string	"SDL_SCANCODE_INTERNATIONAL9"
.LASF294:
	.string	"__GLIBC_MINOR__ 19"
.LASF1450:
	.string	"SDL_HINT_VIDEO_X11_XRANDR \"SDL_VIDEO_X11_XRANDR\""
.LASF1203:
	.string	"SDL_ICONV_EINVAL (size_t)-4"
.LASF134:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF761:
	.string	"HAVE_SINF 1"
.LASF1224:
	.string	"SDL_MemoryBarrierAcquire() SDL_CompilerBarrier()"
.LASF944:
	.string	"INT16_MIN (-32767-1)"
.LASF418:
	.string	"HUGE_VALF (__builtin_huge_valf())"
.LASF1513:
	.string	"ReturnIf0(expr,val) DoIf0(expr, return (val))"
.LASF525:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF1075:
	.string	"PRIXLEAST64 __PRI64_PREFIX \"X\""
.LASF1804:
	.string	"SDL_SCANCODE_KP_EXCLAM"
.LASF1245:
	.string	"SDL_MUTEX_TIMEDOUT 1"
.LASF1812:
	.string	"SDL_SCANCODE_KP_PLUSMINUS"
.LASF584:
	.string	"__GNUC_VA_LIST "
.LASF1335:
	.string	"_SDL_video_h "
.LASF399:
	.string	"INT_MIN"
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF2068:
	.string	"SDL_DestroyWindow"
.LASF2093:
	.string	"main"
.LASF184:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF476:
	.string	"__SIZE_T__ "
.LASF1155:
	.string	"SCNuMAX __PRI64_PREFIX \"u\""
.LASF1226:
	.string	"SDL_AtomicDecRef(a) (SDL_AtomicAdd(a, -1) == 1)"
.LASF1500:
	.string	"ErrLt0(EXPR,MSG) do { int X_ERROR_test = (EXPR); if (X_ERROR_test < 0) { XERR_PushError((MSG), __LINE__, __FILE__, __func__, #EXPR); return X_ERROR_test; } } while (0)"
.LASF601:
	.string	"_IO_UNBUFFERED 2"
.LASF241:
	.string	"__SSE_MATH__ 1"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF521:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF215:
	.string	"__amd64__ 1"
.LASF154:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF1062:
	.string	"PRIxLEAST32 \"x\""
.LASF321:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF93:
	.string	"__UINT64_MAX__ 18446744073709551615UL"
.LASF1398:
	.string	"SDL_HAT_RIGHTUP (SDL_HAT_RIGHT|SDL_HAT_UP)"
.LASF1083:
	.string	"PRIuMAX __PRI64_PREFIX \"u\""
.LASF568:
	.string	"_G_BUFSIZ 8192"
.LASF69:
	.string	"__SCHAR_MAX__ 127"
.LASF740:
	.string	"HAVE_STRCMP 1"
.LASF39:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF720:
	.string	"HAVE_UNSETENV 1"
.LASF1252:
	.string	"SDL_RWOPS_WINFILE 1"
.LASF828:
	.string	"__need_time_t "
.LASF1834:
	.string	"SDL_SCANCODE_WWW"
.LASF1540:
	.string	"unsigned int"
.LASF1381:
	.string	"SDL_BUTTON(X) (1 << ((X)-1))"
.LASF1026:
	.string	"PRIiLEAST32 \"i\""
.LASF923:
	.ascii	"strspn(s,accept) __extension__ ({ char __a0, __a1, __a2; (__"
	.ascii	"builtin_constant_p (accept) && __string2_1bptr_p (accept) ? "
	.ascii	"((__builtin_constant_p (s) && __string2_1bptr_p (s)) ? __bui"
	.ascii	"ltin_strspn (s, accept) : ((__a0 = ((const char *) (accept))"
	.ascii	"[0], __a0 == '\\0') ? ((void) (s), (size_t) 0) : ((__a1 = (("
	.ascii	"const char *) (accept))[1], __a1 == '\\0') "
	.string	"? __strspn_c1 (s, __a0) : ((__a2 = ((const char *) (accept))[2], __a2 == '\\0') ? __strspn_c2 (s, __a0, __a1) : (((const char *) (accept))[3] == '\\0' ? __strspn_c3 (s, __a0, __a1, __a2) : __builtin_strspn (s, accept)))))) : __builtin_strspn (s, accept)); })"
.LASF1896:
	.string	"SDL_FINGERDOWN"
.LASF444:
	.string	"_Mdouble_ _Mlong_double_"
.LASF1473:
	.string	"_SDL_system_h "
.LASF1334:
	.string	"_SDL_events_h "
.LASF398:
	.string	"USHRT_MAX (SHRT_MAX * 2 + 1)"
.LASF908:
	.string	"__FLOAT_WORD_ORDER __BYTE_ORDER"
.LASF131:
	.string	"__FLT_MIN__ 1.17549435082228750797e-38F"
.LASF623:
	.string	"_IO_DEC 020"
.LASF1867:
	.string	"SDL_APP_TERMINATING"
.LASF1404:
	.string	"_SDL_quit_h "
.LASF1110:
	.string	"SCNiLEAST32 \"i\""
.LASF570:
	.string	"_IO_fpos64_t _G_fpos64_t"
.LASF513:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF33:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF155:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF1542:
	.string	"short int"
.LASF1230:
	.string	"SDL_Unsupported() SDL_Error(SDL_UNSUPPORTED)"
.LASF800:
	.string	"SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH 1"
.LASF1840:
	.string	"SDL_SCANCODE_AC_BACK"
.LASF235:
	.string	"__FSGSBASE__ 1"
.LASF893:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF713:
	.string	"HAVE_CALLOC 1"
.LASF1276:
	.string	"SDL_AUDIO_ISUNSIGNED(x) (!SDL_AUDIO_ISSIGNED(x))"
.LASF15:
	.string	"_LP64 1"
.LASF962:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF1568:
	.string	"_vtable_offset"
.LASF1766:
	.string	"SDL_SCANCODE_RETURN2"
.LASF397:
	.string	"USHRT_MAX"
.LASF1123:
	.string	"SCNuLEAST64 __PRI64_PREFIX \"u\""
.LASF509:
	.string	"__S64_TYPE long int"
.LASF477:
	.string	"_SIZE_T "
.LASF1314:
	.string	"_MM_EXCEPT_INEXACT 0x0020"
.LASF1420:
	.string	"SDL_HAPTIC_CONSTANT (1<<0)"
.LASF3:
	.string	"__GNUC__ 4"
.LASF237:
	.string	"__F16C__ 1"
.LASF424:
	.string	"FP_ILOGBNAN (-2147483647 - 1)"
.LASF1412:
	.string	"SDL_TEXTINPUTEVENT_TEXT_SIZE (32)"
.LASF1932:
	.string	"button"
.LASF1024:
	.string	"PRIiLEAST8 \"i\""
.LASF1470:
	.string	"_SDL_messagebox_h "
.LASF83:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF718:
	.string	"HAVE_SETENV 1"
.LASF2091:
	.string	"_IO_lock_t"
.LASF888:
	.string	"_STDARG_H "
.LASF1112:
	.string	"SCNiFAST8 \"hhi\""
.LASF2055:
	.string	"bg_color"
.LASF644:
	.string	"_IO_putc_unlocked(_ch,_fp) (_IO_BE ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end, 0) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF1065:
	.string	"PRIxFAST16 __PRIPTR_PREFIX \"x\""
.LASF1738:
	.string	"SDL_SCANCODE_MUTE"
.LASF807:
	.string	"SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY 1"
.LASF289:
	.string	"__USE_ISOC95 1"
.LASF1440:
	.string	"_SDL_hints_h "
.LASF1848:
	.string	"SDL_SCANCODE_KBDILLUMTOGGLE"
.LASF101:
	.string	"__INT64_C(c) c ## L"
.LASF233:
	.string	"__AVX__ 1"
.LASF1734:
	.string	"SDL_SCANCODE_CUT"
.LASF639:
	.string	"_IO_stdout ((_IO_FILE*)(&_IO_2_1_stdout_))"
.LASF279:
	.string	"__USE_SVID"
.LASF922:
	.ascii	"strcspn(s,reject) __extension__ ({ char __r0, __r1, __r2; (_"
	.ascii	"_builtin_constant_p (reject) && __string2_1bptr_p (reject) ?"
	.ascii	" ((__builtin_constant_p (s) && __string2_1bptr_p (s)) ? __bu"
	.ascii	"iltin_strcspn (s, reject) : ((__r0 = ((const char *) (reject"
	.ascii	"))[0], __r0 == '\\0') ? strlen (s) : ((__r1 = ((const char *"
	.ascii	") (reject))[1], __r1 == '\\0') ? __s"
	.string	"trcspn_c1 (s, __r0) : ((__r2 = ((const char *) (reject))[2], __r2 == '\\0') ? __strcspn_c2 (s, __r0, __r1) : (((const char *) (reject))[3] == '\\0' ? __strcspn_c3 (s, __r0, __r1, __r2) : __builtin_strcspn (s, reject)))))) : __builtin_strcspn (s, reject)); })"
.LASF1196:
	.string	"SDL_min(x,y) (((x) < (y)) ? (x) : (y))"
.LASF80:
	.string	"__INTMAX_MAX__ 9223372036854775807L"
.LASF812:
	.string	"SDL_VIDEO_OPENGL_ES2 1"
.LASF1767:
	.string	"SDL_SCANCODE_SEPARATOR"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 2"
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
