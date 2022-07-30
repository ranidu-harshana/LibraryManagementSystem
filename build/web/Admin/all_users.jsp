<%@page import="Models.User"%>
<%@page import="java.util.List"%>
<%@page import="Models.Book"%>
<%@include  file="includes/datatable_header.jsp" %>

    <div class="container-fluid">
      <div class="row">
        <%@include  file="../includes/sidebar.jsp" %>

        <div class="col-10 p-4 bg-light" >
          <h1 class="text-center mt-1" style="font-family: Arial, Helvetica, sans-serif" >
            All Users
          </h1>
            <table id="example" class="table table-striped table-bordered nowrap" style="width: 100%">
            <thead>
              <tr>
                <th>User Name</th>
                <th>Address</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>NIC</th>
                <th>Email</th>
                <th>Mob No.</th>
              </tr>
            </thead>
            <tbody>
                <% List<User> users = User.view_all(); 
                    for (User user : users) {
                        out.println("<tr>");
                        out.println("<td>"+user.getFname()+ " "+ user.getLname() +"</td>");
                        out.println("<td>"+user.getAddress()+"</td>");
                        out.println("<td>"+user.getGender()+"</td>");
                        out.println("<td>"+user.getDob()+"</td>");
                        out.println("<td>"+user.getNic()+"</td>");
                        out.println("<td>"+user.getEmail()+"</td>");
                        out.println("<td>"+user.getMobno()+"</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
          </table>
          <br>
        </div>
      </div>
    </div>
<%@include  file="../includes/datatable_footer.jsp" %>

