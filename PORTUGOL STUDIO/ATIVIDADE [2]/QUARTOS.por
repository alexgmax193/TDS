programa
{
	
	funcao inicio()
	{
		
		inteiro qdHospedes,numQuartos,totaldiarias=0
		inteiro   valorDiaria,menordiaria=0,maiordiaria=0
		
		
	
		escreva("quantos hospedes sao?\n")
		leia(qdHospedes)
		
		

		para(inteiro cont =1;cont <= qdHospedes;cont++)
		{
			
		escreva("qual seria o numero do quarto selecionado?\n")
		leia(numQuartos)
			
			
			escreva("insira o valor da diaria\n")
			leia(valorDiaria)

			totaldiarias=totaldiarias+valorDiaria
			se(valorDiaria>maiordiaria)
			{
				maiordiaria=valorDiaria
			}
			senao
			{
				menordiaria=valorDiaria
			}	

			  escreva("quarto:",numQuartos, "R$:" , valorDiaria, "\n")
			  se(cont>=qdHospedes)
			  {

			  	escreva("total diaria:",totaldiarias,"\n")
			  	escreva("maior diaria:",maiordiaria,"\n")
			  	escreva("menor diaria:",menordiaria,"\n")
			  	
			  }
			 
			

	         		   
			
			
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */