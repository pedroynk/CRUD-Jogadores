<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Jogador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header text-center">
                <h1>${jogador != null ? 'Editar Jogador' : 'Cadastre o Jogador'}</h1>
            </div>
            <div class="card-body">
                <form action="jogador?action=${jogador != null ? 'update' : 'insert'}" method="post">
                    <input type="hidden" name="id" value="${jogador != null ? jogador.id : ''}" />
                    <div class="form-group">
                        <label for="nome">Nome:</label>
                        <input type="text" id="nome" name="nome" value="${jogador != null ? jogador.nome : ''}" class="form-control" required />
                    </div>
                    <div class="form-group">
                        <label for="time">Time:</label>
                        <select class="form-control" id="time" name="time" required>
                            <option value="">Selecione um time</option>
                            <option value="Athletico-PR">Athletico-PR</option>
                            <option value="Atlético-GO">Atlético-GO</option>
                            <option value="Atlético-MG">Atlético-MG</option>
                            <option value="Bahia">Bahia</option>
                            <option value="Botafogo">Botafogo</option>
                            <option value="RB Bragantino">RB Bragantino</option>
                            <option value="Corinthians">Corinthians</option>
                            <option value="Criciúma">Criciúma</option>
                            <option value="Cruzeiro">Cruzeiro</option>
                            <option value="Cuiabá">Cuiabá</option>
                            <option value="Flamengo">Flamengo</option>
                            <option value="Fluminense">Fluminense</option>
                            <option value="Fortaleza">Fortaleza</option>
                            <option value="Grêmio">Grêmio</option>
                            <option value="Internacional">Internacional</option>
                            <option value="Juventude">Juventude</option>
                            <option value="Palmeiras">Palmeiras</option>
                            <option value="São Paulo">São Paulo</option>
                            <option value="Vasco da Gama">Vasco da Gama</option>
                            <option value="Vitória">Vitória</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="posicao">Posição:</label>
                        <select class="form-control" id="posicao" name="posicao" required>
                            <option value="">Selecione uma posição</option>
                            <option value="Goleiro">Goleiro</option>
                            <option value="Defensor">Defensor</option>
                            <option value="Meio Campo">Meio-Campo</option>
                            <option value="Atacante">Atacante</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Salvar</button>
                </form>
                <a href="jogador?action=list" class="btn btn-link btn-block mt-3">Cancelar</a>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
