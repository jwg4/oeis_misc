#include <stdlib.h>
#include <stdio.h>
#define LIMIT 1000000


typedef struct ll{
    int value;
    struct ll* next;
}llT;

llT* append(llT *p, int value) {
    llT *temp = (llT *)malloc(sizeof(llT));
    temp->value = value;
    temp->next = 0;
    p->next = temp;
    return temp;
}

void load_values(llT* list) {
    int x = 1;
    list->value = 0;
    llT* p = list;
    for (int i=1; x < LIMIT; i++) {
        x = i * (3 * i - 1) / 2;
        p = append(p, x);
    }
}

void load_pairs(llT* src1, llT* src2, llT* dest) {
    llT* p = dest;
    for (llT* s1 = src1; s1->next != 0; s1 = s1->next) {
        for (llT* s2 = src2; s2->next != 0; s2 = s2->next) {
            int sum = s1->value + s2->value;
            p = append(p, sum);
        }
    }
}


void sieve_pairs(llT* src1, llT* src2, char* dest) {
    for (llT* s1 = src1; s1->next != 0; s1 = s1->next) {
        for (llT* s2 = src2; s2->next != 0; s2 = s2->next) {
            int sum = s1->value + s2->value;
            if (sum < LIMIT) {
                dest[sum] = 1;
            }
        }
    }
}

int main(int argc, char** argv) {
    char* sieve = (char * )calloc(LIMIT, sizeof(llT));
    llT* values = (llT*)malloc(sizeof(llT));
    llT* pairs= (llT*)malloc(sizeof(llT));
    
    load_values(values);
    load_pairs(values, values, pairs);
    sieve_pairs(values, pairs, sieve);

    return 0;
}
