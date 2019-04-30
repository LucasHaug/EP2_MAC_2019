#include <stdio.h>

#include <math.h> // TIRAR DEPOIS

#define NUMERO_DE_SIMULACOES 10000

double raiz_cubica(int caixa) {
    return pow(caixa, 1.0/3.0);
}

int chao(double valor){
    return valor;
}

double nova_caixa(int caixa) {
    int rifa = 9821.0 * raiz_cubica(caixa) + 0.211327;
    int caixa_nova = rifa - chao(rifa);
    return caixa_nova;
}

int main() {

    double caixa = 0;
    int derrotas = 0;
    float apostador = 0;
    float banca = 0; 
    double semente = 0;
    float teto = 0;
    
    printf("Digite o valor da semente: ");
    scanf("%lf", semente);

    for (semente; semente > 0; semente/=10);

    caixa = semente;

    for (teto = 0.5; teto <= 7.5; teto+=0.5) {
        derrotas = 0;
        
        for (int i = 0; i < NUMERO_DE_SIMULACOES; i++) {
            caixa = nova_caixa(caixa);
            carta = chao(caixa*10 + 1);
            if ()
        }
        
        printf("%f %d ", teto, derrotas);
        
        int numero_caracteres = chao((100*derrotas)/NUMERO_DE_SIMULACOES + 0.5);
        for (int i = 0; i < numero_caracteres; i++) {
            printf("*");
        }

        printf("\n");
    }
    
    return 0;
}
