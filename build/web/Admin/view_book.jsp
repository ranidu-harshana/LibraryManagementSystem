<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>
        
        <div class="col-10 mb-4" id="dprofile">
            <div class="p-4">

              <div class="card mb-" style="background-color: #f3f6f9;">

                <div class="card-header mb-3" style="background-color: #2f98ef;" >
                    <span class="text-white">Book Details</span>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>Book Name:</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getName()}</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>Book Author:</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getAuthor()}</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>Book Publisher :</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getPublisherName()}</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>Published Date:</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getPubDate()}</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>ISBN</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getIsbn()}</h6>
                  </div>
                </div>

                <div class="row mt-4">
                  <div class="col-5 ml-4">
                    <h6>All Book Qty.</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getAvailableQty()}</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-5 ml-4">
                    <h6>Available Book Qty.</h6>
                  </div>
                  <div class="col-6">
                    <h6>${book.getAvailableQty() - book.getBorrowQty()}</h6>
                  </div>
                </div>

                <div class="row mt-4">
                  <div class="col-5 ml-4">
                    <h6>Front Page</h6>
                  </div>
                  <div class="col-6">
                      <img src='http://localhost:8080/LibraryManagementSystem/Admin/book_img/${book.imageFront}' class='w-75'>
                  </div>
                </div>

                <div class="row mt-2 mb-3">
                  <div class="col-5 ml-4">
                    <h6>Back Page</h6>
                  </div>
                  <div class="col-6">
                    <img src='http://localhost:8080/LibraryManagementSystem/Admin/book_img/${book.imageBack}' class='w-75'>
                  </div>
                </div>                    
              </div>                 

            </div>       
        </div>

      </div>
    </div>

<%@include  file="includes/footer.jsp" %>