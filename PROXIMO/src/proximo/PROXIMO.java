
package proximo;
 import java.util.Scanner; 
  import java.util.ArrayList;
import java.util.Stack;

public class PROXIMO {

    
    public static void main(String[] args) {
        
    
     Scanner entrada = new Scanner(System.in);
String carro, continuar = "S";

Stack<String> cegonha = new Stack<String>();
while(!continuar.equals("N"))
{
System.out.println("Digite o nome do próximo carro a entrar no caminhão cegonha: ");

carro = entrada.nextLine();

cegonha.push(carro);
System.out.println("Continuar informando dados? S/N");
continuar = entrada.nextLine();
}
System.out.println("Retirar os carros nesta ordem:");
while(!cegonha.empty()) //enquanto ainda há elementos na pilha
{

carro = cegonha.pop();
System.out.println(carro);
}
}
}



