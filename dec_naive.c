#include <stdio.h>

void huffman_decode(char *input, int len, char *output) {
    int i;
    int out_idx;
    unsigned char val, run;

    i = 0;    
    out_idx = 0;
    val = 0;
    run = 0;
    
    for (i = 0; i < len; i++) {
        // Grab next input bit
        val <<= 1;
        val |= input[i];
        run++;
        
        // Look for matching codes, first by how many bits we have, then by pattern
        if (run == 3) {
            switch (val) {
                case 0x07:
                   output[out_idx++] = 'P';
                   val = run = 0;
                   break; 
                case 0x05:
                   output[out_idx++] = 'O';
                   val = run = 0;
                   break; 
               case 0x04:
                   output[out_idx++] = 'N';
                   val = run = 0;
                   break; 
               case 0x01:
                   output[out_idx++] = 'M';
                   val = run = 0;
                   break; 
               case 0x00:
                   output[out_idx++] = 'L';
                   val = run = 0;
                   break; 
           }
        } else if (run == 4) {
            switch (val) {
               case 0x0C:
                   output[out_idx++] = 'K';
                   val = run = 0;
                   break; 
               case 0x07:
                   output[out_idx++] = 'J';
                   val = run = 0;
                   break; 
               case 0x06:
                   output[out_idx++] = 'I';
                   val = run = 0;
                   break; 
               case 0x04:
                   output[out_idx++] = 'H';
                   val = run = 0;
                   break; 
           }
        } else if (run == 5) {
            switch (val) {
               case 0x0A:
                   output[out_idx++] = 'G';
                   val = run = 0;
                   break; 
               case 0x0B:
                   output[out_idx++] = 'F';
                   val = run = 0;
                   break; 
           }
       } else if (run == 6) {
            switch (val) {
               case 0x34:
                   output[out_idx++] = 'E';
                   val = run = 0;
                   break; 
               case 0x35:
                   output[out_idx++] = 'D';
                   val = run = 0;
                   break; 
               case 0x37:
                   output[out_idx++] = 'C';
                   val = run = 0;
                   break; 
           }
        } else if (run == 7) {
            switch (val) {    
                case 0x6D:
                    output[out_idx++] = 'B';
                    val = run = 0;
                    break; 
                case 0x6C:
                    output[out_idx++] = 'A';
                    val = run = 0;
                    break;
            }
        }
    }
    
    output[out_idx] = '\0';
}

int main(void) {
    char input[512];
    char output[512];
    int i;
    
    scanf("%s", input);
    // Convert '0' and '1' to integers 0 and 1, respectively
    for (i = 0; input[i] != '\0'; i++) {
        input[i] = input[i] - 0x30;
    }

    huffman_decode(input, i, output);
    printf("%s\n", output);
}

