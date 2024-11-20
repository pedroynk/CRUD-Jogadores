<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalhes do Jogador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="logo.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Detalhes do Jogador</h1>
    <div class="card">
        <div class="card-header d-flex align-items-center">
            <c:choose>
                <c:when test="${jogador.time == 'Athletico-PR'}">
                    <img src="img/athletico-pr.png" alt="Athletico-PR" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Atlético-GO'}">
                    <img src="img/atletico-go.png" alt="Atlético-GO" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Atlético-MG'}">
                    <img src="img/atletico-mg.png" alt="Atlético-MG" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Bahia'}">
                    <img src="img/bahia.png" alt="Bahia" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Botafogo'}">
                    <img src="img/botafogo.png" alt="Botafogo" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'RB Bragantino'}">
                    <img src="img/rb-bragantino.png" alt="RB Bragantino" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Corinthians'}">
                    <img src="img/corinthians.png" alt="Corinthians" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Criciúma'}">
                    <img src="img/criciuma.png" alt="Criciúma" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Cruzeiro'}">
                    <img src="img/cruzeiro.png" alt="Cruzeiro" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Cuiabá'}">
                    <img src="img/cuiaba.png" alt="Cuiabá" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Flamengo'}">
                    <img src="img/flamengo.png" alt="Flamengo" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Fluminense'}">
                    <img src="img/fluminense.png" alt="Fluminense" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Fortaleza'}">
                    <img src="img/fortaleza.png" alt="Fortaleza" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Grêmio'}">
                    <img src="img/gremio.png" alt="Grêmio" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Internacional'}">
                    <img src="img/internacional.png" alt="Internacional" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Juventude'}">
                    <img src="img/juventude.png" alt="Juventude" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Palmeiras'}">
                    <img src="img/palmeiras.png" alt="Palmeiras" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'São Paulo'}">
                    <img src="img/sao-paulo.png" alt="São Paulo" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Vasco da Gama'}">
                    <img src="img/vasco.png" alt="Vasco da Gama" class="team-logo2" />
                </c:when>
                <c:when test="${jogador.time == 'Vitória'}">
                    <img src="img/vitoria.png" alt="Vitória" class="team-logo2" />
                </c:when>
                <c:otherwise>
                    <span>Sem logo</span>
                </c:otherwise>
            </c:choose>
            <h2>${jogador.nome}</h2>
        </div>
        <div class="card-body">
            <p><strong>ID:</strong> ${jogador.id}</p>
            <p><strong>Time:</strong> ${jogador.time}</p>
            <p><strong>Posição:</strong> ${jogador.posicao}</p>
            <a href="jogador?action=list" class="btn btn-primary">Voltar</a>
            <a href="jogador?action=edit&id=${jogador.id}" class="btn btn-warning">Editar</a>
            <a href="jogador?action=delete&id=${jogador.id}" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja deletar este jogador?');">Deletar</a>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
