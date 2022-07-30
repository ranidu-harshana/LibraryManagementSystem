<%@include  file="includes/header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@include  file="../includes/sidebar.jsp" %>
        <div class="col-10">
          <div class="container">
            <div class="card card-registration mt-5">
                <% if (session.getAttribute("user-registerd") != null) { %>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        ${sessionScope['user-registerd']}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <% session.removeAttribute("user-registerd"); } %>
              <div class="row">
                <div class="col-6 text-right mt-5">
                  <img src="http://localhost:8080/LibraryManagementSystem/assets/img/adduser.png" alt="Add Book" class="w-75" />
                </div>
                <div class="col-6">
                  <div class="card-body text-black">
                    <h3 class="mb-4 text-uppercase text-center">
                      User registration form
                    </h3>
                <form action="../RegisterUser" method="POST"  autocomplete="off">
                    <div class="row">
                        
                      <div class="col-6 mb-3">
                        <div class="form-outline">
                          <input
                            type="text"
                            name="fname"
                            class="form-control"
                            placeholder=" First Name"
                          />
                        </div>
                      </div>
                      <div class="col-6 mb-3">
                        <div class="form-outline">
                          <input
                            type="text"
                            name="lname"
                            class="form-control"
                            placeholder="Last Name"
                          />
                        </div>
                      </div>
                    </div>

                    <div class="form-outline mb-3">
                      <input
                        type="text"
                        name="address"
                        class="form-control"
                        placeholder="Address"
                      />
                    </div>

<!--                    <div class="form-outline mb-3">
                      <input
                        type="text"
                        id="occupation"
                        class="form-control"
                        placeholder="Occupation"
                      />
                    </div>-->

                    <div class="form-outline mb-3">
                      <label for="gender" class="align-top">Gender : </label>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input ml-2"
                          type="radio"
                          name="gender"
                          id="inlineRadio1"
                          value="1"
                        />
                        <label class="form-check-label" for="inlineRadio1"
                          >Male</label
                        >
                      </div>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="radio"
                          name="gender"
                          id="inlineRadio2"
                          value="0"
                        />
                        <label class="form-check-label" for="inlineRadio2"
                          >Female</label
                        >
                      </div>
                    </div>

                    <div class="form-outline mb-3">
                      <div class="row">
                        <span class="ml-3 mt-2"> Date of Birth : </span>
                        <input
                          type="date"
                          name="dob"
                          style="width: 69%"
                          class="form-control ml-2"
                        />
                      </div>
                    </div>

                    <div class="form-outline mb-3">
                      <input
                        type="text"
                        name="nic"
                        class="form-control"
                        placeholder="NIC Number"
                      />
                    </div>

                    <div class="form-outline mb-3">
                      <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Email"
                      />
                    </div>

                    <div class="form-outline mb-3">
                      <input
                        type="text"
                        name="mobno"
                        class="form-control"
                        placeholder="Mobile Number"
                      />
                    </div>

<!--                    <div class="form-outline mb-3">
                      <input
                        type="text"
                        id="mob_number"
                        class="form-control"
                        placeholder="Telephone Number"
                      />
                    </div>-->

                    <div class="d-flex justify-content-end">
                      <button type="button" class="btn btn-danger mr-2 px-3">
                        Clear
                      </button>
                      <button type="submit" class="btn btn-warning px-4">
                        Add
                      </button>
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

<%@include  file="../includes/footer.jsp" %>