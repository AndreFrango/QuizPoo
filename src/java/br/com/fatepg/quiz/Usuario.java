
package br.com.fatepg.quiz;


import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author André
 */
public class Usuario{
    
    private String nome;
    private double media;
    public static List<Double> last10 = new ArrayList<>();  
    
    
    /*public Usuario(String nome, Double media, List<Double> last10) {
        this.nome = nome;
        this.media = media;
        this.last10 = last10;
    } */
        
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getMedia(List<Double> last10) {
        media =0;
        for (int i=0;i<last10.size();i++) {           
            media += last10.get(i);
        }
        media /= last10.size();
        
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }

    public List<Double> getLast10() {
        return last10;
    }

    public void setLast10(List<Double> last10) {
        this.last10 = last10;
    }
    
}
    
    
    
    
    
   