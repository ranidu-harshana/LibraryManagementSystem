/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.UserController;

import Controllers.BookController.SaveBook;
import Models.User;
import Models.Users;
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
public class UpdateUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address = request.getParameter("address");
        String dobS = request.getParameter("dob");
        Date dobD = null;  
        try {
            dobD = new SimpleDateFormat("yyyy-MM-dd").parse(dobS);
        } catch (ParseException ex) {
            Logger.getLogger(UpdateUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        String nic = request.getParameter("nic");
        String mobno = request.getParameter("mobno");
        
        Users user = Users.find(Integer.parseInt(request.getParameter("user_id")));
        
        user.setFname(fname);
        user.setLname(lname);
        user.setAddress(address);
        user.setDob(dobD);
        user.setNic(nic);
        user.setMobno(mobno);
        
        int status = Users.update(user);
        
        if ( status == 1 ) {
            HttpSession session = request.getSession();
            session.setAttribute("user-edited", "User Edited.");
            
            response.sendRedirect("Admin/settings.jsp");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user-edited", "User Edit Failed.");
            
            response.sendRedirect("Admin/settings.jsp");
        }
    }
    
}
