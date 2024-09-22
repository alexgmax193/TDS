
package receita_federal;
import java.util.Scanner;

       
   
public class Ipi extends Imposto{
    
    private double frete;
    private double seguro;
    private double outrasDispesas;

    public Ipi(double frete, double seguro, double outrasDispesas, double aliquota, double valorProduto) {
        super(aliquota, valorProduto);
        this.frete = frete;
        this.seguro = seguro;
        this.outrasDispesas = outrasDispesas;
    }

    public double getFrete() {
        return frete;
    }

    public void setFrete(double frete) {
        this.frete = frete;
    }

    public double getSeguro() {
        return seguro;
    }

    @Override
    public double calculaImposto() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void mostraImposto() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }




}