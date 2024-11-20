<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Jogadores</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="logo.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Lista de Jogadores</h1>
     <form method="GET" action="jogador" class="form-inline mb-3">
        <input type="hidden" name="action" value="search" />
        <input type="text" name="searchQuery" class="form-control mr-2" placeholder="Pesquisar jogador" value="${param.searchQuery}" />
        <button type="submit" class="btn btn-outline-primary">Pesquisar</button>
    </form>
    <a href="jogador?action=new" class="btn btn-primary mb-3">Novo Jogador</a>
    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Time</th>
                <th>Posição</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="jogador" items="${listJogador}">
                <tr>
                    <td>${jogador.id}</td>
                    <td>${jogador.nome}</td>
                    <td>
                        <c:choose>
                            <c:when test="${jogador.time == 'Athletico-PR'}">
                                <img src="img/athletico-pr.png" alt="Athletico-PR" class="team-logo" /> Athletico-PR
                            </c:when>
                            <c:when test="${jogador.time == 'Atlético-GO'}">
                                <img src="img/atletico-go.png" alt="Atlético-GO" class="team-logo" /> Atlético-GO
                            </c:when>
                            <c:when test="${jogador.time == 'Atlético-MG'}">
                                <img src="img/atletico-mg.png" alt="Atlético-MG" class="team-logo" /> Atlético-MG
                            </c:when>
                            <c:when test="${jogador.time == 'Bahia'}">
                                <img src="img/bahia.png" alt="Bahia" class="team-logo" /> Bahia
                            </c:when>
                            <c:when test="${jogador.time == 'Botafogo'}">
                                <img src="img/botafogo.png" alt="Botafogo" class="team-logo" /> Botafogo
                            </c:when>
                            <c:when test="${jogador.time == 'RB Bragantino'}">
                                <img src="img/rb-bragantino.png" alt="RB Bragantino" class="team-logo" /> RB Bragantino
                            </c:when>
                            <c:when test="${jogador.time == 'Corinthians'}">
                                <img src="img/corinthians.png" alt="Corinthians" class="team-logo" /> Corinthians
                            </c:when>
                            <c:when test="${jogador.time == 'Criciúma'}">
                                <img src="img/criciuma.png" alt="Criciúma" class="team-logo" /> Criciúma
                            </c:when>
                            <c:when test="${jogador.time == 'Cruzeiro'}">
                                <img src="img/cruzeiro.png" alt="Cruzeiro" class="team-logo" /> Cruzeiro
                            </c:when>
                            <c:when test="${jogador.time == 'Cuiabá'}">
                                <img src="img/cuiaba.png" alt="Cuiabá" class="team-logo" /> Cuiabá
                            </c:when>
                            <c:when test="${jogador.time == 'Flamengo'}">
                                <img src="img/flamengo.png" alt="Flamengo" class="team-logo" /> Flamengo
                            </c:when>
                            <c:when test="${jogador.time == 'Fluminense'}">
                                <img src="img/fluminense.png" alt="Fluminense" class="team-logo" /> Fluminense
                            </c:when>
                            <c:when test="${jogador.time == 'Fortaleza'}">
                                <img src="img/fortaleza.png" alt="Fortaleza" class="team-logo" /> Fortaleza
                            </c:when>
                            <c:when test="${jogador.time == 'Grêmio'}">
                                <img src="img/gremio.png" alt="Grêmio" class="team-logo" /> Grêmio
                            </c:when>
                            <c:when test="${jogador.time == 'Internacional'}">
                                <img src="img/internacional.png" alt="Internacional" class="team-logo" /> Internacional
                            </c:when>
                            <c:when test="${jogador.time == 'Juventude'}">
                                <img src="img/juventude.png" alt="Juventude" class="team-logo" /> Juventude
                            </c:when>
                            <c:when test="${jogador.time == 'Palmeiras'}">
                                <img src="img/palmeiras.png" alt="Palmeiras" class="team-logo" /> Palmeiras
                            </c:when>
                            <c:when test="${jogador.time == 'São Paulo'}">
                                <img src="img/sao-paulo.png" alt="São Paulo" class="team-logo" /> São Paulo
                            </c:when>
                            <c:when test="${jogador.time == 'Vasco da Gama'}">
                                <img src="img/vasco.png" alt="Vasco da Gama" class="team-logo" /> Vasco da Gama
                            </c:when>
                            <c:when test="${jogador.time == 'Vitória'}">
                                <img src="img/vitoria.png" alt="Vitória" class="team-logo" /> Vitória
                            </c:when>
                            <c:otherwise>
                                <span>N/A</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${jogador.posicao}</td>
                    <td>
					    <a href="jogador?action=view&id=${jogador.id}" class="btn btn-info btn-sm">Detalhes</a>
					    <a href="jogador?action=edit&id=${jogador.id}" class="btn btn-warning btn-sm">Editar</a>
					    <a href="jogador?action=delete&id=${jogador.id}" class="btn btn-danger btn-sm">Deletar</a>
					</td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
