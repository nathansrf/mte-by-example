CC=gcc # this would also work with valid version of clang, e.g. clang-14
CFLAGS=-march=armv8.5-a+memtag

all:
	$(CC) src/mte-by-example.c -o mte-by-example.bin $(CFLAGS)

.PHONY: setup
setup:
	./scripts/setup.sh

.PHONY: run
run:
	qemu-aarch64 ./mte-by-example.bin