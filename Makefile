NAME = libasm.a
SRC = src/ft_strlen.asm src/ft_strcpy.asm
OBJ = $(SRC:.asm=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

test: all
	gcc main.c $(NAME) -o test

%.o : %.asm
	nasm -f elf64 $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all