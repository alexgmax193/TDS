
package turismo;


public class VIAGEM {
    
}
   class Transporte {
   String tipo;
   double valor;
   public Transporte(String tipo, double valor) {
       this.tipo = tipo;
       this.valor = valor;
   }
}
class Hospedagem {
   String descricao;
   double valorDiaria;
   public Hospedagem(String descricao, double valorDiaria) {
       this.descricao = descricao;
       this.valorDiaria = valorDiaria;
   }
}
class PacoteViagem {
   Transporte transporte;
   Hospedagem hospedagem;
   String destino;
   int quantidadeDias;
   public PacoteViagem(Transporte transporte, Hospedagem hospedagem, String destino, int quantidadeDias) {
       this.transporte = transporte;
       this.hospedagem = hospedagem;
       this.destino = destino;
       this.quantidadeDias = quantidadeDias;
   }
   public double calcularTotalHospedagem() {
       return quantidadeDias * hospedagem.valorDiaria;
   }
   public double calcularLucro(double valor, double margem) {
       return valor * (1 + margem / 100);
   }
   public double calcularTotal(double margem, double taxasAdicionais) {
       double totalTransporte = transporte.valor;
       double totalHospedagem = calcularTotalHospedagem();
       double lucro = calcularLucro(totalTransporte + totalHospedagem, margem);
       return totalTransporte + totalHospedagem + taxasAdicionais + lucro;
   }
}
   class Venda {
   String nomeCliente;
   String formaPagamento;
   PacoteViagem pacoteViagem;
   public Venda(String nomeCliente, String formaPagamento, PacoteViagem pacoteViagem) {
       this.nomeCliente = nomeCliente;
       this.formaPagamento = formaPagamento;
       this.pacoteViagem = pacoteViagem;
   }
   public double converterParaReais(double valorEmDolar, double cotacaoDolar) {
       return valorEmDolar * cotacaoDolar;
   }


}
