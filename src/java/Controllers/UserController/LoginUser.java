package Controllers.UserController;

import static Helpers.passwordHash.encrypt;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        User user = User.findByEmail(email);
        
        String db_email = user.getEmail();
        if (db_email != null) {
            String db_password = user.getPassword();
            if (db_password.equals(encrypt(password))) {
                
                session.setAttribute("user_id", user.getId());
                
                if (user.getRole_id() == 1) {
                    session.setAttribute("role", "admin");
                    response.sendRedirect("Admin/index.jsp");
                } else {
                    session.setAttribute("role", "student");
                    response.sendRedirect("Student/index.jsp");
                }
                
            } else {
                session.setAttribute("login_failed", "Username or Password Incorrect!");
                response.sendRedirect("index.jsp"); 
            }
        } else {
            session.setAttribute("login_failed", "Username or Password Incorrect!");
            response.sendRedirect("index.jsp"); 
        }
    }
}
