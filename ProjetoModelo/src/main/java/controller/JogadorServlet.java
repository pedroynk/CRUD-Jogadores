package controller;

import dao.JogadorDAO;
import model.Jogador;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/jogador")
public class JogadorServlet extends HttpServlet {
    private JogadorDAO jogadorDAO;

    public void init() {
        jogadorDAO = new JogadorDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertJogador(request, response);
                    break;
                case "delete":
                    deleteJogador(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateJogador(request, response);
                    break;
                case "search":
                    searchJogador(request, response);
                    break;
                case "view": 
                    showJogadorDetails(request, response);
                    break;
                default:
                    listJogador(request, response);
                    break;
                    
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }


    private void listJogador(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Jogador> listJogador = jogadorDAO.selectAllJogadores();
        request.setAttribute("listJogador", listJogador);
        request.getRequestDispatcher("jogador-list.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("jogador-form.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Jogador existingJogador = jogadorDAO.selectJogador(id);
        request.setAttribute("jogador", existingJogador);
        request.getRequestDispatcher("jogador-form.jsp").forward(request, response);
    }

    private void insertJogador(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String nome = request.getParameter("nome");
        String time = request.getParameter("time");
        String posicao = request.getParameter("posicao");
        Jogador novoJogador = new Jogador(nome, time, posicao);
        jogadorDAO.insertJogador(novoJogador);
        response.sendRedirect("jogador?action=list");
    }

    private void updateJogador(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String time = request.getParameter("time");
        String posicao = request.getParameter("posicao");

        Jogador jogador = new Jogador(nome, time, posicao);
        jogador.setId(id);
        jogadorDAO.updateJogador(jogador);
        response.sendRedirect("jogador?action=list");
    }

    private void deleteJogador(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        jogadorDAO.deleteJogador(id);
        response.sendRedirect("jogador?action=list");
    }
    
    private void searchJogador(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        String searchQuery = request.getParameter("searchQuery");
        List<Jogador> listJogador = jogadorDAO.searchJogadores(searchQuery);
        request.setAttribute("listJogador", listJogador);
        request.getRequestDispatcher("jogador-list.jsp").forward(request, response);
    }
    
    private void showJogadorDetails(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Jogador jogador = jogadorDAO.selectJogador(id);
        request.setAttribute("jogador", jogador);
        request.getRequestDispatcher("jogador-details.jsp").forward(request, response);
    }


}