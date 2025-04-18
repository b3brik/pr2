CC = gcc
CFLAGS = -Wall -Wextra -O2
OBJ = main.o logger.o processes.o user.o
TARGET = my_program

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

main.o: main.c logger.h processes.h user.h

logger.o: logger.c logger.h

processes.o: processes.c processes.h logger.h

user.o: user.c user.h logger.h

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

