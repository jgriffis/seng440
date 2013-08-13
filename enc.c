#include <stdio.h>
#include "alphabet.h"

int main(void) {
    char symbol_to_encode = 0;

    for (;;) {
        scanf("%c", &symbol_to_encode);

        if (symbol_to_encode == 0xa || symbol_to_encode == 0xd) {
            break;
        }

        if (symbol_to_encode < LOWER || symbol_to_encode > UPPER) {
            printf("\n%s", "Not a valid symbol");
            break;
        }

        printf("%s", HE_LUT[symbol_to_encode - 0x41]);
    }
    
    printf("\n");

    return 0;
}
