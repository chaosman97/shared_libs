CC = gcc
SHARED_FLAGS = -shared -o libshared.so
LOADER_FLAGS = -ldl
.SILENT : hello run clean
hello : shared.c loader.c
	${CC} shared.c ${SHARED_FLAGS}
	${CC} loader.c ${LOADER_FLAGS}

run : a.out libshared.so
	./a.out

clean : a.out libshared.so
	rm -rf a.out libshared.so