package com.senac.br.model;

import java.util.Date;

public class CardPicture extends Card {

    private String conteudo;

    //Constuctors
    //full
    public CardPicture(String img, int idCard, int idBoard, String titulo,
            int tipo, Date dataCriacao, boolean arquivado) {
        //local
        this.conteudo = img;

        //classe abstrata
        super.setIdCard(idCard);
        super.setIdBoard(idBoard);
        super.setTitulo(titulo);
        super.setTipo(tipo);
        super.setDataCriacao(dataCriacao);
        super.setArquivado(arquivado);
    }

    public CardPicture(String img, int idCard, String titulo, int tipo,
            Date dataCriacao) {

        //local
        this.conteudo = img;

        //classe abstrata
        super.setIdCard(idCard);
        super.setTitulo(titulo);
        super.setTipo(tipo);
        super.setDataCriacao(dataCriacao);
    }

    public CardPicture(String img, String titulo, int tipo,
            Date dataCriacao) {

        //local
        this.conteudo = img;

        //classe abstrata
        super.setTitulo(titulo);
        super.setTipo(tipo);
        super.setDataCriacao(dataCriacao);
    }

    public CardPicture(int idCard, String imgLink, String titulo) {
        this.conteudo = imgLink;
        super.setIdCard(idCard);
        super.setTitulo(titulo);
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    //Methods
    @Override
    public void setDesigne() {

        //modificacoes nessessarias para o tipo de objeto File
        setCor("#6699ff");
    }

    @Override
    public void UrgencyCheck() {

    }

    @Override
    public int getCardTipo() {
        return super.getTipo();
    }

    @Override
    public Object getCardContent() {
        return this.conteudo;
    }

}
