package br.com.fatepg.quiz;

//import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author André
 */
public class TestesRealizados {
    
    public static List<Quiz> last10Geral = new ArrayList<>();
    private static List<Quiz> melhoresNotas = new ArrayList<>();
    private String nomeUser;
    private Double nota;
   // private LocalDate dataTeste;

    /*public TestesRealizados(String nomeUser, Double nota, LocalDate dataTeste) {
        this.nomeUser = nomeUser;
        this.nota = nota;
        //this.dataTeste = dataTeste;
    }*/
/*
    public LocalDate getDataTeste() {
        return dataTeste;
    }
    public void setDataTeste(LocalDate dataTeste) {
        this.dataTeste = dataTeste;
    }
*/
   


    
    /*public TestesRealizados(String nomeUser, Double nota, LocalDate dataTeste) {
        this.nomeUser = nomeUser;
        this.nota = nota;
        this.dataTeste = dataTeste;
    }*/

    public void gerarTopPontuacoes(){
        this.setMelhoresNotas(this.getLast10Geral());
        for (int i = this.getMelhoresNotas().size() ; i >= 1; i--) {
            for (int j = 1; j < i; j++) {
                if (this.getMelhoresNotas().get(j - 1).getPontuacao() > this.getMelhoresNotas().get(j).getPontuacao()) {
                    Quiz aux = this.getMelhoresNotas().get(j);
                    this.getMelhoresNotas().set(j, this.getMelhoresNotas().get(j - 1));
                    this.getMelhoresNotas().set(j - 1, aux);
                }
            }
        }

    }
    
    public String getNomeUser() {
        return nomeUser;
    }

    public void setNomeUser(String nomeUser) {
        this.nomeUser = nomeUser;
    }

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }

    public List<Quiz> getLast10Geral() {
        return last10Geral;
    }

    public void setLast10Geral(List<Quiz> last10Geral) {
        this.last10Geral = last10Geral;
    }

    public List<Quiz> getMelhoresNotas() {
        return melhoresNotas;
    }

    public void setMelhoresNotas(List<Quiz> melhoresNotas) {
        this.melhoresNotas = melhoresNotas;

    }
}