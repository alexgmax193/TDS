programa
{
	
	funcao inicio()
	{
		inteiro periodoHospedagem
		real valorDiaria

		faca{
			escreva("Insira o valor da diaria: \n")
			leia(valorDiaria)
			
			escreva("insira o período de hospedagem: \n")
			leia(periodoHospedagem)

			se(valorDiaria <0 ou periodoHospedagem <=0 ou periodoHospedagem >30)			
			
			{
				escreva("Valores inválidos \n")
			}
			
			}
			
			enquanto(valorDiaria <0 ou periodoHospedagem <=0 ou periodoHospedagem >30)

			escreva("Dados digitados com sucesso \n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */