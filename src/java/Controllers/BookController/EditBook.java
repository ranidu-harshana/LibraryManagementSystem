/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.BookController;

import Models.Books;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ranid
 */
public class EditBook extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Books book = Books.find(Integer.parseInt(request.getParameter("book_id")));
        request.setAttribute("book", book);
        request.getRequestDispatcher("/Admin/edit_book.jsp").forward(request, response);
    }
}
