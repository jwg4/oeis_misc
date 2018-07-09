#include <stdlib.h>
#include <stdio.h>


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

void load_values(llT* list, int N) {
    int x = 1;
    list->value = 0;
    llT* p = list;
    for (int i=1; x < N; i++) {
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

void sieve_pairs(llT* src1, llT* src2, char* dest, int N) {
    for (llT* s1 = src1; s1->next != 0; s1 = s1->next) {
        for (llT* s2 = src2; s2->next != 0; s2 = s2->next) {
            int sum = s1->value + s2->value;
            if (sum < N) {
                dest[sum] = 1;
            }
        }
    }
}

void print_values(char* sieve, int N) {
    for (int i = 0; i < N; i++) {
        if (sieve[i] == 0) {
            printf("%d\n", i);
        }
    }
}

int main(int argc, char** argv) {
    int LIMIT = 1000000;
    if(argc>=2) {
        LIMIT = atoi(argv[1]);
        printf("Using %d as the limit of the search", LIMIT);
    }
    char* sieve = (char * )calloc(LIMIT, sizeof(llT));
    llT* values = (llT*)malloc(sizeof(llT));
    llT* pairs= (llT*)malloc(sizeof(llT));
    
    load_values(values, LIMIT);
    load_pairs(values, values, pairs);
    sieve_pairs(values, pairs, sieve, LIMIT);
    print_values(sieve, LIMIT);

    return 0;
}
