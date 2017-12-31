#!/bin/bash


itens=("Pedra" "Papel" "Tesoura")  #Declaração de uma lista em shell
x=0;

#Menu
printf  'Escolha uma opção:\n[0]Pedra\n[1]Papel\n[2]Tesoura\n' 
read -p 'Digite sua opção:' jog # ler escolha do usúario(0,1,3)

maq=$((RANDOM % 3)) #Variável maq recebe um valor randomico entre 0 a 3

#Animação com deley
echo "JO"
sleep 1
echo "KEN"
sleep 1
echo "PO"
sleep 1


if [ $jog -ge 0 -a $jog -le 2 ]; then
	echo '-=-=-=-=-=-=-=-=-=-=-=-=-='
	echo "A Maquina escolheu" ${itens[maq]} 	#Print na tela as escolhas
	echo "O jogador escolheu" ${itens[jog]}
	if [ $maq -eq 0 ]; then						# Compara se variável maq e igual a 0 (Pedra)
		if [ $jog -eq 0 ]; then					# Compara se variável jog e igual a 0 (Pedra)
			echo "EMPATE!!!"					# print na tela (EMPATE)
		elif [ $jog -eq 1 ]; then				# Compara se variável jog e igual a 1 (Papel)
			echo "O Jogador ganhou!!!"			# print na tela (O Jogador ganhou)
		elif [ $jog -eq 2 ]; then				# Compara se variável jog e igual a 2 (Tesoura)
			echo "A Maquina ganhou!!!"			# print na tela (A Maquina ganho)
		fi
	elif [ $maq -eq 1 ]; then					# Compara se variável maq e igual a 1 (Papel)
		if [ $jog -eq 0 ]; then
			echo "A Maquina ganhou!!!" 
		elif [ $jog -eq 1 ]; then
			echo "EMPATE!!!"
		elif [ $jog -eq 2 ]; then 
			echo "O Jogador ganhou!!!"
		fi
	elif [ $maq -eq 2 ]; then					# Compara se variável maq e igual a 2 (Tesoura)
		if [ $jog -eq 0 ]; then
			echo "O Jogador ganhou!!!"
		elif [ $jog -eq 1 ]; then 
			echo "A Maquina ganhou!!!"
		elif [ $jog -eq 2 ]; then
			echo "EMPATE!!!"
		fi
	fi

echo "-=-=-=-=-=-=-=-=-=-=-=-=-="		
else 										# Se opção de escolha do  jogador for inválida ,ira cair nesse else
	echo "Opção INVÁLIDA, tente novamente!!!"
fi
