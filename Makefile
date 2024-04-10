CC=gcc # this would also work with valid version of clang, e.g. clang-14
CFLAGS=-march=armv8.5-a+memtag

src: src/mte-by-example.c
	$(CC) src/mte-by-example.c -o mte-by-example.bin $(CFLAGS)

.PHONY: run
run:
	qemu-user ./mte-by-example.bin