programa
{
    funcao inicio()
    {
        real valorDiaria, valorTotal = 0.0
        inteiro qtdGratuidades = 0, qtdMeias = 0, idade
        caracter continuar
        cadeia nome

        escreva("Informe o valor padrão da diária: ")
        leia(valorDiaria)

        faca
        {
            
            escreva("\nInforme o nome do hóspede: ")
            leia(nome)
            escreva("Informe a idade do hóspede: ")
            leia(idade)

            se(idade <= 4)
            
            {
                escreva(nome, " possui gratuidade\n")
                qtdGratuidades = qtdGratuidades + 1
            }
            
            senao se(idade >= 80)
            
            {            	
                escreva(nome, " paga meia\n")
                qtdMeias = qtdMeias + 1
                valorTotal = valorTotal + (valorDiaria / 2)
            }
            
            senao
            
            {
                escreva(nome, " paga o valor integral de R$ ", valorDiaria, "\n")
                valorTotal = valorTotal + valorDiaria
            }

            escreva("\nDeseja continuar informando os dados? (S/N): ")
            leia(continuar)
        }
        
        enquanto(continuar == 'S' ou continuar == 's')

        escreva("\nQuantidade de gratuidades: ", qtdGratuidades, "\n")
        escreva("Quantidade de meias hospedagens: ", qtdMeias, "\n")
        escreva("Valor total arrecadado: R$ ", valorTotal, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorDiaria, 5, 13, 11}-{valorTotal, 5, 26, 10}-{qtdGratuidades, 6, 16, 14}-{qtdMeias, 6, 36, 8}-{idade, 6, 50, 5}-{continuar, 7, 17, 9}-{nome, 8, 15, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */