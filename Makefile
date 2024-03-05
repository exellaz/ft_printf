# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkhai-ki <kkhai-ki@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/02 17:12:39 by kkhai-ki          #+#    #+#              #
#    Updated: 2024/03/05 14:21:54 by kkhai-ki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I

INCLUDE = include

LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

SRC_DIR = src
SRC_FILES =	ft_find_len			\
			ft_print_char		\
			ft_print_hex		\
			ft_print_nbr		\
			ft_print_ptr		\
			ft_print_str		\
			ft_print_unsigned	\
			ft_printf			\
			ft_flags			\
			ft_parse_flags

SRC = $(addprefix $(SRC_DIR)/, $(addsuffix .c, $(SRC_FILES)))

OBJ_DIR = obj
OBJ = $(addprefix $(OBJ_DIR)/, $(addsuffix .o, $(SRC_FILES)))

$(OBJ_DIR)/%.o:		$(SRC_DIR)/%.c
					$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(NAME) : 	$(OBJ_DIR) $(OBJ)
			make -C $(LIBFT_DIR)
			cp $(LIBFT) $(NAME)
			ar rcs $@ $(OBJ)

$(OBJ_DIR) :
			mkdir -p $(OBJ_DIR)

all :		$(NAME)

clean :
			rm -rf $(OBJ_DIR)
			make clean -C $(LIBFT_DIR)

fclean:		clean
			rm -rf $(NAME)
			rm -rf $(LIBFT)

bonus:		all

re:			fclean all
