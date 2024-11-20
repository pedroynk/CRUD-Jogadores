package model;

public class Jogador {
    private int id;
    private String nome;
    private String time;
    private String posicao;

    public Jogador() {}

    public Jogador(String nome, String time, String posicao) {
        this.nome = nome;
        this.time = time;
        this.posicao = posicao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPosicao() {
        return posicao;
    }

    public void setPosicao(String posicao) {
        this.posicao = posicao;
    }
}