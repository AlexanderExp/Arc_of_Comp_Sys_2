# Arcitecture_Of_Computer_Systems_HW1
----
# Программа была написана сразу под 9 баллов: 
### Замечания: 
> * При вводе строки для обработки через терминал не рекомендуется включать символ ";" и другие символы, которые Linux может воспринять, как команды  

### Запуск программы: 
> * ./program.exe - для запуска программы с вводом/выводом через консоль
> * ./program.exe <строка (1 <= длина в символах <= 128)> - для запуска программы с таймером
> * ./program.exe <название входного файла> <название выходного файла> - для запуска программы с вводом/выводом через файлы

# Преобразование с-кода в ассемблерный производилось с помощью следующих комманд: 
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./main.c -S -o ./main.s
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./task.c -S -o ./task.s
### Создание object файлов
> * gcc ./main.s -c -o main.o
> * gcc ./task.s -c -o task.o
###
> * gcc ./task.o main.o -o program.exe

# Модификация ассемблерного кода
### Убрал лишнее, сделал несколько оптимизаций
	- mov	rdx, QWORD PTR -32[rbp]	# tmp106, t_start
	- mov	rax, QWORD PTR -40[rbp]	# tmp107, t_end
	- mov	rsi, rdx	#, tmp106
	- mov	rdi, rax	#, tmp107
  
  	+ mov	rsi, QWORD PTR -32[rbp]	#, tmp106
	+ mov	rdi, QWORD PTR -40[rbp]	#, tmp107
  ---
  	- mov	rax, QWORD PTR -56[rbp]	# tmp110, str
	- mov	rdi, rax	#, tmp110
  
  	+mov	rdi, QWORD PTR -56[rbp]
  ---
  	- mov	rax, QWORD PTR -56[rbp]	# tmp110, str
	- mov	rdi, rax	#, tmp110
  
 	+ mov	rdi, QWORD PTR -56[rbp]
  ---
  	- mov	rax, QWORD PTR -64[rbp]	# tmp111, output_file
	- mov	rcx, rax	#, tmp111
  
  	+ mov	rcx, QWORD PTR -64[rbp]
  ---
  	- mov	rax, QWORD PTR -64[rbp]	# tmp122, output_file
	- mov	rdi, rax	#, tmp122
  
  	+ mov	rdi, QWORD PTR -64[rbp]
  ---
  	- mov	rax, QWORD PTR stdin[rip]	# stdin.0_1, stdin
	- mov	rdi, rax	#, stdin.0_1
  
  	+ mov	rdi, QWORD PTR stdin[rip]
  ---
  В main.s
  	- endbr64
  	- cdqe
  	- .size	randomMethod, .-randomMethod
  	- .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	- .section	.note.GNU-stack,"",@progbits
	- .section	.note.gnu.property,"a"
	- .align 8
	- .long	 1f - 0f
	- .long	 4f - 1f
	- .long	 5
  	- 0:
  	-.string"GNU"
  	- 1:
  	- .align 8
  	- .long	 0xc0000002
  	- .long	 3f - 2f
  	- 2:
  	- .long	 0x3
  	- 3:
  	- .align 8
  ---
  В task.s
  	- .size	main, .-main
  	- .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	- .section	.note.GNU-stack,"",@progbits
	- .section	.note.gnu.property,"a"
	- .align 8
	- .long	 1f - 0f
	- .long	 4f - 1f
	- .long	 5
  	- 0:
	- .string	 "GNU"
  	- 1:
	- .align 8
	- .long	 0xc0000002
	- .long	 3f - 2f
  	- 2:
	- .long	 0x3
  	- 3:
	- .align 8
  	- 4:
  ### Использовал регистры
  
