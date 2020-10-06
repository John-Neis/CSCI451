	.file	"hw6-JohnNeis.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.data.rel.ro,"aw",@progbits
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.text
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movq	_ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip), %rax
	testq	%rax, %rax
	jne	.L2
	movl	$0, %edx
.L2:
	movzbl	%dl, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.type	_ZL14__gthread_selfv, @function
_ZL14__gthread_selfv:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZL20__gthrw_pthread_selfv@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	_ZL14__gthread_selfv, .-_ZL14__gthread_selfv
	.type	_ZL23__gthread_mutex_trylockP15pthread_mutex_t, @function
_ZL23__gthread_mutex_trylockP15pthread_mutex_t:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t@PLT
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	_ZL23__gthread_mutex_trylockP15pthread_mutex_t, .-_ZL23__gthread_mutex_trylockP15pthread_mutex_t
	.type	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, @function
_ZL22__gthread_mutex_unlockP15pthread_mutex_t:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t@PLT
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, .-_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB1095:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1095:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZNSt6thread2idC2Ev,"axG",@progbits,_ZNSt6thread2idC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread2idC2Ev
	.type	_ZNSt6thread2idC2Ev, @function
_ZNSt6thread2idC2Ev:
.LFB2683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2683:
	.size	_ZNSt6thread2idC2Ev, .-_ZNSt6thread2idC2Ev
	.weak	_ZNSt6thread2idC1Ev
	.set	_ZNSt6thread2idC1Ev,_ZNSt6thread2idC2Ev
	.section	.text._ZNSt6thread2idC2Em,"axG",@progbits,_ZNSt6thread2idC5Em,comdat
	.align 2
	.weak	_ZNSt6thread2idC2Em
	.type	_ZNSt6thread2idC2Em, @function
_ZNSt6thread2idC2Em:
.LFB2686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2686:
	.size	_ZNSt6thread2idC2Em, .-_ZNSt6thread2idC2Em
	.weak	_ZNSt6thread2idC1Em
	.set	_ZNSt6thread2idC1Em,_ZNSt6thread2idC2Em
	.section	.text._ZNSt6threadD2Ev,"axG",@progbits,_ZNSt6threadD5Ev,comdat
	.align 2
	.weak	_ZNSt6threadD2Ev
	.type	_ZNSt6threadD2Ev, @function
_ZNSt6threadD2Ev:
.LFB2693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6thread8joinableEv
	testb	%al, %al
	je	.L18
	call	_ZSt9terminatev@PLT
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2693:
	.size	_ZNSt6threadD2Ev, .-_ZNSt6threadD2Ev
	.weak	_ZNSt6threadD1Ev
	.set	_ZNSt6threadD1Ev,_ZNSt6threadD2Ev
	.section	.text._ZNKSt6thread8joinableEv,"axG",@progbits,_ZNKSt6thread8joinableEv,comdat
	.align 2
	.weak	_ZNKSt6thread8joinableEv
	.type	_ZNKSt6thread8joinableEv, @function
_ZNKSt6thread8joinableEv:
.LFB2697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	(%rax), %rdi
	call	_ZSteqNSt6thread2idES0_
	xorl	$1, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2697:
	.size	_ZNKSt6thread8joinableEv, .-_ZNKSt6thread8joinableEv
	.section	.text._ZSteqNSt6thread2idES0_,"axG",@progbits,_ZSteqNSt6thread2idES0_,comdat
	.weak	_ZSteqNSt6thread2idES0_
	.type	_ZSteqNSt6thread2idES0_, @function
_ZSteqNSt6thread2idES0_:
.LFB2707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2707:
	.size	_ZSteqNSt6thread2idES0_, .-_ZSteqNSt6thread2idES0_
	.section	.text._ZNSt11this_thread6get_idEv,"axG",@progbits,_ZNSt11this_thread6get_idEv,comdat
	.weak	_ZNSt11this_thread6get_idEv
	.type	_ZNSt11this_thread6get_idEv, @function
_ZNSt11this_thread6get_idEv:
.LFB2715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L25
	leaq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Em
	movq	-16(%rbp), %rax
	jmp	.L26
.L25:
	call	_ZL14__gthread_selfv
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Em
	movq	-16(%rbp), %rax
