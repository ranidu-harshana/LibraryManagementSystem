<%@include  file="includes/header.jsp" %>

    
    <!-- ########################################  Navigation Bar ######################################## -->
    <%@include  file="includes/top-nav.jsp" %> <!-- ########################################  Navigation Bar End ######################################## -->


    <div class="mt-5"></div> <!-- Space after the navigation bar -->


    <!-- ### BOXES ###-->
    <section id="boxes" class="py-3" style="background-color: #f3f6f9;">
      <div class="container">
          <div class="row mt-2">
              
            <%@include  file="includes/side-nav.jsp" %>

            <div class="col-md-9" id="dprofile">
              <div class="card">
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
                        <h6>13</h6>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-5 ml-4">
                        <h6>Available Book Qty.</h6>
                      </div>
                      <div class="col-6">
                        <h6>5</h6>
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
      </div>
    </section>
    


    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
      integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"
    ></script>

    <script>
      function openNav() {
        document.getElementById("mySidenav").style.width = "100%";
      }

      function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
      }

      var dropdown = document.getElementsByClassName("dropdown-btn1");
      var i;

      for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function () {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
          } else {
            dropdownContent.style.display = "block";
          }
        });
      }

      var dropdown = document.getElementsByClassName("dropdown-btn2");
      var j;

      for (j = 0; j < dropdown.length; j++) {
        dropdown[j].addEventListener("click", function () {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
          } else {
            dropdownContent.style.display = "block";
          }
        });
      }

      // Get the current year for the copyright
      $("#year").text(new Date().getFullYear());
    </script>
  </body>
</html>
