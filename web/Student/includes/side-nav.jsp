<div class="col-md-3 mb-2">
              <div class="card sidePanel">
                <div class="card-body">
                    <div class="d-none d-md-block">	
  
                        <span class="d-block p-2 text-white" style="background-color:#4997fe;"><i class="fas fa-tachometer-alt pr-2"></i> Dashboard</span>
  
                        <span class="d-block p-2 mt-2 hmT2"><a href="profile.html" class="text-dark text-decoration-none">Profile</a></span>
  
                        <span class="d-block p-2 hmT2 mt-2"><a href="http://localhost:8080/LibraryManagementSystem/Student/all_books.jsp" class="text-dark text-decoration-none"> Search Book</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="bbook.html" class="text-dark text-decoration-none">Borrowed Books</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="hbbok.html" class="text-dark text-decoration-none">Book History</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="help.html" class="text-dark text-decoration-none">Help</a></span>

                        <span class="d-block p-2 mt-2 hmT2">
                            <a class="text-dark text-decoration-none" href="LogoutUser" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                Logout
                            </a>

                            <form id="logout-form" action="http://localhost:8080/LibraryManagementSystem/LogoutUser" method="POST" class="d-none">

                            </form>
                        </span>
                    </div>
  
                    <div class="dropdown text-center d-md-none">
  
                        <button class="btn btn-md dropdown-toggle text-white mb-2" style="background-color: #4997fe; width: 100%;" type="button" id="dropdownMenuButton" data-toggle="dropdown" ><i class="fas fa-tachometer-alt pr-2"></i> Dashboard</button>
  
                        <div class="dropdown-menu text-center w-100" aria-labelledby="dropdownMenuButton">
  
                        <span class="d-block p-2 mt-2 hmT2"><a href="profile.html" class="text-dark text-decoration-none">Profile</a></span>
  
                        <span class="d-block p-2 hmT2 mt-2"><a href="search.html" class="text-dark text-decoration-none"> Search Book</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="bbook.html" class="text-dark text-decoration-none">Borrowed Books</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="hbbok.html" class="text-dark text-decoration-none">Book History</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="help.html" class="text-dark text-decoration-none">Help</a></span>

                        <span class="d-block p-2 mt-2 hmT2">
                            <a class="text-dark text-decoration-none" href="LogoutUser" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                Logout
                            </a>

                            <form id="logout-form" action="../LogoutUser" method="POST" class="d-none">

                            </form>
                        </span>
                        
                        
                      </div>
                    </div>
                </div>
                </div>
              </div>