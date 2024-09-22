
package estacionamento;
 import java.util.Scanner; 
  import java.util.ArrayList;
 import java.util.Stack;


class Estacionamento {
    
public static void main(String[] args) {
   Scanner entrada = new Scanner(System.in);
String carro, continuar = "S";

Stack<String> Estacionamento = new Stack<String>();
while(!continuar.equals("N"))
{
System.out.println("Digite o nome do próximo carro a entrar no Estacionamento: ");

carro = entrada.nextLine();

Estacionamento.push(carro);
System.out.println("Continuar informando dados? S/N");
continuar = entrada.nextLine();
}
System.out.println("Retirar os carros nesta ordem:");
while(!Estacionamento.empty()) 
{

carro = Estacionamento.pop();
System.out.println(carro);
}
}
}




    
   






    

