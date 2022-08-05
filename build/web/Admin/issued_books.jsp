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
            Issued Books
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
<!--                <th>Quantity</th>
                <th>Available Qty.</th>-->
                <th>Mark as Received</th>
              </tr>
            </thead>
            <tbody>
                <% 
                    List books_users = BookUsers.admin_issued_books();
                    List<Books> books = (List<Books>) books_users.get(0);
                    List<Users> users = (List<Users>) books_users.get(1);
                    for (int i = 0; i < books.size(); i++) {
                        out.println("<tr>");
                        out.println("<td>"+books.get(i).getName()+"</td>");
                        out.println("<td>"+users.get(i).getFname()+"</td>");
                        out.println("<td>"+users.get(i).getEmail()+"</td>");
                        BookUsers book_user = BookUsers.get_book_users_details_issue(users.get(i).getId(), books.get(i).getId());
                        out.println("<td>"+book_user.getCreatedAt()+"</td>");
//                        out.println("<td>"+book.getStatus()+"</td>");
//                        out.println("<td>"+book.getName()+"</td>");
                        
                        out.println("<td><button type='button' class='btn btn-sm btn-success' data-toggle='modal' data-target='#bookIssueModal"+books.get(i).getId()+"'>Return</button>");
                        out.println("<div class='modal fade' id='bookIssueModal"+books.get(i).getId()+"' tabindex='-1' role='dialog' aria-labelledby='bookIssueModal"+books.get(i).getId()+"Title' aria-hidden='true'>");
                    %>
                                <div class="modal-dialog" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                
                                        <h5 class="modal-title" id="bookIssueModalLongTitle">Issue a Book</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <form action="../ReturnBook" method="POST">
                                        <div class="modal-body">
                                            Are you sure, you want to mark this as returned?
                                            <% out.println("<input type='hidden' name='bookuser_id' value='"+book_user.getId()+"'>"); %>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                                          <button type="submit" class="btn btn-primary">Yes</button>
                                        </div>
                                    </form>
                                  </div>
                                </div>
                            </div>
                        </td>
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

