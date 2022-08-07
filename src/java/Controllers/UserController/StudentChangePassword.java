/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.UserController;

import Models.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static Helpers.passwordHash.encrypt;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ranid
 */
public class StudentChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Users user = Users.find(Integer.parseInt(request.getParameter("user_id")));
        String current_password = request.getParameter("current_pass");
        String new_pass = request.getParameter("new_pass");
        String repeat_pass = request.getParameter("repeat_pass");
        
        if (user.getPassword().equals(encrypt(current_password))) {
            if (new_pass.equals(repeat_pass)) {
                user.setPassword(encrypt(new_pass));
                int status = Users.update(user);
                
                if (status == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("edit_pass", "Password Changed");
            
                    response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Student/change_password.jsp");
                }
                
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("edit_passf", "Two passwords are not matched");
            
                response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Student/change_password.jsp");
            }
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("edit_passf", "Current password not matched with the previous password.");
            
            response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Student/change_password.jsp");
        }
    }
}
