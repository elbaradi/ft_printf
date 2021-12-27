# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/10/28 00:17:49 by tel-bara      #+#    #+#                  #
#    Updated: 2021/12/27 14:42:48 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a
SRCDIR	=	srcs
SRCS	=	$(SRCDIR)/ft_printf.c \
			$(SRCDIR)/ft_printf_conv_utils.c \
			$(SRCDIR)/ft_printf_conv_more_utils.c \
			$(SRCDIR)/ft_printf_convert_big_hex.c \
			$(SRCDIR)/ft_printf_convert_char.c \
			$(SRCDIR)/ft_printf_convert_double_e.c \
			$(SRCDIR)/ft_printf_convert_double_f.c \
			$(SRCDIR)/ft_printf_convert_double_g.c \
			$(SRCDIR)/ft_printf_convert_hex.c \
			$(SRCDIR)/ft_printf_convert_hex_ptr.c \
			$(SRCDIR)/ft_printf_convert_int.c \
			$(SRCDIR)/ft_printf_convert_string.c \
			$(SRCDIR)/ft_printf_convert_u_int.c \
			$(SRCDIR)/ft_printf_parse_flags.c \
			$(SRCDIR)/ft_printf_parse_specifier.c \
			$(SRCDIR)/ft_printf_store_count.c \
			$(SRCDIR)/ft_printf_write_invalid.c \
			$(SRCDIR)/ft_printf_write_percentage.c \
			$(SRCDIR)/ft_printf_write_string.c
OBJS	=	$(SRCS:.c=.o)
LIBDIR	=	./libft/
LIBFT	=	libft.a
LIBC	=	ar -rcs
RM		=	rm -f
CC		=	gcc
FLAGS	=	-Wall -Werror -Wextra
INCS	=	.

all:		$(NAME)

$(NAME):	$(OBJS)
			make -C $(LIBDIR)/
			cp $(LIBDIR)/$(LIBFT) $(NAME)
			${LIBC} $(NAME) $(OBJS)

$(LIBFT):
			make -C ${LIBDIR}/

%.o:		%.c
			${CC} ${FLAGS} -c -I${INCS} $< -o $@

clean:
			${RM} $(OBJS)
			make clean -C ${LIBDIR}

fclean:		clean
			${RM} $(NAME) $(LIBDIR)${LIBFT}

re:			fclean all

bonus:		$(NAME)

.PHONY:		all .c.o clean fclean re bonus
