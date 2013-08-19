#include <stdio.h>

#define MAX_CODE_LEN 7
#define ASCII_SHIFT 0x41

int main(void) {
    char buffer[512];
    unsigned char input[512];
    int i, len;
    int in_idx, out_idx;
    unsigned char val, lookup, run;
    
    scanf("%s", buffer);
    for (i = 0; buffer[i] != '\0'; i++) {
        input[i] = buffer[i] - 0x30;
    }
    
    len = i;
    i = 0;    
    in_idx = 0;
    out_idx = 0;
    
    while (in_idx < len) {
        for (; i < MAX_CODE_LEN; i++) {
            if (in_idx + i >= len) {
                val <<= (MAX_CODE_LEN - i);
                break;
            }
            
            val <<= 1;
            val |= input[in_idx + i];
        }
        
        __asm__("huffman %0, %1" : "=r" (lookup) : "r" (val));
        buffer[out_idx++] = (lookup >> 4) + ASCII_SHIFT;
        
        run = lookup & 0x0F;
        in_idx += run;
        i = MAX_CODE_LEN - run;
    }
    
    buffer[out_idx] = '\0';
    printf("%s\n", buffer);
}

