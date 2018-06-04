<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar">

    <c:choose>
        <c:when test="${sessionScope.usuario == null}">
            <div class="navlogo">
                <a href="/poonotes/">
                    <img src="img\note.svg">
                </a>
            </div>

            <div class="nav-buttons">
                <a class="btn-login" href="/poonotes/login">Fazer Login</a>
                <a class="btn-singup" href="/poonotes/signup">Cadastre-se</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="navlogo">
                <a href="/poonotes/home">
                    <img src="img\note.svg">
                </a>
            </div>

            <div class="navmiddle">

                <input type="hidden" id="boardAtual" value="${idboard}"/>

                <div class="navm-select">
                    <select>
                        <c:forEach items="${sessionScope.boardList}" var="boarditem">
                            <option class="boardsOptions" value="${boarditem.idBoard}" onclick="trocaBoard(this.value)">${boarditem.titulo}</option>
                        </c:forEach>
                    </select>
                    <script>
                        selectedBoard();
                    </script>

                    <form id="form-trocarBoard" action="/poonotes/home">
                        <input type="hidden" id="selectedBoard" name="selectedBoard"/>
                    </form>
                </div>

                <c:if test="${idboard != usuario.idBoardDefault}">
                    <div class="navm-buto tooltip">
                        <span class="tooltiptext">Deletar board</span>
                        <img class="btn-deleteBoard" src="img/trash.svg" onclick="arquiveBoard(${idboard})">
                    </div>
                </c:if>
                <form id="form-arquiveBoard" action="${pageContext.request.contextPath}/deleteboard" method="post">
                    <input type="hidden" name="boardarquivado" id="boardarquivado"/>
                </form>

            </div>

            <div class="nav-buttons">
                <a class="btn-add tooltip" href="/poonotes/novo">
                    <span class="tooltiptext">Adicionar novo</span>+
                </a>
                <a class="btn-login" href="/poonotes/alterarCadastro">${sessionScope.usuario.login}</a>
                <a class="btn-singup" href="/poonotes/logout">Logout</a>
            </div>
        </c:otherwise>
    </c:choose>

</div>