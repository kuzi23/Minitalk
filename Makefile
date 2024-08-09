# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkwizera <mkwizera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/09 21:57:09 by mkwizera          #+#    #+#              #
#    Updated: 2024/08/09 23:36:57 by mkwizera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server
CLIENT = client

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_SERVER = server.c
SRC_CLIENT = client.c
 
OBJ_SERVER = $(SRC_SERVER:.c=.o)
OBJ_CLIENT = $(SRC_CLIENT:.c=.o)


.PHONY: all clean fclean re
all: $(SERVER) $(CLIENT)

$(SERVER): $(OBJ_SERVER)
		$(CC) $(CFLAGS) -o $(SERVER) $(OBJ_SERVER)
		
$(CLIENT): $(OBJ_CLIENT)
		$(CC) $(CFLAGS) -o $(CLIENT) $(OBJ_CLIENT)

%.o : %.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		rm -f $(OBJ_CLIENT) $(OBJ_SERVER)

fclean: clean
		rm -f $(SERVER) $(CLIENT)

re: clean all