#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/auxv.h>
#include <sys/mman.h>
#include <sys/prctl.h>

int main(void) {
    if (!((getauxval(AT_HWCAP2)) & HWCAP2_MTE))
    {
        printf("MTE is not supported\n");
        return EXIT_FAILURE;
    }
    else
    {
        printf("MTE is supported\n");
    }
}