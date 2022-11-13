	.file	"task.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ./task.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip ./task.s
# -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector
# -fno-exceptions -fverbose-asm -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fauto-inc-dec -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-clash-protection
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	"\nResult:"
.LC1:
	.string	"\nNumber of N: %d"
.LC2:
	.string	"\nNumber of Z: %d"
.LC3:
	.string	"\nNumber of X: %d"
.LC4:
	.string	"\nNumber of T: %d"
.LC5:
	.string	"\nNumber of P: %d\n"
	.text
	.globl	method
	.type	method, @function
method:
	push	rbp	#
	mov	rbp, rsp	#,
	push	rbx	#
	sub	rsp, 56	#,
	mov	QWORD PTR -56[rbp], rdi	# str, str
	mov	DWORD PTR -60[rbp], esi	# do_output, do_output
# ./task.c:7:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -20[rbp], 0	# N_count,
# ./task.c:7:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -24[rbp], 0	# Z_count,
# ./task.c:7:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -28[rbp], 0	# X_count,
# ./task.c:7:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -32[rbp], 0	# T_count,
# ./task.c:7:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -36[rbp], 0	# P_count,
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	mov	DWORD PTR -40[rbp], 0	# i,
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	jmp	.L2	#
.L8:
# ./task.c:9:         if (str[i] == 'N') {
	mov	eax, DWORD PTR -40[rbp]	# tmp99, i
	movsx	rdx, eax	# _1, tmp99
	mov	rax, QWORD PTR -56[rbp]	# tmp100, str
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
# ./task.c:9:         if (str[i] == 'N') {
	cmp	al, 78	# _3,
	jne	.L3	#,
# ./task.c:10:             ++N_count;
	add	DWORD PTR -20[rbp], 1	# N_count,
.L3:
# ./task.c:12:         if (str[i] == 'Z') {
	mov	eax, DWORD PTR -40[rbp]	# tmp101, i
	movsx	rdx, eax	# _4, tmp101
	mov	rax, QWORD PTR -56[rbp]	# tmp102, str
	add	rax, rdx	# _5, _4
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# ./task.c:12:         if (str[i] == 'Z') {
	cmp	al, 90	# _6,
	jne	.L4	#,
# ./task.c:13:             ++Z_count;
	add	DWORD PTR -24[rbp], 1	# Z_count,
.L4:
# ./task.c:15:         if (str[i] == 'X') {
	mov	eax, DWORD PTR -40[rbp]	# tmp103, i
	movsx	rdx, eax	# _7, tmp103
	mov	rax, QWORD PTR -56[rbp]	# tmp104, str
	add	rax, rdx	# _8, _7
	movzx	eax, BYTE PTR [rax]	# _9, *_8
# ./task.c:15:         if (str[i] == 'X') {
	cmp	al, 88	# _9,
	jne	.L5	#,
# ./task.c:16:             ++X_count;
	add	DWORD PTR -28[rbp], 1	# X_count,
.L5:
# ./task.c:18:         if (str[i] == 'T') {
	mov	eax, DWORD PTR -40[rbp]	# tmp105, i
	movsx	rdx, eax	# _10, tmp105
	mov	rax, QWORD PTR -56[rbp]	# tmp106, str
	add	rax, rdx	# _11, _10
	movzx	eax, BYTE PTR [rax]	# _12, *_11
# ./task.c:18:         if (str[i] == 'T') {
	cmp	al, 84	# _12,
	jne	.L6	#,
# ./task.c:19:             ++T_count;
	add	DWORD PTR -32[rbp], 1	# T_count,
.L6:
# ./task.c:21:         if (str[i] == 'P') {
	mov	eax, DWORD PTR -40[rbp]	# tmp107, i
	movsx	rdx, eax	# _13, tmp107
	mov	rax, QWORD PTR -56[rbp]	# tmp108, str
	add	rax, rdx	# _14, _13
	movzx	eax, BYTE PTR [rax]	# _15, *_14
# ./task.c:21:         if (str[i] == 'P') {
	cmp	al, 80	# _15,
	jne	.L7	#,
# ./task.c:22:             ++P_count;
	add	DWORD PTR -36[rbp], 1	# P_count,
.L7:
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	add	DWORD PTR -40[rbp], 1	# i,
.L2:
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	mov	eax, DWORD PTR -40[rbp]	# tmp109, i
	movsx	rbx, eax	# _16, tmp109
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	mov	rdi, QWORD PTR -56[rbp]	#, tmp110
	call	strlen@PLT	#
# ./task.c:8:     for (int i = 0; i < strlen(str); ++i) {
	cmp	rbx, rax	# _16, _17
	jb	.L8	#,
# ./task.c:25:     if (do_output == 1) {
	cmp	DWORD PTR -60[rbp], 1	# do_output,
	jne	.L10	#,
# ./task.c:26:         printf("\nResult:");
	lea	rdi, .LC0[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:27:         printf("\nNumber of N: %d", N_count);
	mov	eax, DWORD PTR -20[rbp]	# tmp111, N_count
	mov	esi, eax	#, tmp111
	lea	rdi, .LC1[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:28:         printf("\nNumber of Z: %d", Z_count);
	mov	eax, DWORD PTR -24[rbp]	# tmp112, Z_count
	mov	esi, eax	#, tmp112
	lea	rdi, .LC2[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:29:         printf("\nNumber of X: %d", X_count);
	mov	eax, DWORD PTR -28[rbp]	# tmp113, X_count
	mov	esi, eax	#, tmp113
	lea	rdi, .LC3[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:30:         printf("\nNumber of T: %d", T_count);
	mov	eax, DWORD PTR -32[rbp]	# tmp114, T_count
	mov	esi, eax	#, tmp114
	lea	rdi, .LC4[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:31:         printf("\nNumber of P: %d\n", P_count);
	mov	eax, DWORD PTR -36[rbp]	# tmp115, P_count
	mov	esi, eax	#, tmp115
	lea	rdi, .LC5[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
.L10:
# ./task.c:33: }
	nop	
	add	rsp, 56	#,
	pop	rbx	#
	pop	rbp	#
	ret	
	.size	method, .-method
	.globl	methodFile
	.type	methodFile, @function
methodFile:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	push	rbx	#
	sub	rsp, 56	#,
	mov	QWORD PTR -56[rbp], rdi	# str, str
	mov	QWORD PTR -64[rbp], rsi	# output_file, output_file
# ./task.c:36:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -20[rbp], 0	# N_count,
# ./task.c:36:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -24[rbp], 0	# Z_count,
# ./task.c:36:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -28[rbp], 0	# X_count,
# ./task.c:36:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -32[rbp], 0	# T_count,
# ./task.c:36:     int N_count = 0, Z_count = 0, X_count = 0, T_count = 0, P_count = 0;
	mov	DWORD PTR -36[rbp], 0	# P_count,
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	mov	DWORD PTR -40[rbp], 0	# i,
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	jmp	.L12	#
.L18:
# ./task.c:38:         if (str[i] == 'N') {
	mov	eax, DWORD PTR -40[rbp]	# tmp99, i
	movsx	rdx, eax	# _1, tmp99
	mov	rax, QWORD PTR -56[rbp]	# tmp100, str
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
# ./task.c:38:         if (str[i] == 'N') {
	cmp	al, 78	# _3,
	jne	.L13	#,
# ./task.c:39:             ++N_count;
	add	DWORD PTR -20[rbp], 1	# N_count,
.L13:
# ./task.c:41:         if (str[i] == 'Z') {
	mov	eax, DWORD PTR -40[rbp]	# tmp101, i
	movsx	rdx, eax	# _4, tmp101
	mov	rax, QWORD PTR -56[rbp]	# tmp102, str
	add	rax, rdx	# _5, _4
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# ./task.c:41:         if (str[i] == 'Z') {
	cmp	al, 90	# _6,
	jne	.L14	#,
# ./task.c:42:             ++Z_count;
	add	DWORD PTR -24[rbp], 1	# Z_count,
.L14:
# ./task.c:44:         if (str[i] == 'X') {
	mov	eax, DWORD PTR -40[rbp]	# tmp103, i
	movsx	rdx, eax	# _7, tmp103
	mov	rax, QWORD PTR -56[rbp]	# tmp104, str
	add	rax, rdx	# _8, _7
	movzx	eax, BYTE PTR [rax]	# _9, *_8
# ./task.c:44:         if (str[i] == 'X') {
	cmp	al, 88	# _9,
	jne	.L15	#,
# ./task.c:45:             ++X_count;
	add	DWORD PTR -28[rbp], 1	# X_count,
.L15:
# ./task.c:47:         if (str[i] == 'T') {
	mov	eax, DWORD PTR -40[rbp]	# tmp105, i
	movsx	rdx, eax	# _10, tmp105
	mov	rax, QWORD PTR -56[rbp]	# tmp106, str
	add	rax, rdx	# _11, _10
	movzx	eax, BYTE PTR [rax]	# _12, *_11
# ./task.c:47:         if (str[i] == 'T') {
	cmp	al, 84	# _12,
	jne	.L16	#,
# ./task.c:48:             ++T_count;
	add	DWORD PTR -32[rbp], 1	# T_count,
.L16:
# ./task.c:50:         if (str[i] == 'P') {
	mov	eax, DWORD PTR -40[rbp]	# tmp107, i
	movsx	rdx, eax	# _13, tmp107
	mov	rax, QWORD PTR -56[rbp]	# tmp108, str
	add	rax, rdx	# _14, _13
	movzx	eax, BYTE PTR [rax]	# _15, *_14
# ./task.c:50:         if (str[i] == 'P') {
	cmp	al, 80	# _15,
	jne	.L17	#,
# ./task.c:51:             ++P_count;
	add	DWORD PTR -36[rbp], 1	# P_count,
.L17:
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	add	DWORD PTR -40[rbp], 1	# i,
.L12:
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	mov	eax, DWORD PTR -40[rbp]	# tmp109, i
	movsx	rbx, eax	# _16, tmp109
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	mov	rdi, QWORD PTR -56[rbp]	#, tmp110
	call	strlen@PLT	#
# ./task.c:37:     for (int i = 0; i < strlen(str); ++i) {
	cmp	rbx, rax	# _16, _17
	jb	.L18	#,
# ./task.c:54:     fprintf(output_file, "\nResult:");
	mov	rcx, QWORD PTR -64[rbp]	#, tmp111
	mov	edx, 8	#,
	mov	esi, 1	#,
	lea	rdi, .LC0[rip]	#,
	call	fwrite@PLT	#
# ./task.c:55:     fprintf(output_file, "\nNumber of N: %d", N_count);
	mov	edx, DWORD PTR -20[rbp]	# tmp112, N_count
	mov	rax, QWORD PTR -64[rbp]	# tmp113, output_file
	lea	rsi, .LC1[rip]	#,
	mov	rdi, rax	#, tmp113
	mov	eax, 0	#,
	call	fprintf@PLT	#
# ./task.c:56:     fprintf(output_file, "\nNumber of Z: %d", Z_count);
	mov	edx, DWORD PTR -24[rbp]	# tmp114, Z_count
	mov	rax, QWORD PTR -64[rbp]	# tmp115, output_file
	lea	rsi, .LC2[rip]	#,
	mov	rdi, rax	#, tmp115
	mov	eax, 0	#,
	call	fprintf@PLT	#
# ./task.c:57:     fprintf(output_file, "\nNumber of X: %d", X_count);
	mov	edx, DWORD PTR -28[rbp]	# tmp116, X_count
	mov	rax, QWORD PTR -64[rbp]	# tmp117, output_file
	lea	rsi, .LC3[rip]	#,
	mov	rdi, rax	#, tmp117
	mov	eax, 0	#,
	call	fprintf@PLT	#
# ./task.c:58:     fprintf(output_file, "\nNumber of T: %d", T_count);
	mov	edx, DWORD PTR -32[rbp]	# tmp118, T_count
	mov	rax, QWORD PTR -64[rbp]	# tmp119, output_file
	lea	rsi, .LC4[rip]	#,
	mov	rdi, rax	#, tmp119
	mov	eax, 0	#,
	call	fprintf@PLT	#
# ./task.c:59:     fprintf(output_file, "\nNumber of P: %d\n", P_count);
	mov	edx, DWORD PTR -36[rbp]	# tmp120, P_count
	mov	rax, QWORD PTR -64[rbp]	# tmp121, output_file
	lea	rsi, .LC5[rip]	#,
	mov	rdi, rax	#, tmp121
	mov	eax, 0	#,
	call	fprintf@PLT	#
# ./task.c:60:     fclose(output_file);
	mov	rdi, QWORD PTR -64[rbp]	#, tmp122
	call	fclose@PLT	#
# ./task.c:61: }
	nop	
	add	rsp, 56	#,
	pop	rbx	#
	pop	rbp	#
	ret	
	.size	methodFile, .-methodFile
	.section	.rodata
	.align 8
.LC6:
	.string	"Your string (0 < length <= 128):"
	.text
	.globl	cmdMethod
	.type	cmdMethod, @function
cmdMethod:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	add	rsp, -128	#,
# ./task.c:65:     printf("Your string (0 < length <= 128):");
	lea	rdi, .LC6[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:66:     fflush(stdin);
	mov	rdi, QWORD PTR stdin[rip]
	call	fflush@PLT	#
# ./task.c:67:     getchar();
	call	getchar@PLT	#
# ./task.c:68:     fgets(string, 128, stdin);
	mov	rdx, QWORD PTR stdin[rip]	# stdin.1_2, stdin
	lea	rax, -128[rbp]	# tmp84,
	mov	esi, 128	#,
	mov	rdi, rax	#, tmp84
	call	fgets@PLT	#
# ./task.c:69:     method(string, 1);
	lea	rax, -128[rbp]	# tmp85,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp85
	call	method	#
# ./task.c:70: }
	nop	
	leave	
	ret	
	.size	cmdMethod, .-cmdMethod
	.section	.rodata
.LC7:
	.string	"Generated string: %s"
	.text
	.globl	randomMethod
	.type	randomMethod, @function
randomMethod:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 160	#,
	mov	DWORD PTR -148[rbp], edi	# length, length
# ./task.c:74:     srand(clock());
	call	clock@PLT	#
# ./task.c:74:     srand(clock());
	mov	edi, eax	#, _2
	call	srand@PLT	#
# ./task.c:75:     for (int j = 0; j < length; ++j) {
	mov	DWORD PTR -4[rbp], 0	# j,
# ./task.c:75:     for (int j = 0; j < length; ++j) {
	jmp	.L21	#
.L22:
# ./task.c:76:         string[j] = (char) (64 + rand() % 119);
	call	rand@PLT	#
# ./task.c:76:         string[j] = (char) (64 + rand() % 119);
	movsx	rdx, eax	# tmp89, _3
	imul	rdx, rdx, 1154949189	# tmp90, tmp89,
	shr	rdx, 32	# tmp91,
	mov	ecx, edx	# tmp92, tmp91
	sar	ecx, 5	# tmp92,
	cdq
	sub	ecx, edx	# tmp92, tmp93
	mov	edx, ecx	# _4, tmp92
	imul	edx, edx, 119	# tmp94, _4,
	sub	eax, edx	# _3, tmp94
	mov	edx, eax	# _4, _3
# ./task.c:76:         string[j] = (char) (64 + rand() % 119);
	mov	eax, edx	# _5, _4
	add	eax, 64	# _6,
# ./task.c:76:         string[j] = (char) (64 + rand() % 119);
	mov	edx, eax	# _7, _6
# ./task.c:76:         string[j] = (char) (64 + rand() % 119);
	mov	eax, DWORD PTR -4[rbp]	# tmp96, j
	mov	BYTE PTR -144[rbp+rax], dl	# string, _7
# ./task.c:75:     for (int j = 0; j < length; ++j) {
	add	DWORD PTR -4[rbp], 1	# j,
.L21:
# ./task.c:75:     for (int j = 0; j < length; ++j) {
	mov	eax, DWORD PTR -4[rbp]	# tmp97, j
	cmp	eax, DWORD PTR -148[rbp]	# tmp97, length
	jl	.L22	#,
# ./task.c:78:     printf("Generated string: %s", string);
	lea	rax, -144[rbp]	# tmp98,
	mov	rsi, rax	#, tmp98
	lea	rdi, .LC7[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./task.c:79:     method(string, 1);
	lea	rax, -144[rbp]	# tmp99,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp99
	call	method	#
# ./task.c:80: }
	nop	
	leave	
	ret	