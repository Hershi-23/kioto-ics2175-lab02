CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = program
SRC = main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	echo "85" | ./$(TARGET)

clean:
	rm -f $(TARGET) *.o
