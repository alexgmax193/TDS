/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.alexgmax.diarias;



       import java.util.LinkedList;
      import java.util.ArrayList;
      import java.util.List;
      import java.util.PriorityQueue;
      import java.util.Queue;
     import java.util.HashSet;
     import java.util.Set;
       import java.util.Scanner;
       import java.util.Stack;
       import java.util.Random;
        import java.text.DecimalFormat;
 
public class Diarias {

    public static void main(String[] args) {
        
     Scanner input = new Scanner (System.in);
       
         System.out.print("Informe o valor padrão da diária: ");
       double valorDiaria = input.nextDouble();
       
       String nomeHospede = "";
       int idadeHospede = 0;
       int qtdeGratuidades = 0;
       int qtdeMeias = 0;
       double valorTotal = 0.0;
       
       while (!nomeHospede.equalsIgnoreCase("PARE")) {
           System.out.print("Informe o nome do hóspede: ");
           nomeHospede = input.next();
           
           if (!nomeHospede.equalsIgnoreCase("PARE")) {
               System.out.print("Informe a idade do hóspede: ");
               idadeHospede = input.nextInt();
               
               if (idadeHospede < 4) {
                   System.out.println(nomeHospede + " possui gratuidade.");
                   qtdeGratuidades++;
               } else if (idadeHospede > 80) {
                   System.out.println(nomeHospede + " paga meia.");
                   qtdeMeias++;
                   valorTotal += valorDiaria / 2;
               } else {
                   valorTotal += valorDiaria;
               }
           }
       }
       
       System.out.println("Quantidade de gratuidades: " + qtdeGratuidades);
       System.out.println("Quantidade de meias hospedagens: " + qtdeMeias);
       System.out.println("Valor total: R$ " + valorTotal);
       
       input.close();
   }
}

