programa
{       inteiro opcao,i=0,posicao=0
       cadeia nomeHospedes[10]
       inteiro cpf[10]
       inteiro valor=100
        inteiro qtDias[10]
       real Despesas[10]
	  real  Academia=20.00,Salao=50.00,Restaurante=35.00
	funcao inicio()
	{   
	     
		faca
         {
		
			escreva("\n====MENU====\n")
         escreva(" 1= Cadastrarhospedes\n")
       escreva("2= Exibirhospedes\n")
       escreva(" 3=Reservarareadelazer\n")
       escreva(" 4= Calculartotalapagar\n")
       escreva(" 0= Sair\n")
       escreva("Escolha uma opção:\n ")
		leia(opcao)
			
              
               escolha (opcao) {
			
				caso 1:
			          cadastraHospedes()
					
				pare
				caso 2:
					exibirHospedes()
				pare
				caso 3:
			          reservarArea()
				pare
				caso 4:
				    escreva("A posicao do hospedes que desejas ver o total\n")
				    leia(posicao)
				    
					escreva("O valor total gasto e de R$ ",calcularTotal(posicao))
				
				pare             
					
				caso 0: //Sair
					escreva("Obrigado por utilizar o sistema. ate logo!\n")
                  pare
		       caso contrario:
				       escreva("opcao invalida . tente outra vez.\n")
			} //opcao
		} enquanto (opcao != 0)
	}



               funcao cadastraHospedes()
               {
                      se(i>9)
			          {
			          	escreva(" Nao e possivel reservar mais estamos lotados!!!\n")
			          }
					senao
					{
						escreva(" Digite o nome do hospedes :\n")
						leia(nomeHospedes[i])
						
						
						escreva("Digite seu cpf do hospedes:\n")
						leia(cpf[i])
}						escreva("Digite a quantidade de dias de hospedagem:\n")
						leia(qtDias[i])
						escreva(" Seu cadastro foi realizado com sucesso!!!\n")
						i++			
			}
                funcao exibirHospedes()
                {     

                	 
	              para (inteiro j=0;j<10 ;j++)
                   {          
                   	          escreva(" Digite o nome do hospedes :\n")
						leia(nomeHospedes[j])
						
						
						
                   }
                   
                }             
						
						
				
				
				
                
             
             funcao reservarArea()
             {     cadeia  Area
                   inteiro indice=0
                
                
             	
                   exibirHospedes()       
	               escreva("\nReservar Área de Lazer\n")
		         escreva("informe o indice do hospedes\n")
		          leia(indice)
					escreva("escolha sua opcao (A) Academia ,(S) Salão de Festas(R) Restaurante \n")
					leia(Area)
					se (Area == "A")
                         {        
                         	Despesas[indice]=Despesas[indice]+20
                                escreva("\nAcademia R$ 20 \n","R$", valor+Academia)
            

                         	escreva("\ncadastro realizado com sucesso\n")
                         }
            

                     senao se (Area =="B")
                     {
                     
                          Despesas[indice]=Despesas[indice]+50
                          escreva("Salao de festa R$ 50 \n","R$",valor+Salao)
                     	escreva("\ncadastro realizado com sucesso\n")
                     }   
                     senao se (Area == "C")  
                     {     
                     	Despesas[indice]=Despesas[indice]+35
                           escreva("Restaurante R$ 35 \n","R$",valor+Restaurante)
                     	escreva("\ncadastro realizado com sucesso\n")
                     }
                
            

              }  
                       

             
             funcao real calcularTotal(inteiro indice)
             {
                 retorne Despesas [indice]+qtDias[indice]*100
             	
             }
             	
             
       
         

	
 }  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2010; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomeHospedes, 3, 14, 12}-{cpf, 4, 15, 3}-{qtDias, 6, 16, 6}-{Despesas, 7, 12, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */