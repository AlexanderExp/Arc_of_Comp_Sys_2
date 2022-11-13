	.file	"main.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ./main.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip ./main.s
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
	.string	"String: %s\n"
.LC1:
	.string	"Time: %d ms"
.LC2:
	.string	"r"
	.align 8
.LC3:
	.string	"Error opening file. Press any key to continue"
.LC4:
	.string	"w"
	.align 8
.LC5:
	.string	"Random input or through command line (1 - random, 2 - cmd):"
.LC6:
	.string	"%d"
	.align 8
.LC7:
	.string	"Input length (0 < length <= %d):"
.LC8:
	.string	"Incorrect length = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 320	#,
	mov	DWORD PTR -308[rbp], edi	# argc, argc
	mov	QWORD PTR -320[rbp], rsi	# argv, argv
# ./main.c:14:     if (argc == 2) {
	cmp	DWORD PTR -308[rbp], 2	# argc,
	jne	.L2	#,
# ./main.c:15:         time_t t_start = clock();
	call	clock@PLT	#
	mov	QWORD PTR -32[rbp], rax	# t_start, tmp102
# ./main.c:16:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR -320[rbp]	# tmp103, argv
	add	rax, 8	# _1,
# ./main.c:16:         printf("String: %s\n", argv[1]);
	mov	rax, QWORD PTR [rax]	# _2, *_1
	mov	rsi, rax	#, _2
	lea	rdi, .LC0[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:17:         for (int i = 0; i < 25000000; ++i) {
	mov	DWORD PTR -4[rbp], 0	# i,
# ./main.c:17:         for (int i = 0; i < 25000000; ++i) {
	jmp	.L3	#
.L4:
# ./main.c:18:             method(argv[1], 0);
	mov	rax, QWORD PTR -320[rbp]	# tmp104, argv
	add	rax, 8	# _3,
# ./main.c:18:             method(argv[1], 0);
	mov	rax, QWORD PTR [rax]	# _4, *_3
	mov	esi, 0	#,
	mov	rdi, rax	#, _4
	call	method@PLT	#
# ./main.c:17:         for (int i = 0; i < 25000000; ++i) {
	add	DWORD PTR -4[rbp], 1	# i,
.L3:
# ./main.c:17:         for (int i = 0; i < 25000000; ++i) {
	cmp	DWORD PTR -4[rbp], 24999999	# i,
	jle	.L4	#,
# ./main.c:20:         time_t t_end = clock();
	call	clock@PLT	#
	mov	QWORD PTR -40[rbp], rax	# t_end, tmp105
# ./main.c:22:         printf("Time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	mov	rdx, QWORD PTR -32[rbp]	# tmp106, t_start
	mov	rax, QWORD PTR -40[rbp]	# tmp107, t_end
	mov	rsi, rdx	#, tmp106
	mov	rdi, rax	#, tmp107
	call	difftime@PLT	#
# ./main.c:22:         printf("Time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	cvttsd2si	eax, xmm0	# _6, _5
# ./main.c:22:         printf("Time: %d ms", (int) (difftime(t_end, t_start)) / 1000);
	movsx	rdx, eax	# tmp108, _6
	imul	rdx, rdx, 274877907	# tmp109, tmp108,
	shr	rdx, 32	# tmp110,
	sar	edx, 6	# tmp111,
	sar	eax, 31	# tmp112,
	sub	edx, eax	# tmp111, tmp112
	mov	eax, edx	# _7, tmp111
	mov	esi, eax	#, _7
	lea	rdi, .LC1[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:23:         method(argv[1], 1);
	mov	rax, QWORD PTR -320[rbp]	# tmp113, argv
	add	rax, 8	# _8,
# ./main.c:23:         method(argv[1], 1);
	mov	rax, QWORD PTR [rax]	# _9, *_8
	mov	esi, 1	#,
	mov	rdi, rax	#, _9
	call	method@PLT	#
# ./main.c:24:         return 0;
	mov	eax, 0	# _20,
	jmp	.L13	#
.L2:
# ./main.c:27:     if (argc == 3) {
	cmp	DWORD PTR -308[rbp], 3	# argc,
	jne	.L6	#,
# ./main.c:29:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR -320[rbp]	# tmp114, argv
	add	rax, 8	# _10,
# ./main.c:29:         FILE *input_stream = fopen(argv[1], "r");
	mov	rax, QWORD PTR [rax]	# _11, *_10
	lea	rsi, .LC2[rip]	#,
	mov	rdi, rax	#, _11
	call	fopen@PLT	#
	mov	QWORD PTR -16[rbp], rax	# input_stream, tmp115
# ./main.c:30:         if (input_stream == NULL) {
	cmp	QWORD PTR -16[rbp], 0	# input_stream,
	jne	.L7	#,
# ./main.c:31:             printf("Error opening file. Press any key to continue");
	lea	rdi, .LC3[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:32:             getchar();
	call	getchar@PLT	#
# ./main.c:33:             return 0;
	mov	eax, 0	# _20,
	jmp	.L13	#
.L7:
# ./main.c:35:         fgets(arr_str, sizeof(arr_str), input_stream);
	mov	rdx, QWORD PTR -16[rbp]	# tmp116, input_stream
	lea	rax, -304[rbp]	# tmp117,
	mov	esi, 256	#,
	mov	rdi, rax	#, tmp117
	call	fgets@PLT	#
# ./main.c:36:         fclose(input_stream);
	mov	rax, QWORD PTR -16[rbp]	# tmp118, input_stream
	mov	rdi, rax	#, tmp118
	call	fclose@PLT	#
# ./main.c:38:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR -320[rbp]	# tmp119, argv
	add	rax, 16	# _12,
# ./main.c:38:         FILE *output_stream = fopen(argv[2], "w");
	mov	rax, QWORD PTR [rax]	# _13, *_12
	lea	rsi, .LC4[rip]	#,
	mov	rdi, rax	#, _13
	call	fopen@PLT	#
	mov	QWORD PTR -24[rbp], rax	# output_stream, tmp120
# ./main.c:39:         methodFile(arr_str, output_stream);
	mov	rdx, QWORD PTR -24[rbp]	# tmp121, output_stream
	lea	rax, -304[rbp]	# tmp122,
	mov	rsi, rdx	#, tmp121
	mov	rdi, rax	#, tmp122
	call	methodFile@PLT	#
# ./main.c:40:         return 0;
	mov	eax, 0	# _20,
	jmp	.L13	#
.L6:
# ./main.c:42:     printf("Random input or through command line (1 - random, 2 - cmd):");
	lea	rdi, .LC5[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:43:     int answer = 0;
	mov	DWORD PTR -44[rbp], 0	# answer,
# ./main.c:44:     scanf("%d", &answer);
	lea	rax, -44[rbp]	# tmp123,
	mov	rsi, rax	#, tmp123
	lea	rdi, .LC6[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:45:     if (answer == 1) {
	mov	eax, DWORD PTR -44[rbp]	# answer.0_14, answer
# ./main.c:45:     if (answer == 1) {
	cmp	eax, 1	# answer.0_14,
	jne	.L9	#,
# ./main.c:46:         int length = 0;
	mov	DWORD PTR -48[rbp], 0	# length,
# ./main.c:47:         printf("Input length (0 < length <= %d):", max_size);
	mov	esi, 128	#,
	lea	rdi, .LC7[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:48:         scanf("%d", &length);
	lea	rax, -48[rbp]	# tmp124,
	mov	rsi, rax	#, tmp124
	lea	rdi, .LC6[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:49:         if (length < 1 || length > max_size) {
	mov	eax, DWORD PTR -48[rbp]	# length.1_15, length
# ./main.c:49:         if (length < 1 || length > max_size) {
	test	eax, eax	# length.1_15
	jle	.L10	#,
# ./main.c:49:         if (length < 1 || length > max_size) {
	mov	eax, DWORD PTR -48[rbp]	# length.2_16, length
# ./main.c:49:         if (length < 1 || length > max_size) {
	cmp	eax, 128	# length.2_16,
	jle	.L11	#,
.L10:
# ./main.c:50:             printf("Incorrect length = %d\n", length);
	mov	eax, DWORD PTR -48[rbp]	# length.3_17, length
	mov	esi, eax	#, length.3_17
	lea	rdi, .LC8[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:51:             return 0;
	mov	eax, 0	# _20,
	jmp	.L13	#
.L11:
# ./main.c:53:         randomMethod(length);
	mov	eax, DWORD PTR -48[rbp]	# length.4_18, length
	mov	edi, eax	#, length.4_18
	call	randomMethod@PLT	#
# ./main.c:54:         return 0;
	mov	eax, 0	# _20,
	jmp	.L13	#
.L9:
# ./main.c:56:     cmdMethod();
	mov	eax, 0	#,
	call	cmdMethod@PLT	#
# ./main.c:57:     return 0;
	mov	eax, 0	# _20,
.L13:
# ./main.c:58: }
	leave	
	ret	
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
