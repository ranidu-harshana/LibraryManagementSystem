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
                      <div class="p-3 py-3">
                          <div class="d-flex justify-content-between align-items-center mb-3">
                              <h4 class="text-right">Change Password</h4>
                          </div>
                          <% if (session.getAttribute("edit_pass") != null) { %>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                ${sessionScope['edit_pass']}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <% session.removeAttribute("edit_passf"); } %>
                            
                            <% if (session.getAttribute("edit_passf") != null) { %>
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                ${sessionScope['edit_passf']}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <% session.removeAttribute("edit_passf"); } %>
                            
                          <form method="POST" action="../StudentChangePassword">
                              <% out.println("<input type='hidden' value='"+user.getId()+"' name='user_id'/>"); %>
                                
                                <div class="row">
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">Current Password</label>
                                        <% out.println("<input type='password' class='form-control' placeholder='Current Password' name='current_pass'>"); %>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">New Password</label>
                                        <% out.println("<input type='password' class='form-control' placeholder='New Password' name='new_pass'>"); %>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <label class="labels">Repeat Password</label>
                                        <% out.println("<input type='password' class='form-control' placeholder='Repeat Password' name='repeat_pass'>"); %>
                                    </div>
                                </div>

                                <div class="mt-4 ">
                                    <button class="btn profile-button text-white" type="submit" style="background-color:#2f98ef;">Save</button>
                                </div>
                          </form>
                      </div> 
                  </div>         
              </div>
          </div>
      </div>
  </section>
    
<%@include  file="includes/footer.jsp" %> 