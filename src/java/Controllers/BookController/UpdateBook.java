/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.BookController;

import Models.Books;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ranid
 */
public class UpdateBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        
        String author = request.getParameter("author");
        String isbn = request.getParameter("isbn");
        String publisher_name = request.getParameter("publisher_name");
        String pub_dateS = request.getParameter("pub_date");
        int available_qty = Integer.parseInt(request.getParameter("available_qty"));

        Date pub_dateD = null;  
        try {
            pub_dateD = new SimpleDateFormat("yyyy-MM-dd").parse(pub_dateS);
        } catch (ParseException ex) {
            Logger.getLogger(SaveBook.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Books book = Books.find(Integer.parseInt(request.getParameter("book_id")));
        
        book.setName(name);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPublisherName(publisher_name);
        book.setPubDate(pub_dateD);
        book.setImageFront("front");
        book.setImageBack("back");
        book.setAvailableQty(available_qty);
        book.setBorrowQty(0);
        
        int status = Books.update(book);
        
        if ( status == 1 ) {
            HttpSession session = request.getSession();
            session.setAttribute("book-edited", "Book Edited.");
            
            request.setAttribute("book", book);
            request.getRequestDispatcher("/Admin/edit_book.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("book-edited", "Book Edit Failed.");
            
            request.setAttribute("book", book);
            request.getRequestDispatcher("/Admin/edit_book.jsp").forward(request, response);
        }
    }

}
