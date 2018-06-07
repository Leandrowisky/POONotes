<%-- 
Document   : cardNovo
Created on : 28/05/2018, 09:48:26
Author     : aayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Notes - Novo Card</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
        <script src="js/jquery.js"></script>
        <script src="js/main.js"></script>
    </head>
    <body>

        <!--Navigation bar-->
        <%@include file="/navbar.jsp" %>

        <!-- Main -->
        <div class="main">

            <!-- Content -->
            <div class="content">

                <div class="tab">
                    <button class="tablinks" onclick="openCardType(event, 'simples')" id="defaultOpen">Texto</button>
                    <button class="tablinks" onclick="openCardType(event, 'video')">Video</button>
                    <button class="tablinks" onclick="openCardType(event, 'imagem')" hidden>Imagem</button>
                    <button class="tablinks" onclick="openCardType(event, 'board')">Board</button>
                </div>

                <div id="simples" class="tabcontent card-page">
                    <form id="form-cardsimples" action="${pageContext.request.contextPath}/novo" method="post">
                        <input type="hidden" name="tipo" value="1">
                        <input class="card-page-title" type="text" id="tituloid" name="titulo" placeholder="Titulo..." />
                        <textarea class="card-page-content" id="conteudoid" name="conteudo" cols="30" rows="10"></textarea>
                        <input class="btn-save" type="submit" form="form-cardsimples" value="Salvar"/>
                    </form>
                </div>

                <div id="video" class="tabcontent card-page">
                    <form id="form-cardvideo" action="${pageContext.request.contextPath}/novo" method="post">
                        <input type="hidden" name="tipo" value="2">
                        <input class="card-page-title" type="text" id="tituloid" name="titulo" placeholder="Titulo..." />
                        <input class="card-page-content" type="text" id="conteudoid" name="conteudo" placeholder="Link do video(youtube)..." />
                        <input class="btn-save" type="submit" form="form-cardvideo" value="Salvar"/>
                    </form>
                </div>

                <div id="imagem" class="tabcontent card-page" hidden>
                    <form id="form-cardpicture" action="${pageContext.request.contextPath}/novo" method="post">
                        <input type="hidden" name="tipo" value="3">
                        <input class="card-page-title" type="text" id="tituloid" name="titulo" placeholder="Titulo..." />
                        <input class="card-page-content" type="text" id="conteudoid" name="conteudo" placeholder="Link da imagem...">
                        <input class="btn-save" type="submit" form="form-cardpicture" value="Salvar"/>
                    </form>
                </div>

                <div id="board" class="tabcontent card-page">
                    <form id="form-board" action="${pageContext.request.contextPath}/novoboard" method="post">
                        <input class="card-page-title" type="text" id="tituloid" name="titulo" placeholder="Titulo..." />
                        <p>Teria umas opcoes de cores de fundo aqui.</p>
                        <input class="btn-save" type="submit" form="form-board" value="Salvar"/>
                    </form>
                </div>

            </div>

        </div>

        <script>
            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>

    </body>
</html>
