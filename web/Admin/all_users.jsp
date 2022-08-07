<%@page import="Models.User"%>
<%@page import="java.util.List"%>
<%@include  file="includes/datatable_header.jsp" %>

    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>

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
                <th>Reset Password</th>
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
                        out.println("<td><button type='button' class='btn btn-danger btn-sm' data-toggle='modal' data-target='#resetPasswordModal"+user.getId()+"'>Reset</button></td>");

                        out.println("<div class='modal fade' id='resetPasswordModal"+user.getId()+"' tabindex='-1' role='dialog' aria-labelledby='resetPasswordModal"+user.getId()+"Label' aria-hidden='true'>");
                        %>    
                            <div class='modal-dialog' role='document'>
                            <div class='modal-content'>
                                <div class='modal-header'>
                                <h5 class='modal-title' id='resetPasswordModalLabel'>Modal title</h5>
                                <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
                                    <span aria-hidden='true'>&times;</span>
                                </button>
                                </div>
                                <form action="../ResetPassword" method="POST">
                                    <div class='modal-body'>
                                        Are you sure, you want to reset password of this user?
                                        <% out.println("<input type='hidden' name='user_id' value='"+user.getId()+"'>"); %>
                                    </div>
                                    <div class='modal-footer'>
                                        <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
                                        <button type='submit' class='btn btn-primary'>Reset</button>
                                    </div>
                                </form>
                            </div>
                            </div>
                        </div>
                            <%
                        out.println("</tr>");
                    }
                %>
            </tbody>
          </table>
          <br>
        </div>
      </div>
    </div>
<%@include  file="includes/datatable_footer.jsp" %>

