<%@page import="Models.Users"%>
<%@include  file="includes/header.jsp" %>
    <!-- ######  Navigation Bar ########## -->
    <%@include  file="includes/top-nav.jsp" %> 
    <!-- ######  Navigation Bar End ###### -->


    <div class="mt-5"></div> <!-- Space after the navigation bar -->
    
    <%
        Object user_id = session.getAttribute("user_id");
        Users user = Users.find(user_id.hashCode());
        
    %>

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
                          <% if (session.getAttribute("user-edited") != null) { %>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                ${sessionScope['user-edited']}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <% session.removeAttribute("user-edited"); } %>
                          <form method="POST" action="../UpdateUser">
                              <% out.println("<input type='hidden' value='"+user.getId()+"' name='user_id'/>"); %>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <label class="labels">First Name</label>
                                        <% out.println("<input type='text' class='form-control' value='"+user.getFname()+"' name='fname'>"); %>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="labels">Last Name</label>
                                        <% out.println("<input type='text' class='form-control' value='"+user.getLname()+"' name='lname'>"); %>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">Email</label>
                                        <% out.println("<input type='text' class='form-control' value='"+user.getEmail()+"' disabled>"); %>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">Address</label>
                                        <% out.println("<input type='address' class='form-control' value='"+user.getAddress()+"' name='address'>"); %>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">DOB</label>
                                        <% out.println("<input type='date' class='form-control' value='"+user.getDob()+"' name='dob'>"); %>
                                    </div>

                                    <div class="col-md-12 mt-2">
                                        <label class="labels">NIC</label>
                                        <% out.println("<input type='text' class='form-control' value='"+user.getNic()+"' name='nic'>"); %>
                                    </div>
                                    
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">Mob No</label>
                                        <% out.println("<input type='text' class='form-control' value='"+user.getMobno()+"' name='mobno'>"); %>
                                    </div>
                                    
                                </div>

                                <div class="mt-4 ">
                                    <button class="btn profile-button text-white" type="submit" style="background-color:#2f98ef;">Save Profile</button>
                                </div>
                          </form>
                      </div> 
                  </div>         
              </div>
          </div>
      </div>
  </section>
    
<%@include  file="includes/footer.jsp" %> 