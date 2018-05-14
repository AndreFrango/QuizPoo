
package br.com.fatepg.quiz;


import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Felipe Mota
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
    
    public void pegarPartidas(){
        last10.clear();
        for(Quiz testeUser : TestesRealizados.last10Geral){
            if(testeUser.getUser().equals(this.getNome())){
                last10.add(testeUser.getPontuacao());
            }
        }
    }
        
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getMedia() {
        
        for (int i=0;i<last10.size();i++) {           
            this.media += last10.get(i);
        }
        this.media /= last10.size();
        
        return this.media;
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
    
    
    
    
    
   