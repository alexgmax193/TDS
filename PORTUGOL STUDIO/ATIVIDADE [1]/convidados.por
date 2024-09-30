programa
{
	
	funcao inicio()
	{
		inteiro convidado,salgadinho
		real agua,cafe
		cafe=0.2
		agua=0.5
		salgadinho=7
		escreva("digite equantidade de convidados\n")
          leia(convidado)
          se(convidado>=30 e convidado<=350){
		 escreva(cafe*convidado,"litros de cafe,",agua*convidado,"litros de agua:",salgadinho*convidado, "\n")
	}    se(convidado>=350){
		escreva("quantidade de convidado superior a capacidade maxima\n")}
		se(convidado<=30){
			escreva("quantidade de convidado inferior a capacidade minima\n") 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */