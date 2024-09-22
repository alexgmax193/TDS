
package turismo;

     import java.util.Scanner; 
   class TURISMO {
  public static void main(String[] args) {
    
       Scanner scanner = new Scanner(System.in);
       
       System.out.println("Informe o tipo de transporte:");
       String tipoTransporte = scanner.nextLine();
       System.out.println("Informe o valor do transporte em dólares:");
       double valorTransporte = scanner.nextDouble();
       scanner.nextLine(); // Consumir a quebra de linha
       Transporte transporte = new Transporte(tipoTransporte, valorTransporte);
       
       System.out.println("Informe a descrição da hospedagem:");
       String descricaoHospedagem = scanner.nextLine();
       System.out.println("Informe o valor da diária da hospedagem em dólares:");
       double valorDiariaHospedagem = scanner.nextDouble();
       scanner.nextLine(); // Consumir a quebra de linha
       Hospedagem hospedagem = new Hospedagem(descricaoHospedagem, valorDiariaHospedagem);
       
       System.out.println("Informe o destino do pacote de viagem:");
       String destino = scanner.nextLine();
       System.out.println("Informe a quantidade de dias:");
       int quantidadeDias = scanner.nextInt();
       scanner.nextLine(); // Consumir a quebra de linha
       PacoteViagem pacoteViagem = new PacoteViagem(transporte, hospedagem, destino, quantidadeDias);
       
       System.out.println("Informe a margem de lucro em porcentagem:");
       double margemLucro = scanner.nextDouble();
       System.out.println("Informe as taxas adicionais em dólares:");
       double taxasAdicionais = scanner.nextDouble();
       
       double valorTotalPacote = pacoteViagem.calcularTotal(margemLucro, taxasAdicionais);
       
       System.out.println("\nInformações do Pacote de Viagem:");
       System.out.println("Transporte: " + transporte.tipo + " - $" + transporte.valor);
       System.out.println("Hospedagem: " + hospedagem.descricao + " - $" + hospedagem.valorDiaria + " por dia");
       System.out.println("Destino: " + destino);
       System.out.println("Quantidade de dias: " + quantidadeDias);
       System.out.println("Valor Total do Pacote em dólares: $" + valorTotalPacote);
       
       System.out.println("\nInforme o nome do cliente:");
       String nomeCliente = scanner.nextLine();
       System.out.println("Informe a forma de pagamento:");
       String formaPagamento = scanner.nextLine();
       
       System.out.println("Informe a cotação do dólar no dia:");
       double cotacaoDolar = scanner.nextDouble();
       
       Venda venda = new Venda(nomeCliente, formaPagamento, pacoteViagem);
       
       double valorTotalVendaDolar = valorTotalPacote;
       double valorTotalVendaReais = venda.converterParaReais(valorTotalPacote, cotacaoDolar);
       System.out.println("\nInformações da Venda:");
       System.out.println("Nome do Cliente:" + nomeCliente);
       System.out.println("Forma de Pagamento: " + formaPagamento);
       System.out.println("Valor Total da Venda em dólares: $" + valorTotalVendaDolar);
       System.out.println("Valor Total da Venda em reais: R$" + valorTotalVendaReais);
       scanner.close();
   }
}


    





    

        
    
       