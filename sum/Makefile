all:
	nasm -f macho64 -o sum.o sum.asm
	ld -o sum -e _start sum.o

clean:
	rm sum sum.o
