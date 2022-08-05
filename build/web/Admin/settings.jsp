<%@page import="Models.User"%>
<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>
        <% 
            Object userr = session.getAttribute("user_id");
            User user = User.findById(userr.hashCode());
         %>
        <div class="col-6">
          <div class="card bg-light mt-5">
            <div class="p-3 py-3">
              <div
                class="d-flex justify-content-between align-items-center mb-3"
              >
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
                <form action="../UpdateUser" method="POST">
                    <% out.println("<input type='hidden' value='"+user.getId()+"' name='user_id'/>"); %>
                    <div class="row mt-2">
                      <div class="col-6">
                        <label class="labels">First Name</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getFname()+"' name='fname'/>"); %>
                      </div>
                      <div class="col-6">
                        <label class="labels">Last Name</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getLname()+"' name='lname'/>"); %>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 mt-2">
                        <label class="labels">Address</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getAddress()+"' name='address'>"); %>
                      </div>
                      <div class="col-12 mt-2">
                        <label class="labels">Email</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getEmail()+"' disabled/>"); %>
                      </div>

                      <div class="col-12 mt-2">
                        <label class="labels">DOB</label>
                        <% out.println("<input type='date' class='form-control' value='"+user.getDob()+"' name='dob'>"); %>
                      </div>

                      <div class="col-12 mt-2">
                        <label class="labels">NIC</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getNic()+"' name='nic'>"); %>
                      </div>

                      <div class="col-12 mt-2">
                        <label class="labels">Mobile Number</label>
                        <% out.println("<input type='text' class='form-control' value='"+user.getMobno()+"' name='mobno'>"); %>
                      </div>
                    </div>

                    <div class="mt-4">
                      <button class="btn btn-success text-white" type="submit">
                        Save Profile
                      </button>
                    </div>
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>

<%@include  file="includes/footer.jsp" %>
