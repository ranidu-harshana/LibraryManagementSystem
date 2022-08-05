<%@page import="Models.BookUsers"%>
<%@page import="Models.Books"%>
<%@page import="Models.User"%>
<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>
        <div class="col-10">
          <h1 class="text-center mt-2" style="font-family: Arial, Helvetica, sans-serif" >
            Overall Details
          </h1>

          <div class="row justify-content-around mt-5">
            <div class="col-3">
              <div class="card bg-primary text-white">
                <div class="card-body">
                  <i class="fas fa-user-friends fa-4x"></i>
                  <h4 class="mt-2">Reg. Student - <b><% out.println(User.count()); %></b></h4>
                </div>
              </div>
            </div>
            <div class="col-3">
              <div class="card bg-success text-white">
                <div class="card-body">
                  <i class="fas fa-book fa-4x"></i>
                  <h4 class="mt-2">Total Books - <b><% out.println(Books.count()); %></b></h4>
                </div>
              </div>
            </div>
            <div class="col-3">
              <div class="card">
                <div class="card-body bg-danger text-white">
                  <i class="fas fa-books fa-4x"></i>
                  <h4 class="mt-2">Issued Books - <b><% out.println(BookUsers.issued_book_count()); %></b></h4>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<%@include  file="includes/footer.jsp" %>