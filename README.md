Note: _This was my third 42 project. The code is from December 2020. My biggest learn was implementing my first jump table. This README was written by the amazing [Qing Li](https://github.com/qingqingqingli), it was copied with her permission; it perfectly describes the project._

[![Logo](https://github.com/qingqingqingli/readme_images/blob/master/codam_logo_1.png)](https://github.com/qingqingqingli/ft_printf)

## ft_printf
***The aim of this project is to recode the printf function from the C Library.***

In this project, you can learn how to use variadic arguments. More importantly, you can challenge yourself to structure the code well, so it can be extended to different usecases.

## Technical considerations

- Allowed functions: ```malloc```, ```free```, ```write```, ```va_start```, ```va_arg```, ```va_copy```, ```va_copy```
- All heap allocated memory space must be properly freed when necessary
- It will manage the following conversions: [```cspdiuxX%nfge```]
- It will manage any combination of the [```# +-0.*```] flags and minimum field width with all conversions
- It will manage these four length modifiers [```l ll h hh```].

## How to test
> Run the following commands. Replace the ```test.c``` with your own test file

```shell
$ git clone https://github.com/elbaradi/ft_printf
$ cd ft_printf
$ make
$ gcc test.c libftprintf.a
$ ./a.out
```
