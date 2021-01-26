SRC=	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s

OBJS= $(SRC:.s=.o)
NAME= libasm.a

$(NAME):	$(OBJS)
		@ar -rc $(NAME) $(OBJS)
		@ranlib $(NAME)
.s.o:
	@nasm -f macho64 ft_strlen.s
	@nasm -f macho64 ft_strcpy.s
	@nasm -f macho64 ft_strcmp.s
	@nasm -f macho64 ft_write.s
	@nasm -f macho64 ft_read.s
	@nasm -f macho64 ft_strdup.s
	clear
	@echo "\033[32mCompilación exitosa\033[0m"

all:	$(NAME)

clean:
	@rm $(OBJS)
	clear
	@echo "\033[32mArchivos .o borrados con éxito\033[0m"
fclean:
	@rm -f $(OBJS) libasm.a test
	clear
	@echo "\033[32mArchivos .o y .a borrados con éxito\033[0m"

re: fclean all

test:
	@make
	@gcc -Wall -Werror -Wextra /Users/abello-r/Desktop/proyectos/correccion/main.c -L. -lasm -o test
	@./test

.PHONY: all clean re fclean .s.o test