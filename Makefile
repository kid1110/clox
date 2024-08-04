build: main.o chunk.o memory.o debug.o value.o
	gcc -o main main.o chunk.o memory.o debug.o  value.o
main.o: main.c ./headers/common.h ./headers/chunk.h ./headers/debug.h 
	gcc -c main.c

chunk.o: ./src/chunk.c ./headers/chunk.h ./headers/common.h ./headers/value.h
	gcc -c ./src/chunk.c

memory.o: ./src/memory.c ./headers/memory.h
	gcc -c ./src/memory.c

debug.o: ./src/debug.c ./headers/debug.h
	gcc -c ./src/debug.c

value.o: ./src/value.c ./headers/value.h
	gcc -c ./src/value.c
.PHONY: clean
clean:
	rm main.o chunk.o memory.o