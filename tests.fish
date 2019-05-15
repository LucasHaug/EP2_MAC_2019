function teste
    set -l entrada $argv[2]
    set -l esperado $argv[3]

    set -l saida (echo $entrada | ./ep1 | grep -oE "[[:digit:]]+")

    # echo $esperado
    # echo $saida

    if [ "$saida" = "$esperado" ]
        echo "[OK] Teste "$argv[1]
    else
        echo "[FALHA] Teste "$argv[1]
    end
end

