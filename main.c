#include <stdio.h>

#define N 1e4
#define EPS 1e-8
#define TARGET 7.5

#define chao(x) ((int)(x))
#define abs(x) ((x) < 0 ? -(x) : (x))
                                //x As  2  3  4  5  6  7   J    Q    K
static const double pontos[] =  { 0, 1, 2, 3, 4, 5, 6, 7, 0.5, 0.5, 0.5 };

double RaizCubica(double x) {
    if (abs(x) <= EPS) {
        return 0;
    }

    // n, n - 1
    double r[2] = { x, 0 };

    while (abs(r[1] - r[0]) > EPS) {
        r[1] = r[0];
        r[0] = 2.0 * r[1]/3.0 + x / (3 * r[1] * r[1]);
    }

    return r[0];
}

double NovaCaixa(double caixa) {
    double rifa = 9821.0 * RaizCubica(caixa) + 0.211327;
    return (rifa - chao(rifa));
}

int main() {
    double pontuacao_jogador = 0.0;
    int cartas_jogador = 0;

    double pontuacao_banca = 0.0;
    int cartas_banca = 0;

    int carta_atual = 0;
    int derrotas = 0;

    double caixa;
    scanf("%lf", &caixa);

    while (caixa >= 1) {
        caixa /= 10.0;
    }

    for (double teto = 0.5; teto <= TARGET; teto += 0.5) {
        derrotas = 0;

        for (int n = 0; n < N; n++) {
            // Jogador
            pontuacao_jogador = 0.0;
            cartas_jogador = 0;

            while (pontuacao_jogador < teto) {
                caixa = NovaCaixa(caixa);
                carta_atual = chao(caixa*10 + 1);

                pontuacao_jogador += pontos[carta_atual];
                cartas_jogador++;
            }

            if (pontuacao_jogador > TARGET) {
                continue;
            }

            // Banca
            pontuacao_banca = 0.0;
            cartas_banca = 0;

            while (1) {
                caixa = NovaCaixa(caixa);
                carta_atual = chao(caixa*10) + 1;

                pontuacao_banca += pontos[carta_atual];
                cartas_banca++;

                // Possiveis fim de rodada
                if (pontuacao_banca == pontuacao_jogador) {
                    if (cartas_banca <= cartas_jogador) {
                        break;
                    } else if (pontuacao_jogador == TARGET) {
                        derrotas++;
                        break;
                    }
                }

                if (pontuacao_banca > pontuacao_jogador) {
                    if (pontuacao_banca > TARGET) {
                        derrotas++;
                    }

                    break;
                }

                if (pontuacao_banca < pontuacao_jogador) {
                    if (pontuacao_jogador == TARGET && cartas_banca >= cartas_jogador) {
                        derrotas++;
                        break;
                    }
                }
            }
        }

        printf("%.1f %04d ", teto, derrotas);
        for (int i = 0; i < chao(100 * ((double) derrotas / N) + 0.5); i++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}
