	.text
	.file	"Module"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function fmul
.LCPI0_0:
	.quad	2251799813685247                # 0x7ffffffffffff
	.quad	2251799813685247                # 0x7ffffffffffff
	.text
	.p2align	4, 0x90
	.type	fmul,@function
fmul:                                   # @fmul
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rsp, %rax
	sarq	$63, %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	(%rdx), %r12
	orq	%rax, %r12
	movq	8(%rdx), %rcx
	orq	%rax, %rcx
	movq	16(%rdx), %rbp
	orq	%rax, %rbp
	movq	%rbp, %rbx
	movq	24(%rdx), %r8
	orq	%rax, %r8
	movq	32(%rdx), %rdx
	orq	%rax, %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rbp
	orq	%rax, %rbp
	movq	8(%rsi), %r15
	orq	%rax, %r15
	movq	16(%rsi), %r9
	orq	%rax, %r9
	movq	24(%rsi), %r11
	orq	%rax, %r11
	movq	%r11, -120(%rsp)                # 8-byte Spill
	movq	32(%rsi), %rdx
	orq	%rax, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	%r12
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%r15, %rax
	mulq	%r12
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rdx, %r10
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%r9, %rax
	movq	%r9, -96(%rsp)                  # 8-byte Spill
	mulq	%r12
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r15, %rax
	mulq	%rcx
	movq	%rdx, %r14
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%r11, %rax
	mulq	%r12
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	%r8
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%r9, %rax
	mulq	%rcx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%r15, %rax
	mulq	%rbx
	movq	%rbx, %r9
	movq	%rdx, %r13
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	-64(%rsp), %rax                 # 8-byte Reload
	mulq	%r12
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%rdx,%rax,2), %rbx
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	leaq	(%r8,%r8,8), %rax
	leaq	(%r8,%rax,2), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%r15, %rax
	mulq	%r8
	movq	%rax, %rbp
	movq	%rdx, %rsi
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%rcx,%rax,2), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	-120(%rsp), %r8                 # 8-byte Reload
	movq	%r8, %rax
	mulq	%rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leaq	(%r9,%r9,8), %rax
	leaq	(%r9,%rax,2), %r11
	movq	%r11, -112(%rsp)                # 8-byte Spill
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	mulq	%r9
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r15, %rax
	mulq	%rbx
	movq	%rdx, %r12
	movq	%rax, %r15
	movq	-64(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %rax
	mulq	-128(%rsp)                      # 8-byte Folded Reload
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	%r11
	movq	%rdx, %rbx
	movq	%rax, %r11
	movq	%rcx, %rax
	movq	%rcx, %r8
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	mulq	%rcx
	addq	-88(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r12                 # 8-byte Folded Reload
	addq	%rax, %r15
	adcq	%rdx, %r12
	addq	%r11, %r15
	adcq	%rbx, %r12
	addq	-104(%rsp), %r15                # 8-byte Folded Reload
	adcq	-128(%rsp), %r12                # 8-byte Folded Reload
	movq	%r8, %rax
	movq	-56(%rsp), %r8                  # 8-byte Reload
	mulq	%r8
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%r9, %r11
	movq	%r9, %rax
	mulq	-112(%rsp)                      # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	-120(%rsp), %rbx                # 8-byte Reload
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, %r9
	movq	%rbx, %rax
	mulq	%r8
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%r11, %rax
	mulq	%rcx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%r11, %rax
	mulq	%r8
	movq	%rdx, %r11
	shldq	$13, %r15, %r12
	movabsq	$2251799813685247, %rdx         # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r15
	movq	-16(%rsp), %r8                  # 8-byte Reload
	addq	-8(%rsp), %r8                   # 8-byte Folded Reload
	adcq	8(%rsp), %r10                   # 8-byte Folded Reload
	addq	-24(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-104(%rsp), %r10                # 8-byte Folded Reload
	addq	%r9, %r8
	adcq	-112(%rsp), %r10                # 8-byte Folded Reload
	addq	-128(%rsp), %r8                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r10                 # 8-byte Folded Reload
	addq	%r12, %r8
	adcq	$0, %r10
	shldq	$13, %r8, %r10
	andq	%rdx, %r8
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	addq	40(%rsp), %rbx                  # 8-byte Folded Reload
	adcq	56(%rsp), %r14                  # 8-byte Folded Reload
	addq	64(%rsp), %rbx                  # 8-byte Folded Reload
	adcq	72(%rsp), %r14                  # 8-byte Folded Reload
	addq	-88(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-120(%rsp), %r14                # 8-byte Folded Reload
	addq	%rcx, %rbx
	adcq	-80(%rsp), %r14                 # 8-byte Folded Reload
	addq	%r10, %rbx
	adcq	$0, %r14
	shldq	$13, %rbx, %r14
	andq	%rdx, %rbx
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	addq	88(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	104(%rsp), %r13                 # 8-byte Folded Reload
	addq	80(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	96(%rsp), %r13                  # 8-byte Folded Reload
	addq	112(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	120(%rsp), %r13                 # 8-byte Folded Reload
	addq	%rax, %rcx
	adcq	%r11, %r13
	addq	%r14, %rcx
	adcq	$0, %r13
	shldq	$13, %rcx, %r13
	addq	48(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	-72(%rsp), %rsi                 # 8-byte Folded Reload
	addq	(%rsp), %rbp                    # 8-byte Folded Reload
	adcq	16(%rsp), %rsi                  # 8-byte Folded Reload
	addq	24(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	32(%rsp), %rsi                  # 8-byte Folded Reload
	addq	128(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	136(%rsp), %rsi                 # 8-byte Folded Reload
	addq	%r13, %rbp
	movq	%rcx, %xmm0
	adcq	$0, %rsi
	movq	%rbp, %xmm1
	shldq	$13, %rbp, %rsi
	leaq	(%rsi,%rsi,8), %rax
	leaq	(%rsi,%rax,2), %rax
	addq	%r15, %rax
	movq	%rax, %rcx
	shrq	$51, %rcx
	addq	%r8, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%rbx, %rsi
	andq	%rdx, %rax
	andq	%rdx, %rcx
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	pand	.LCPI0_0(%rip), %xmm0
	movq	%rsi, 16(%rdi)
	movdqu	%xmm0, 24(%rdi)
	movq	$-1, %rax
	movq	144(%rsp), %rax                 # 8-byte Reload
	shlq	$47, %rax
	orq	%rax, %rsp
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmul, .Lfunc_end0-fmul
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fsquare_times
	.type	fsquare_times,@function
fsquare_times:                          # @fsquare_times
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rsp, %rbx
	movq	$-1, %r8
	sarq	$63, %rbx
	movq	(%rsi), %rax
	orq	%rbx, %rax
	movq	8(%rsi), %rbp
	orq	%rbx, %rbp
	movq	16(%rsi), %r10
	orq	%rbx, %r10
	movq	24(%rsi), %r9
	orq	%rbx, %r9
	movq	32(%rsi), %rcx
	orq	%rbx, %rcx
	testq	%rdx, %rdx
	je	.LBB1_1
# %bb.2:                                # %.lr.ph.preheader
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rdi, -48(%rsp)                 # 8-byte Spill
	cmoveq	%r8, %rbx
	movq	%rbx, -64(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rax,%rax), %rdi
	imulq	$38, %r10, %r11
	imulq	$38, %rcx, %rsi
	mulq	%rax
	movq	%rdx, %r8
	movq	%rax, %rbx
	movq	%rsi, %rax
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%r11, %rax
	mulq	%r9
	movq	%rdx, %r15
	movq	%rax, %r11
	addq	%rbx, %r11
	adcq	%r8, %r15
	addq	%r12, %r11
	adcq	%r14, %r15
	movq	%rdi, %rax
	mulq	%rbp
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	mulq	%r10
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9,8), %rax
	leaq	(%r9,%rax,2), %rax
	mulq	%r9
	movq	%rdx, %r13
	movq	%rax, %r14
	movq	%r10, %rax
	mulq	%rdi
	movq	%rdi, %r12
	movq	%rdi, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %r8
	movq	%rax, %rbx
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %rdi
	movq	%rax, %rsi
	addq	%rbx, %rsi
	adcq	%r8, %rdi
	movq	-72(%rsp), %rax                 # 8-byte Reload
	mulq	%r9
	movq	%rdx, %rbx
	addq	%rsi, %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	adcq	%rdi, %rbx
	movq	%rbp, %rdi
	addq	%rbp, %rdi
	movq	%r9, %rax
	mulq	%r12
	movq	%rdx, %rsi
	movq	%rax, %rbp
	movq	%rdi, %rax
	mulq	%r10
	movq	%rdx, %r12
	movq	%rax, %r8
	addq	%rbp, %r8
	adcq	%rsi, %r12
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%rcx,%rax,2), %rax
	mulq	%rcx
	movq	%rdx, %rsi
	movq	%rax, %rbp
	addq	%r8, %rbp
	adcq	%r12, %rsi
	movq	%rcx, %rax
	mulq	-80(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%r9, %rax
	mulq	%rdi
	movq	%rdx, %r8
	movq	%rax, %r12
	movq	%r10, %rax
	mulq	%r10
	shldq	$13, %r11, %r15
	movabsq	$2251799813685247, %rdi         # imm = 0x7FFFFFFFFFFFF
	andq	%rdi, %r11
	addq	-24(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-8(%rsp), %r13                  # 8-byte Folded Reload
	addq	-32(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-16(%rsp), %r13                 # 8-byte Folded Reload
	addq	%r15, %r14
	adcq	$0, %r13
	shldq	$13, %r14, %r13
	andq	%rdi, %r14
	addq	-72(%rsp), %r13                 # 8-byte Folded Reload
	adcq	$0, %rbx
	shldq	$13, %r13, %rbx
	andq	%rdi, %r13
	addq	%rbp, %rbx
	adcq	$0, %rsi
	shldq	$13, %rbx, %rsi
	movq	%rbx, %r9
	andq	%rdi, %r9
	movq	%rax, %rcx
	addq	%r12, %rcx
	adcq	%r8, %rdx
	addq	-40(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	-80(%rsp), %rdx                 # 8-byte Folded Reload
	addq	%rsi, %rcx
	adcq	$0, %rdx
	shldq	$13, %rcx, %rdx
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%rdx,%rax,2), %rax
	addq	%r11, %rax
	movq	%rax, %rbp
	shrq	$51, %rbp
	addq	%r14, %rbp
	movq	%rbp, %r10
	shrq	$51, %r10
	addq	%r13, %r10
	andq	%rdi, %rcx
	andq	%rdi, %rax
	andq	%rdi, %rbp
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	addq	$-1, %rdx
	je	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	$-1, %rsi
	cmoveq	%rsi, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
.LBB1_4:
	movq	-64(%rsp), %rbx                 # 8-byte Reload
	movq	$-1, %rdx
	cmovneq	%rdx, %rbx
	movq	-48(%rsp), %rdi                 # 8-byte Reload
	jmp	.LBB1_5
.LBB1_1:
	cmovneq	%r8, %rbx
.LBB1_5:                                # %._crit_edge
	movq	%rax, (%rdi)
	movq	%rbp, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r9, 24(%rdi)
	movq	%rcx, 32(%rdi)
	shlq	$47, %rbx
	orq	%rbx, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fsquare_times, .Lfunc_end1-fsquare_times
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function fmonty
.LCPI2_0:
	.quad	18014398509481832               # 0x3fffffffffff68
	.quad	18014398509481976               # 0x3ffffffffffff8
.LCPI2_1:
	.quad	18014398509481976               # 0x3ffffffffffff8
	.quad	18014398509481976               # 0x3ffffffffffff8
	.text
	.p2align	4, 0x90
	.type	fmonty,@function
fmonty:                                 # @fmonty
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp                      # imm = 0x168
	movq	%rsp, %rbx
	movq	%r9, %r15
	movq	%r8, %r12
	sarq	$63, %rbx
	movq	416(%rsp), %r8
	movq	%rbx, %rax
	orq	%r12, %rax
	movdqu	(%rax), %xmm1
	movdqu	16(%rax), %xmm0
	movq	32(%rax), %r9
	movq	32(%r8), %rbp
	orq	%rbx, %rbp
	movq	%rbp, 144(%rsp)
	movq	%rbx, %rbp
	orq	%r8, %rbp
	movups	(%rbp), %xmm2
	movups	16(%rbp), %xmm3
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm2, 112(%rsp)
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 288(%rsp)
	movaps	%xmm2, 272(%rsp)
	movq	$0, 304(%rsp)
	movaps	%xmm2, 240(%rsp)
	movaps	%xmm2, 224(%rsp)
	movq	$0, 256(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm2, 16(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm2, 64(%rsp)
	movq	$0, 96(%rsp)
	movaps	%xmm2, 160(%rsp)
	movaps	%xmm2, 176(%rsp)
	movq	$0, 192(%rsp)
	movaps	%xmm2, 336(%rsp)
	movaps	%xmm2, 320(%rsp)
	movq	$0, 352(%rsp)
	movq	%xmm1, %rax
	addq	(%r15), %rax
	orq	%rbx, %rax
	movq	%rax, (%r12)
	pshufd	$78, %xmm1, %xmm2               # xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	addq	8(%r15), %rax
	orq	%rbx, %rax
	movq	%rax, 8(%r12)
	movq	%xmm0, %rax
	addq	16(%r15), %rax
	orq	%rbx, %rax
	movq	%rax, 16(%r12)
	pshufd	$78, %xmm0, %xmm2               # xmm2 = xmm0[2,3,0,1]
	movq	%xmm2, %rax
	addq	24(%r15), %rax
	movq	424(%rsp), %r13
	orq	%rbx, %rax
	movq	%rax, 24(%r12)
	movq	32(%r15), %rax
	addq	%r9, %rax
	orq	%rbx, %rax
	movq	%rax, 32(%r12)
	movdqa	.LCPI2_0(%rip), %xmm4           # xmm4 = [18014398509481832,18014398509481976]
	movq	%rbx, %rax
	orq	%r15, %rax
	movdqu	(%rax), %xmm2
	movdqu	16(%rax), %xmm3
	psubq	%xmm2, %xmm1
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, (%r15)
	movdqa	.LCPI2_1(%rip), %xmm1           # xmm1 = [18014398509481976,18014398509481976]
	psubq	%xmm3, %xmm0
	paddq	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	movdqu	%xmm0, 16(%r15)
	movabsq	$18014398509481976, %r14        # imm = 0x3FFFFFFFFFFFF8
	addq	%r14, %r9
	subq	32(%rax), %r9
	movq	%r9, 32(%r15)
	movq	(%r13), %rax
	orq	%rbx, %rax
	addq	%rax, (%rbp)
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	8(%r13), %rax
	orq	%rbx, %rax
	addq	%rax, 8(%rbp)
	movq	16(%r13), %rax
	orq	%rbx, %rax
	addq	%rax, 16(%rbp)
	movq	24(%r13), %rax
	orq	%rbx, %rax
	addq	%rax, 24(%rbp)
	movq	32(%r13), %rax
	orq	%rbx, %rax
	addq	%rax, 32(%rbp)
	movdqa	112(%rsp), %xmm0
	movq	%rbx, %rax
	orq	%r13, %rax
	movdqu	(%rax), %xmm1
	psubq	%xmm1, %xmm0
	movdqu	16(%rax), %xmm1
	paddq	%xmm4, %xmm0
	movdqu	%xmm0, (%r13)
	movdqa	128(%rsp), %xmm0
	psubq	%xmm1, %xmm0
	paddq	%xmm2, %xmm0
	movdqu	%xmm0, 16(%r13)
	movq	144(%rsp), %rcx
	addq	%r14, %rcx
	subq	32(%rax), %rcx
	movq	%rcx, 32(%r13)
	leaq	64(%rsp), %rbp
	shlq	$47, %rbx
	movq	%rbp, %rdi
	movq	%r8, %rsi
	movq	%r15, %rdx
	orq	%rbx, %rsp
	callq	fmul
.Lslh_ret_addr0:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr0, %rcx
	movq	$-1, %rbx
	cmovneq	%rbx, %rax
	leaq	160(%rsp), %rdi
	shlq	$47, %rax
	movq	%r12, %rsi
	movq	%r13, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr1:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr1, %rcx
	cmovneq	%rbx, %rax
	movaps	64(%rsp), %xmm0
	movaps	80(%rsp), %xmm1
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm1, 128(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, 144(%rsp)
	movdqa	160(%rsp), %xmm0
	movdqa	176(%rsp), %xmm1
	movdqa	64(%rsp), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm2, 64(%rsp)
	movdqa	80(%rsp), %xmm2
	paddq	%xmm1, %xmm2
	movdqa	%xmm2, 80(%rsp)
	movq	192(%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp)
	movdqa	112(%rsp), %xmm2
	psubq	%xmm0, %xmm2
	paddq	.LCPI2_0(%rip), %xmm2
	movdqa	%xmm2, 160(%rsp)
	movdqa	128(%rsp), %xmm0
	psubq	%xmm1, %xmm0
	paddq	.LCPI2_1(%rip), %xmm0
	movdqa	%xmm0, 176(%rsp)
	movq	%r14, %rcx
	subq	%rdx, %rcx
	addq	144(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movl	$1, %edx
	shlq	$47, %rax
	movq	200(%rsp), %rdi                 # 8-byte Reload
	movq	%rbp, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr2:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr2, %rcx
	movq	$-1, %rbx
	cmovneq	%rbx, %rax
	leaq	320(%rsp), %rbp
	movl	$1, %edx
	shlq	$47, %rax
	movq	%rbp, %rdi
	leaq	160(%rsp), %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr3:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr3, %rcx
	cmovneq	%rbx, %rax
	movq	$-1, %rbx
	shlq	$47, %rax
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movq	%rbp, %rsi
	movq	432(%rsp), %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr4:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr4, %rcx
	cmovneq	%rbx, %rax
	movq	$-1, %rbx
	leaq	224(%rsp), %r13
	movl	$1, %edx
	shlq	$47, %rax
	movq	%r13, %rdi
	movq	%r12, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr5:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr5, %rcx
	cmovneq	%rbx, %rax
	movq	$-1, %rbx
	leaq	16(%rsp), %rbp
	movl	$1, %edx
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%r15, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr6:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr6, %rcx
	cmovneq	%rbx, %rax
	movq	$-1, %rbx
	shlq	$47, %rax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr7:
	movq	%rsp, %r9
	movq	-8(%rsp), %rax
	sarq	$63, %r9
	cmpq	$.Lslh_ret_addr7, %rax
	cmovneq	%rbx, %r9
	movq	224(%rsp), %r12
	movq	232(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leaq	(%r12,%r14), %rax
	subq	16(%rsp), %rax
	addq	$-144, %rax
	movq	%rax, 16(%rsp)
	leaq	(%rcx,%r14), %rbx
	subq	24(%rsp), %rbx
	movq	%rbx, 24(%rsp)
	movq	240(%rsp), %r11
	leaq	(%r11,%r14), %rbp
	subq	32(%rsp), %rbp
	movq	%rbp, 32(%rsp)
	movq	248(%rsp), %r15
	leaq	(%r15,%r14), %r8
	subq	40(%rsp), %r8
	movq	%r8, 40(%rsp)
	movq	256(%rsp), %r13
	addq	%r13, %r14
	subq	48(%rsp), %r14
	movl	$121665, %r10d                  # imm = 0x1DB41
	mulq	%r10
	movq	%rax, %rsi
	movq	%rdx, %rcx
	movabsq	$2251799813685247, %rdi         # imm = 0x7FFFFFFFFFFFF
	movq	%rbx, %rax
	mulq	%r10
	movq	%rcx, %rbx
	shrq	$51, %rbx
	shldq	$13, %rsi, %rcx
	andq	%rdi, %rsi
	addq	%rax, %rcx
	adcq	%rdx, %rbx
	movq	%rbp, %rax
	mulq	%r10
	movq	%rbx, %rbp
	shldq	$13, %rcx, %rbp
	andq	%rdi, %rcx
	shrq	$51, %rbx
	addq	%rax, %rbp
	adcq	%rdx, %rbx
	movq	%r8, %rax
	mulq	%r10
	movq	%rbx, %r8
	shldq	$13, %rbp, %r8
	andq	%rdi, %rbp
	shrq	$51, %rbx
	addq	%rax, %r8
	adcq	%rdx, %rbx
	movq	%r14, %rax
	mulq	%r10
	movq	%r14, 48(%rsp)
	movq	%rbx, %r10
	shldq	$13, %r8, %r10
	andq	%rdi, %r8
	shrq	$51, %rbx
	addq	%rax, %r10
	adcq	%rdx, %rbx
	andq	%r10, %rdi
	shldq	$13, %r10, %rbx
	leaq	(%rbx,%rbx,8), %rax
	leaq	(%rbx,%rax,2), %rax
	addq	%r12, %rsi
	addq	%rax, %rsi
	movq	%rsi, 272(%rsp)
	addq	8(%rsp), %rcx                   # 8-byte Folded Reload
	movq	%rcx, 280(%rsp)
	addq	%r11, %rbp
	movq	%rbp, 288(%rsp)
	addq	%r15, %r8
	movq	%r8, 296(%rsp)
	addq	%r13, %rdi
	movq	%rdi, 304(%rsp)
	leaq	272(%rsp), %rdx
	shlq	$47, %r9
	movq	216(%rsp), %rdi                 # 8-byte Reload
	leaq	16(%rsp), %rsi
	orq	%r9, %rsp
	callq	fmul
.Lslh_ret_addr8:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr8, %rcx
	movq	$-1, %rcx
	cmovneq	%rcx, %rax
	shlq	$47, %rax
	orq	%rax, %rsp
	addq	$360, %rsp                      # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fmonty, .Lfunc_end2-fmonty
                                        # -- End function
	.globl	curve25519_donna                # -- Begin function curve25519_donna
	.p2align	4, 0x90
	.type	curve25519_donna,@function
curve25519_donna:                       # @curve25519_donna
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$584, %rsp                      # imm = 0x248
	movq	%rsp, %r10
	movq	%rdi, 448(%rsp)                 # 8-byte Spill
	movq	$-1, %r12
	sarq	$63, %r10
	xorps	%xmm0, %xmm0
	movups	%xmm0, 424(%rsp)
	movq	$0, 440(%rsp)
	movaps	%xmm0, 496(%rsp)
	movaps	%xmm0, 512(%rsp)
	movq	$0, 528(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 384(%rsp)
	movq	$0, 400(%rsp)
	movaps	%xmm0, 544(%rsp)
	movaps	%xmm0, 560(%rsp)
	movq	$0, 576(%rsp)
	orq	%r10, %rsi
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movaps	%xmm1, 464(%rsp)
	movaps	%xmm2, 480(%rsp)
	andb	$-8, 464(%rsp)
	movb	495(%rsp), %cl
	andb	$63, %cl
	orb	$64, %cl
	movb	%cl, 495(%rsp)
	movl	(%rdx), %ecx
	orq	%r10, %rcx
	movzbl	4(%rdx), %esi
	shlq	$32, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	5(%rdx), %ecx
	shlq	$40, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	6(%rdx), %esi
	orq	%r10, %rsi
	movq	%rsi, %rdi
	shlq	$48, %rdi
	orq	%rcx, %rdi
	movabsq	$2251799813685247, %rax         # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rdi
	movq	%rdi, 408(%rsp)
	movzbl	7(%rdx), %ecx
	shlq	$8, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	8(%rdx), %esi
	shlq	$16, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	9(%rdx), %ecx
	shlq	$24, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	10(%rdx), %esi
	shlq	$32, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	11(%rdx), %ecx
	shlq	$40, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	12(%rdx), %esi
	orq	%r10, %rsi
	movq	%rsi, %rdi
	shlq	$48, %rdi
	orq	%rcx, %rdi
	shrq	$3, %rdi
	andq	%rax, %rdi
	movq	%rdi, 416(%rsp)
	movzbl	13(%rdx), %ecx
	shlq	$8, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	14(%rdx), %esi
	shlq	$16, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	15(%rdx), %ecx
	shlq	$24, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	16(%rdx), %esi
	shlq	$32, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	17(%rdx), %ecx
	shlq	$40, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	18(%rdx), %esi
	shlq	$48, %rsi
	movzbl	19(%rdx), %ebp
	orq	%r10, %rbp
	movq	%rbp, %rdi
	shlq	$56, %rdi
	orq	%rsi, %rdi
	orq	%rcx, %rdi
	shrq	$6, %rdi
	andq	%rax, %rdi
	orq	%r10, %rdi
	movq	%rdi, 424(%rsp)
	movzbl	20(%rdx), %ecx
	shlq	$8, %rcx
	orq	%r10, %rcx
	orq	%rbp, %rcx
	movzbl	21(%rdx), %esi
	shlq	$16, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	22(%rdx), %ecx
	shlq	$24, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	23(%rdx), %esi
	shlq	$32, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	24(%rdx), %ecx
	shlq	$40, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	25(%rdx), %esi
	orq	%r10, %rsi
	movq	%rsi, %rdi
	shlq	$48, %rdi
	orq	%rcx, %rdi
	shrq	%rdi
	andq	%rax, %rdi
	movq	%rdi, 432(%rsp)
	shlq	$8, %rsi
	movzbl	26(%rdx), %ecx
	shlq	$16, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	27(%rdx), %esi
	shlq	$24, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	28(%rdx), %ecx
	shlq	$32, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	29(%rdx), %esi
	shlq	$40, %rsi
	orq	%r10, %rsi
	orq	%rcx, %rsi
	movzbl	30(%rdx), %ecx
	shlq	$48, %rcx
	orq	%r10, %rcx
	orq	%rsi, %rcx
	movzbl	31(%rdx), %edx
	shlq	$56, %rdx
	orq	%rcx, %rdx
	shrq	$12, %rdx
	andq	%rax, %rdx
	orq	%r10, %rdx
	movq	%rdx, 440(%rsp)
	movups	%xmm0, 104(%rsp)
	movups	%xmm0, 120(%rsp)
	movups	%xmm0, 8(%rsp)
	movups	%xmm0, 24(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	$0, 272(%rsp)
	movups	%xmm0, 336(%rsp)
	movups	%xmm0, 352(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 208(%rsp)
	movq	$0, 224(%rsp)
	movups	%xmm0, 312(%rsp)
	movups	%xmm0, 296(%rsp)
	movq	$1, 96(%rsp)
	movq	$1, (%rsp)
	movq	$1, 328(%rsp)
	movq	$1, 288(%rsp)
	movq	440(%rsp), %rcx
	movq	%rcx, 176(%rsp)
	movups	408(%rsp), %xmm0
	movups	424(%rsp), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %r15
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	leaq	464(%rsp), %rcx
	movq	%rax, 456(%rsp)                 # 8-byte Spill
	subq	%rax, %rcx
	movzbl	31(%rcx), %ebp
	orb	%r10b, %bpl
	xorl	%r14d, %r14d
	testb	$1, %r14b
	jne	.LBB3_6
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	cmovneq	%r12, %r10
	movl	%ebp, %ebx
	shrb	$7, %bl
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	144(%rsp), %rsi
	movq	152(%rsp), %rdi
	movq	%rax, %rcx
	#APP
	testb	%bl, %bl
	cmovneq	%rsi, %rcx
	#NO_APP
	movq	%rcx, (%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rsi
	#NO_APP
	movq	%rsi, 144(%rsp)
	movq	%rdx, %rax
	#APP
	testb	%bl, %bl
	cmovneq	%rdi, %rax
	#NO_APP
	movq	%rax, 8(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rdx, %rdi
	#NO_APP
	movq	%rdi, 152(%rsp)
	movq	16(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 16(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 160(%rsp)
	movq	24(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 24(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 168(%rsp)
	movq	32(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 32(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 176(%rsp)
	movq	48(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 48(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 96(%rsp)
	movq	56(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 56(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 104(%rsp)
	movq	64(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 64(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 112(%rsp)
	movq	72(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 72(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 120(%rsp)
	movq	80(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 80(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 128(%rsp)
	addq	$-8, %rsp
	leaq	200(%rsp), %rdi
	leaq	296(%rsp), %rsi
	leaq	248(%rsp), %rdx
	leaq	336(%rsp), %rcx
	leaq	8(%rsp), %r8
	movq	%r15, %r9
	leaq	416(%rsp), %rax
	pushq	%rax
	leaq	112(%rsp), %rax
	pushq	%rax
	leaq	168(%rsp), %rax
	pushq	%rax
	shlq	$47, %r10
	orq	%r10, %rsp
	callq	fmonty
.Lslh_ret_addr9:
	movq	%rsp, %r10
	movq	-8(%rsp), %rax
	sarq	$63, %r10
	cmpq	$.Lslh_ret_addr9, %rax
	cmovneq	%r12, %r10
	leaq	32(%rsp), %rsp
	movq	192(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	240(%rsp), %rdx
	movq	248(%rsp), %rsi
	movq	%rax, %rdi
	#APP
	testb	%bl, %bl
	cmovneq	%rdx, %rdi
	#NO_APP
	movq	%rdi, 192(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 240(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%bl, %bl
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 200(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 248(%rsp)
	movq	208(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 208(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 256(%rsp)
	movq	216(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 216(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 264(%rsp)
	movq	224(%rsp), %rax
	movq	272(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 224(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 272(%rsp)
	movq	288(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 288(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 328(%rsp)
	movq	296(%rsp), %rax
	movq	336(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 296(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 336(%rsp)
	movq	304(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 304(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 344(%rsp)
	movq	312(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 312(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 352(%rsp)
	movq	320(%rsp), %rax
	movq	360(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 320(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 360(%rsp)
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	cmoveq	%r12, %r10
	movl	%ebp, %r13d
	shrb	$7, %r13b
	movq	192(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	240(%rsp), %rdx
	movq	248(%rsp), %rsi
	movq	%rax, %rdi
	#APP
	testb	%r13b, %r13b
	cmovneq	%rdx, %rdi
	#NO_APP
	movq	%rdi, 192(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 240(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%r13b, %r13b
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 200(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 248(%rsp)
	movq	208(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 208(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 256(%rsp)
	movq	216(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 216(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 264(%rsp)
	movq	224(%rsp), %rax
	movq	272(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 224(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 272(%rsp)
	movq	288(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 288(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 328(%rsp)
	movq	296(%rsp), %rax
	movq	336(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 296(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 336(%rsp)
	movq	304(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 304(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 344(%rsp)
	movq	312(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 312(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 352(%rsp)
	movq	320(%rsp), %rax
	movq	360(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 320(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 360(%rsp)
	addq	$-8, %rsp
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	leaq	152(%rsp), %rdx
	leaq	104(%rsp), %rcx
	leaq	200(%rsp), %r8
	leaq	296(%rsp), %r9
	leaq	416(%rsp), %rax
	pushq	%rax
	leaq	344(%rsp), %rax
	pushq	%rax
	leaq	264(%rsp), %rax
	pushq	%rax
	shlq	$47, %r10
	orq	%r10, %rsp
	callq	fmonty
.Lslh_ret_addr10:
	movq	%rsp, %r10
	movq	-8(%rsp), %rax
	sarq	$63, %r10
	cmpq	$.Lslh_ret_addr10, %rax
	cmovneq	%r12, %r10
	leaq	32(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	152(%rsp), %rsi
	movq	%rax, %rdi
	#APP
	testb	%r13b, %r13b
	cmovneq	%rdx, %rdi
	#NO_APP
	movq	%rdi, (%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 144(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%r13b, %r13b
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 8(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 152(%rsp)
	movq	16(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 16(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 160(%rsp)
	movq	24(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 24(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 168(%rsp)
	movq	32(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 32(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 176(%rsp)
	movq	48(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 48(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 96(%rsp)
	movq	56(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 56(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 104(%rsp)
	movq	64(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 64(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 112(%rsp)
	movq	72(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 72(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 120(%rsp)
	movq	80(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 80(%rsp)
	#APP
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 128(%rsp)
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	addb	%bpl, %bpl
	addl	$1, %r14d
	cmpl	$8, %r14d
	je	.LBB3_4
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
	cmoveq	%r12, %r10
	testb	$1, %r14b
	jne	.LBB3_6
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	cmovneq	%r12, %r10
	movq	456(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	cmpq	$32, %rax
	je	.LBB3_9
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	cmoveq	%r12, %r10
	jmp	.LBB3_1
.LBB3_9:                                # %cmult.exit
	cmovneq	%r12, %r10
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm1
	movaps	%xmm0, 496(%rsp)
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm2
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm1, 512(%rsp)
	movaps	%xmm2, 384(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 528(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 400(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movq	$0, 176(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	leaq	144(%rsp), %r15
	leaq	368(%rsp), %r14
	movl	$1, %edx
	shlq	$47, %r10
	movq	%r15, %rdi
	movq	%r14, %rsi
	orq	%r10, %rsp
	callq	fsquare_times
.Lslh_ret_addr11:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr11, %rcx
	cmovneq	%r12, %rax
	leaq	96(%rsp), %rbx
	movl	$2, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr12:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr12, %rcx
	cmovneq	%r12, %rax
	movq	%rsp, %rbp
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr13:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr13, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr14:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr14, %rcx
	cmovneq	%r12, %rax
	movl	$1, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr15:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr15, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr16:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr16, %rcx
	cmovneq	%r12, %rax
	movl	$5, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr17:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr17, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr18:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr18, %rcx
	cmovneq	%r12, %rax
	movl	$10, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr19:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr19, %rcx
	cmovneq	%r12, %rax
	leaq	48(%rsp), %r13
	shlq	$47, %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr20:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr20, %rcx
	cmovneq	%r12, %rax
	movl	$20, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr21:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr21, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr22:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr22, %rcx
	cmovneq	%r12, %rax
	movl	$10, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr23:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr23, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr24:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr24, %rcx
	cmovneq	%r12, %rax
	movl	$50, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr25:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr25, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr26:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr26, %rcx
	cmovneq	%r12, %rax
	movl	$100, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr27:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr27, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr28:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr28, %rcx
	cmovneq	%r12, %rax
	movl	$50, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr29:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr29, %rcx
	cmovneq	%r12, %rax
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr30:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr30, %rcx
	cmovneq	%r12, %rax
	movl	$5, %edx
	shlq	$47, %rax
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	orq	%rax, %rsp
	callq	fsquare_times
.Lslh_ret_addr31:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr31, %rcx
	cmovneq	%r12, %rax
	leaq	544(%rsp), %rbp
	shlq	$47, %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr32:
	movq	%rsp, %rax
	movq	-8(%rsp), %rcx
	sarq	$63, %rax
	cmpq	$.Lslh_ret_addr32, %rcx
	cmovneq	%r12, %rax
	leaq	496(%rsp), %rsi
	shlq	$47, %rax
	movq	%r14, %rdi
	movq	%rbp, %rdx
	orq	%rax, %rsp
	callq	fmul
.Lslh_ret_addr33:
	movq	%rsp, %r9
	movq	-8(%rsp), %rax
	sarq	$63, %r9
	cmpq	$.Lslh_ret_addr33, %rax
	cmovneq	%r12, %r9
	movq	368(%rsp), %rsi
	movq	%rsi, %r11
	shrq	$51, %r11
	xorl	%edi, %edi
	addq	376(%rsp), %r11
	setb	%dil
	shldq	$13, %r11, %rdi
	movabsq	$2251799813685247, %r12         # imm = 0x7FFFFFFFFFFFF
	andq	%r12, %rsi
	xorl	%ecx, %ecx
	addq	384(%rsp), %rdi
	setb	%cl
	shldq	$13, %rdi, %rcx
	andq	%r12, %r11
	xorl	%ebp, %ebp
	addq	392(%rsp), %rcx
	setb	%bpl
	shldq	$13, %rcx, %rbp
	andq	%r12, %rdi
	xorl	%eax, %eax
	addq	400(%rsp), %rbp
	setb	%al
	shldq	$13, %rbp, %rax
	movl	$19, %r8d
	mulq	%r8
	movq	%rax, %r10
	movq	%rdx, %rbx
	andq	%r12, %rcx
	addq	%rsi, %r10
	adcq	$0, %rbx
	andq	%r12, %rbp
	movq	%rbx, %rsi
	shldq	$13, %r10, %rbx
	shrq	$51, %rsi
	addq	%r11, %rbx
	adcq	$0, %rsi
	andq	%r12, %r10
	shldq	$13, %rbx, %rsi
	addq	%rdi, %rsi
	andq	%r12, %rbx
	movq	%rsi, %rdi
	shrq	$51, %rdi
	addq	%rcx, %rdi
	andq	%r12, %rsi
	movq	%rdi, %r15
	shrq	$51, %r15
	addq	%rbp, %r15
	andq	%r12, %rdi
	movq	%r15, %rax
	shrq	$51, %rax
	mulq	%r8
	movq	%rax, %r14
	movq	%rdx, %rcx
	andq	%r12, %r15
	addq	%r10, %r14
	adcq	$0, %rcx
	addq	$19, %r14
	adcq	$0, %rcx
	movq	%rcx, %rbp
	shldq	$13, %r14, %rcx
	shrq	$51, %rbp
	addq	%rbx, %rcx
	adcq	$0, %rbp
	andq	%r12, %r14
	shldq	$13, %rcx, %rbp
	addq	%rsi, %rbp
	andq	%r12, %rcx
	movq	%rbp, %r10
	shrq	$51, %r10
	addq	%rdi, %r10
	andq	%r12, %rbp
	movq	%r10, %r11
	shrq	$51, %r11
	addq	%r15, %r11
	andq	%r12, %r10
	movq	%r11, %rax
	shrq	$51, %rax
	mulq	%r8
	movq	%rax, %rsi
	addq	%r14, %rsi
	adcq	$0, %rdx
	movabsq	$2251799813685229, %rax         # imm = 0x7FFFFFFFFFFED
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rdx, %rsi
	shldq	$13, %rax, %rdx
	shrq	$51, %rsi
	addq	%rcx, %rdx
	adcq	$0, %rsi
	addq	%r12, %rdx
	adcq	$0, %rsi
	shldq	$13, %rdx, %rsi
	addq	%rbp, %rsi
	addq	%r12, %rsi
	movq	%rsi, %r14
	shrq	$51, %r14
	addq	%r10, %r14
	addq	%r12, %r14
	movq	%r14, %rcx
	shrq	$51, %rcx
	addq	%r11, %rcx
	movabsq	$1970324836974592, %rbx         # imm = 0x7000000000000
	andq	%rax, %rbx
	movq	%rdx, %rdi
	andq	%r12, %rdi
	andq	%rsi, %r12
	shlq	$12, %rcx
	movq	%rdi, %r8
	shrq	$13, %r8
	shlq	$51, %rdi
	orq	%rbx, %rdi
	movq	448(%rsp), %rbp                 # 8-byte Reload
	movb	%al, (%rbp)
	movb	%ah, 1(%rbp)
	movq	%rax, %rbx
	shrq	$16, %rbx
	movb	%bl, 2(%rbp)
	movq	%rax, %rbx
	shrq	$24, %rax
	movb	%al, 3(%rbp)
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, 4(%rbp)
	shrq	$40, %rbx
	movb	%bl, 5(%rbp)
	shrq	$48, %rdi
	movb	%dil, 6(%rbp)
	movq	%rdx, %rax
	shrq	$5, %rax
	movb	%al, 7(%rbp)
	movq	%r12, %rdi
	shrq	$26, %rdi
	shlq	$38, %r12
	orq	%r8, %r12
	movb	%r8b, 8(%rbp)
	movq	%rdx, %rax
	shrq	$21, %rax
	movb	%al, 9(%rbp)
	movq	%rdx, %rax
	shrq	$29, %rax
	movb	%al, 10(%rbp)
	shrq	$37, %rdx
	movb	%dl, 11(%rbp)
	shrq	$32, %r12
	movb	%r12b, 12(%rbp)
	movq	%rsi, %rax
	shrq	$2, %rax
	movb	%al, 13(%rbp)
	movq	%rsi, %rax
	shrq	$10, %rax
	movb	%al, 14(%rbp)
	movq	%rsi, %rax
	shrq	$18, %rax
	movb	%al, 15(%rbp)
	movq	%r14, %rdx
	shrq	$39, %rdx
	movl	%r14d, %eax
	shll	$25, %eax
	addl	%edi, %eax
	shrl	$24, %eax
	movb	%dil, 16(%rbp)
	movq	%rsi, %rdi
	shrq	$34, %rdi
	movb	%dil, 17(%rbp)
	shrq	$42, %rsi
	movb	%sil, 18(%rbp)
	movb	%al, 19(%rbp)
	movq	%r14, %rax
	shrq	$7, %rax
	movb	%al, 20(%rbp)
	movq	%r14, %rax
	shrq	$15, %rax
	movb	%al, 21(%rbp)
	movq	%r14, %rax
	shrq	$23, %rax
	movb	%al, 22(%rbp)
	shrq	$31, %r14
	movb	%r14b, 23(%rbp)
	movb	%dl, 24(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$4095, %edx                     # imm = 0xFFF
	addq	$-4096, %rcx                    # imm = 0xF000
	orl	%ecx, %edx
	movb	%dh, 25(%rbp)
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, 26(%rbp)
	movq	%rcx, %rax
	shrq	$24, %rax
	movb	%al, 27(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movb	%al, 28(%rbp)
	movq	%rcx, %rax
	shrq	$40, %rax
	movb	%al, 29(%rbp)
	movq	%rcx, %rax
	shrq	$48, %rax
	movb	%al, 30(%rbp)
	shrq	$56, %rcx
	andl	$127, %ecx
	movb	%cl, 31(%rbp)
	shlq	$47, %r9
	xorl	%eax, %eax
	orq	%r9, %rsp
	addq	$584, %rsp                      # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	curve25519_donna, .Lfunc_end3-curve25519_donna
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
