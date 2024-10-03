CC = gcc
CFLAGS = -Wall -O2
TARGET = heap

all: $(TARGET)

$(TARGET): asst6.o heap.o
	$(CC) $(CFLAGS) -o $(TARGET) asst6.o heap.o

asst6.o: asst6.c heap.c heap.h
	$(CC) $(CFLAGS) -c asst6.c

heap.o: heap.c heap.h
	$(CC) $(CFLAGS) -c heap.c

clean:
	rm -f $(TARGET) *.o