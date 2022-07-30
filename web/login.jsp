<% if (session.getAttribute("user_id") != null) {
    if (session.getAttribute("role").equals("admin")) {
        response.sendRedirect("Admin/index.jsp");
    } else {
        response.sendRedirect("Student/index.jsp");
    }
    
} %>
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
    <link rel="stylesheet" href="assets/CSS/style.css" />

    <title>LMS</title>
  </head>
  <body>
    <!-- #### START HERE #####-->
    <section class="login">
      <div class="container">
        <div class="row">
          <div class="card">
            <div class="card-body">
                
                <% if (session.getAttribute("login_failed") != null) { %>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        ${sessionScope['login_failed']}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <% session.removeAttribute("login_failed"); } %>
              <div class="row">
                  
                <div class="col-7">
                  <img
                    src="assets/img/login.jpg"
                    class="loginImage"
                    style="width: 100%; height: auto"
                    alt=""
                  />
                </div>
                <div class="col-5">
                  <h1 style="font-family: Arial, Helvetica, sans-serif; margin-top: 15%;">
                    Library Management System
                  </h2>
                  <div class="formSection">
                    <!-- <h3 style="font-family: Arial, Helvetica, sans-serif">
                      Login
                    </h3> -->
                    <form action="LoginUser" method="POST">
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Username"
                          name="email"
                        />
                      </div>
                      <div class="form-group">
                        <input
                          type="password"
                          class="form-control"
                          placeholder="Password"
                          name="password"
                        />
                      </div>
                      <div class="form-group form-check">
                        <!-- <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" /> Remember
                          me
                        </label> -->
                      </div>
                      <button type="submit" class="btn btn-md btn-primary px-4">
                        Login
                      </button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="footer">
      <div class="bg-dark text-white p-2 fixed-bottom">
        Copyright © 2022 LMS All Rights Received | Powered by CSTGroupNo04
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
      // Get the current year for the copyright
      $("#year").text(new Date().getFullYear());
    </script>
    
    <script>
        $(".alert-dismissible").fadeTo(2000, 500).slideUp(500, function(){
            $(".alert-dismissible").alert('close');
        });
    </script>
  </body>
</html>
