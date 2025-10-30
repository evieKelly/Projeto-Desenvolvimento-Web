package models;

public class Post {
    private String usuario;
    private String conteudo;

    public Post(String usuario, String conteudo) {
        this.usuario = usuario;
        this.conteudo = conteudo;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getConteudo() {
        return conteudo;
    }
}
