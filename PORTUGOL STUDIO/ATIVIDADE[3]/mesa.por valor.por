programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()  

	           
	{
		real Mesa1=30.00,Mesa2=35.0,Mesa3=45.00,Mesa4=25.00,valor=30.99
		 real   arredonda
            real numero=30.99


            escreva("qual valor da Mesa1\nR$")
		  leia(Mesa1)
		  escreva(" valor da Mesa2\nR$")
		  leia(Mesa2)
		   escreva("qual valor da Mesa3\nR$")
		    leia(Mesa3)
		    escreva(" valor da Mesa4\nR$")
		  leia(Mesa4)

            arredonda=mat.arredondar(Mesa2-valor, 2)

            escreva("Mesa1 R$ nadaApagar!\n")

		escreva("\nMesa2 precisaApagr R$:"+arredonda+"\n" )

		 arredonda=mat.arredondar(Mesa3-valor, 2)

		 escreva("\nMesa3 precisaApagr R$:"+arredonda+"\n" )

		 escreva("\nMesa4 nadaApagar!\n")


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 568; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */