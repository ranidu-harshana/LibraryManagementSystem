<%@page import="Models.User"%>
<%@page import="Models.BookUsers"%>
<%@page import="Models.Books"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<%@include  file="includes/datatable_header.jsp" %>

    <!-- ########################################  Navigation Bar ######################################## -->
    <%@include  file="includes/top-nav.jsp" %><!-- ########################################  Navigation Bar End ######################################## -->


    <div class="mt-5"></div> <!-- Space after the navigation bar -->


    <!-- ### BOXES ###-->
    <section id="boxes" class="py-3" style="background-color: #f3f6f9;">
      <div class="container">
          <div class="row mt-2">
              
            <%@include  file="includes/side-nav.jsp" %>

              <div class="col-md-9 " id="dprofile">
                  <div class="card bg-light">                      
                      <div class="p-3">                      

                        <table
                        id="example"
                        class="table table-striped table-bordered ml-0 w-100">                    
                        <thead>
                          <tr>
                            <th>Book Name</th>
                            <th>Author name</th>
                            <th>Publisher Name</th>
                            <th>Published Date</th>
                            <th>Edit</th>
                          </tr>
                        </thead>

                        <tbody>

                            <% 
                                Object user = session.getAttribute("user_id");
                                List<Books> books = BookUsers.all_borrowed_books(user.hashCode()); 
                                for (Books book : books) {
                                    out.println("<tr>");
                                    out.println("<td>"+book.getName()+"</td>");
                                    out.println("<td>"+book.getAuthor()+"</td>");
                                    out.println("<td>"+book.getPublisherName()+"</td>");
                                    out.println("<td>"+book.getPubDate()+"</td>");
                                    out.println("<td class='text-center'><a href='../ViewBook?book_id="+book.getId()+"' class='btn btn-sm viewButton px-2 '><i class='fa fa-book mr-1'></i> View</a></td>");
                                    out.println("</tr>");
                                }
                            %>
                          
                        </tbody>
                      </table>

                      </div> 
                  </div>         
              </div>
          </div>
      </div>
  </section>
    
<%@include  file="includes/footer.jsp" %>

