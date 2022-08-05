/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.BookController;

import Models.BookUsers;
import Models.Books;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ranid
 */
public class ReturnBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BookUsers book_user = BookUsers.find(Integer.parseInt(request.getParameter("bookuser_id")));
        Books book = Books.find((book_user.getBookId()));
        
        book_user.setStatus((byte)0);
        book_user.setReturnedDate(new Date());
        book.setBorrowQty(book.getBorrowQty() - 1);
        
        int status = BookUsers.update(book_user);
        Books.update(book);
        
        if ( status == 1 ) {
            HttpSession session = request.getSession();
            session.setAttribute("book-returned", "Book Returned.");
            
            request.getRequestDispatcher("/Admin/issued_books.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("book-returned", "Book Return Failed.");
            
            request.getRequestDispatcher("/Admin/issued_books.jsp").forward(request, response);
        }
    }

}
