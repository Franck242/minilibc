##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

GCC	=	nasm -f elf64

NAME	=	libasm.so

SRCS	=	strlen.S	\
		strcmp.S 	\
		strncmp.S	\
		strchr.S	\
		memcpy.S	\
		memset.S	\
		memmove.S	\
		strpbrk.S	\
		strcspn.S	\
		rindex.S	\
		strstr.S	\

RM	=	rm -rf

OBJS	=	$(SRCS:.S=.o)

all:	$(NAME)

$(NAME): $(OBJS)
	ld -shared -o $(NAME) $(OBJS)

%.o:	%.S
	$(GCC) $< -o $@

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
