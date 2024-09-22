/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.alexgmax.auditorio;



     import java.util.Scanner; 
 
public class Auditorio {

    public static void main(String[] args) {
                        int convidados;

                                        
          Scanner entrada = new Scanner (System.in);
          System.out.print("digite o numero de convidados;");
          
          convidados =entrada.nextInt();
          
             if(convidados ==0 || convidados >= 351 ){
                 System.out.println("numero de convidados invalido");
              }else{
                 
                 if(convidados==150){
                      System.out.println(" use o auditorio  Alfa ");
       
                 }else{
             
              if  (convidados == 190){
                 System.out.println(" use o auditorio  Alfa adicione  mais 40 cadeiras");
                 
                     }else{  
                    
                  if(convidados ==220){
                     System.out.println("use o auditorio  Alfa");
                     
                  } else{
                     if(convidados >=221){ 
                         System.out.println("passe para o auditorio Beta");
                   
                     
                     
                    
                 if(convidados ==350 ){    
                 System.out.println(" use o auditorio Beta");
             }
         
                 
                  }
                  
              }
              
                 }
                  
              
                 
             
                  
    
             }
             
             
    
    

    



                 
             
             
    
             }
             
   
    
    }}