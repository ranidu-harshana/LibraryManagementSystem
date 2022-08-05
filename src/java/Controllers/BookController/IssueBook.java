/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.BookController;

import Models.BookUsers;
import static Models.BookUsers.all_borrowed_books;
import Models.Books;
import Models.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IssueBook extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String book_id = request.getParameter("book_id");
        Users user = Users.findByEmail(request.getParameter("email"));
        Books book = Books.find(Integer.parseInt(book_id));
        
        if (user == null) {
            HttpSession session = request.getSession();
            session.setAttribute("user-assign", "User Email not matched!");
            
            response.sendRedirect("Admin/all_books.jsp");
        } else {
            BookUsers book_user = new BookUsers();
        
            book_user.setUserId(user.getId());
            book_user.setBookId(Integer.parseInt(book_id));
            book_user.setStatus((byte)1);
            book_user.setReturnedDate(null);
            book_user.setCreatedAt(new Date());
            
            if (all_borrowed_books(user.getId()).size() == 0) {
                if (book.getAvailableQty() - book.getBorrowQty() != 0) {
                    book.setBorrowQty(book.getBorrowQty() + 1);
                    BookUsers.save(book_user);
                    Books.update(book);
                
                    HttpSession session = request.getSession();
                    session.setAttribute("user-assign", "Book issued to "+user.getFname()+" "+user.getLname());
                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("user-assign", "No any book in stock");
                }
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user-assign", "You have already taken a book");
            }
            
            response.sendRedirect("Admin/all_books.jsp");
        }
        
    }

}
