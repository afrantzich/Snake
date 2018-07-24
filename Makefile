# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afrantzi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/15 17:25:33 by afrantzi          #+#    #+#              #
#    Updated: 2018/07/09 19:33:01 by afrantzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = snek
FLAGS = -Wall -Wextra -Werror -o
INC = -I includes/
SRC = main.c initialize.c move.c draw_stuff.c score.c
LIB = -L libft/ -lft -L minilibx_macos/ -lmlx
FW = -framework OpenGL -framework Appkit

all: $(NAME)

$(NAME):
	make -C libft
	make -C minilibx_macos
	gcc $(FLAGS) $(NAME) $(INC) $(SRC) $(LIB) $(FW)

clean:
	make clean -C libft

fclean: clean
	make fclean -C libft
	make clean -C minilibx_macos
	/bin/rm -f $(NAME)

re: fclean all
