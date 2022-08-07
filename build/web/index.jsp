<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="http://localhost:8080/LibraryManagementSystem/assets/CSS/student/style.css" />

    <title>Home</title>
    <link rel="shortcut icon" href="#" type="image/x-icon" />
  </head>

  <body>

    <!-- ########################################  Navigation Bar ######################################## -->
    <nav class="navbar navbar-expand-sm fixed-top">
      <div class="container">
        <a href="index.jsp" class="navbar-brand">
          <img src="http://localhost:8080/LibraryManagementSystem/assets/img/logo.png" id="navbarLogo" height="45" alt="LMS Logo" /> <!-- Navigation Bar Logo -->
        </a>

        <!-- Navigation Bar Toggle Button - This will appear only in small screens -->
        <button class="navbar-toggler custom-toggler" data-toggle="collapse" data-target="#navbarCollapse">
          <!-- Toggle icon --> <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navigation Bar - Menu Items -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ml-auto">

            <!-- Home Item -->
            <li class="nav-item mr-2"> 
              <a href="index.jsp" class="nav-link menuText hmT"><i class="fas fa-home"></i> Home</a>
            </li> <!-- Home Item end-->

            <% if (session.getAttribute("user_id") != null) {
                if (session.getAttribute("role").equals("admin")) { %>
                    <li class="nav-item mr-2"> 
                        <a href="Admin" class="nav-link menuText hmT"><i class="fas fa-user-circle"></i> Admin</a>
                    </li>
            <% } else { %>
                <li class="nav-item mr-2"> 
                    <a href="Student" class="nav-link menuText hmT"><i class="fas fa-user-circle"></i> Profile</a>
                 </li>
            <% }
            } else { %>
                <li class="nav-item mr-2"> 
                    <a href="login.jsp" class="nav-link menuText hmT"><i class="fas fa-user-circle"></i> Login</a>
                 </li>
            <% } %>
            
          </ul> <!-- Navigation bar unorder-list end -->
        </div> <!-- Navigation Bar Menu Item End -->    
      </div> <!-- Conatiner End -->
    </nav> <!-- ########################################  Navigation Bar End ######################################## -->


    <!-- SHOWCASE -->
    <section id="showcase" >
      <div class="context col text-center mt-4" style="z-index: 1;">
          <h1>Read | Lead | Succeed</h1>
          <p class="lead">If you don?t like to read, you haven't found the right book</p>
          <% if (session.getAttribute("user_id") == null) { %>
            <a href="login.jsp" class="btn btn-lg" style="background-color: #4997fe;color: #ffffff;"><b>Get Started</b></a>
          <% } %>     
          
      </div>
          
      <div class="area" style="z-index: -1;">
      </div>
  </section> <!-- SHOWCASE END -->

    <!-- ### WELCOME Head Section ### -->
    <section id="welcome-section" class="text-white" style="background-color: #4997fe;">
      <div class="container">
          <div class="row">
              <div class="col text-center py-5 " >
                  <h1 class="display-5">WELCOME TO LMS</h1>
                  <p class="lead">A learning management system is a software application for the administration, documentation, tracking, reporting, automation, and delivery of educational courses, training programs, or learning and development programs. The learning management system concept emerged directly from e-Learning.</p>

              </div>
          </div>
      </div>
  </section>


  <!-- ### Explore Section ### -->
  <section id="explore-section" class="text-muted py-4" style="background-color: #f3f6f9;">
      <div class="container">
          <div class="row">
              <div class="col-md-6 text-center">
                  <img src="http://localhost:8080/LibraryManagementSystem/assets/img/homepage1.jpg" alt="" class="img-fluid mt-2 mb-3" style="max-width: 80%;">
              </div>
              <div class="col-md-6">
                   <h3>What are the best books of all time? </h3>
                   <p>Service Technicians fixes vehicles and replaces their parts for customers. Their duties include inspecting the vehicle?s mechanical components and its engine, diagnosing problems. </p>
                   <div class="d-flex">
                       <div class="p-4 align-self-start">
                           <i class="fas fa-check fa-2x"></i>
                       </div>
                       <div class="p-4 align-self-end">
                            Using manual and computerized diagnostic methods to identify potential problems in a vehicle
                       </div>
                   </div>
                   <div class="d-flex">
                      <div class="p-4 align-self-start">
                          <i class="fas fa-check fa-2x"></i>
                      </div>
                      <div class="p-4 align-self-end">
                        Planning work and testing procedures using charts, experience and other organizational methods
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>

  <section id="explore-section" class="text-muted py-5" style="background-color: #f3f6f9;">
      <div class="container">
          <div class="row">
              
              <div class="col-md-6 d-sm-none text-center">
                  <img src="http://localhost:8080/LibraryManagementSystem/assets/img/homepage2.jpg" alt="" class="img-fluid mb-3" >
              </div>

              <div class="col-md-6">
                   <h3>What are the best books of all time?</h3>
                   <p>Whether you run a garage or you?re a mobile mechanic, get started today and gain instant access to 1000s of potential customers</p>
                   <div class="d-flex">
                       <div class="p-4 align-self-start">
                           <i class="fas fa-check fa-2x"></i>
                       </div>
                       <div class="p-4 align-self-end">
                        We connect you to more clients around the Sri Lanka with garages every day. 
                       </div>
                   </div>
                   <div class="d-flex">
                      <div class="p-4 align-self-start">
                          <i class="fas fa-check fa-2x"></i>
                      </div>
                      <div class="p-4 align-self-end">
                          You can reach more engament through the website and able earn more for a day.
                      </div>
                  </div>
              </div>
              <div class="col-md-6 text-center d-none d-sm-block">
                  <img src="http://localhost:8080/LibraryManagementSystem/assets/img/homepage2.jpg" alt="" class="w-75 img-fluid mb-3" >
              </div>

          </div>
      </div>
  </section>


<!-- FOOTER -->
<footer id="main-footer" class="pt-2 text-white" style="background-color: #2f98ef;">
    <div class="container">
      <div class="row justify-content-between">
        <div class="col">
          <p>
            <span id="year"></span> Copyright &copy; 2022 LMS All Rights Received | Powered by CSTGroupNo04</p>     
        </div>
      </div>
    </div>

</footer>



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

      // Get the current year for the copyright
      $("#year").text(new Date().getFullYear());
    </script>
  </body>
</html>
