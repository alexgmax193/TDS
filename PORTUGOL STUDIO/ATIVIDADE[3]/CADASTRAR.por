programa
{
	
	funcao inicio()
	{
		
        cadeia hospedes[6] // Declara um vetor de 5 elementos para armazenar os nomes das cidades
        inteiro opcao = -1 // Inicializa a variável de opção
        cadeia hospedesBusca
        logico encontrada
        inteiro i

        // Cadastro das cidades
        para (i = 0; i < 6; i++) {
            escreva("Digite o nome do hospede ", i+1, ": ")
            leia(hospedes[i])
        }

        // Menu de opções
        enquanto (opcao != 0) {
            escreva("\nMenu:\n")
            escreva("1 - Cadastrar\n")
            escreva("2 - Pesquisar\n")
            escreva("0 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

           
            
            
            escolha(opcao) {
                caso 1:
                    escreva("\nhospedes cadastrados:\n")
                    para (i = 0; i < 5; i++) {
                        escreva(hospedes[i], "\n")
                    }
                    pare

                caso 2:
                    escreva("\nDigite o nome do hospede que deseja encontrar: ")
                    leia(hospedesBusca)
                    
                    encontrada = falso
                    para (i = 0; i < 5; i++) {
                        se (hospedes[i] == hospedesBusca) {
                            escreva("hospede ", hospedesBusca, " encontrado no quarto: ",i,"\n")
                            encontrada = verdadeiro
                            pare
                        }
                    }
                    se (encontrada == falso) {
                        escreva("Hospede ", hospedesBusca, " não foi encontrado.\n")
                    }
                    pare

                caso 0:
                    escreva("\nSaindo do programa...\n")
                    pare

                caso contrario:
                    escreva("\nOpção inválida. Tente novamente.\n")
            }
        }
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 758; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {hospedes, 7, 15, 8}-{opcao, 8, 16, 5}-{hospedesBusca, 9, 15, 13}-{encontrada, 10, 15, 10}-{i, 11, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */