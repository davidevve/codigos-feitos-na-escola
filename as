#include <stdio.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "portuguese");
    int tipc;
    float p, d, novval;

    printf("Coloque a sua categoria do cliente\n");
    printf("(1) cliente comun\n");
    printf("(2) funcionario\n");
    printf("(3) cliente vip\n");
    scanf("%d", &tipc);

    printf("Coloque o valor do produto: ");
    scanf("%f", &p);

    if (tipc == 1) {
        d = 0; // no discount for common customers
    } else if (tipc == 2) {
        d = p * 10 / 100;
    } else if (tipc == 3) {
        d = p * 5 / 100;
    }

    novval = p - d;
    printf("O seu valor com desconto é R$%.2f\n", novval);

    
}
