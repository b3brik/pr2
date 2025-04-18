CC = gcc
CFLAGS = -Wall -Wextra -O2
OBJ = main.o logger.o processes.o user.o
TARGET = my_program

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

main.o: main.c logger.h processes.h user.h
	$(CC) $(CFLAGS) -c main.c

logger.o: logger.c logger.h
	$(CC) $(CFLAGS) -c logger.c

processes.o: processes.c processes.h logger.h
	$(CC) $(CFLAGS) -c processes.c

user.o: user.c user.h logger.h
	$(CC) $(CFLAGS) -c user.c

clean:
	rm -f $(OBJ) $(TARGET)
