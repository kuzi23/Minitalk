# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkwizera <mkwizera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/09 21:57:09 by mkwizera          #+#    #+#              #
#    Updated: 2024/08/09 22:44:06 by mkwizera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = client.c server.c
OBJ =  $(SRC:.c=.o)
NAME =	minitalk.a

.PHONY: all clean fclean re
all: $(NAME)

$(NAME): $(OBJ) minitalk.h
		ar rcs $(NAME) $(OBJ)

%.o : %.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: clean all