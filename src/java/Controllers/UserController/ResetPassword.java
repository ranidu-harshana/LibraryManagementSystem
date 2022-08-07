/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.UserController;

import static Helpers.passwordHash.encrypt;
import Models.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResetPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Users user = Users.find(Integer.parseInt(request.getParameter("user_id")));
        user.setPassword(encrypt("abcd12ABCD"));
        int status = Users.update(user);
                
        if (status == 1) {
            HttpSession session = request.getSession();
            session.setAttribute("reset_pass", "Password Reset");
            
            response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Admin/all_users.jsp");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("reset_pass", "Password Reset Failed");
            
            response.sendRedirect("http://localhost:8080/LibraryManagementSystem/Admin/all_users.jsp");
        }
    }
}
