package com.senac.br.controller;

import com.senac.br.DAO.BoardDAO;
import com.senac.br.DAO.CardDAO;
import com.senac.br.exception.BoardException;
import com.senac.br.exception.CardException;
import com.senac.br.exception.UserException;
import com.senac.br.model.Board;
import com.senac.br.model.User;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public class BoardService {

    public static void CreateBoard(HttpServletRequest request)
            throws BoardException {

        try {
            //obter as informacoes do novo board

            //id usuario
            //obter objeto do usuario
            Object user = request.getSession().getAttribute("usuario");
            User logado = (User) user;

            int idUser = logado.getIdUser();

            //titulo
            String titulo = request.getParameter("titulo");

            Board novo = new Board(titulo, new Date(), idUser);

            BoardDAO.createBoard(novo);
        } catch (Exception e) {
            throw new BoardException("Erro ao Criar o Board.", e.getCause());
        }
    }

    public static int CreateBoardDefault(int idUser)
            throws BoardException {

        try {

            Board padrao = new Board(
                    "Default",
                    new Date(),
                    idUser);

            int idBoard = BoardDAO.createBoardDefault(padrao);

            return idBoard;

        } catch (SQLException e) {
            throw new BoardException("Erro ao Criar o Board.", e.getCause());
        }
    }

    public static Board GetBoardById(int idBoard)
            throws BoardException, CardException {

        try {
            //obtem as informacoes do board
            Board padrao = BoardDAO.getBoardById(idBoard);

            //obtem os cards do board
            padrao.setListCards(CardDAO.listCardByBoard(idBoard));

            return padrao;

        } catch (SQLException e) {
            throw new BoardException("Erro ao obter board padrao.(BoardService)", e.getCause());
        }
    }

    public static List<Board> GetBoardsByUser(int idUser)
            throws BoardException {

        try {

            return BoardDAO.listBoardByUser(idUser);

        } catch (SQLException e) {
            throw new BoardException("Erro ao listar boards pelo id do usuario."
                    + "(BoardService)", e.getCause());
        }

    }

    public static void AlterBoard(Board board)
            throws BoardException {

        try {
            BoardDAO.alterBoard(board);
        } catch (SQLException e) {
            throw new BoardException("Erro ao Criar o Board.", e.getCause());
        }
    }

    public static void ArquiveBoard(int idboard)
            throws BoardException {

        try {
            BoardDAO.arquiveBoard(idboard);
        } catch (SQLException e) {
            throw new BoardException("Erro ao Criar o Board.", e.getCause());
        }
    }
}
