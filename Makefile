##
## Makefile for  in /home/gaby/Documents/dev/asm_minilibc/gaby
##
## Made by gaby
## Login   <gabriel.de-blois@epitech.eu>
##
## Started on  Tue Mar  7 00:38:31 2017 gaby
## Last update Wed Mar 22 16:22:55 2017 Thibaut Artis
## Last update Mon Mar 20 17:50:36 2017 Thibaut Artis
##

CC		=	ld

NASM		=	nasm

ASMFLAGS	=	-felf64

CCFLAGS		=	-shared -fPIC

NAME		=	libasm.so

RM		=	rm -f

SRCASM		=	$(SRCPATH)my_strlen.asm \
			$(SRCPATH)my_strcmp.asm \
			$(SRCPATH)my_putstr.asm \
			$(SRCPATH)my_memcpy.asm \
			$(SRCPATH)my_memmove.asm \
			$(SRCPATH)my_strstr.asm \
			$(SRCPATH)my_strcasecmp.asm \
			$(SRCPATH)my_strncmp.asm \
			$(SRCPATH)strchr.asm \
			$(SRCPATH)my_strpbrk.asm \
			$(SRCPATH)my_strcspn.asm \
			$(SRCPATH)rindex.asm \
			$(SRCPATH)memset.asm \
			$(SRCPATH)my_io.asm

SRCPATH 	= ./src/

OBJASM		=	$(SRCASM:.asm=.o)

all:		$(NAME)

$(NAME):	$(OBJASM)
		$(CC) -o $(NAME) $(CCFLAGS) $(OBJASM)

clean:
		$(RM) $(OBJASM)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		re clean fclean all

%.o:	%.asm
	$(NASM) $(ASMFLAGS) -o $@ $<

#.asm.o:
#	nasm -felf64 -o $@ $<
