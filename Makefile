NAME = libftprintf.a
SRCS = ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_add.c ft_strlen.c ft_aux.c
OBJS = $(SRCS:.c=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean:
	$(RM) $(OBJS) $(NAME)

re: clean all

.PHONY: all bonus clean re