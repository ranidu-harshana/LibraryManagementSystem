package Controllers.BookController;

import Models.Books;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
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
public class SaveBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String isbn = request.getParameter("isbn");
        String publisher_name = request.getParameter("publisher_name");
        String pub_dateS = request.getParameter("pub_date");

        Date pub_dateD = null;  
        try {
            pub_dateD = new SimpleDateFormat("yyyy-MM-dd").parse(pub_dateS);
        } catch (ParseException ex) {
            Logger.getLogger(SaveBook.class.getName()).log(Level.SEVERE, null, ex);
        }

        Books book = new Books();
        
        book.setName(name);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPublisherName(publisher_name);
        book.setPubDate(pub_dateD);
        book.setCreatedAt(new Date());
        book.setStatus((byte)1);
        
        Serializable status = Books.save(book);
        
        if (status == null) {
            HttpSession session = request.getSession();
            session.setAttribute("book-registerd", "Failed to Addd Book!");
            
            response.sendRedirect("Admin/register_book.jsp");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("book-registerd", "New Book Added.");
            
            response.sendRedirect("Admin/register_book.jsp");
        }
    }


}
