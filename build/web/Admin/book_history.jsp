<%@page import="Models.Users"%>
<%@page import="Models.BookUsers"%>
<%@page import="java.util.Date"%>
<%@page import="Models.Books"%>
<%@page import="java.util.List"%>
<%@include  file="includes/datatable_header.jsp" %>

    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>

        <div class="col-10 p-4 bg-light" >
            
          <h1 class="text-center mt-1" style="font-family: Arial, Helvetica, sans-serif" >
            All Books
          </h1>
            <% if (session.getAttribute("user-assign") != null) { %>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    ${sessionScope['user-assign']}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <% session.removeAttribute("user-assign"); } %>
          <table id="example" class="table table-striped table-bordered nowrap" style="width: 100%">
            <thead>
              <tr>
                <th>Book Name</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>Issued Date</th>
                <th>Returned Date</th>
              </tr>
            </thead>
            <tbody>
                <% 
                    List books_users = BookUsers.admin_books_history();
                    List<Books> books = (List<Books>) books_users.get(0);
                    List<Users> users = (List<Users>) books_users.get(1);
                    for (int i = 0; i < books.size(); i++) {
                        out.println("<tr>");
                        out.println("<td>"+books.get(i).getName()+"</td>");
                        out.println("<td>"+users.get(i).getFname()+"</td>");
                        out.println("<td>"+users.get(i).getEmail()+"</td>");
                        BookUsers book_user = BookUsers.get_book_users_details_history(users.get(i).getId(), books.get(i).getId());
                        out.println("<td>"+book_user.getCreatedAt()+"</td>");
                        out.println("<td>"+book_user.getReturnedDate()+"</td>");
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

