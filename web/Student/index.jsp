<%@include  file="includes/header.jsp" %>
    <!-- ######  Navigation Bar ########## -->
    <%@include  file="includes/top-nav.jsp" %> 
    <!-- ######  Navigation Bar End ###### -->


    <div class="mt-5"></div> <!-- Space after the navigation bar -->


    <!-- ### BOXES ###-->
    <section id="boxes" class="py-3" style="background-color: #f3f6f9;">
      <div class="container">
          <div class="row mt-2">
              
            <%@include  file="includes/side-nav.jsp" %> 

              <div class="col-md-9" id="dprofile">
                  <div class="card bg-light">
                      <img class="rounded-circle mt-4 ml-4" width="150px" src="http://localhost:8080/LibraryManagementSystem/assets/img/pro.png">
                      <div class="p-3 py-3">
                          <div class="d-flex justify-content-between align-items-center mb-3">
                              <h4 class="text-right">Profile Settings</h4>
                          </div>
                          <div class="row mt-2">
                              <div class="col-md-6">
                                  <label class="labels">First Name</label>
                                  <input type="text" class="form-control" value="">
                              </div>
                              <div class="col-md-6">
                                  <label class="labels">Last Name</label>
                                  <input type="text" class="form-control" >
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-md-12 mt-2">
                                  <label class="labels">User Name</label>
                                  <input type="text" class="form-control" value="">
                              </div>
                              <div class="col-md-12 mt-2">
                                  <label class="labels">Email</label>
                                  <input type="text" class="form-control" >
                              </div>
                              <div class="col-md-12 mt-2">
                                  <label class="labels">University/School</label>
                                  <input type="text" class="form-control" >
                              </div>
                              
                              <div class="col-md-12 mt-2">
                                  <label class="labels">Mobile Number</label>
                                  <input type="text" class="form-control" >
                              </div>
                              <div class="col-md-12 mt-2">
                                  <label class="labels">Address</label>
                                  <input type="text" class="form-control" >
                              </div> 
                          </div>
  
                          <div class="row mt-3">
                              <div class="col-md-6">
                                  <label class="labels">Country</label>
                                  <input type="text" class="form-control" >
                              </div>
                              <div class="col-md-6">
                                  <label class="labels">State/Region</label>
                                  <input type="text" class="form-control" >
                              </div>
                          </div>
  
                          <div class="mt-4 ">
                              <button class="btn profile-button text-white" type="button" style="background-color:#2f98ef;">Save Profile</button>
                          </div>
                      </div> 
                  </div>         
              </div>
          </div>
      </div>
  </section>
    
<%@include  file="includes/footer.jsp" %> 