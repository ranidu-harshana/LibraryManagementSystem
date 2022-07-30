<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Models.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@include  file="includes/header.jsp" %>

    <div class="container-fluid">
      <div class="row">
        <%@include  file="../includes/sidebar.jsp" %>
        <div class="col-10 offset-2" id="main">
          <h1
            class="text-center mt-4"
            style="font-family: Arial, Helvetica, sans-serif"
          >
            Overall Details
          </h1>

          <div class="row">
              
            <div class="col-3">
              <div class="card">
                <div class="card-body">Registerd Student -</div>
              </div>
            </div>
            <div class="col-3">
              <div class="card">
                <div class="card-body">Registerd Student -</div>
              </div>
            </div>
            <div class="col-3">
              <div class="card">
                <div class="card-body">Registerd Student -</div>
              </div>
            </div>
              
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.name}</td>
                        <td>${book.author}</td>
                        <td>${book.isbn}</td>
                        <td>${book.publisher_name}</td>
                        <td>${book.pub_date}</td>
                        <td>${book.created_at}</td>
                        <td>${book.status}</td>
                        <td>${book.name}</td>
                        <td>5421</td>
                    </tr>
                </c:forEach>
          </div>
        </div>
      </div>
    </div>

<%@include  file="../includes/footer.jsp" %>
