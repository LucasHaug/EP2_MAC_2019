#include <stdio.h>
#include <stdbool.h>

#include <math.h> // TIRAR DEPOIS

#define NUMERO_DE_SIMULACOES 10000

double raiz_cubica(double caixa) {
    return pow(caixa, 1.0/3.0);
}

int chao(double valor){
    return valor;
}

double nova_caixa(double caixa) {
    double rifa = 9821.0 * raiz_cubica(caixa) + 0.211327;
    double caixa_nova = rifa - chao(rifa);
    return caixa_nova;
}

int main() {

    double caixa = 0;
    int derrotas = 0;
    double apostador = 0;
    double banca = 0; 
    double semente = 0;
    double teto = 0;
    int num_cartas_banca = 0;
    int num_cartas_apost = 0;
    double carta = 0;
    
    printf("Digite o valor da semente: ");
    scanf("%lf", &semente);
    printf("\n");

    do {
        caixa = semente;
        semente /=10;
    } while (chao(caixa) > 0);

    for (teto = 0.5; teto <= 7.5; teto+=0.5) {
        derrotas = 0;
        
        for (int i = 0; i < NUMERO_DE_SIMULACOES; i++) {
            apostador = 0;
            num_cartas_apost = 0;

            while (apostador < teto) {
                caixa = nova_caixa(caixa);
                carta = chao(caixa*10 + 1);

                if (carta == 8 || carta == 9 || carta == 10) {
                    carta = 0.5;
                } 

                apostador += carta;
                num_cartas_apost++;
            }

            banca = 0;
            num_cartas_banca = 0;

            bool banca_continua = true;

            if (apostador > 7.5) {
                banca_continua = false;
            }

            while (banca_continua) {
                caixa = nova_caixa(caixa);
                carta = chao(caixa*10 + 1);

                if (carta == 8 || carta == 9 || carta == 10) {
                    carta = 0.5;
                } 

                banca += carta;
                num_cartas_banca++;

                if (banca >= 7.5) {
                    banca_continua = false;
                } else if (banca > apostador) {
                    banca_continua = false;
                } else {
                    banca_continua = true;
                }
            }

            if (apostador > 7.5) {
                derrotas = derrotas;
            } else if (banca > 7.5) {
                derrotas++;
            } else if (apostador > banca) {
                derrotas++;
            } else if (apostador == banca) {
                if (num_cartas_apost > num_cartas_banca) {
                    derrotas++;
                } else {
                    derrotas = derrotas;
                } 
            } else {
                derrotas = derrotas;
            }
        }
        
        printf("%.1f %d ", teto, derrotas);
        
        int numero_caracteres = chao((100.0*derrotas)/NUMERO_DE_SIMULACOES + 0.5);
        for (int i = 0; i < numero_caracteres; i++) {
            printf("*");
        }

        printf("\n");
    }
    
    return 0;
}
