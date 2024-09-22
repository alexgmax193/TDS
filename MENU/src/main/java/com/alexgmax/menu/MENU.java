/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.alexgmax.menu;


 import java.util.Scanner;
  
  import java.util.Random;

 
 
public class MENU {

    public static void main(String[] args) {
       
          String[] quartos = new String[15];
     Scanner String = new Scanner (System.in);

    int count = 0;
    int option = 0;

      while (option != 3) {
    
      System.out.println("Menu:");
          
      System.out.println("1 - cadastrar");
      System.out.println("2 - Pesquisar quartos");
      System.out.println("3 - Sair");
      System.out.print("Escolha uma opçao: ");
      option = String.nextInt();
       String.nextLine();

       if (option == 1) {
        if (count < 15) {
          System.out.print("Digite o numero do quarto : ");
          quartos[count] = String.nextLine();
          System.out.println("Cadastro inserido com sucesso");
          count++;
        } else {
          System.out.println("Máximo de cadastros atingido.");
        }
      } else if (option == 1) {
        System.out.println("quartos cadastrado:");
        for (int i = 0; i < count; i++) {
          System.out.println(quartos [i]);
        }
      } else if (option == 2) {
        System.out.print("Digite o numero para pesquisar: ");
        String searchquartos = String.nextLine();
         
        
        String foundquartos = null; 

        for (int i = 0; i < count; i++) {
          if (quartos[i].equalsIgnoreCase(searchquartos)) {
            foundquartos = quartos[i]; 
          }
        }

        
        if (foundquartos != null) {
          System.out.println("quartos encontrado: " + foundquartos);
        } else {
          System.out.println("quartos nao encontrado.");
        }
      } else if (option == 3) {
        System.out.println("Saindo...");
      } else {
        System.out.println("Opçao inválida. Tente novamente.");
      }
    }
        
    }
    
  
  
 
    
    
  









    
    

  











}