.L26:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2715:
	.size	_ZNSt11this_thread6get_idEv, .-_ZNSt11this_thread6get_idEv
	.section	.text._ZNSt5mutex8try_lockEv,"axG",@progbits,_ZNSt5mutex8try_lockEv,comdat
	.align 2
	.weak	_ZNSt5mutex8try_lockEv
	.type	_ZNSt5mutex8try_lockEv, @function
_ZNSt5mutex8try_lockEv:
.LFB2720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL23__gthread_mutex_trylockP15pthread_mutex_t
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2720:
	.size	_ZNSt5mutex8try_lockEv, .-_ZNSt5mutex8try_lockEv
	.section	.text._ZNSt5mutex6unlockEv,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.align 2
	.weak	_ZNSt5mutex6unlockEv
	.type	_ZNSt5mutex6unlockEv, @function
_ZNSt5mutex6unlockEv:
.LFB2721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2721:
	.size	_ZNSt5mutex6unlockEv, .-_ZNSt5mutex6unlockEv
	.section	.rodata
	.type	_ZStL10defer_lock, @object
	.size	_ZStL10defer_lock, 1
_ZStL10defer_lock:
	.zero	1
	.type	_ZStL11try_to_lock, @object
	.size	_ZStL11try_to_lock, 1
_ZStL11try_to_lock:
	.zero	1
	.type	_ZStL10adopt_lock, @object
	.size	_ZStL10adopt_lock, 1
_ZStL10adopt_lock:
	.zero	1
	.globl	lock
	.bss
	.align 32
	.type	lock, @object
	.size	lock, 40
lock:
	.zero	40
	.globl	theChar_global
	.type	theChar_global, @object
	.size	theChar_global, 1
theChar_global:
	.zero	1
	.globl	finished
	.type	finished, @object
	.size	finished, 3
finished:
	.zero	3
	.section	.rodata
.LC0:
	.string	"kill -s 9 "
	.text
	.globl	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.type	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, @function
