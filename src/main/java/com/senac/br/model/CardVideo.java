package com.senac.br.model;

import java.util.Date;

public class CardVideo extends Card {

    private String link;

    public CardVideo(String link, int idCard, String titulo, int tipo, Date dataCriacao) {

        //local
        this.link = link;

        //classe abstrata
        super.setIdCard(idCard);
        super.setTitulo(titulo);
        super.setTipo(tipo);
        super.setDataCriacao(dataCriacao);
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    //Methods
    @Override
    public void setDesigne() {

        String embedLink = "https://www.youtube.com/embed/";

        //encontra o = no link do youtube
        int posicao = link.indexOf("=");

        //pega apenas o codigo apos o =
        String linkCode = link.substring(posicao + 1);

        //coloca o codigo na embed...
        embedLink += linkCode;

        this.link = embedLink;

        //cor do background
        setCor("#ffffff");
    }

    @Override
    public void UrgencyCheck() {

    }

    @Override
    public int getCardTipo() {
        return super.getTipo();
    }

}
