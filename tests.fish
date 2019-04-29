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

teste 1 " 5 2 71 11212 21122 21211 12221 11122 12212 21221 11212 12212 22212 22221 12222 12111 11221 11211 22212 11121 11112 11121 22222 11121 21221 22221 12122 12122 22121 21212 22212 12222 21122 21111 21222 11211 12112 11112 22111 11221 22222 12222 12222 12121 21222 21222 21212 12111 21121 22111 11111 22221 21111 22222 21221 11111 21122 21112 11211 22221 11111 22121 11211 21222 21121 21122 21111 21212 11111 11111 11111 21211 22211 21112 21112" "5 0 2 3 2 3 4 2 7"
teste 2 " 6 6 22 555213 213334 643422 213312 136234 632521 243251 124541 114361 321141 254322 526361 152141 215261 316564 142624 554562 255161 535412 625223 243221 253645 432326" "6 0 0 0 1 1 0 1 0 0 0 1 1 1 2 0 0 2 2 3 3 1 1 0 22 555213"
teste 3 " 2 3 100 32 23 21 31 13 12 12 13 32 12 11 23 23 33 13 11 11 21 33 33 12 13 12 21 33 21 22 12 31 33 23 32 11 21 33 12 23 23 13 12 23 12 12 21 31 32 31 23 21 13 33 31 13 11 33 12 13 13 33 23 33 31 11 32 11 21 31 11 12 21 12 21 33 21 22 22 33 13 13 32 21 23 31 13 13 12 32 33 11 22 33 11 12 31 32 23 11 22 23 21 31" "2 0 0 0 1 0 1 1 0 8"
teste 4 " 7 9 36 4378233 7469668 5964213 3569288 2814153 4263394 7444373 6458145 2944993 8668683 2981398 2195883 9787134 5519226 1486625 5771672 8287962 1676438 4522246 5361772 8141515 8612745 6835882 1631475 7583915 3847496 5942694 6727344 7241676 8141756 6113217 2643119 8699992 3818248 2156314 5356273 1741435" "7 0 0 2 1 1 1 1 1 1 2 0 1 1 1 0 1 0 2 2 1 0 0 0 0 0 0 0 0 0 0 1 0 0 2 0 3 1 36 4378233"
teste 5 " 6 5 92 552314 342123 341134 322254 314313 453325 542211 313253 435551 323555 112513 433131 311451 435431 332522 521151 525513 111142 215435 544322 445155 213453 352522 432353 225515 443313 444252 423233 135425 545435 422251 152443 155345 254442 522121 231551 324141 235531 355541 351515 454211 114444 152111 331421 243225 115515 524532 541321 411132 441213 542342 421554 123115 554152 121231 252431 124224 115544 344535 322234 111421 121213 434352 145512 542533 211412 312254 451355 542511 325212 441535 314424 451123 225512 212413 442354 354243 254121 452525 215354 134553 551314 435312 132143 445313 523223 452133 431112 112253 453445 343441 323421 113112" "6 0 1 1 2 2 2 3 0 0 0 2 0 0 0 1 1 2 0 0 2 0 0 2 2 1 2 0 0 0 1 1 2 2 1 2 0 0 0 1 2 2 1 3 0 0 1 1 2 0 1 3 1 1 2 0 2 1 1 0 2 0 1 1 1 2 1 2 2 3 1 0 1 1 1 2 3 1 1 2 2 0 5 2 1 2 1 2 1 1 1 0 0 1 92 552314"
teste 6 " 3 2 20 121 112 112 121 212 112 221 222 211 111 211 111 211 112 222 111 111 111 111 121 212" "3 0 1 1 3"
teste 7 " 7 7 69 7354172 5452562 4114373 1356251 3574427 1711676 7645741 1433653 7466251 6224342 2713642 7327564 1425364 1665124 2715154 5253732 4551146 6243365 6267163 7751756 2211651 6342314 5262232 7636261 5677717 2327416 4275136 4764135 5716275 4347666 1253141 5263434 2755451 7475643 6126471 3251743 6724273 1524113 5322424 2221265 5154115 2615647 3251631 3212264 5415535 1476177 6651516 5615132 6423646 3446415 3726411 3175454 3114324 1457543 3215633 6175466 4371544 3371653 3211766 4462163 3133123 3614555 3217345 2244642 1321453 4671576 2466475 5414425 4535655 7433423" "7 0 2 2 2 1 1 1 0 1 2 1 2 0 1 1 2 2 0 1 2 0 1 1 1 0 1 1 2 1 1 2 0 1 1 1 1 2 2 1 0 3 0 1 0 0 2 1 2 0 0 0 0 1 1 0 0 1 1 0 1 1 1 0 2 1 1 1 1 0 1 69 7354172"
teste 8 " 1 6 8 1 3 1 6 1 2 5 6 4" "1 0 0 2"
teste 9 " 1 3 41 3 1 1 2 1 3 3 2 3 2 3 2 3 2 2 3 3 1 2 1 2 2 3 3 3 3 2 2 2 2 2 3 1 2 1 3 1 2 2 3 2 1" "1 0 0 0 0 0 5"
teste 10 " 9 4 44 233222312 342232314 231433141 233143313 411221132 413433242 243123111 343321431 231244323 133213333 112224342 424132214 131141312 412343222 223413111 444443422 413113412 242222444 111211242 432132432 412231424 111324123 214141112 333324334 422412211 233133231 241333443 141243143 413234112 144441442 343242441 443131232 424244342 234131433 111243422 334211212 233111221 244132243 142133414 343342214 133343143 241144444 244131232 314443143 342333441" "9 0 4 2 5 3 2 4 2 4 4 4 2 4 1 3 1 3 4 2 3 1 1 3 4 2 3 1 1 4 1 3 2 3 2 2 4 3 2 1 3 2 1 2 0 0 44 233222312"
teste 11 " 1 7 19 4 5 5 5 7 5 3 3 2 3 4 2 6 6 2 2 5 2 6 7" "1 0 0 0 0 0 0 0 0 0 0 10"
teste 12 " 3 4 53 433 411 442 331 223 322 341 111 442 222 142 443 414 134 441 144 313 424 323 112 332 114 231 322 432 413 334 224 331 222 134 221 132 414 141 332 334 332 231 342 113 444 313 124 234 114 321 132 434 241 334 443 244 221" "3 0 1 1 1 1 0 0 0 1 0 0 2 1 1 1 0 1 1 1 0 1 0 1 0 2 2 1 0 1 0 1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 0 1 2 0 1 2 0 0 53 433"
teste 13 " 4 6 47 4164 3232 3636 6332 6344 2334 6234 3553 2316 4366 1263 5542 4321 6225 1241 1345 2162 4453 4112 2656 1332 2545 3521 1613 5365 3556 4445 2133 2121 1421 2435 2653 3524 4213 2242 3245 1626 5564 1355 3644 4125 5155 1136 1331 2424 5611 6223 1124" "4 0 0 0 0 1 1 1 0 0 2 1 0 1 0 0 0 2 1 2 0 0 0 0 0 1 0 1 1 1 0 0 0 1 1 0 0 0 2 0 1 2 1 1 0 1 0 0 2 47 4164"
teste 14 " 3 4 17 443 434 432 313 132 443 243 332 322 423 343 433 334 343 412 212 431 132" "3 0 1 1 1 0 5"
teste 15 " 9 5 61 443413231 523154153 523331333 424242532 433214543 242422443 411222432 525413423 544531332 213151511 215531251 412223112 244422441 355511322 215344334 131142412 523543514 442121314 212124121 435255153 544223251 513242322 243424225 311124345 454311443 322324221 155514121 552432544 423344135 154111215 534251421 422213124 553454221 435211543 252124514 412213523 341553542 415221342 114311155 524355214 314444155 534411122 431425454 432345311 331533255 241255533 313143311 211145551 123415422 545411214 144535542 124121241 153343543 231355223 354542325 332134344 352235521 342425131 135541254 145244525 451423221 544553421" "9 0 1 2 2 3 2 2 3 2 2 2 2 3 1 1 0 2 2 1 1 4 1 4 0 2 2 2 1 3 2 1 3 4 2 0 3 2 1 1 1 1 2 2 2 2 2 3 1 3 4 1 2 2 1 0 0 1 4 1 1 5 3 61 443413231"
teste 16 " 1 5 8 4 2 5 4 4 3 5 2 2" "1 0 0 0 3"
teste 17 " 7 4 33 1243431 3341442 4413424 2114422 2113144 2123134 2234111 3133122 1421213 3344311 2331342 3313132 3423231 1412111 1133433 4444111 1432333 1111431 2123421 2214434 2322233 1241132 4343323 3114324 3213124 4144323 3214413 2143423 2324234 2121341 1433443 3441144 4141143 2311134" "7 0 2 2 1 1 2 2 1 1 2 0 2 3 2 4 2 2 4 3 3 1 4 2 0 2 1 2 3 1 1 3 1 1 1 33 1243431"
teste 18 " 5 4 47 31443 24431 41222 24444 13232 12233 13424 43113 11444 12223 21121 42112 34124 42131 24223 21231 13443 14411 14442 13234 42213 33343 33214 33312 24112 34411 12132 43241 41133 22443 41413 14143 44331 24332 41122 13323 32212 21234 33212 32132 41332 13424 24442 41432 41114 44444 33144 32143" "5 0 1 1 2 0 1 1 1 3 1 1 0 1 0 1 1 3 1 2 0 1 3 1 1 0 2 0 1 2 3 3 2 0 0 1 1 1 1 1 1 1 1 2 2 1 2 2 3 47 31443"
teste 19 " 7 1 68 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111 1111111" "7 0 1"
teste 20 " 8 6 79 53316614 13236332 25656642 23646625 13355163 54626141 12366165 46353651 52235153 41223412 35112335 13152125 51562123 26342636 66642515 31266463 23311266 53532666 32534426 11466336 44415541 24343663 15642622 12542616 56223554 51313331 43411151 46415631 54355464 12116263 46523511 12125244 41536551 21343425 64545523 43614513 54332646 41134564 63154136 15431464 22124466 25562423 55636255 44253241 42642116 16243541 32412361 36321145 54446441 51451334 35624263 25364135 24521652 16543652 11534663 55254446 15234652 15454462 61621514 34266115 54221656 42342533 16545555 44642552 16522514 32131362 65622433 43662346 61325546 12431363 44421414 64656526 54355661 56236531 42555213 44545453 24651466 54356443 42232245 55655333" "8 0 2 2 3 2 2 2 2 1 1 1 1 1 2 1 1 3 3 0 1 1 2 1 2 2 3 2 2 3 2 1 1 1 1 0 3 3 1 1 1 0 0 2 0 1 0 1 1 2 2 0 1 1 1 1 1 1 0 2 2 2 1 0 0 2 0 0 1 1 0 2 1 3 2 1 0 0 3 0 1 79 53316614"
teste 21 " 8 2 29 12111111 11121221 11211121 21111111 22211221 11122111 22221112 11111212 11111212 12222112 22112121 22112121 21122222 11221211 22112222 12211121 21121122 11122122 21222121 22111111 22111211 12211211 12112211 21211221 22112122 21122211 21212222 11222212 22122221 22222121" "8 0 4 5 6 4 5 4 5 5 4 5 5 1 4 3 6 3 3 2 7 6 6 6 3 4 3 1 2 3 3 29 12111111"
teste 22 " 2 4 91 23 41 44 34 33 12 14 23 43 34 44 12 14 43 22 43 32 24 24 11 14 41 44 24 32 42 44 12 13 24 41 32 24 32 13 11 41 32 14 24 33 13 14 21 21 34 24 21 22 42 32 22 11 41 14 23 31 13 22 21 14 43 44 41 42 33 44 12 33 23 33 21 22 33 11 11 41 23 42 43 21 33 13 44 13 11 34 11 13 11 24 33" "2 0 0 0 0 1 0 0 7"
teste 23 " 2 8 60 17 47 83 32 38 37 65 53 61 76 66 52 56 66 82 51 74 47 82 47 16 82 38 36 48 13 73 18 82 24 77 76 46 82 68 85 24 72 68 56 83 34 26 18 22 67 45 56 44 63 48 26 63 58 77 56 46 44 16 46 11" "2 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 60 17"
teste 24 " 8 3 59 32312112 22112213 12323321 21113223 31123212 32113321 21233322 11323223 23121331 12321133 13212122 11322331 23222221 32221232 12222131 31132221 31131333 13231331 13132332 12333321 23122113 13323232 32223332 12222123 21322321 32211222 11232222 12331231 21332313 32323232 11223311 33331121 23113313 11213113 12232123 32211232 31311332 13233122 21111222 31311112 21113213 12331112 23232212 21113213 32331211 23313111 31111221 11332132 12321321 22313312 21323221 31123313 12213221 12131122 23112212 31233233 22131222 33221322 23131131 32212331" "8 0 4 2 1 3 3 1 1 0 3 4 2 1 3 3 2 1 0 2 2 3 2 3 3 2 4 2 2 3 4 1 3 2 3 3 4 4 2 2 6 2 5 3 2 4 4 2 4 2 5 1 2 2 3 4 1 2 2 1 4 59 32312112"
teste 25 " 7 5 64 1345234 1323333 2454245 2424534 2342535 5312252 2525434 2423524 5443145 4553334 2322325 5523331 1145434 4213132 2422513 4252323 1355242 5135315 2535223 2453225 3525343 4513333 4324455 1451254 2215511 5111434 4324241 1554353 1412213 4221441 4323354 5322222 1141323 4151441 2212125 1245524 2515512 4445454 3235153 4255555 1132143 2244455 1435353 3144242 3532235 3514143 1514335 2344115 2323342 1244124 2355253 5244534 2552335 5545243 1314354 5144311 4345131 2144531 3255144 2255411 1254111 3341431 5532212 3424233 2251541" "7 0 3 1 2 3 2 3 1 1 2 1 1 5 1 0 0 4 1 2 1 1 1 1 3 1 2 2 1 2 0 2 2 2 0 0 4 1 3 1 1 1 1 2 2 2 0 2 2 1 3 3 3 1 3 3 1 4 2 2 1 1 3 1 2 0 64 1345234"
teste 26 " 4 6 61 3331 4141 5332 2362 1342 4213 2343 5666 3212 2255 6224 1461 4423 1665 5314 5331 4245 2512 3312 1262 2255 3612 1114 3235 3625 5245 5164 1563 3223 4435 6143 4512 2661 4346 6645 4113 3152 5121 6566 1556 3123 6646 2324 5224 4154 3151 2333 6215 6243 6454 5345 5414 1423 1462 1122 5231 6551 3164 2134 6521 4154 5363" "4 0 1 2 1 1 0 1 0 1 0 0 1 0 0 1 3 0 0 2 0 0 1 0 2 1 0 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 0 2 2 0 0 0 1 0 0 0 0 2 1 1 1 1 0 1 61 3331"
teste 27 " 1 3 85 3 3 3 2 3 2 1 3 2 2 1 2 2 1 2 2 3 1 2 3 2 2 1 3 3 2 3 3 1 3 3 3 2 3 2 1 1 3 1 3 3 1 2 2 3 1 1 3 2 3 2 3 1 2 2 2 1 1 2 2 1 2 2 3 1 2 1 3 2 3 3 2 2 3 1 3 1 3 1 2 2 2 2 3 3 1" "1 0 1"
teste 28 " 1 6 39 1 5 2 6 6 2 5 2 5 4 5 4 5 4 2 6 4 6 2 2 2 5 2 1 6 1 6 3 6 6 1 1 2 4 6 5 3 2 5 2" "1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23"
teste 29 " 6 9 89 277635 136945 928227 175942 697612 759464 536935 216991 582418 435567 458186 911976 493443 154725 731719 882272 572425 665279 965536 862394 211184 255629 386918 563567 416723 664578 749225 558268 986788 132198 365343 789699 771112 542399 159115 627691 818148 175462 647262 738845 671854 736474 942565 977774 832943 529325 559684 344823 932213 189866 742791 935921 358393 656167 852739 334397 874575 922636 831874 252695 721696 183188 977458 569868 543573 169919 548469 642941 883358 961533 131172 576218 981454 979222 248788 811299 362117 675266 462265 254987 535959 531964 889673 357127 962686 151821 214322 345174 354235 565893" "6 0 1 0 1 2 0 2 1 0 0 0 0 0 1 0 0 2 0 1 0 1 2 0 0 0 0 1 0 0 0 0 1 1 0 1 2 0 1 1 1 1 0 1 2 0 1 1 0 0 0 0 0 0 0 1 0 2 2 0 3 1 0 2 0 0 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 1 1 0 1 0 2 0 89 277635"
teste 30 " 9 1 10 111111111 111111111 111111111 111111111 111111111 111111111 111111111 111111111 111111111 111111111 111111111" "9 0 1"
teste 31 " 5 9 84 94791 28315 64479 13735 78137 43178 97493 22628 65533 57423 95235 34633 19468 73758 61231 33325 73966 55343 84871 51788 48678 45132 19224 67471 62685 27319 31684 53559 55429 24912 18717 79669 34663 27211 99334 89819 63557 45815 37248 14126 12934 66426 61842 13684 57375 47699 76583 79266 35982 76268 91948 77146 66227 76523 46564 82873 42888 84214 17888 96711 77755 62555 37119 37471 34421 19137 92675 76233 68466 83971 94148 98867 86644 78674 71762 55524 91139 51667 48835 83494 52119 74152 63688 81669 86248" "5 0 0 1 1 0 0 2 0 0 0 1 1 0 1 1 0 0 0 2 1 0 0 0 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 3 1 0 0 1 2 0 1 0 0 1 2 1 0 0 1 0 1 0 0 1 0 1 0 0 0 84 94791"
teste 32 " 8 8 15 42877745 24274736 18614154 27383221 81756456 73541876 52577616 62214314 77678152 88713418 17312475 52651725 75673281 17574855 38721566 36667737" "8 0 2 0 0 0 0 3 1 1 0 1 3 1 2 0 2 15 42877745"
teste 33 " 7 2 68 1112211 2212211 1111112 2212211 2211211 1221221 2221121 1222121 2212212 2111111 2112211 1221122 1122122 2222111 2121212 2112121 2221221 2211221 1122212 2122222 2221121 2111212 1211221 1222222 2222211 1221211 1212111 2111212 2112212 2211211 2222112 2212222 1112221 1212211 2211121 2221112 1212121 2212122 2122221 1212122 1221212 2221222 1211112 1221112 1212212 2112122 2121222 1212212 1212121 2212111 2212112 1212121 1211222 2211121 2122221 2212121 2221111 2121112 2111112 2111222 1212121 2111122 2111122 2222211 1212212 1222112 1111112 1211122 2212112" "7 0 5 4 5 4 3 1 3 4 4 6 1 3 3 3 4 2 3 5 3 1 4 4 3 4 4 5 4 5 4 2 3 6 6 2 1 4 2 4 3 3 1 3 2 5 3 2 5 4 4 3 4 3 2 4 3 2 2 3 3 4 2 2 4 5 3 4 2 3 68 1112211"
teste 34 " 5 9 78 72589 96791 78988 13842 58184 74117 93536 71846 75797 52564 36766 99417 17629 85247 98877 61441 44743 29979 62198 48583 58862 83954 87499 88928 54791 34147 47153 85137 84334 87989 11221 25942 28844 22342 16199 83414 49286 13246 43369 82335 13218 83779 92195 89797 57814 55374 67826 73364 55419 28436 66745 89274 96146 47176 38586 62678 31534 28915 91885 28631 92623 35117 64281 96227 13711 68876 52834 91537 45373 98462 62891 87383 55468 68161 82763 41323 73679 21861 23845" "5 0 0 2 0 1 1 1 1 1 2 0 0 1 0 0 0 0 1 1 2 0 0 1 0 0 0 0 0 0 2 0 0 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 1 1 0 0 0 0 0 2 1 1 0 1 0 1 0 1 0 0 0 1 1 0 0 1 1 0 0 1 0 2 0 0 78 72589"
teste 35 " 5 8 47 74776 65128 15224 66873 14164 32833 66613 14726 13117 73767 26323 76254 84371 15721 44488 74664 87776 57832 55621 78647 12558 45568 24854 57635 53764 85665 67648 67446 76388 35634 31717 87237 55373 78784 45126 84117 53172 26527 27716 11838 46371 87466 13513 51471 41211 68845 57866 68278" "5 0 0 0 1 1 0 0 3 0 2 0 1 2 1 1 2 3 0 0 1 0 0 1 0 1 0 0 1 1 0 1 0 1 2 1 1 1 0 2 0 1 1 0 1 0 0 1 1 47 74776"
teste 36 " 3 1 19 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111 111" "3 0 1"
teste 37 " 6 6 10 626322 314322 513456 344351 464453 145321 153151 635232 124326 411341 432454" "6 0 3 0 1 0 2 0 2 3 1 0 10 626322"
teste 38 " 4 4 10 1414 4111 1233 2121 4321 3432 2231 4421 2411 1431 1431" "4 0 1 1 0 0 1 0 1 2 2 2 10 1414"
teste 39 " 7 4 10 3443443 3332142 4444214 4443323 2413141 4444243 1341424 3312132 1433111 2223133 1423214" "7 0 2 2 4 3 4 2 1 2 2 2 10 3443443"
teste 40 " 9 4 6 444422332 234134214 312424132 221312322 421341423 314134221 332134133" "9 0 1 4 3 1 1 1 6 444422332"
teste 41 " 9 7 40 575713142 115136746 343471563 261547243 137333453 752335222 244641163 554523776 417722437 645734413 325113161 225256716 511123421 476111744 473625634 375714366 412553751 457562665 147745567 566326741 766547556 441225441 317475372 234241354 312463623 245274215 433246171 426347225 652665657 772675723 565531215 236726266 176733757 266513332 142471152 665614716 243112777 433113624 557214722 534236425 266633562" "9 0 2 0 1 1 1 1 2 1 2 4 1 2 3 1 4 1 0 1 2 0 1 1 0 1 1 1 0 0 1 2 1 3 3 2 2 1 2 3 1 2 40 575713142"
teste 42 " 2 6 42 53 63 55 14 34 53 44 53 33 56 52 26 46 21 45 56 53 63 35 44 13 33 25 53 16 36 42 36 22 54 14 52 53 21 44 61 65 51 66 12 22 53 51" "2 0 1 1 0 0 5"
teste 43 " 3 7 89 271 526 125 776 553 516 566 543 122 143 317 362 154 112 443 363 734 167 277 511 267 541 532 611 525 476 737 264 772 426 665 621 344 336 254 532 421 232 721 752 255 476 414 165 142 153 661 313 617 436 137 153 613 361 532 335 323 123 172 327 535 435 466 411 325 633 631 116 254 234 776 162 354 443 413 113 242 626 665 352 574 141 435 364 613 427 135 751 316 477" "3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 1 0 1 0 1 0 1 1 0 0 1 0 0 1 0 1 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1 1 1 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 1 0 1 89 271"
teste 44 " 9 2 57 212212111 212211112 221221122 222112212 122121212 211222211 122212221 122111121 211112111 221222112 222222112 111212221 212111122 112122111 221112211 112212221 211211112 111112222 122111121 111222112 122112111 222211122 112222221 212222212 122212211 212221111 111122211 221212111 221122121 122112221 112121212 212221111 111211221 121111122 222212212 111211111 222122121 212121221 221121221 111222122 122212122 121211221 221221111 221121121 212212211 111212111 221111211 111122222 222121121 112211112 121121111 211212121 111122111 212112221 122221211 212221211 222221211 221222212" "9 0 7 3 5 2 6 5 4 7 5 6 5 5 6 5 6 6 3 4 5 6 5 5 6 6 7 4 7 4 4 3 7 4 2 6 6 5 4 2 4 5 3 5 3 8 7 4 2 4 6 3 7 5 6 4 6 5 4 57 212212111"
teste 45 " 8 9 10 76763889 31546341 48672745 48874432 68588583 22261759 27989935 69745616 21532638 57939136 15958954" "8 0 0 0 0 1 2 0 1 0 0 0 10 76763889"
teste 46 " 7 7 18 1176611 7133746 5673363 6645542 3327347 5241754 7511665 2141223 6171317 2746272 4174451 2461316 7247574 6163173 7731114 3155143 5751511 2746255 2246534" "7 0 1 1 0 0 0 1 1 3 1 3 1 0 1 1 1 2 1 1 18 1176611"
teste 47 " 9 5 17 542545145 133133225 211543122 441131453 312153125 211113153 241455242 515513141 412514525 122425443 442114452 344342412 354551314 242133451 545413522 445243132 453515251 441444244" "9 0 1 3 1 3 1 3 4 3 3 2 2 1 2 2 3 2 3 17 542545145"
teste 48 " 9 7 40 111763171 564551365 636113365 366237541 577332431 251642567 255143276 122577336 421651435 521551335 525234752 171521241 362161313 124316235 423465441 173213765 537261134 324374475 747626145 367743353 526444722 724555534 261151346 151721555 125542337 157236247 542725223 262547626 316727641 244313732 646376727 653237511 646265777 674564112 773733116 251571566 222531431 323652477 144233334 146352147 514213423" "9 0 0 1 1 1 1 2 1 1 1 0 3 1 1 2 2 2 1 1 2 0 0 1 3 1 1 1 0 3 1 0 1 2 2 3 1 1 1 2 2 2 40 111763171"
teste 49 " 9 4 38 224434111 321123233 142114424 232423144 334213432 331133131 412324313 413224212 332334332 311434221 211334133 211443432 213333434 134224414 214443122 413324211 324423323 334312221 111223412 134222123 134321114 322241443 344313314 441112213 442241332 131144242 244221444 111112112 324222134 211132221 124344222 331343113 423433441 432433414 144332221 233134442 113213333 314421141 434143213" "9 0 1 1 3 1 3 2 2 2 4 4 2 2 3 4 3 3 2 1 2 3 1 2 1 0 1 2 2 3 3 3 2 4 3 3 3 0 4 2 38 224434111"
teste 50 " 4 6 68 3121 6623 5233 4136 6651 4446 5631 2364 6235 2151 1216 4123 6655 6244 5566 1514 4433 5215 4514 6142 5556 4543 2526 4515 3324 3354 4164 4365 3165 3235 5553 1446 4226 1551 5343 4113 1615 4553 6162 4214 5261 5322 4251 1433 2651 6141 3221 4623 3234 6545 3321 2312 4612 3114 1354 4543 1513 6223 3453 4552 4165 1466 3614 5265 4615 4342 2415 4545 2355" "4 0 1 0 1 1 0 1 0 0 2 0 2 0 0 0 0 0 0 0 1 0 0 1 0 2 1 1 0 2 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 2 3 1 1 0 3 0 0 2 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 68 3121"
teste 51 " 1 6 58 6 1 1 3 2 1 2 1 5 4 2 3 6 2 6 6 2 5 6 2 1 3 4 4 2 4 6 1 5 2 6 4 5 4 1 2 3 2 4 3 5 6 3 6 2 4 3 2 2 6 4 1 3 6 6 3 3 6 3" "1 0 0 0 0 0 0 0 0 0 0 0 0 12"
teste 52 " 4 2 99 2121 2112 1222 2221 2222 1122 2121 1121 2211 2221 2212 1111 1122 1221 1122 2211 1112 2212 2211 1111 1112 1112 2121 1112 1221 2122 1221 1212 2222 1121 2111 2111 2111 1122 1221 2221 1112 2221 2112 2111 2121 1221 2212 1211 2122 1111 1211 1112 1212 2121 1111 2221 2111 2112 2112 1122 2112 2121 2212 2122 1111 2222 2211 1122 1221 1211 2222 2112 1111 1211 1121 2212 1221 1212 2212 1222 1122 1111 1111 2121 2211 2221 1221 2212 1222 1112 2112 1122 1212 2122 1212 2211 1121 1212 1111 1121 2111 1111 2211 2221" "4 0 2 1 3 2 2 6"
teste 53 " 2 4 61 32 24 42 23 13 23 11 34 24 24 11 11 42 32 11 41 31 44 21 22 24 23 21 13 22 24 14 24 34 33 14 22 24 44 23 33 13 14 24 13 21 44 34 33 31 14 41 11 11 22 24 13 12 41 44 12 43 14 34 33 12 41" "2 0 0 1 0 0 0 0 1 0 0 0 0 1 13"
teste 54 " 5 8 84 51775 38874 36636 33655 57143 75754 72436 74416 17656 74452 86462 48445 24126 48148 12281 22224 16282 62442 62285 41851 68646 62421 25231 56272 38855 76312 48267 34358 68488 26888 58755 23877 88314 21334 27714 45812 25887 52675 21145 32271 85584 37164 61515 63844 66478 21554 24114 16835 48126 81256 27788 71138 58367 81655 57838 46538 54218 88321 17887 55564 21117 15875 84263 56856 51273 14235 82286 34261 51216 24284 55436 77848 77114 42638 24348 14365 76362 61845 11163 65148 78547 55534 55688 58444 61263" "5 0 1 0 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 2 1 0 0 0 0 0 3 1 0 1 1 0 0 3 2 1 0 0 2 0 1 1 0 1 0 1 1 1 1 2 1 0 1 0 0 1 1 2 0 1 3 1 0 0 2 0 1 0 0 0 0 1 0 2 1 0 0 1 1 1 1 84 51775"
teste 55 " 4 8 92 1842 6871 3456 4183 4737 7767 3126 2841 6188 4648 7444 1423 8777 5336 3161 4316 2446 7236 7315 7154 4344 1284 2257 7476 1226 2185 8548 6747 3618 7171 7443 6257 3157 7815 6488 5235 4347 6138 6864 1842 8213 6338 7266 1738 8675 7776 6622 6736 4236 5764 4726 2337 4333 8772 1748 2485 7676 7737 5357 1354 4642 2376 3251 8111 6746 7472 4164 4857 4662 8845 6561 7715 4561 3218 3547 3547 6223 2325 2585 3753 7862 6762 5254 2884 8743 6885 2314 2263 7756 2472 2187 2352 1683" "4 0 1 0 0 0 0 0 2 0 1 1 1 0 0 0 0 1 0 0 0 1 1 0 0 1 0 1 1 0 0 1 0 0 1 0 0 1 0 1 39"
teste 56 " 8 9 26 21725593 21647956 93398111 39364568 99577364 68957191 83161699 93839839 41915151 91262969 73542521 85942516 85731137 47941999 27879348 89581885 61975627 46134151 21759345 35678987 91196112 73969232 88872974 21589831 88886456 87832184 87433611" "8 0 2 0 1 0 1 1 0 2 1 1 1 1 1 1 0 2 0 3 0 1 0 0 2 0 0 0 26 21725593"
teste 57 " 4 1 34 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111" "4 0 1"
teste 58 " 3 5 53 253 542 415 132 143 445 542 531 152 552 535 451 513 551 231 225 412 255 121 135 423 542 134 453 451 543 512 543 444 532 312 324 231 435 254 314 414 221 335 353 244 324 133 341 444 131 124 243 234 354 221 514 214 231" "3 0 0 0 0 1 0 0 0 1 1 0 1 1 1 1 1 0 2 0 0 1 0 0 2 1 1 0 1 0 0 0 0 1 0 2 0 0 1 0 2 1 0 1 0 0 0 0 2 1 1 1 0 1 1 53 253"
teste 59 " 6 5 86 234215 153325 522524 114231 455212 231151 141535 354424 131144 232334 443535 225554 235512 243111 441552 254225 442242 232212 242245 515211 413242 225423 234515 423345 411155 333312 355143 342452 553142 535135 222423 211252 352145 511143 353525 455354 435454 552411 242511 132331 352112 435545 453433 444313 314422 525322 253312 435541 554214 422113 523253 534225 531214 252231 323544 231243 344322 443553 111342 533423 255352 125122 525324 131444 242114 314214 543445 415425 442214 122354 113325 444313 144415 544515 545344 544321 311514 545444 325111 335135 131514 353444 145511 311545 254352 425543 432525" "6 0 1 0 2 2 2 1 1 1 2 1 1 3 2 0 4 1 4 3 2 1 1 5 1 1 2 0 0 0 2 1 2 1 0 1 0 1 1 2 1 1 2 0 2 1 0 2 1 3 1 1 4 3 2 0 3 1 0 0 1 1 0 0 1 2 3 1 1 2 0 1 2 3 3 0 1 1 0 1 2 2 0 1 1 2 0 2 86 234215"
teste 60 " 2 1 46 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11" "2 0 1"
teste 61 " 6 9 6 831119 868152 416969 899496 599784 873281 967483" "6 0 2 1 1 0 1 0 6 831119"
teste 62 " 1 3 1 2 3" "1 0 0 1 2"
teste 63 " 8 9 8 15472836 19919258 38138755 81162627 48487232 29577929 69743849 38261422 25168733" "8 0 1 0 1 2 1 1 0 2 8 15472836"
teste 64 " 4 4 87 4243 2124 2214 4241 4344 3211 1324 2424 4422 3231 4133 4144 3132 1421 3222 2142 3313 1142 4132 2221 1141 3122 1344 4221 3322 1232 2344 2213 3444 1213 1112 4444 1423 1412 4433 2111 3222 2443 1231 4141 4213 4331 1332 1114 3322 3214 4324 4134 1344 3411 2411 1244 2322 4214 4422 1143 1123 4321 1111 1314 3242 2313 4232 3432 1322 4334 3311 1414 3323 4343 1333 3334 4134 1143 1122 2234 2343 3344 2421 2133 2342 2133 1221 4241 3442 1122 3411 3213" "4 0 0 1 3 2 1 0 0 1 1 2 2 0 0 1 1 1 1 1 1 1 0 1 2 0 1 1 2 1 2 0 2 1 0 2 0 1 2 1 2 3 1 0 0 0 1 1 1 1 0 0 2 0 2 1 2 1 1 0 0 2 1 2 0 0 1 0 0 1 3 1 0 1 2 0 1 2 1 0 1 1 1 1 3 1 0 0 2 87 4243"
teste 65 " 2 8 8 61 73 77 76 16 43 18 42 41" "2 0 0 0 0 0 0 0 0 1 8 61"
teste 66 " 6 9 14 285369 837889 491365 996974 288754 841275 116226 467148 791812 738663 182548 462449 387767 931194 246228" "6 0 1 2 0 2 0 0 0 0 1 1 1 2 0 1 14 285369"
teste 67 " 7 3 5 3221331 1133313 2332113 2133213 1212221 3312331" "7 0 1 0 0 2 4 5 3221331"
teste 68 " 4 2 59 2222 2211 1121 2211 1112 2112 1121 2121 1221 1212 1221 1111 1122 1121 1111 1122 1221 2221 2221 2122 1121 2122 1111 1121 1111 2121 2121 1112 1122 2122 2112 1222 2222 1122 1122 1211 1111 1221 2112 2212 1211 2212 1222 1111 2112 1111 2112 2121 2122 2221 1121 2211 2121 1211 1121 2211 2111 2122 2122 2222" "4 0 2 1 2 1 2 1 2 2 2 2 0 2 1 0 2 2 3 3 3 1 3 0 1 0 2 2 1 2 3 2 3 32"
teste 69 " 3 8 62 331 264 842 465 465 112 446 155 726 621 171 686 116 614 235 676 738 874 526 378 162 136 466 476 318 822 168 321 772 164 337 766 528 425 173 468 753 343 552 676 272 716 721 526 372 251 144 517 358 843 621 112 536 422 145 441 225 716 322 281 847 528 611" "3 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 1 0 0 1 0 1 0 0 1 0 0 2 0 0 2 0 0 0 0 0 0 1 0 0 0 0 1 0 1 1 0 0 1 0 1 0 1 0 0 1 0 0 1 1 0 0 1 62 331"
teste 70 " 2 3 99 33 33 13 33 31 32 21 21 32 13 33 32 22 23 23 32 23 21 33 32 33 13 23 23 31 33 12 33 23 13 22 22 21 23 21 22 32 12 22 12 22 32 32 32 32 32 21 13 23 21 11 21 22 23 11 23 11 22 11 11 13 23 31 23 11 33 33 21 22 21 33 23 31 21 22 12 13 13 31 13 23 12 22 33 11 13 13 22 13 23 11 32 13 23 21 12 13 11 31 13" "2 0 1"
teste 71 " 1 3 13 2 2 3 3 2 1 1 3 1 1 2 2 2 2" "1 0 1"
teste 72 " 7 7 13 6145146 7256513 3623731 4273477 3277556 6362242 4752417 7732143 1275772 7611511 1457612 1667547 5254557 4417173" "7 0 0 0 0 1 2 0 2 1 0 0 1 0 1 13 6145146"
teste 73 " 5 3 56 21312 11232 12332 21233 13212 32321 22131 23312 12212 23313 31311 22213 21311 32121 11311 21132 12333 11231 31121 12231 32332 23332 31223 22323 23122 33321 22321 32122 11212 23232 22122 13212 31321 32213 11332 32222 12313 21131 13111 12121 11223 21223 12321 31213 12222 23121 21113 13231 11232 33211 31121 21322 21113 22133 12113 11212 23312" "5 0 2 2 2 2 1 1 4 2 3 3 2 4 0 3 3 1 1 1 0 2 3 1 2 2 1 2 1 3 2 2 2 2 1 3 1 2 2 1 0 1 2 1 2 1 1 3 0 2 1 1 4 3 1 1 3 4 56 21312"
teste 74 " 9 7 24 353365525 573351512 633252311 576435613 464232455 314743137 437274527 677124721 253235417 517565172 712555113 454245745 332616353 732476712 567317414 136567514 737762135 344533121 553174727 764754411 541736324 175416542 467515716 125415763 314476437" "9 0 3 1 1 1 1 2 1 3 2 1 3 1 0 1 2 2 2 3 0 1 1 1 1 1 24 353365525"
teste 75 " 7 6 56 4522263 2115451 6341621 5615212 4564164 1541252 4544436 4136142 2211663 6126542 3115112 1652546 3452566 5565336 2213555 4332452 6143165 1164565 5426211 4421663 2115564 6532324 4333214 1165524 1124461 4526253 4414142 4436216 4236334 4656632 3252253 2445412 5212322 4431225 4635226 5432564 3514114 1445344 4335252 5351366 6634445 6546334 6145612 4644445 3316446 3244154 1151255 2555635 2526324 5533434 6322511 2423453 5315423 4565331 2416512 4311432 3544146" "7 0 0 0 1 3 2 2 1 2 1 0 1 2 1 0 2 1 1 2 4 1 2 2 0 2 5 1 2 1 1 3 0 1 2 2 2 1 0 2 1 0 1 0 1 0 0 1 1 2 1 2 2 1 2 0 1 1 56 4522263"
teste 76 " 9 6 6 243166113 653252222 641613136 564415441 315661353 425113423 263163656" "9 0 1 2 0 2 2 4 6 243166113"
teste 77 " 4 5 12 5515 2353 4345 5423 5452 4424 4322 5322 2323 3522 3333 4212 4135" "4 0 0 1 1 1 0 0 1 0 1 0 1 1 12 5515"
teste 78 " 2 6 19 66 61 55 54 43 45 22 41 34 26 15 35 14 41 61 23 32 25 24 52" "2 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 19 66"
teste 79 " 5 9 91 41149 58275 85798 15716 21542 76789 39857 63121 77121 92133 38323 18541 84482 71986 93222 78622 87481 82635 26172 39936 64396 28767 47119 18299 24452 22548 44538 27766 22487 41856 46274 75643 28699 82562 73569 94187 24134 58481 55166 22633 78447 85768 61793 57448 91347 77558 21679 53788 53248 37498 76349 27762 58526 11892 32431 35918 74347 12411 37341 54825 74486 96775 85986 25722 34732 72667 44747 53939 66698 48664 32419 49922 12484 12256 82939 76947 99285 46457 72453 41326 59321 54488 35233 39313 89487 22451 43774 71389 87127 48887 17813 44991" "5 0 0 0 0 2 1 0 1 1 1 0 1 0 1 0 0 0 0 1 0 0 0 3 1 0 1 1 0 0 2 1 1 1 0 1 1 1 0 1 0 1 0 1 1 2 0 2 0 1 0 2 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 2 1 0 1 1 1 0 0 1 1 0 1 0 2 0 0 0 0 0 0 1 2 1 1 0 1 91 41149"
teste 80 " 1 6 89 5 2 6 3 2 6 3 2 6 3 4 3 6 5 6 4 2 4 1 3 4 6 6 4 2 2 2 4 5 4 4 3 3 5 2 4 5 3 6 6 5 5 4 6 4 1 1 4 5 3 1 2 5 6 1 5 1 6 3 5 6 5 1 6 6 1 2 6 2 1 4 3 5 1 6 1 3 4 1 1 6 5 5 6 2 6 5 4 5 5" "1 0 0 0 0 0 0 0 0 0 0 0 0 0 13"
teste 81 " 9 6 95 351343332 324544554 656342325 143112431 434565564 255112315 423145511 244443165 541154611 422233225 425245565 126241522 446424365 112511561 426441524 365314435 134666334 123435312 545361426 315352426 144125511 441424432 244462542 136163361 313365562 335316321 165663445 314165111 514266263 344356123 335556163 264536543 464616444 361245214 514143266 246515141 646254234 442336635 146664365 463654613 561423413 255616445 512155233 314322363 243635241 135134455 165165535 244145523 341435153 432252432 211656123 535311332 513343321 611644242 221454315 632311115 511622625 443413562 422362641 323646516 645561221 144634114 314516544 555444351 426526356 414652231 332335566 166465454 233436313 312654663 354616612 531544256 162513121 445144531 464256315 354522644 322323654 151155626 351464164 531521514 565253333 545114645 633446335 632652523 634534125 644324356 412666133 142513614 423235154 336413651 564663432 555645365 314664533 244141265 655616244 511254242" "9 0 2 4 1 0 2 1 2 1 1 1 2 1 0 1 3 2 2 1 2 0 3 1 2 3 3 1 1 0 2 1 0 0 3 2 0 1 2 1 0 2 1 1 3 0 0 1 1 2 2 1 4 4 3 2 1 1 2 1 2 0 0 1 3 1 1 2 0 1 1 3 2 1 2 1 2 3 2 3 1 3 0 3 0 0 2 1 1 0 2 3 3 2 1 1 2 95 351343332"
teste 82 " 8 1 64 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111" "8 0 1"
teste 83 " 3 4 20 432 413 222 334 432 142 144 224 334 311 133 242 221 244 414 122 134 311 132 322 321" "3 0 1 1 1 4"
teste 84 " 9 9 63 132431313 592299944 988535297 917149198 356989491 359433993 559922777 961744254 616314752 986192897 877788875 611262487 671299775 165339981 136694146 693143656 815128876 195751369 693543659 233564863 313313619 977888322 692361453 163648294 171717891 588971259 875684891 736432789 481994384 358444589 287545711 282685581 679816953 611798482 911946153 946425536 839676835 657186944 152764765 682513598 326331218 564638627 165659736 237512494 227298766 163353777 772284381 386512938 874695843 875555126 532768894 676619264 673473726 735547794 444692158 175297936 648695589 289489187 344853848 644429593 982537479 229237891 721953418 369735997" "9 0 1 1 0 0 3 0 0 0 0 0 0 0 2 2 0 0 3 0 2 1 1 3 1 1 1 0 3 1 1 1 1 1 0 1 1 1 0 2 1 3 1 1 1 0 1 2 0 1 0 2 0 1 1 0 1 0 1 0 2 2 1 1 1 63 132431313"
teste 85 " 8 5 57 53151453 51132532 41552532 41133531 34212254 41321224 55422422 31153142 51112521 21424332 43422122 52325555 11544325 31545122 52345433 54532333 55455312 44454252 42132312 42143554 41221155 11431553 22412443 15232232 24543123 24242521 52245221 55231232 13453235 11153245 43253531 55341315 31434543 34114555 54513354 24225325 34414515 51231131 54512551 23514121 23251425 13314434 54313213 52544311 54223512 15253511 43122121 41534453 34135333 21155153 53222245 34145114 54421433 21345345 22234534 34522322 53224421 34143231" "8 0 2 1 1 1 1 2 2 2 0 1 2 0 0 3 2 2 2 1 2 2 3 2 0 1 0 1 2 2 2 2 2 1 2 2 0 0 2 2 1 4 2 2 1 1 1 2 3 2 4 2 1 4 0 0 0 3 1 57 53151453"
teste 86 " 1 2 68 1 1 1 2 2 1 1 1 2 1 2 1 1 2 2 1 1 2 1 1 2 2 1 2 2 1 2 1 2 2 2 2 1 2 1 1 1 1 1 2 1 1 2 1 2 1 2 1 1 1 2 1 2 2 2 2 1 1 2 1 2 1 2 2 2 2 2 2 2" "1 0 1"
teste 87 " 7 6 79 1644413 1416413 4142526 2614164 2624661 4621462 2334635 4113233 5315143 3512423 4252333 5345121 2615661 6346661 5531336 4522644 2233361 3461625 3562233 4414221 5361616 1256343 5633155 4253626 4356254 6553333 4363126 4121523 3255614 4342444 1616152 2334122 3622642 3551121 3365462 2511335 5256243 3233261 5256532 4145655 3533355 6344514 3334335 4621111 3523424 3146215 6116612 1666426 5113261 5516656 2615335 4542252 6261333 6464515 5534244 3152435 4556452 3261261 1641216 6314322 1452655 4612452 2646534 2241151 6126644 3234243 6454321 3554541 4415424 2651245 2111345 2554644 5664616 5253562 1354146 2325461 1442656 2611362 3345434 1655362" "7 0 4 1 2 2 2 1 1 1 2 1 1 1 1 0 0 0 0 1 1 1 2 1 0 0 1 0 1 1 2 2 1 1 0 1 0 1 0 0 1 0 3 1 2 1 2 1 3 0 0 1 1 1 2 1 1 1 0 4 1 1 2 2 1 0 2 1 1 1 1 0 1 3 0 2 1 2 1 2 2 79 1644413"
teste 88 " 7 7 31 5344174 5626457 3271377 3426116 3327232 1424152 1616774 7677742 2216767 5656641 5256416 7147157 4553612 5524667 6416634 4111344 2524134 5432546 2165444 3427663 5352644 3746551 5652333 5324434 3443737 3662253 3526121 5743666 3657542 5557451 4642314 6635653" "7 0 1 1 1 1 2 2 0 0 1 1 2 0 2 1 1 3 1 1 0 3 1 1 4 1 0 1 2 0 1 2 0 31 5344174"
teste 89 " 6 2 59 211211 212111 221122 212221 122222 121122 111111 222122 212211 221112 212211 111211 122211 112122 211211 111221 221111 222212 212222 111121 211111 211112 112211 222222 112211 221221 122121 212221 122112 212221 122122 111211 122121 122122 112121 211112 221222 222222 111111 211112 121222 222211 112112 121221 112212 122212 122222 122222 122222 112122 211121 112122 112112 221211 121222 122211 112212 122221 221211 212222" "6 0 4 2 4 1 1 4 1 5 3 5 5 3 1 14"
teste 90 " 3 2 15 212 111 111 221 212 122 121 122 121 122 222 111 221 122 221 211" "3 0 1 1 1 4"
teste 91 " 2 4 22 32 42 23 41 42 33 23 34 12 22 42 24 23 13 41 13 13 44 21 12 14 22 21" "2 0 1 0 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0 1 0 22 32"
teste 92 " 7 6 24 3556123 5621421 3161656 1616123 4633555 5325566 1615531 6146421 1144641 3451653 4542453 4663343 3533222 2525256 6221611 6265343 2622335 2115542 2426114 6132664 2625516 1612116 5433344 2162153 6221642" "7 0 1 1 4 0 0 0 2 0 3 2 1 3 1 0 1 0 0 2 0 0 1 0 2 0 24 3556123"
teste 93 " 2 8 86 33 41 77 77 18 78 57 24 84 13 44 61 82 53 13 44 55 18 13 85 32 45 14 88 11 52 52 28 66 24 41 27 73 22 46 32 71 75 33 72 17 31 17 82 68 87 11 26 85 71 45 47 58 52 32 42 78 42 83 32 56 75 75 78 58 43 21 73 58 76 13 88 25 27 25 55 44 13 75 63 24 12 25 58 86 26 27" "2 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 38"
teste 94 " 2 2 79 21 11 11 21 12 22 21 12 22 12 22 22 11 11 11 12 12 22 21 22 22 11 12 22 11 12 22 21 11 21 11 11 11 12 22 22 21 21 11 11 22 21 21 22 22 12 22 22 21 22 11 21 22 21 11 22 12 12 22 22 12 12 22 21 12 21 11 21 21 12 12 21 12 22 11 12 22 22 22 22" "2 0 1 1 3"
teste 95 " 4 8 74 2161 2551 7631 2555 3518 7732 5583 4283 6434 2326 7255 4363 7836 7638 7576 5845 2241 8552 5578 6284 6343 1378 2164 8688 7248 6682 1817 6536 6177 5635 4427 1768 5856 6323 1417 4233 5247 3133 3278 6576 2132 8678 7343 2178 3151 6362 4333 2854 4217 6642 4446 5174 5358 4368 7643 7784 5851 8215 2455 7863 6872 4671 1741 5477 3453 6287 8725 6383 7324 3183 2315 6838 3152 4121 8877" "4 0 2 1 1 0 0 0 0 0 1 0 1 0 0 0 0 2 0 0 0 0 0 3 0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 0 0 2 0 0 2 2 1 0 1 0 0 0 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 0 0 1 1 0 1 2 0 74 2161"
teste 96 " 9 9 68 748259771 365539299 599954465 949478187 946558595 769154736 139216682 436227589 693179441 779274812 397864742 119715864 286414522 511567389 243673685 273911697 425698929 281293192 137318616 776763493 594596686 546431887 971199483 214349733 369387171 724627712 389927116 711753979 323219923 355694835 925559519 616448111 223984747 264538718 271548731 478831157 579848578 145412872 266175174 942968451 295762851 822688995 268254861 735564197 386984336 894746839 872443272 815693635 485416798 229731648 178238812 225388323 659982354 541243159 779126292 759811425 581434335 956298261 511489127 255314169 449813867 887985845 624266453 252637858 414171834 157325492 719972892 874984269 127115163" "9 0 1 1 1 2 3 1 1 2 2 1 0 0 0 1 0 0 1 0 1 0 1 1 2 2 2 0 3 2 0 2 1 1 1 2 1 1 2 1 2 1 0 4 1 0 0 1 0 1 0 2 0 0 2 1 1 0 2 1 0 1 0 1 0 0 0 1 0 0 68 748259771"
teste 97 " 1 6 16 6 4 1 5 3 6 3 4 6 2 6 3 5 4 5 4 4" "1 0 0 0 0 0 5"
teste 98 " 6 6 28 353442 542365 525261 124125 545613 543251 542516 533612 655336 624426 213514 126214 243645 551545 664525 326131 313423 332363 465263 264624 266635 165152 223536 665223 525521 433441 151261 154554 333132" "6 0 0 0 0 0 1 0 2 1 1 1 0 2 2 0 1 3 1 0 0 0 1 1 0 0 3 1 1 3 28 353442"
teste 99 " 8 9 42 48612784 99118832 51445947 81315763 54694464 97735958 24792845 19454615 43252283 33748482 62443772 73935152 45682329 21167418 35349897 44322215 65482119 18626692 83247648 98812769 22755473 29975372 46489826 42313125 42644371 33912769 78619945 46661795 83538111 87518447 46212725 17457984 74982794 34214564 49932989 42958163 91313118 71352218 96891892 75974833 89734897 67659854 53964449" "8 0 1 0 2 2 0 1 0 3 1 1 0 3 0 0 2 1 2 0 4 0 0 1 2 2 3 3 3 0 1 4 2 3 2 3 1 1 1 0 0 0 2 0 42 48612784"
teste 100 " 7 4 61 3132121 3341131 4212133 4144412 3424342 3311114 1344314 4341442 1441123 3441423 1234232 1341133 3221224 3142411 2412433 2411333 4314221 3332413 3131443 1233144 4421332 4124213 1113444 4222211 3414312 3221231 1222414 4122244 3131133 2131431 4142114 4342313 4344214 1341243 2344423 2233231 2234141 2332422 4322344 4343441 3124314 2423242 4143123 1244343 4243112 1422431 1231342 1132144 2243114 1412434 1214224 3432422 2433323 1232331 1133231 4132142 4332322 4144242 3344442 1342442 3121113 4414414" "7 0 3 2 1 1 2 0 0 2 2 1 1 2 4 1 0 2 3 3 2 0 1 1 2 1 2 1 2 4 3 3 1 0 0 1 2 3 3 1 1 2 0 3 0 1 2 1 4 1 1 1 4 2 3 3 4 3 1 1 1 3 0 61 3132121"