_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB2953:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2953
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1000, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1000(%rbp)
	movl	%esi, -1004(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-1000(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.LEHE0:
.L38:
	leaq	-560(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L32
.L34:
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex8try_lockEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L33
	jmp	.L34
.L33:
	movzbl	theChar_global(%rip), %eax
	cmpb	$10, %al
	jne	.L35
	leaq	-27(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSi7getlineEPcl@PLT
	movzbl	-27(%rbp), %eax
	movb	%al, theChar_global(%rip)
.L35:
	movzbl	theChar_global(%rip), %eax
	cmpb	$38, %al
	jne	.L36
	leaq	-944(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE1:
	call	_ZNSt11this_thread6get_idEv
	movq	%rax, -984(%rbp)
	leaq	-944(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-984(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE
	leaq	-976(%rbp), %rax
	leaq	-944(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE2:
	cmpl	$1, -1004(%rbp)
	jne	.L37
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdi
.LEHB3:
	call	system@PLT
.LEHE3:
.L37:
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
.L36:
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex6unlockEv
	jmp	.L38
.L32:
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex8try_lockEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L39
	jmp	.L32
.L39:
	movl	-1004(%rbp), %eax
	movslq	%eax, %rdx
	leaq	finished(%rip), %rax
	movb	$1, (%rdx,%rax)
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex6unlockEv
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE4:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	jmp	.L47
.L46:
	movq	%rax, %rbx
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L41
.L45:
	movq	%rax, %rbx
.L41:
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L42
.L44:
	movq	%rax, %rbx
.L42:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L47:
	call	__stack_chk_fail@PLT
.L43:
	addq	$1000, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2953:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2953:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2953-.LLSDACSB2953
.LLSDACSB2953:
	.uleb128 .LEHB0-.LFB2953
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2953
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L44-.LFB2953
	.uleb128 0
	.uleb128 .LEHB2-.LFB2953
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L45-.LFB2953
	.uleb128 0
	.uleb128 .LEHB3-.LFB2953
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L46-.LFB2953
	.uleb128 0
	.uleb128 .LEHB4-.LFB2953
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB2953
	.uleb128 0
	.uleb128 .LEHB5-.LFB2953
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2953:
	.text
	.size	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.rodata
.LC1:
	.string	"hw5.out"
.LC2:
	.string	"hw5-1.in"
.LC3:
	.string	"hw5-2.in"
.LC4:
	.string	"hw5-3.in"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2954:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2954
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$32, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE6:
	movl	$0, -552(%rbp)
	leaq	-552(%rbp), %rdx
	leaq	-568(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC2(%rip), %rdx
	leaq	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%rip), %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6threadC1IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
.LEHE7:
	movl	$1, -552(%rbp)
	leaq	-552(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC3(%rip), %rdx
	leaq	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%rip), %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt6threadC1IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
.LEHE8:
	movl	$2, -572(%rbp)
	leaq	-572(%rbp), %rdx
	leaq	-552(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	leaq	_Z10threadfuncNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%rip), %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6threadC1IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
.LEHE9:
.L50:
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex8try_lockEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L49
	jmp	.L50
.L49:
	movzbl	theChar_global(%rip), %eax
	cmpb	$10, %al
	je	.L51
	movzbl	theChar_global(%rip), %eax
	movsbl	%al, %edx
	leaq	-544(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB10:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movb	$10, theChar_global(%rip)
.L51:
	movzbl	finished(%rip), %eax
	testb	%al, %al
	je	.L52
	movzbl	1+finished(%rip), %eax
	testb	%al, %al
	je	.L52
	movzbl	2+finished(%rip), %eax
	testb	%al, %al
	jne	.L66
.L52:
	leaq	lock(%rip), %rdi
	call	_ZNSt5mutex6unlockEv
	jmp	.L50
.L66:
	nop
	leaq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread4joinEv@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread4joinEv@PLT
	leaq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread4joinEv@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE10:
	movl	$0, %ebx
	leaq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	leaq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L59
	jmp	.L65
.L63:
	movq	%rax, %rbx
	leaq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L56
.L62:
	movq	%rax, %rbx
.L56:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L57
.L61:
	movq	%rax, %rbx
.L57:
	leaq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L58
.L60:
	movq	%rax, %rbx
.L58:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L65:
	call	__stack_chk_fail@PLT
.L59:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2954:
	.section	.gcc_except_table
.LLSDA2954:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2954-.LLSDACSB2954
.LLSDACSB2954:
	.uleb128 .LEHB6-.LFB2954
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2954
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L60-.LFB2954
	.uleb128 0
	.uleb128 .LEHB8-.LFB2954
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L61-.LFB2954
	.uleb128 0
	.uleb128 .LEHB9-.LFB2954
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L62-.LFB2954
	.uleb128 0
	.uleb128 .LEHB10-.LFB2954
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L63-.LFB2954
	.uleb128 0
	.uleb128 .LEHB11-.LFB2954
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2954:
	.text
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.string	"thread::id of a non-executing thread"
	.section	.text._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE,"axG",@progbits,_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE,comdat
	.weak	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE
	.type	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE, @function
_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE:
.LFB3235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqNSt6thread2idES0_
	testb	%al, %al
	je	.L68
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L69
.L68:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEm@PLT
.L69:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3235:
	.size	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE
	.section	.text._ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB3246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3246:
	.size	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3247:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3248:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB3251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3251:
	.size	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3252:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3252:
	.size	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_,"axG",@progbits,_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_,comdat
	.weak	_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_
	.type	_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_, @function
_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_:
.LFB3250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	subq	$8, %rsp
	pushq	%r13
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_
	addq	$16, %rsp
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3250:
	.size	_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_, .-_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_
	.section	.text._ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_,"axG",@progbits,_ZNSt6threadC5IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
	.type	_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_, @function
_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_:
.LFB3253:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3253
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	pthread_create@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rsi
	leaq	-48(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	leaq	-64(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_
.LEHE12:
	movq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE13:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L86
	jmp	.L88
.L87:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L88:
	call	__stack_chk_fail@PLT
.L86:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3253:
	.section	.gcc_except_table
.LLSDA3253:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3253-.LLSDACSB3253
.LLSDACSB3253:
	.uleb128 .LEHB12-.LFB3253
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB3253
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L87-.LFB3253
	.uleb128 0
	.uleb128 .LEHB14-.LFB3253
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE3253:
	.section	.text._ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_,"axG",@progbits,_ZNSt6threadC5IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_,comdat
	.size	_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_, .-_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
	.weak	_ZNSt6threadC1IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
	.set	_ZNSt6threadC1IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_,_ZNSt6threadC2IRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEEOT_DpOT0_
	.section	.text._ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC5IJRS6_RA9_S8_iELb1EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_
	.type	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_, @function
_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_:
.LFB3427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3427:
	.size	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_, .-_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_
	.weak	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1IJRS6_RA9_S8_iELb1EEEDpOT_
	.set	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1IJRS6_RA9_S8_iELb1EEEDpOT_,_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IJRS6_RA9_S8_iELb1EEEDpOT_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC5IRS6_JRA9_S8_iEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_:
.LFB3430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3430:
	.size	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1IRS6_JRA9_S8_iEvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1IRS6_JRA9_S8_iEvEEOT_DpOT0_,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2IRS6_JRA9_S8_iEvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJPKciEEC5IRA9_S0_JiEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_:
.LFB3433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3433:
	.size	_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm1EJPKciEEC1IRA9_S0_JiEvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm1EJPKciEEC1IRA9_S0_JiEvEEOT_DpOT0_,_ZNSt11_Tuple_implILm1EJPKciEEC2IRA9_S0_JiEvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.type	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_, @function
_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_:
.LFB3436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3436:
	.size	_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_, .-_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.weak	_ZNSt11_Tuple_implILm2EJiEEC1IiEEOT_
	.set	_ZNSt11_Tuple_implILm2EJiEEC1IiEEOT_,_ZNSt11_Tuple_implILm2EJiEEC2IiEEOT_
	.section	.text._ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm2EiLb0EEC5IiEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.type	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_, @function
_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_:
.LFB3439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3439:
	.size	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_, .-_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.weak	_ZNSt10_Head_baseILm2EiLb0EEC1IiEEOT_
	.set	_ZNSt10_Head_baseILm2EiLb0EEC1IiEEOT_,_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	.section	.text._ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	.type	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_, @function
_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_:
.LFB3442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3442:
	.size	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_, .-_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	.section	.text._ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_,"axG",@progbits,_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_,comdat
	.weak	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	.type	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_, @function
_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_:
.LFB3443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3443:
	.size	_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_, .-_ZNSt10_Head_baseILm2EiLb0EE7_M_headERS0_
	.section	.text._ZNSt11_Tuple_implILm2EJiEEC2EOS0_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJiEEC5EOS0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.type	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_, @function
_ZNSt11_Tuple_implILm2EJiEEC2EOS0_:
.LFB3444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2EiLb0EEC2IiEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3444:
	.size	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_, .-_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.weak	_ZNSt11_Tuple_implILm2EJiEEC1EOS0_
	.set	_ZNSt11_Tuple_implILm2EJiEEC1EOS0_,_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	.section	.text._ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_
	.type	_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_, @function
_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_:
.LFB3447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3447:
	.size	_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_, .-_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_
	.section	.text._ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_
	.type	_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_, @function
_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_:
.LFB3448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3448:
	.size	_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_, .-_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_
	.section	.text._ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_:
.LFB3449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3449:
	.size	_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm1EPKcLb0EE7_M_headERS2_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB3450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3450:
	.size	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJPKciEEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_
	.type	_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_, @function
_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_:
.LFB3451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJPKciEE7_M_tailERS2_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm2EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEEC2EOS0_
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3451:
	.size	_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_, .-_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_
	.weak	_ZNSt11_Tuple_implILm1EJPKciEEC1EOS2_
	.set	_ZNSt11_Tuple_implILm1EJPKciEEC1EOS2_,_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_
	.section	.text._ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_,"axG",@progbits,_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC5EOSA_,comdat
	.align 2
	.weak	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.type	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_, @function
_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_:
.LFB3454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3454:
	.size	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_, .-_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.weak	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1EOSA_
	.set	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1EOSA_,_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.section	.text._ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_,"axG",@progbits,_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_,comdat
	.weak	_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	.type	_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_, @function
_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_:
.LFB3411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRA9_KcEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1IJRS6_RA9_S8_iELb1EEEDpOT_
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3411:
	.size	_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_, .-_ZNSt6thread14__make_invokerIRFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJRA9_KciEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	.section	.text._ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_,"axG",@progbits,_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_,comdat
	.weak	_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_
	.type	_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_:
.LFB3456:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3456
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	(%rax), %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %r12d
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rcx
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE15:
	leaq	-64(%rbp), %rax
	movl	%r12d, %esi
	movq	%rax, %rdi
.LEHB16:
	call	*%rbx
.LEHE16:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L117
	jmp	.L120
.L119:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L116
.L118:
	movq	%rax, %rbx
.L116:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L120:
	call	__stack_chk_fail@PLT
.L117:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3456:
	.section	.gcc_except_table
.LLSDA3456:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3456-.LLSDACSB3456
.LLSDACSB3456:
	.uleb128 .LEHB15-.LFB3456
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L118-.LFB3456
	.uleb128 0
	.uleb128 .LEHB16-.LFB3456
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L119-.LFB3456
	.uleb128 0
	.uleb128 .LEHB17-.LFB3456
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE3456:
	.section	.text._ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_,"axG",@progbits,_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_,comdat
	.size	_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIvPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEET_St14__invoke_otherOT0_DpOT1_
	.section	.text._ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE,"axG",@progbits,_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE,comdat
	.weak	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE
	.type	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE, @function
_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE:
.LFB3466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3466:
	.size	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE, .-_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE
	.section	.text._ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_,"axG",@progbits,_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_,comdat
	.weak	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_
	.type	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_, @function
_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_:
.LFB3457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE
	movq	%rax, %r12
	movl	$32, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC1EOSE_
	movq	-24(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	movq	-24(%rbp), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3457:
	.size	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_, .-_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISG_EEOT_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev:
.LFB3468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
.L126:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3468:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.section	.text._ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC5ERKS7_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_
	.type	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_, @function
_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_:
.LFB3526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3526:
	.size	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_, .-_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_
	.weak	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC1ERKS7_
	.set	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC1ERKS7_,_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2ERKS7_
	.section	.text._ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_,"axG",@progbits,_ZNSt10_Head_baseILm1EPKcLb0EEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_
	.type	_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_, @function
_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_:
.LFB3529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3529:
	.size	_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_, .-_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_
	.weak	_ZNSt10_Head_baseILm1EPKcLb0EEC1ERKS1_
	.set	_ZNSt10_Head_baseILm1EPKcLb0EEC1ERKS1_,_ZNSt10_Head_baseILm1EPKcLb0EEC2ERKS1_
	.section	.text._ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm1EPKcLb0EEC5IS1_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_
	.type	_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_, @function
_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_:
.LFB3532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3532:
	.size	_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_, .-_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_
	.weak	_ZNSt10_Head_baseILm1EPKcLb0EEC1IS1_EEOT_
	.set	_ZNSt10_Head_baseILm1EPKcLb0EEC1IS1_EEOT_,_ZNSt10_Head_baseILm1EPKcLb0EEC2IS1_EEOT_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_
	.type	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_, @function
_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_:
.LFB3535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3535:
	.size	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_, .-_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_
	.type	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_, @function
_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_:
.LFB3536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3536:
	.size	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_, .-_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_
	.section	.text._ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_,comdat
	.weak	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_
	.type	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_, @function
_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_:
.LFB3537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3537:
	.size	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_, .-_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EE7_M_headERS8_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB3538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3538:
	.size	_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC5EOSA_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.type	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_, @function
_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_:
.LFB3539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_tailERSA_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm1EJPKciEEEONSt16remove_referenceIT_E4typeEOS6_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJPKciEEC2EOS2_
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3539:
	.size	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_, .-_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.weak	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1EOSA_
	.set	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1EOSA_,_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC2EOSA_
	.section	.text._ZNSt6thread6_StateC2Ev,"axG",@progbits,_ZNSt6thread6_StateC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread6_StateC2Ev
	.type	_ZNSt6thread6_StateC2Ev, @function
_ZNSt6thread6_StateC2Ev:
.LFB3546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVNSt6thread6_StateE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3546:
	.size	_ZNSt6thread6_StateC2Ev, .-_ZNSt6thread6_StateC2Ev
	.weak	_ZNSt6thread6_StateC1Ev
	.set	_ZNSt6thread6_StateC1Ev,_ZNSt6thread6_StateC2Ev
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC5EOSD_,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_:
.LFB3549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEC1EOSA_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3549:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_, .-_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC1EOSD_
	.set	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC1EOSD_,_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC2EOSD_
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC5EOSE_,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_:
.LFB3551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateC2Ev
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEOT_RNSt16remove_referenceISF_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEC1EOSD_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3551:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC1EOSE_
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC1EOSE_,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEC2EOSE_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_:
.LFB3554:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3554
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3554:
	.section	.gcc_except_table
.LLSDA3554:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3554-.LLSDACSB3554
.LLSDACSB3554:
.LLSDACSE3554:
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv:
.LFB3556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3556:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv:
.LFB3557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3557:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.section	.text._ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,"axG",@progbits,_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.type	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, @function
_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_:
.LFB3558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L149
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L149:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3558:
	.size	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, .-_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.section	.text._ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC5IS7_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_
	.type	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_, @function
_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_:
.LFB3609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3609:
	.size	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_, .-_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_
	.weak	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC1IS7_EEOT_
	.set	_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC1IS7_EEOT_,_ZNSt10_Head_baseILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb0EEC2IS7_EEOT_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC5EPS1_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_:
.LFB3612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3612:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	.set	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.section	.text._ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3614:
	.size	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv:
.LFB3615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3615:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.section	.text._ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC5IS2_S4_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.type	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, @function
_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv:
.LFB3658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3658:
	.size	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, .-_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	.set	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.section	.text._ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB3660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3660:
	.size	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3661:
	.size	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev:
.LFB3691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3691:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_:
.LFB3693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3693:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3694:
	.size	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev:
.LFB3711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3711:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev:
.LFB3714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3714:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_:
.LFB3716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3716:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_:
.LFB3717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3717:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev:
.LFB3725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3725:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_:
.LFB3727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3727:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE
	.section	.data.rel.ro.local._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev:
.LFB3731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3731:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev:
.LFB3733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED1Ev
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3733:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEED0Ev
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE, 115
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEEE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L179
	cmpl	$65535, -8(%rbp)
	jne	.L179
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L179:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3750:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv:
.LFB3751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3751:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEEE6_M_runEv
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv:
.LFB3752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3752:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv, .-_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEclEv
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE:
.LFB3753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_
	movq	%rax, %rdi
	call	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__invokeIPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3753:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE, .-_ZNSt6thread8_InvokerISt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEE9_M_invokeIJLm0ELm1ELm2EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	.section	.text._ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_,"axG",@progbits,_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_,comdat
	.weak	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_
	.type	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_, @function
_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_:
.LFB3754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3754:
	.size	_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_, .-_ZSt4moveIRSt5tupleIJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEEONSt16remove_referenceIT_E4typeEOSE_
	.section	.text._ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,"axG",@progbits,_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,comdat
	.weak	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.type	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, @function
_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_:
.LFB3756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3756:
	.size	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, .-_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.section	.text._ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE
	.type	_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE, @function
_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE:
.LFB3757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEE7_M_headERSA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3757:
	.size	_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE, .-_ZSt12__get_helperILm0EPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEJPKciEERT0_RSt11_Tuple_implIXT_EJSA_DpT1_EE
	.section	.text._ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,"axG",@progbits,_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,comdat
	.weak	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.type	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, @function
_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_:
.LFB3755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	movq	%rax, %rdi
	call	_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3755:
	.size	_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, .-_ZSt3getILm0EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.section	.text._ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,"axG",@progbits,_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,comdat
	.weak	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.type	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, @function
_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_:
.LFB3759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, .-_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.section	.text._ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB3760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJPKciEE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3760:
	.size	_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm1EPKcJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,"axG",@progbits,_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,comdat
	.weak	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.type	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, @function
_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_:
.LFB3758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	movq	%rax, %rdi
	call	_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3758:
	.size	_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, .-_ZSt3getILm1EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.section	.text._ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,"axG",@progbits,_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_,comdat
	.weak	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.type	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, @function
_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_:
.LFB3762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3762:
	.size	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_, .-_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	.section	.text._ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.type	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, @function
_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE:
.LFB3763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJiEE7_M_headERS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3763:
	.size	_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE, .-_ZSt12__get_helperILm2EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE
	.section	.text._ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,"axG",@progbits,_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_,comdat
	.weak	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.type	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, @function
_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_:
.LFB3761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSE_
	movq	%rax, %rdi
	call	_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_, .-_ZSt3getILm2EJPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKciEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSE_
	.section	.text._ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE,"axG",@progbits,_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE,comdat
	.weak	_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE
	.type	_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE, @function
_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE:
.LFB3764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3764:
	.size	_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE, .-_ZSt7forwardIOPFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEOT_RNSt16remove_referenceIS9_E4typeE
	.section	.text._ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3765:
	.size	_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIOPKcEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3766:
	.size	_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE
	.text
	.type	_GLOBAL__sub_I_lock, @function
_GLOBAL__sub_I_lock:
.LFB3767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3767:
	.size	_GLOBAL__sub_I_lock, .-_GLOBAL__sub_I_lock
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_lock
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
