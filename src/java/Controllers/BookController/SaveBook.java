package Controllers.BookController;

import static Helpers.uploadFile.*;
import Models.Books;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
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

        int available_qty = Integer.parseInt(request.getParameter("available_qty"));
        
        final Part filePart = request.getPart("image_front");
        final String image_front = getFileName(filePart);

        InputStream is = null;
        boolean s1 = upload(is, image_front, filePart);
        
        if(s1){
                System.out.println("uploaded");
        }else{
            System.out.println("something wrong");
        }
        
        final Part filePart2 = request.getPart("image_back");
        final String image_back = getFileName(filePart2);

        InputStream is2 = null;
        boolean s2 = upload(is2, image_back, filePart2);
        
        if(s2){
            System.out.println("uploaded");
        }else{
            System.out.println("something wrong");
        }
        
        Books book = new Books();

        book.setName(name);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPublisherName(publisher_name);
        book.setPubDate(pub_dateD);
        book.setImageFront(image_front);
        book.setImageBack(image_back);
        book.setAvailableQty(available_qty);
        book.setBorrowQty(0);
        book.setCreatedAt(new Date());
        book.setStatus((byte) 1);

        Serializable status = Books.save(book);

        if (status == null) {
            HttpSession session = request.getSession();
            session.setAttribute("book-registerd", "Failed to Addd Book!");

            response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Admin/register_book.jsp");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("book-registerd", "New Book Added.");

            response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Admin/register_book.jsp");
        }
    }
    
}
