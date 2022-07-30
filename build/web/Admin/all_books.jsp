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
                <th>Author name</th>
                <th>Publisher Name</th>
                <th>Published Date</th>
<!--                <th>Quantity</th>
                <th>Available Qty.</th>-->
                <th>Edit</th>
                <th>Issue</th>
              </tr>
            </thead>
            <tbody>
                <% List<Books> books = Books.view_all(); 
                    for (Books book : books) {
                        out.println("<tr>");
                        out.println("<td>"+book.getName()+"</td>");
                        out.println("<td>"+book.getAuthor()+"</td>");
                        out.println("<td>"+book.getPublisherName()+"</td>");
                        out.println("<td>"+book.getPubDate()+"</td>");
//                        out.println("<td>"+book.getStatus()+"</td>");
//                        out.println("<td>"+book.getName()+"</td>");
                        out.println("<td><a href='../EditBook?book_id="+book.getId()+"'><button class='btn btn-sm btn-warning'>Edit</button></a></td>");
                        
                        out.println("<td><button type='button' class='btn btn-sm btn-success' data-toggle='modal' data-target='#bookIssueModal"+book.getId()+"'>Issue</button>");
                        out.println("<div class='modal fade' id='bookIssueModal"+book.getId()+"' tabindex='-1' role='dialog' aria-labelledby='bookIssueModal"+book.getId()+"Title' aria-hidden='true'>");
                    %>
                                <div class="modal-dialog" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                
                                        <h5 class="modal-title" id="bookIssueModalLongTitle">Issue a Book</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <form action="../IssueBook" method="POST">
                                        <div class="modal-body">
                                            <label for="email" class="label">User Email</label><br>
                                            <% out.println("<input type='hidden' name='book_id' value='"+book.getId()+"'>"); %>
                                            <input type="email" id="email" name="email" placeholder="Enter user email" required class="form-control"/>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                          <button type="submit" class="btn btn-primary">Issue</button>
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

