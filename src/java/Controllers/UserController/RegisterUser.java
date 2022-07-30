package Controllers.UserController;

import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterUser extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String nic = request.getParameter("nic");
            String email = request.getParameter("email");
            String mobno = request.getParameter("mobno");
            
            User user = new User();
            
            user.setFname(fname);
            user.setLname(lname);
            user.setAddress(address);
            user.setGender(Integer.parseInt(gender));
            user.setDob(dob);
            user.setNic(nic);
            user.setEmail(email);
            user.setMobno(mobno);
            
            int status = User.save(user);
            
            if (status == 1) {
                HttpSession session = request.getSession();
                session.setAttribute("user-registerd", "New User Registered.");

                response.sendRedirect("Admin/register_user.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user-registerd-failed", "Failed to Register User!");

                response.sendRedirect("Admin/register_user.jsp");
            }
    }
}
