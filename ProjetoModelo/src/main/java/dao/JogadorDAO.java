package dao;

import model.Jogador;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JogadorDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/brasileirao";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private static final String INSERT_JOGADOR_SQL = "INSERT INTO bid (nome, time, posicao) VALUES (?, ?, ?)";
    private static final String SELECT_JOGADOR_BY_ID = "SELECT id, nome, time, posicao FROM bid WHERE id = ?";
    private static final String SELECT_ALL_JOGADORES = "SELECT * FROM bid";
    private static final String DELETE_JOGADOR_SQL = "DELETE FROM bid WHERE id = ?";
    private static final String UPDATE_JOGADOR_SQL = "UPDATE bid SET nome = ?, time= ?, posicao =? WHERE id = ?";
    private static final String SEARCH_JOGADOR_SQL = "SELECT * FROM bid WHERE nome LIKE ? OR time LIKE ? OR posicao LIKE ?";


    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertJogador(Jogador jogador) throws SQLException {
        try (Connection connection = getConnection(); 
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_JOGADOR_SQL)) {
            preparedStatement.setString(1, jogador.getNome());
            preparedStatement.setString(2, jogador.getTime());
            preparedStatement.setString(3, jogador.getPosicao());
            preparedStatement.executeUpdate();
        }
    }

    public Jogador selectJogador(int id) {
        Jogador jogador = null;
        try (Connection connection = getConnection(); 
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_JOGADOR_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String nome = rs.getString("nome");
                String time = rs.getString("time");
                String posicao = rs.getString("posicao");
                jogador = new Jogador(nome, time, posicao);
                jogador.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return jogador;
    }

    public List<Jogador> selectAllJogadores() {
        List<Jogador> jogadores = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_JOGADORES)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");
                String time = rs.getString("time");
                String posicao = rs.getString("posicao");
                Jogador jogador = new Jogador(nome, time, posicao);
                jogador.setId(id);
                jogadores.add(jogador);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return jogadores;
    }

    public boolean updateJogador(Jogador jogador) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_JOGADOR_SQL)) {
            statement.setString(1, jogador.getNome());
            statement.setString(2, jogador.getTime());
            statement.setString(3, jogador.getPosicao());
            statement.setInt(4, jogador.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public boolean deleteJogador(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_JOGADOR_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public List<Jogador> searchJogadores(String query) {
        List<Jogador> jogadores = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_JOGADOR_SQL)) {
            String searchPattern = "%" + query + "%";
            preparedStatement.setString(1, searchPattern);
            preparedStatement.setString(2, searchPattern);
            preparedStatement.setString(3, searchPattern);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");
                String time = rs.getString("time");
                String posicao = rs.getString("posicao");
                Jogador jogador = new Jogador(nome, time, posicao);
                jogador.setId(id);
                jogadores.add(jogador);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return jogadores;
    }

}