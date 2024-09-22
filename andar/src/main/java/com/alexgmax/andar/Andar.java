/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.alexgmax.andar;

  import java.util.Random;
   import java.util.Scanner; 
 
     public class Andar {

    public static void main(String[] args) {
        
             String quartos[][] = new String[4][3];
        int andar, quarto;
        char opcao;
        Scanner t = new Scanner(System.in);
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 3; j++){
                quartos[i][j] = "[]";
            }
        }
        
        

        do{
            System.out.println("Digite numero do andar do quarto em questão:");
            andar = t.nextInt();
            if(andar > 4 || andar < 1){
                System.out.println("Digite um número de 1 a 4:");
                andar = t.nextInt();
            }
            System.out.println("Digite numero do quarto em questão:");
            quarto = t.nextInt();
            if(quarto > 3 || quarto < 1){
                System.out.println("Digite um número de 1 a 3:");
                quarto = t.nextInt();
            }

            quartos[andar - 1][quarto - 1] = "[X]";
            System.out.println("Deseja informar outra ocupação? (S/N)");
            opcao = t.next().charAt(0);
            
            while(opcao != 'S' && opcao != 'N'){
                System.out.println("Digite uma opção válida!");
                opcao = t.next().charAt(0);
                }
        
        }while(opcao != 'N');

        for(int i = 3; i >= 0 ; i--){
            System.out.print(i+1+"º andar ");
            for(int j = 0; j < 3; j++){  
                System.out.print(quartos[i][j]+" ");
                if(j == 2){
                    System.out.println();
                }
            }
        }
    }
    
}