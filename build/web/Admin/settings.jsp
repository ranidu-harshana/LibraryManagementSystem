<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="includes/sidebar.jsp" %>
        <div class="col-6">
          <div class="card bg-light mt-5">
            <div class="p-3 py-3">
              <div
                class="d-flex justify-content-between align-items-center mb-3"
              >
                <h4 class="text-right">Profile Settings</h4>
              </div>
              <div class="row mt-2">
                <div class="col-6">
                  <label class="labels">First Name</label>
                  <input type="text" class="form-control" value="" />
                </div>
                <div class="col-6">
                  <label class="labels">Last Name</label>
                  <input type="text" class="form-control" />
                </div>
              </div>
              <div class="row">
                <div class="col-12 mt-2">
                  <label class="labels">User Name</label>
                  <input type="text" class="form-control" value="" />
                </div>
                <div class="col-12 mt-2">
                  <label class="labels">Email</label>
                  <input type="text" class="form-control" />
                </div>
                <div class="col-12 mt-2">
                  <label class="labels">Password</label>
                  <input type="password" class="form-control" />
                </div>

                <div class="col-12 mt-2">
                  <label class="labels">Mobile Number</label>
                  <input type="text" class="form-control" />
                </div>
              </div>

              <div class="mt-4">
                <button class="btn btn-success text-white" type="button">
                  Save Profile
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<%@include  file="includes/footer.jsp" %>
