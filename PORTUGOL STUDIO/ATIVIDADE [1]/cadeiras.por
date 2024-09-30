programa
{
	
	funcao inicio()
	{
		inteiro alfa,beta,pessoas,cadeira
		alfa=150
		
		escreva("informe aquantidade de pessoas:\n")

		leia(pessoas)
		cadeira=pessoas-alfa

		se(pessoas<=0 ou pessoas>=350)
		{
			escreva("numero de pessoas invalida")
		}
			
		se(pessoas<=150)
		{
			escreva("utilize o auditorio Alfa")	
		}

		se(pessoas>150 e pessoas<=220)
		{
			escreva("utilize o Auditorio Alfa e inclua mais",cadeira," cadeira(s)")
		}

		se(pessoas>=221 e pessoas<=330)
		{
			escreva("utilize o auditorio Beta")	
		}

		
		}


	}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */