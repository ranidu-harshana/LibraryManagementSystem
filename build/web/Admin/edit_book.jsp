<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>
        <div class="col-10">
          <div class="container">
        
            <div class="card card-registration mt-5">
                <% if (session.getAttribute("book-edited") != null) { %>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        ${sessionScope['book-edited']}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <% session.removeAttribute("book-edited"); } %>

              <div class="row">
                  
                <div class="col-6 text-right mt-4">
                  <img src="http://localhost:8080/LibraryManagementSystem/assets/img/addbook.png" alt="Add Book" class="w-75" />
                </div>
                  
                    <div class="col-6">
                        
                        <div class="card-body text-black mt-5">
                            <h3 class="mb-4 text-uppercase text-center">
                              Book registration form
                            </h3>
                            <form action="UpdateBook" method="POST">
<!--                            <div class="form-outline mb-3">
                                  <input type="text" id="book_id" class="form-control" placeholder="Book ID" />
                                </div>-->
                                <input type="hidden" name="book_id" value="${book.getId()}">
                                <div class="form-outline mb-3">
                                    <input type="text" name="name" class="form-control" placeholder="Book Name" value="${book.getName()}" required/>
                                </div>

                                <div class="form-outline mb-3">
                                  <input type="text" name="author" class="form-control" placeholder="Author Name" value="${book.getAuthor()}" required/>
                                </div>
<!--                                <div class="row">
                                  <div class="col-6 mb-3">
                                    <div class="form-outline">
                                      <input type="text" id="author_f_name" class="form-control" placeholder=" Author First Name"/>
                                    </div>
                                  </div>
                                  <div class="col-6 mb-3">
                                    <div class="form-outline">
                                      <input type="text" id="autho_l_name" class="form-control" placeholder="Author Last Name" />
                                    </div>
                                  </div>
                                </div>-->

                                <div class="form-outline mb-3">
                                  <input type="text" name="isbn" class="form-control" placeholder="ISBN Number" value="${book.getIsbn()}" required/>
                                </div>

                                <div class="form-outline mb-3">
                                  <input type="text" name="publisher_name" class="form-control" placeholder="Publisher Name" value="${book.getPublisherName()}" required/>
                                </div>

                                <div class="form-outline mb-3">
                                  <div class="row">
                                    <span class="ml-4 mt-1"> Published Date : </span>
                                    <input type="date" name="pub_date" style="width: 69%" class="form-control ml-2" placeholder="Published Date" value="${book.getPubDate()}" required/>
                                  </div>
                                </div>

                                <div class="d-flex justify-content-end">
                                    <button type="button" class="btn btn-danger mr-2 px-3"> Clear </button>
                                    <button type="submit" class="btn btn-warning px-4">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<%@include  file="includes/footer.jsp" %>