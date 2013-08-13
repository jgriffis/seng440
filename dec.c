#include <stdio.h>
#include <string.h>

#include "alphabet.h"

unsigned char HD_LUT[128] = { 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xb3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3, 0x74, 0x74, 0x74, 0x74, 0x74, 0x74, 0x74, 0x74, 0x65, 0x65, 0x65, 0x65, 0x55, 0x55, 0x55, 0x55, 0x84, 0x84, 0x84, 0x84, 0x84, 0x84, 0x84, 0x84, 0x94, 0x94, 0x94, 0x94, 0x94, 0x94, 0x94, 0x94, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xd3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xe3, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0x46, 0x46, 0x36, 0x36, 0x7, 0x17, 0x26, 0x26, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3, 0xf3 };

int main(void) {
    char in_buffer[1024];
    int i;
    int len, index, final;
    unsigned char val, lookup;
    
    scanf("%s", in_buffer);
    len = strlen(in_buffer);
    
    index = 0;
    final = 0;
    
    for (;;) {
        val = 0;
        
        for (i = 0; i < 7; i++) {
            val <<= 1;
            
            if (final || index + i >= len) {
                final = 1;
                val |= 0;
            } else {
                // ASCII of '0' is 0x30
                val |= in_buffer[index + i] - 0x30;
            }
        }
        
        lookup = HD_LUT[val];
        printf("%c", ((lookup >> 4) & 0x0F) + LOWER);
        index += lookup & 0x0F;
        
        if (final || index >= len) {
            break;
        }
    }
    
    printf("\n");
}
