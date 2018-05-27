<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Navigation bar-->
<div class="navbar">

    <div class="navlogo">
        <a href="/poonotes">
            <img src="img\note.svg">
        </a>
    </div>

    <c:choose>
        <c:when test="${sessionScope.usuario == null}">
            <div class="nav-buttons">
                <a class="btn-login" href="/poonotes/login">Fazer Login</a>
                <a class="btn-singup" href="/poonotes/signup">Cadastre-se</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="nav-buttons">
                <a class="btn-login">${sessionScope.usuario.login}</a>
                <a class="btn-singup" href="/poonotes/logout">Logout</a>
            </div>
        </c:otherwise>
    </c:choose>

</div>