# Комментарии к коду на ассемблере с указанием переменных из с_кода и их аналогов в ассемблерном коде

### main.s
> * -308 - argc
> * -320 - argv
> * -32 - t_start
> * -4 - i в for в in (argc == 2) {...}
> * -40 - t_end
> * -16 - input_stream 
> * -24 - output_stream
> * -44 - answer
> * -48 - length

### task.s
---
### methodFile и method
> * -56 - *str
> * -60 - do_output
> * -20 - N_count
> * -24 - Z_count
> * -28 - X_count
> * -32 - T_count
> * -36 - P_count
> * -40 - i в for в method
> * -64 - *output_file
---
### randomMethod
> * -4 - j в for
> * -144 - string[128]
> * -148 - length
