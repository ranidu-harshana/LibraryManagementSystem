<%@page import="Models.Books"%>
<%@page import="java.util.List"%>
<%@include  file="includes/datatable_header.jsp" %>

    <div class="container-fluid">
      <div class="row">
        <%@include  file="../includes/sidebar.jsp" %>

        <div class="col-10 p-4 bg-light" >
          <h1 class="text-center mt-1" style="font-family: Arial, Helvetica, sans-serif" >
            All Books
          </h1>
          <table id="example" class="table table-striped table-bordered nowrap" style="width: 100%">
            <thead>
              <tr>
                <th>#</th>
                <th>Book Name</th>
                <th>Author name</th>
                <th>ISBN</th>
                <th>Publisher Name</th>
                <th>Published Date</th>
                <th>Created At</th>
<!--                <th>Quantity</th>
                <th>Available Qty.</th>-->
                <th>Edit</th>
              </tr>
            </thead>
            <tbody>
                <% List<Books> books = Books.view_all(); 
                    for (Books book : books) {
                        out.println("<tr>");
                        out.println("<td>"+book.getId()+"</td>");
                        out.println("<td>"+book.getName()+"</td>");
                        out.println("<td>"+book.getAuthor()+"</td>");
                        out.println("<td>"+book.getIsbn()+"</td>");
                        out.println("<td>"+book.getPublisherName()+"</td>");
                        out.println("<td>"+book.getPubDate()+"</td>");
                        out.println("<td>"+book.getCreatedAt()+"</td>");
//                        out.println("<td>"+book.getStatus()+"</td>");
//                        out.println("<td>"+book.getName()+"</td>");
                        out.println("<td><a href='../EditBook?book_id="+book.getId()+"'><button class='btn btn-sm btn-warning'>Edit</button></a></td>");
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

