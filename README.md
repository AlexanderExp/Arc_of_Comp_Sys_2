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

