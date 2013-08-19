#include <stdio.h>

#define LOWER 0x41
#define UPPER 0x50

char *HE_LUT[16] = { "1101100", "1101101", "110111", "110101", "110100", "01011", "01010", "0100", "0110", "0111", "1100", "000", "001", "100", "101", "111" };

int main(void) {
    char symbol_to_encode = 0;

    for (;;) {
        scanf("%c", &symbol_to_encode);

        // Stop on CR/NL
        if (symbol_to_encode == 0xa || symbol_to_encode == 0xd) {
            break;
        }

        if (symbol_to_encode < LOWER || symbol_to_encode > UPPER) {
            printf("%s", "Not a valid symbol");
            break;
        }

        printf("%s", HE_LUT[symbol_to_encode - 0x41]);
    }
    
    printf("\n");

    return 0;
}
