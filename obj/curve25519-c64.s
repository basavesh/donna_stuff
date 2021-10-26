	.text
	.file	"Module"
	.p2align	4, 0x90                         # -- Begin function swap_conditional
	.type	swap_conditional,@function
swap_conditional:                       # @swap_conditional
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	xorl	%r8d, %r8d
	movb	$1, -1(%rsp)
	cmpq	$1, %rdx
	sete	%r9b
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	movb	%r9b, -33(%rsp)                 # 1-byte Spill
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	%r8d, -52(%rsp)                 # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rsp), %eax                 # 4-byte Reload
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	cmpl	$5, %eax
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmovaeq	%rcx, %rax
	movl	-56(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movq	-24(%rsp), %r8                  # 8-byte Reload
	movq	(%r8,%rdi,8), %rdi
	movl	%edx, %esi
	movl	%esi, %r9d
	movl	%edx, %esi
	movl	%esi, %r10d
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movq	(%r11,%r10,8), %r10
	movb	-33(%rsp), %bl                  # 1-byte Reload
	andb	$1, %bl
	movq	(%r8,%r9,8), %r14
	movq	%rax, %r15
	orq	%r10, %r15
	movq	%rax, %r10
	orq	%r14, %r10
	#APP
	testb	%bl, %bl
	cmovneq	%r15, %r10
	#NO_APP
	movq	%r10, (%r8,%r9,8)
	movl	%edx, %esi
	movl	%esi, %r9d
	movb	-33(%rsp), %bl                  # 1-byte Reload
	andb	$1, %bl
	movq	(%r11,%r9,8), %r10
	movq	%rax, %r14
	orq	%rdi, %r14
	movq	%rax, %rdi
	orq	%r10, %rdi
	#APP
	testb	%bl, %bl
	cmovneq	%r14, %rdi
	#NO_APP
	movq	%rdi, (%r11,%r9,8)
	movq	%rax, -72(%rsp)                 # 8-byte Spill
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rsp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	%eax, -52(%rsp)                 # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmovbq	%rcx, %rax
	shlq	$47, %rax
	orq	%rax, %rsp
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	swap_conditional, .Lfunc_end0-swap_conditional
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fmul
	.type	fmul,@function
fmul:                                   # @fmul
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$304, %rsp                      # imm = 0x130
	.cfi_def_cfa_offset 312
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movb	$1, 303(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 280(%rsp)
	movaps	%xmm0, 264(%rsp)
	movaps	%xmm0, 248(%rsp)
	movaps	%xmm0, 232(%rsp)
	movaps	%xmm0, 216(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 128(%rsp)
	movq	(%rdx), %r8
	movq	%rcx, %r9
	orq	%r8, %r9
	movq	%r9, 208(%rsp)
	movq	8(%rdx), %r8
	movq	%rcx, %r9
	orq	%r8, %r9
	movq	%r9, 200(%rsp)
	movq	16(%rdx), %r8
	movq	%rcx, %r9
	orq	%r8, %r9
	movq	%r9, 192(%rsp)
	movq	24(%rdx), %r8
	movq	%rcx, %r9
	orq	%r8, %r9
	movq	%r9, 184(%rsp)
	movq	32(%rdx), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 176(%rsp)
	movq	(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 168(%rsp)
	movq	8(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 160(%rsp)
	movq	16(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 152(%rsp)
	movq	24(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 144(%rsp)
	movq	32(%rsi), %rdx
	movq	%rcx, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 136(%rsp)
	movq	208(%rsp), %rdx
	movq	168(%rsp), %rsi
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	%rdx, 224(%rsp)
	movq	%rax, 216(%rsp)
	movq	208(%rsp), %rax
	movq	160(%rsp), %rdx
	mulq	%rdx
	movq	200(%rsp), %rsi
	movq	168(%rsp), %r8
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	112(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 232(%rsp)
	movq	%rax, 240(%rsp)
	movq	208(%rsp), %rax
	movq	152(%rsp), %rdx
	mulq	%rdx
	movq	192(%rsp), %rsi
	movq	168(%rsp), %r8
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	mulq	%r8
	movq	96(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	200(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 248(%rsp)
	movq	%rax, 256(%rsp)
	movq	208(%rsp), %rax
	movq	144(%rsp), %rdx
	mulq	%rdx
	movq	184(%rsp), %rsi
	movq	168(%rsp), %r8
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	mulq	%r8
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	200(%rsp), %rdx
	movq	152(%rsp), %r8
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	192(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 264(%rsp)
	movq	%rax, 272(%rsp)
	movq	208(%rsp), %rax
	movq	136(%rsp), %rdx
	mulq	%rdx
	movq	176(%rsp), %rsi
	movq	168(%rsp), %r8
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	mulq	%r8
	movq	40(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	184(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	200(%rsp), %rdx
	movq	144(%rsp), %r8
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	192(%rsp), %rdx
	movq	152(%rsp), %r8
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 280(%rsp)
	movq	%rax, 288(%rsp)
	movq	176(%rsp), %rax
	leaq	(%rax,%rax,8), %rdx
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 176(%rsp)
	movq	200(%rsp), %rax
	leaq	(%rax,%rax,8), %rdx
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 200(%rsp)
	movq	192(%rsp), %rax
	leaq	(%rax,%rax,8), %rdx
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 192(%rsp)
	movq	184(%rsp), %rax
	leaq	(%rax,%rax,8), %rdx
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 184(%rsp)
	movq	216(%rsp), %rax
	movq	224(%rsp), %rdx
	movq	176(%rsp), %rsi
	movq	160(%rsp), %r8
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	mulq	%r8
	movq	200(%rsp), %rsi
	movq	136(%rsp), %r8
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	movq	-24(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	192(%rsp), %rdx
	movq	144(%rsp), %r8
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-32(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	184(%rsp), %rdx
	movq	152(%rsp), %r8
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-40(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	(%rsp), %rdx                    # 8-byte Reload
	addq	%rsi, %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	adcq	%rax, %rsi
	movq	%rdx, 216(%rsp)
	movq	%rsi, 224(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rdx
	movq	176(%rsp), %rsi
	movq	152(%rsp), %r8
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	192(%rsp), %rsi
	movq	136(%rsp), %r8
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	movq	-72(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	184(%rsp), %rdx
	movq	144(%rsp), %r8
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-80(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	addq	%rsi, %rdx
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	adcq	%rax, %rsi
	movq	%rdx, 232(%rsp)
	movq	%rsi, 240(%rsp)
	movq	248(%rsp), %rax
	movq	256(%rsp), %rdx
	movq	176(%rsp), %rsi
	movq	144(%rsp), %r8
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	184(%rsp), %rsi
	movq	136(%rsp), %r8
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	mulq	%r8
	movq	-104(%rsp), %rsi                # 8-byte Reload
	addq	%rax, %rsi
	movq	-112(%rsp), %rax                # 8-byte Reload
	adcq	%rdx, %rax
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	addq	%rsi, %rdx
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	adcq	%rax, %rsi
	movq	%rdx, 248(%rsp)
	movq	%rsi, 256(%rsp)
	movq	264(%rsp), %rax
	movq	272(%rsp), %rdx
	movq	176(%rsp), %rsi
	movq	136(%rsp), %r8
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	mulq	%r8
	movq	-120(%rsp), %rsi                # 8-byte Reload
	addq	%rax, %rsi
	movq	-128(%rsp), %rax                # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 264(%rsp)
	movq	%rax, 272(%rsp)
	movq	216(%rsp), %rax
	movabsq	$2251799813685247, %rdx         # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	movq	%rax, 208(%rsp)
	movq	216(%rsp), %rax
	movq	224(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 128(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rsi
	movq	128(%rsp), %r8
	addq	%r8, %rax
	adcq	$0, %rsi
	movq	%rax, 232(%rsp)
	movq	%rsi, 240(%rsp)
	movq	232(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 200(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 128(%rsp)
	movq	248(%rsp), %rax
	movq	256(%rsp), %rsi
	movq	128(%rsp), %r8
	addq	%r8, %rax
	adcq	$0, %rsi
	movq	%rax, 248(%rsp)
	movq	%rsi, 256(%rsp)
	movq	248(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 192(%rsp)
	movq	248(%rsp), %rax
	movq	256(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 128(%rsp)
	movq	264(%rsp), %rax
	movq	272(%rsp), %rsi
	movq	128(%rsp), %r8
	addq	%r8, %rax
	adcq	$0, %rsi
	movq	%rax, 264(%rsp)
	movq	%rsi, 272(%rsp)
	movq	264(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 184(%rsp)
	movq	264(%rsp), %rax
	movq	272(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 128(%rsp)
	movq	280(%rsp), %rax
	movq	288(%rsp), %rsi
	movq	128(%rsp), %r8
	addq	%r8, %rax
	adcq	$0, %rsi
	movq	%rax, 280(%rsp)
	movq	%rsi, 288(%rsp)
	movq	280(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 176(%rsp)
	movq	280(%rsp), %rax
	movq	288(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 128(%rsp)
	movq	208(%rsp), %rax
	imulq	$19, 128(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 128(%rsp)
	movabsq	$2251799813685247, %rax         # imm = 0x7FFFFFFFFFFFF
	andq	208(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	200(%rsp), %rax
	addq	128(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 128(%rsp)
	movabsq	$2251799813685247, %rax         # imm = 0x7FFFFFFFFFFFF
	andq	200(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	192(%rsp), %rax
	addq	128(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, (%rdi)
	movq	200(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	192(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	184(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	176(%rsp), %rax
	movq	%rax, 32(%rdi)
	shlq	$47, %rcx
	orq	%rcx, %rsp
	addq	$304, %rsp                      # imm = 0x130
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	fmul, .Lfunc_end1-fmul
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fsum
	.type	fsum,@function
fsum:                                   # @fsum
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movb	$1, -1(%rsp)
	movq	(%rdi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%rcx, %rdx
	orq	%rsi, %rdx
	addq	(%rdx), %r8
	movq	%r8, (%rdi)
	movq	8(%rdi), %rsi
	movq	%rcx, %r8
	orq	%rsi, %r8
	addq	8(%rdx), %r8
	movq	%r8, 8(%rdi)
	movq	16(%rdi), %rsi
	movq	%rcx, %r8
	orq	%rsi, %r8
	addq	16(%rdx), %r8
	movq	%r8, 16(%rdi)
	movq	24(%rdi), %rsi
	movq	%rcx, %r8
	orq	%rsi, %r8
	addq	24(%rdx), %r8
	movq	%r8, 24(%rdi)
	movq	32(%rdi), %rsi
	movq	%rcx, %r8
	orq	%rsi, %r8
	addq	32(%rdx), %r8
	movq	%r8, 32(%rdi)
	shlq	$47, %rcx
	orq	%rcx, %rsp
	retq
.Lfunc_end2:
	.size	fsum, .Lfunc_end2-fsum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fscalar_product
	.type	fscalar_product,@function
fscalar_product:                        # @fscalar_product
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movb	$1, -1(%rsp)
	movq	$0, -16(%rsp)
	movq	$0, -24(%rsp)
	movq	(%rsi), %r8
	movq	%rcx, %r9
	orq	%r8, %r9
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%r9, %rax
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	mulq	%rdx
	movq	%rdx, -16(%rsp)
	movq	%rax, -24(%rsp)
	movq	-24(%rsp), %rax
	movabsq	$2251799813685247, %rdx         # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rcx, %r8
	orq	%rax, %r8
	movq	%r8, %rax
	movq	-40(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	mulq	%r8
	movq	-24(%rsp), %r9
	movq	-16(%rsp), %r10
	shldq	$13, %r9, %r10
	addq	%r10, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rcx, %r9
	orq	%rax, %r9
	movq	%r9, %rax
	mulq	%r8
	movq	-24(%rsp), %r9
	movq	-16(%rsp), %r10
	shldq	$13, %r9, %r10
	addq	%r10, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rcx, %r9
	orq	%rax, %r9
	movq	%r9, %rax
	mulq	%r8
	movq	-24(%rsp), %r9
	movq	-16(%rsp), %r10
	shldq	$13, %r9, %r10
	addq	%r10, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rcx, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	mulq	%r8
	movq	-24(%rsp), %rsi
	movq	-16(%rsp), %r9
	shldq	$13, %rsi, %r9
	addq	%r9, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 32(%rdi)
	movq	(%rdi), %rax
	movq	%rcx, %rsi
	orq	%rax, %rsi
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %r9
	shldq	$13, %rax, %r9
	leaq	(%r9,%r9,8), %rax
	leaq	(%r9,%rax,2), %rax
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	shlq	$47, %rcx
	orq	%rcx, %rsp
	retq
.Lfunc_end3:
	.size	fscalar_product, .Lfunc_end3-fscalar_product
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fdifference_backwards
	.type	fdifference_backwards,@function
fdifference_backwards:                  # @fdifference_backwards
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movb	$1, -1(%rsp)
	movabsq	$18014398509481832, %rdx        # imm = 0x3FFFFFFFFFFF68
	movq	%rcx, %r8
	orq	%rsi, %r8
	addq	(%r8), %rdx
	movq	%rcx, %rsi
	orq	%rdi, %rsi
	subq	(%rsi), %rdx
	movq	%rdx, (%rdi)
	movabsq	$18014398509481976, %rdx        # imm = 0x3FFFFFFFFFFFF8
	addq	8(%r8), %rdx
	subq	8(%rsi), %rdx
	movq	%rdx, 8(%rdi)
	movabsq	$18014398509481976, %rdx        # imm = 0x3FFFFFFFFFFFF8
	addq	16(%r8), %rdx
	subq	16(%rsi), %rdx
	movq	%rdx, 16(%rdi)
	movabsq	$18014398509481976, %rdx        # imm = 0x3FFFFFFFFFFFF8
	addq	24(%r8), %rdx
	subq	24(%rsi), %rdx
	movq	%rdx, 24(%rdi)
	movabsq	$18014398509481976, %rdx        # imm = 0x3FFFFFFFFFFFF8
	addq	32(%r8), %rdx
	subq	32(%rsi), %rdx
	movq	%rdx, 32(%rdi)
	shlq	$47, %rcx
	orq	%rcx, %rsp
	retq
.Lfunc_end4:
	.size	fdifference_backwards, .Lfunc_end4-fdifference_backwards
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fsquare_times
	.type	fsquare_times,@function
fsquare_times:                          # @fsquare_times
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$376, %rsp                      # imm = 0x178
	.cfi_def_cfa_offset 384
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
	movb	$1, 375(%rsp)
	leaq	288(%rsp), %r10
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movl	%r8d, %esi
	movl	$80, %r10d
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	%r10, %rdx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	%r9, 160(%rsp)                  # 8-byte Spill
	callq	memset
.Lslh_ret_addr0:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr0, %rax
	movq	168(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	$0, 280(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 200(%rsp)
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 280(%rsp)
	movq	8(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 272(%rsp)
	movq	16(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 264(%rsp)
	movq	24(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 256(%rsp)
	movq	32(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 248(%rsp)
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	176(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	jae	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	cmovaeq	%rcx, %rax
	movq	280(%rsp), %rdx
	addq	%rdx, %rdx
	movq	%rdx, 232(%rsp)
	movq	272(%rsp), %rdx
	addq	%rdx, %rdx
	movq	%rdx, 224(%rsp)
	movq	264(%rsp), %rdx
	imulq	$38, %rdx, %rdx
	movq	%rdx, 216(%rsp)
	movq	248(%rsp), %rdx
	leaq	(%rdx,%rdx,8), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	movq	%rdx, 200(%rsp)
	movq	200(%rsp), %rdx
	addq	%rdx, %rdx
	movq	%rdx, 208(%rsp)
	movq	280(%rsp), %rdx
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdx
	movq	208(%rsp), %rsi
	movq	272(%rsp), %rdi
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	mulq	%rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	%rdx, %rax
	movq	216(%rsp), %rdx
	movq	256(%rsp), %rdi
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rsi
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 288(%rsp)
	movq	%rax, 296(%rsp)
	movq	232(%rsp), %rax
	movq	272(%rsp), %rdx
	mulq	%rdx
	movq	208(%rsp), %rsi
	movq	264(%rsp), %rdi
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	mulq	%rdi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	256(%rsp), %rdx
	leaq	(%rdx,%rdx,8), %rdi
	leaq	(%rdx,%rdi,2), %rdi
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rsi
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 304(%rsp)
	movq	%rax, 312(%rsp)
	movq	232(%rsp), %rax
	movq	264(%rsp), %rdx
	mulq	%rdx
	movq	272(%rsp), %rsi
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	mulq	%rsi
	movq	64(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	208(%rsp), %rdx
	movq	256(%rsp), %rdi
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rsi
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 320(%rsp)
	movq	%rax, 328(%rsp)
	movq	232(%rsp), %rax
	movq	256(%rsp), %rdx
	mulq	%rdx
	movq	224(%rsp), %rsi
	movq	264(%rsp), %rdi
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	mulq	%rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	248(%rsp), %rdx
	movq	200(%rsp), %rdi
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rsi
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	232(%rsp), %rax
	movq	248(%rsp), %rdx
	mulq	%rdx
	movq	224(%rsp), %rsi
	movq	256(%rsp), %rdi
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	mulq	%rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	%rdx, %rax
	movq	264(%rsp), %rdx
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdx
	addq	%rax, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 352(%rsp)
	movq	%rax, 360(%rsp)
	movq	288(%rsp), %rax
	movabsq	$2251799813685247, %rdx         # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	movq	%rax, 280(%rsp)
	movq	288(%rsp), %rax
	movq	296(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	304(%rsp), %rax
	movq	312(%rsp), %rsi
	movq	240(%rsp), %rdi
	addq	%rdi, %rax
	adcq	$0, %rsi
	movq	%rax, 304(%rsp)
	movq	%rsi, 312(%rsp)
	movq	304(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 272(%rsp)
	movq	304(%rsp), %rax
	movq	312(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rsi
	movq	240(%rsp), %rdi
	addq	%rdi, %rax
	adcq	$0, %rsi
	movq	%rax, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	320(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 264(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rsi
	movq	240(%rsp), %rdi
	addq	%rdi, %rax
	adcq	$0, %rsi
	movq	%rax, 336(%rsp)
	movq	%rsi, 344(%rsp)
	movq	336(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 256(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rsi
	shldq	$13, %rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	352(%rsp), %rax
	movq	360(%rsp), %rsi
	movq	240(%rsp), %rdi
	addq	%rdi, %rax
	adcq	$0, %rsi
	movq	%rax, 352(%rsp)
	movq	%rsi, 360(%rsp)
	movq	352(%rsp), %rax
	andq	%rdx, %rax
	movq	%rax, 248(%rsp)
	movq	352(%rsp), %rax
	movq	360(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 240(%rsp)
	movq	280(%rsp), %rax
	imulq	$19, 240(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 280(%rsp)
	movq	280(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 240(%rsp)
	movabsq	$2251799813685247, %rax         # imm = 0x7FFFFFFFFFFFF
	andq	280(%rsp), %rax
	movq	%rax, 280(%rsp)
	movq	272(%rsp), %rax
	addq	240(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	272(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 240(%rsp)
	movabsq	$2251799813685247, %rax         # imm = 0x7FFFFFFFFFFFF
	andq	272(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	264(%rsp), %rax
	addq	240(%rsp), %rax
	movq	%rax, 264(%rsp)
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB5_1
.LBB5_4:
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	cmovbq	%rcx, %rax
	movq	280(%rsp), %rdx
	movq	192(%rsp), %rsi                 # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	272(%rsp), %rdx
	movq	%rdx, 8(%rsi)
	movq	264(%rsp), %rdx
	movq	%rdx, 16(%rsi)
	movq	256(%rsp), %rdx
	movq	%rdx, 24(%rsi)
	movq	248(%rsp), %rdx
	movq	%rdx, 32(%rsi)
	shlq	$47, %rax
	orq	%rax, %rsp
	addq	$376, %rsp                      # imm = 0x178
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	fsquare_times, .Lfunc_end5-fsquare_times
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fmonty
	.type	fmonty,@function
fmonty:                                 # @fmonty
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$464, %rsp                      # imm = 0x1D0
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	$-1, %rax
	movq	%rsp, %r10
	sarq	$63, %r10
	movq	528(%rsp), %r11
	movq	520(%rsp), %rbx
	movq	512(%rsp), %r14
	xorl	%ebp, %ebp
	movb	$1, 463(%rsp)
	leaq	416(%rsp), %r15
	movq	%r8, %r12
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	%r15, %rdi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%r12, %rsi
	movl	$40, %r15d
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movq	%r15, %rdx
	shlq	$47, %r10
	orq	%r10, %rsp
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%r9, 96(%rsp)                   # 8-byte Spill
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%r11, 72(%rsp)                  # 8-byte Spill
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movl	%ebp, 52(%rsp)                  # 4-byte Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	callq	memcpy
.Lslh_ret_addr1:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr1, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	376(%rsp), %rdx
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	%rdx, %rdi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memcpy
.Lslh_ret_addr2:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr2, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	336(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr3:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr3, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	296(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr4:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr4, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	256(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr5:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr5, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	216(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr6:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr6, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	176(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr7:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr7, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	136(%rsp), %rdx
	movq	%rdx, %rdi
	movl	52(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr8:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr8, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	96(%rsp), %rsi                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsum
.Lslh_ret_addr9:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr9, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	96(%rsp), %rdi                  # 8-byte Reload
	leaq	416(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fdifference_backwards
.Lslh_ret_addr10:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr10, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsum
.Lslh_ret_addr11:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr11, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	64(%rsp), %rdi                  # 8-byte Reload
	leaq	376(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fdifference_backwards
.Lslh_ret_addr12:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr12, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	216(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr13:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr13, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	176(%rsp), %rdi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr14:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr14, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	xorl	%ebp, %ebp
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%ebp, 28(%rsp)                  # 4-byte Spill
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	28(%rsp), %eax                  # 4-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpl	$5, %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	jae	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	cmovaeq	%rcx, %rax
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%esi, %r8d
	movq	216(%rsp,%r8,8), %r8
	movq	%rax, %r9
	orq	%r8, %r9
	movq	%r9, 376(%rsp,%rdi,8)
	movq	%rax, 8(%rsp)                   # 8-byte Spill
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	24(%rsp), %eax                  # 4-byte Reload
	addl	$1, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	cmovbq	%rcx, %rax
	leaq	216(%rsp), %rdi
	leaq	176(%rsp), %rsi
	shlq	$47, %rax
	orq	%rax, %rsp
	callq	fsum
.Lslh_ret_addr15:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr15, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	176(%rsp), %rdi
	leaq	376(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fdifference_backwards
.Lslh_ret_addr16:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr16, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	112(%rsp), %rdi                 # 8-byte Reload
	leaq	216(%rsp), %rsi
	movl	$1, %edx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsquare_times
.Lslh_ret_addr17:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr17, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	136(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movl	$1, %edx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsquare_times
.Lslh_ret_addr18:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr18, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	leaq	136(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr19:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr19, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	296(%rsp), %rdi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movl	$1, %edx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsquare_times
.Lslh_ret_addr20:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr20, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	256(%rsp), %rdi
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movl	$1, %edx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsquare_times
.Lslh_ret_addr21:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr21, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	128(%rsp), %rdi                 # 8-byte Reload
	leaq	296(%rsp), %rsi
	leaq	256(%rsp), %rdx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr22:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr22, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	256(%rsp), %rdi
	leaq	296(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fdifference_backwards
.Lslh_ret_addr23:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr23, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	336(%rsp), %rdi
	leaq	256(%rsp), %rsi
	movl	$121665, %edx                   # imm = 0x1DB41
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fscalar_product
.Lslh_ret_addr24:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr24, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	336(%rsp), %rdi
	leaq	296(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fsum
.Lslh_ret_addr25:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr25, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	120(%rsp), %rdi                 # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	336(%rsp), %rdx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr26:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr26, %rax
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmovneq	%rax, %rcx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	addq	$464, %rsp                      # imm = 0x1D0
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	fmonty, .Lfunc_end6-fmonty
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function cmult
	.type	cmult,@function
cmult:                                  # @cmult
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp                      # imm = 0x240
	movq	$-1, %rax
	movq	%rsp, %r8
	sarq	$63, %r8
	xorl	%r9d, %r9d
	movb	$1, -1(%rbp)
	leaq	-48(%rbp), %r10
	movq	%rdi, -336(%rbp)                # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -344(%rbp)                # 8-byte Spill
	movl	%r9d, %esi
	movl	$40, %r10d
	movq	%rdx, -352(%rbp)                # 8-byte Spill
	movq	%r10, %rdx
	shlq	$47, %r8
	orq	%r8, %rsp
	movq	%rax, -360(%rbp)                # 8-byte Spill
	movq	%rcx, -368(%rbp)                # 8-byte Spill
	movl	%r9d, -372(%rbp)                # 4-byte Spill
	movq	%r10, -384(%rbp)                # 8-byte Spill
	callq	memset
.Lslh_ret_addr27:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr27, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr28:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr28, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr29:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr29, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-168(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr30:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr30, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr31:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr31, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-248(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr32:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr32, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr33:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr33, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-328(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr34:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr34, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	$1, -88(%rbp)
	movq	$1, -128(%rbp)
	movq	$1, -248(%rbp)
	movq	$1, -328(%rbp)
	movl	-372(%rbp), %esi                # 4-byte Reload
	movq	%rcx, -392(%rbp)                # 8-byte Spill
	movl	%esi, -396(%rbp)                # 4-byte Spill
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-396(%rbp), %eax                # 4-byte Reload
	movq	-392(%rbp), %rcx                # 8-byte Reload
	cmpl	$5, %eax
	movl	%eax, -400(%rbp)                # 4-byte Spill
	movq	%rcx, -408(%rbp)                # 8-byte Spill
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-408(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovaeq	%rcx, %rax
	movl	-400(%rbp), %edx                # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%esi, %r8d
	movq	-368(%rbp), %r9                 # 8-byte Reload
	movq	(%r9,%r8,8), %r8
	movq	%rax, %r10
	orq	%r8, %r10
	movq	%r10, -48(%rbp,%rdi,8)
	movq	%rax, -416(%rbp)                # 8-byte Spill
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-400(%rbp), %eax                # 4-byte Reload
	addl	$1, %eax
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -392(%rbp)                # 8-byte Spill
	movl	%eax, -396(%rbp)                # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:
	movq	-408(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovbq	%rcx, %rax
	xorl	%edx, %edx
	movq	%rax, -424(%rbp)                # 8-byte Spill
	movl	%edx, -428(%rbp)                # 4-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movl	-428(%rbp), %eax                # 4-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	cmpl	$32, %eax
	movl	%eax, -432(%rbp)                # 4-byte Spill
	movq	%rcx, -440(%rbp)                # 8-byte Spill
	jae	.LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovaeq	%rcx, %rax
	xorl	%edx, %edx
	movl	$31, %esi
	movl	-432(%rbp), %edi                # 4-byte Reload
	subl	%edi, %esi
	movl	%esi, %r8d
	movq	-352(%rbp), %r9                 # 8-byte Reload
	movb	(%r9,%r8), %r10b
	movb	%al, %r11b
	orb	%r10b, %r11b
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movb	%r11b, (%r8)
	movq	%r8, -448(%rbp)                 # 8-byte Spill
	movq	%rax, -456(%rbp)                # 8-byte Spill
	movl	%edx, -460(%rbp)                # 4-byte Spill
	jmp	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_5 Depth=1
	movl	-432(%rbp), %eax                # 4-byte Reload
	addl	$1, %eax
	movq	-472(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -424(%rbp)                # 8-byte Spill
	movl	%eax, -428(%rbp)                # 4-byte Spill
	jmp	.LBB7_5
.LBB7_8:
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovbq	%rcx, %rax
	xorl	%edx, %edx
	movq	%rax, -480(%rbp)                # 8-byte Spill
	movl	%edx, -484(%rbp)                # 4-byte Spill
	jmp	.LBB7_16
.LBB7_9:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-460(%rbp), %eax                # 4-byte Reload
	movq	-456(%rbp), %rcx                # 8-byte Reload
	cmpl	$8, %eax
	movl	%eax, -488(%rbp)                # 4-byte Spill
	movq	%rcx, -496(%rbp)                # 8-byte Spill
	jae	.LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-496(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovaeq	%rcx, %rax
	movq	-448(%rbp), %rdx                # 8-byte Reload
	movb	(%rdx), %sil
	movb	%al, %dil
	orb	%sil, %dil
	shrb	$7, %dil
	movzbl	%dil, %r8d
	movl	%r8d, %r9d
	movl	-488(%rbp), %r8d                # 4-byte Reload
	andl	$1, %r8d
	cmpl	$0, %r8d
	movq	%rax, -504(%rbp)                # 8-byte Spill
	movq	%r9, -512(%rbp)                 # 8-byte Spill
	je	.LBB7_13
	jmp	.LBB7_14
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=2
	movl	-488(%rbp), %eax                # 4-byte Reload
	addl	$1, %eax
	movq	-520(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -456(%rbp)                # 8-byte Spill
	movl	%eax, -460(%rbp)                # 4-byte Spill
	jmp	.LBB7_9
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=1
	movq	-496(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovbq	%rcx, %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	jmp	.LBB7_7
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovneq	%rcx, %rax
	leaq	-128(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rax
	orq	%rax, %rsp
	callq	swap_conditional
.Lslh_ret_addr35:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr35, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-168(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr36:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr36, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-32(%rsp), %rsp
	leaq	-288(%rbp), %rdi
	leaq	-328(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	leaq	-248(%rbp), %r8
	movq	%rcx, -528(%rbp)                # 8-byte Spill
	movq	%r8, %rcx
	leaq	-128(%rbp), %r8
	leaq	-168(%rbp), %r9
	leaq	-48(%rbp), %r10
	movq	%r10, (%rsp)
	leaq	-88(%rbp), %r10
	movq	%r10, 8(%rsp)
	movq	-368(%rbp), %r10                # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-528(%rbp), %r11                # 8-byte Reload
	shlq	$47, %r11
	orq	%r11, %rsp
	callq	fmonty
.Lslh_ret_addr37:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr37, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	32(%rsp), %rsp
	leaq	-288(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr38:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr38, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-328(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr39:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr39, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	%rcx, -536(%rbp)                # 8-byte Spill
	jmp	.LBB7_15
.LBB7_14:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmoveq	%rcx, %rax
	leaq	-288(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rax
	orq	%rax, %rsp
	callq	swap_conditional
.Lslh_ret_addr40:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr40, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-328(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr41:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr41, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-32(%rsp), %rsp
	leaq	-128(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-88(%rbp), %r8
	movq	%rcx, -544(%rbp)                # 8-byte Spill
	movq	%r8, %rcx
	leaq	-288(%rbp), %r8
	leaq	-328(%rbp), %r9
	leaq	-208(%rbp), %r10
	movq	%r10, (%rsp)
	leaq	-248(%rbp), %r10
	movq	%r10, 8(%rsp)
	movq	-368(%rbp), %r10                # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-544(%rbp), %r11                # 8-byte Reload
	shlq	$47, %r11
	orq	%r11, %rsp
	callq	fmonty
.Lslh_ret_addr42:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr42, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	32(%rsp), %rsp
	leaq	-128(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr43:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr43, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	-168(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movq	-512(%rbp), %rdx                # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	swap_conditional
.Lslh_ret_addr44:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr44, %rax
	movq	-360(%rbp), %rax                # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	%rcx, -536(%rbp)                # 8-byte Spill
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-536(%rbp), %rax                # 8-byte Reload
	movq	-448(%rbp), %rcx                # 8-byte Reload
	movb	(%rcx), %dl
	movb	%al, %sil
	orb	%dl, %sil
	shlb	$1, %sil
	movb	%sil, (%rcx)
	movq	%rax, -520(%rbp)                # 8-byte Spill
	jmp	.LBB7_11
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	movl	-484(%rbp), %eax                # 4-byte Reload
	movq	-480(%rbp), %rcx                # 8-byte Reload
	cmpl	$5, %eax
	movl	%eax, -548(%rbp)                # 4-byte Spill
	movq	%rcx, -560(%rbp)                # 8-byte Spill
	jae	.LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	movq	-560(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovaeq	%rcx, %rax
	movl	-548(%rbp), %edx                # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%esi, %r8d
	movq	-128(%rbp,%r8,8), %r8
	movq	%rax, %r9
	orq	%r8, %r9
	movq	-336(%rbp), %r8                 # 8-byte Reload
	movq	%r9, (%r8,%rdi,8)
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%esi, %r9d
	movq	-168(%rbp,%r9,8), %r9
	movq	%rax, %r10
	orq	%r9, %r10
	movq	-344(%rbp), %r9                 # 8-byte Reload
	movq	%r10, (%r9,%rdi,8)
	movq	%rax, -568(%rbp)                # 8-byte Spill
# %bb.18:                               #   in Loop: Header=BB7_16 Depth=1
	movl	-548(%rbp), %eax                # 4-byte Reload
	addl	$1, %eax
	movq	-568(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -480(%rbp)                # 8-byte Spill
	movl	%eax, -484(%rbp)                # 4-byte Spill
	jmp	.LBB7_16
.LBB7_19:
	movq	-560(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	cmovbq	%rcx, %rax
	shlq	$47, %rax
	orq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	cmult, .Lfunc_end7-cmult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function crecip
	.type	crecip,@function
crecip:                                 # @crecip
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	xorl	%eax, %eax
	movb	$1, 215(%rsp)
	leaq	168(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movl	%eax, %esi
	movl	$40, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	memset
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	memset
	leaq	88(%rsp), %rcx
	movq	%rcx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	memset
	leaq	48(%rsp), %rcx
	movq	%rcx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	memset
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	$1, %edx
	callq	fsquare_times
	leaq	128(%rsp), %rdi
	leaq	168(%rsp), %rsi
	movl	$2, %edx
	callq	fsquare_times
	leaq	88(%rsp), %rdi
	leaq	128(%rsp), %rsi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	callq	fmul
	leaq	168(%rsp), %rcx
	movq	%rcx, %rdi
	leaq	88(%rsp), %rsi
	movq	%rcx, %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	168(%rsp), %rsi
	movl	$1, %edx
	callq	fsquare_times
	leaq	88(%rsp), %rcx
	movq	%rcx, %rdi
	leaq	128(%rsp), %rsi
	movq	%rcx, %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	88(%rsp), %rsi
	movl	$5, %edx
	callq	fsquare_times
	leaq	88(%rsp), %rcx
	movq	%rcx, %rdi
	leaq	128(%rsp), %rsi
	movq	%rcx, %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	88(%rsp), %rsi
	movl	$10, %edx
	callq	fsquare_times
	leaq	48(%rsp), %rdi
	leaq	128(%rsp), %rsi
	leaq	88(%rsp), %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movl	$20, %edx
	callq	fsquare_times
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	leaq	48(%rsp), %rdx
	callq	fmul
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	$10, %edx
	callq	fsquare_times
	leaq	88(%rsp), %rcx
	movq	%rcx, %rdi
	leaq	128(%rsp), %rsi
	movq	%rcx, %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	88(%rsp), %rsi
	movl	$50, %edx
	callq	fsquare_times
	leaq	48(%rsp), %rdi
	leaq	128(%rsp), %rsi
	leaq	88(%rsp), %rdx
	callq	fmul
	leaq	128(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movl	$100, %edx
	callq	fsquare_times
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	leaq	48(%rsp), %rdx
	callq	fmul
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	$50, %edx
	callq	fsquare_times
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	leaq	88(%rsp), %rdx
	callq	fmul
	leaq	128(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	$5, %edx
	callq	fsquare_times
	movq	40(%rsp), %rdi                  # 8-byte Reload
	leaq	128(%rsp), %rsi
	leaq	168(%rsp), %rdx
	callq	fmul
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	crecip, .Lfunc_end8-crecip
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function store_limb
	.type	store_limb,@function
store_limb:                             # @store_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movb	%sil, %al
	movb	%al, (%rdi)
	movq	%rsi, %rcx
	shrq	$8, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 1(%rdi)
	movq	%rsi, %rdx
	shrq	$16, %rdx
                                        # kill: def $dl killed $dl killed $rdx
	movb	%dl, 2(%rdi)
	movq	%rsi, %r8
	shrq	$24, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, 3(%rdi)
	movq	%rsi, %r9
	shrq	$32, %r9
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, 4(%rdi)
	movq	%rsi, %r10
	shrq	$40, %r10
                                        # kill: def $r10b killed $r10b killed $r10
	movb	%r10b, 5(%rdi)
	movq	%rsi, %r11
	shrq	$48, %r11
                                        # kill: def $r11b killed $r11b killed $r11
	movb	%r11b, 6(%rdi)
	shrq	$56, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 7(%rdi)
	retq
.Lfunc_end9:
	.size	store_limb, .Lfunc_end9-store_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fcontract
	.type	fcontract,@function
fcontract:                              # @fcontract
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movb	$1, 167(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	8(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	16(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	24(%rsi), %rdx
	movq	%rcx, %r8
	orq	%rdx, %r8
	movq	%r8, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	32(%rsi), %rdx
	movq	%rcx, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	movq	80(%rsp), %r8
	movq	88(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %r8, %r9
	addq	%r9, %rsi
	adcq	%r10, %rdx
	movq	%rsi, 96(%rsp)
	movq	%rdx, 104(%rsp)
	movw	86(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	96(%rsp), %r8
	movq	104(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %r8, %r9
	addq	%r9, %rsi
	adcq	%r10, %rdx
	movq	%rsi, 112(%rsp)
	movq	%rdx, 120(%rsp)
	movw	102(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	112(%rsp), %r8
	movq	120(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %r8, %r9
	addq	%r9, %rsi
	adcq	%r10, %rdx
	movq	%rsi, 128(%rsp)
	movq	%rdx, 136(%rsp)
	movw	118(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rsi
	movq	128(%rsp), %r8
	movq	136(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %r8, %r9
	addq	%r9, %rsi
	adcq	%r10, %rdx
	movq	%rsi, 144(%rsp)
	movq	%rdx, 152(%rsp)
	movw	134(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	144(%rsp), %r8
	movq	152(%rsp), %r9
	movq	%r9, %r10
	shldq	$13, %r8, %r10
	shrq	$51, %r9
	movl	$19, %r8d
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%r10, %rax
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	mulq	%r8
	leaq	(%r9,%r9,8), %r10
	leaq	(%r9,%r10,2), %r9
	addq	%r9, %rdx
	movq	64(%rsp), %r9                   # 8-byte Reload
	addq	%rax, %r9
	adcq	%rdx, %rsi
	movq	%r9, 80(%rsp)
	movq	%rsi, 88(%rsp)
	movw	150(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 150(%rsp)
	movq	$0, 152(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	96(%rsp), %rsi
	movq	104(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	136(%rsp), %rax
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	120(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	152(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	136(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movw	134(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdx
	movq	144(%rsp), %rsi
	movq	152(%rsp), %r9
	movq	%r9, %r10
	shldq	$13, %rsi, %r10
	shrq	$51, %r9
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%r10, %rax
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	mulq	%r8
	leaq	(%r9,%r9,8), %rsi
	leaq	(%r9,%rsi,2), %rsi
	addq	%rsi, %rdx
	movq	56(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	150(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 150(%rsp)
	movq	$0, 152(%rsp)
	movq	80(%rsp), %rax
	addq	$19, %rax
	adcq	$0, 88(%rsp)
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	96(%rsp), %rsi
	movq	104(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	136(%rsp), %rax
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	120(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	152(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	136(%rsp), %r9
	movq	%r9, %r10
	shrq	$51, %r10
	shldq	$13, %rsi, %r9
	addq	%r9, %rdx
	adcq	%r10, %rax
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movw	134(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdx
	movq	144(%rsp), %rsi
	movq	152(%rsp), %r9
	movq	%r9, %r10
	shldq	$13, %rsi, %r10
	shrq	$51, %r9
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r10, %rax
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	mulq	%r8
	leaq	(%r9,%r9,8), %rsi
	leaq	(%r9,%rsi,2), %rsi
	addq	%rsi, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	addq	%rax, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsi, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	150(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 150(%rsp)
	movq	$0, 152(%rsp)
	movq	80(%rsp), %rax
	movabsq	$2251799813685229, %rdx         # imm = 0x7FFFFFFFFFFED
	addq	%rdx, %rax
	adcq	$0, 88(%rsp)
	movq	%rax, 80(%rsp)
	movq	96(%rsp), %rax
	movabsq	$2251799813685247, %rdx         # imm = 0x7FFFFFFFFFFFF
	addq	%rdx, %rax
	adcq	$0, 104(%rsp)
	movq	%rax, 96(%rsp)
	movq	112(%rsp), %rax
	addq	%rdx, %rax
	adcq	$0, 120(%rsp)
	movq	%rax, 112(%rsp)
	movq	128(%rsp), %rax
	addq	%rdx, %rax
	adcq	$0, 136(%rsp)
	movq	%rax, 128(%rsp)
	movq	144(%rsp), %rax
	addq	%rdx, %rax
	adcq	$0, 152(%rsp)
	movq	%rax, 144(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r8
	movq	%r8, %r9
	shrq	$51, %r9
	shldq	$13, %rsi, %r8
	addq	%r8, %rdx
	adcq	%r9, %rax
	movq	%rdx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	96(%rsp), %rsi
	movq	104(%rsp), %r8
	movq	%r8, %r9
	shrq	$51, %r9
	shldq	$13, %rsi, %r8
	addq	%r8, %rdx
	adcq	%r9, %rax
	movq	%rdx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	136(%rsp), %rax
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	120(%rsp), %r8
	movq	%r8, %r9
	shrq	$51, %r9
	shldq	$13, %rsi, %r8
	addq	%r8, %rdx
	adcq	%r9, %rax
	movq	%rdx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	152(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	136(%rsp), %r8
	movq	%r8, %r9
	shrq	$51, %r9
	shldq	$13, %rsi, %r8
	addq	%r8, %rdx
	adcq	%r9, %rax
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movw	134(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 134(%rsp)
	movq	$0, 136(%rsp)
	movw	150(%rsp), %r11w
	andw	$7, %r11w
	movw	%r11w, 150(%rsp)
	movq	$0, 152(%rsp)
	movq	80(%rsp), %rax
	movq	96(%rsp), %rdx
	shlq	$51, %rdx
	orq	%rdx, %rax
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rax, %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	store_limb
.Lslh_ret_addr45:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr45, %rax
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	$8, %rdx
	movq	96(%rsp), %rsi
	movq	104(%rsp), %rdi
	shldq	$51, %rsi, %rdi
	movq	112(%rsp), %rsi
	shlq	$38, %rsi
	orq	%rsi, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	store_limb
.Lslh_ret_addr46:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr46, %rax
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rdi
	shldq	$38, %rsi, %rdi
	movq	128(%rsp), %rsi
	shlq	$25, %rsi
	orq	%rsi, %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	store_limb
.Lslh_ret_addr47:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr47, %rax
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	$24, %rdx
	movq	128(%rsp), %rsi
	movq	136(%rsp), %rdi
	shldq	$25, %rsi, %rdi
	movq	144(%rsp), %rsi
	shlq	$12, %rsi
	orq	%rsi, %rdi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	store_limb
.Lslh_ret_addr48:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr48, %rax
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	fcontract, .Lfunc_end10-fcontract
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function load_limb
	.type	load_limb,@function
load_limb:                              # @load_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	movq	$0, -8(%rsp)
	movb	$1, -9(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r8
	orq	%rsi, %r8
	movzbl	1(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$8, %r9
	orq	%r9, %r8
	movzbl	2(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$16, %r9
	orq	%r9, %r8
	movzbl	3(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$24, %r9
	orq	%r9, %r8
	movzbl	4(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$32, %r9
	orq	%r9, %r8
	movzbl	5(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$40, %r9
	orq	%r9, %r8
	movzbl	6(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %r9
	orq	%rsi, %r9
	shlq	$48, %r9
	orq	%r9, %r8
	movzbl	7(%rdi), %edx
	movl	%edx, %esi
	movq	%rcx, %rdi
	orq	%rsi, %rdi
	shlq	$56, %rdi
	orq	%rdi, %r8
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	shlq	$47, %rcx
	orq	%rcx, %rsp
	retq
.Lfunc_end11:
	.size	load_limb, .Lfunc_end11-load_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fexpand
	.type	fexpand,@function
fexpand:                                # @fexpand
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movb	$1, 23(%rsp)
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	callq	load_limb
	movabsq	$2251799813685247, %rcx         # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$6, %rax
	movq	%rax, %rdi
	callq	load_limb
	shrq	$3, %rax
	movabsq	$2251799813685247, %rcx         # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$12, %rax
	movq	%rax, %rdi
	callq	load_limb
	shrq	$6, %rax
	movabsq	$2251799813685247, %rcx         # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$19, %rax
	movq	%rax, %rdi
	callq	load_limb
	shrq	$1, %rax
	movabsq	$2251799813685247, %rcx         # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$24, %rax
	movq	%rax, %rdi
	callq	load_limb
	shrq	$12, %rax
	movabsq	$2251799813685247, %rcx         # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, 32(%rcx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	fexpand, .Lfunc_end12-fexpand
	.cfi_endproc
                                        # -- End function
	.globl	curve25519_donna                # -- Begin function curve25519_donna
	.p2align	4, 0x90
	.type	curve25519_donna,@function
curve25519_donna:                       # @curve25519_donna
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 272
	movq	$-1, %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	xorl	%r8d, %r8d
	movl	$0, 260(%rsp)
	movb	$1, 259(%rsp)
	leaq	216(%rsp), %r9
	movq	%r9, %r10
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movl	%r8d, %esi
	movl	$40, %r10d
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%r10, %rdx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	callq	memset
.Lslh_ret_addr49:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr49, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	176(%rsp), %rdx
	movq	%rdx, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr50:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr50, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	136(%rsp), %rdx
	movq	%rdx, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr51:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr51, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	96(%rsp), %rdx
	movq	%rdx, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	memset
.Lslh_ret_addr52:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr52, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 64(%rsp)
	movq	8(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 72(%rsp)
	movq	16(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 80(%rsp)
	movq	24(%rdx), %rdi
	movq	%rcx, %r9
	orq	%rdi, %r9
	movq	%r9, 88(%rsp)
	movb	64(%rsp), %r11b
	andb	$-8, %r11b
	movb	%r11b, 64(%rsp)
	movb	95(%rsp), %r11b
	andb	$127, %r11b
	movb	%r11b, 95(%rsp)
	movb	95(%rsp), %r11b
	orb	$64, %r11b
	movb	%r11b, 95(%rsp)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fexpand
.Lslh_ret_addr53:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr53, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	176(%rsp), %rdi
	leaq	136(%rsp), %rsi
	leaq	64(%rsp), %rdx
	leaq	216(%rsp), %r9
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%r9, %rcx
	movq	(%rsp), %r9                     # 8-byte Reload
	shlq	$47, %r9
	orq	%r9, %rsp
	callq	cmult
.Lslh_ret_addr54:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr54, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	96(%rsp), %rdi
	leaq	136(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	crecip
.Lslh_ret_addr55:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr55, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	leaq	136(%rsp), %rdi
	leaq	176(%rsp), %rsi
	leaq	96(%rsp), %rdx
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fmul
.Lslh_ret_addr56:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr56, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	leaq	136(%rsp), %rsi
	shlq	$47, %rcx
	orq	%rcx, %rsp
	callq	fcontract
.Lslh_ret_addr57:
	movq	-8(%rsp), %rax
	movq	%rsp, %rcx
	sarq	$63, %rcx
	cmpq	$.Lslh_ret_addr57, %rax
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmovneq	%rax, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	shlq	$47, %rcx
	orq	%rcx, %rsp
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	curve25519_donna, .Lfunc_end13-curve25519_donna
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swap_conditional
	.addrsig_sym fmul
	.addrsig_sym fsum
	.addrsig_sym fscalar_product
	.addrsig_sym fdifference_backwards
	.addrsig_sym fsquare_times
	.addrsig_sym fmonty
	.addrsig_sym cmult
	.addrsig_sym crecip
	.addrsig_sym store_limb
	.addrsig_sym fcontract
	.addrsig_sym load_limb
	.addrsig_sym fexpand
