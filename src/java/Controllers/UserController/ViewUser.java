package Controllers.UserController;

import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewUser extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = User.findById(Integer.parseInt(request.getParameter("id")));
	request.setAttribute("user", user);
	request.getRequestDispatcher("Student/index.jsp").forward(request, response);
    }
}