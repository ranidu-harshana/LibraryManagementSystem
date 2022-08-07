<%@page import="Models.BookUsers"%>
<%@page import="java.util.List"%>
<%@page import="Models.Books"%>
<div class="col-md-3 mb-2">
              <div class="card sidePanel">
                <div class="card-body">
                    <div class="d-none d-md-block">	
                        <span class="d-block p-2 text-white" style="background-color:#4997fe;"><i class="fas fa-tachometer-alt pr-2"></i> Dashboard</span>
  
                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/index.jsp" class="text-dark text-decoration-none">Profile</a></span>
  
                        <span class="d-block p-2 hmT2 mt-2"><a href="http://localhost:8080/LibraryManagementSystem/Student/all_books.jsp" class="text-dark text-decoration-none"> Search Book</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/borrowed_books.jsp" class="text-dark text-decoration-none">Borrowed Books 
                                <%
                                    Object userss = session.getAttribute("user_id");
                                    List<Books> bookss = BookUsers.all_borrowed_books(userss.hashCode());
                                    if (bookss.size() > 0) {
                                        out.println("<span class='badge badge-pill badge-danger'>1</span>");
                                    }
                                %>
                                
                            </a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/books_history.jsp" class="text-dark text-decoration-none">Book History</a></span>

                        <span class="d-block p-2 hmT2 mt-2"><a href="http://localhost:8080/LibraryManagementSystem/Student/change_password.jsp" class="text-dark text-decoration-none"> Change Password</a></span>

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
  
                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/index.jsp" class="text-dark text-decoration-none">Profile</a></span>
  
                        <span class="d-block p-2 hmT2 mt-2"><a href="http://localhost:8080/LibraryManagementSystem/Student/all_books.jsp" class="text-dark text-decoration-none"> Search Book</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/borrowed_books.jsp" class="text-dark text-decoration-none">Borrowed Books</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/books_history.jsp" class="text-dark text-decoration-none">Book History</a></span>

                        <span class="d-block p-2 mt-2 hmT2"><a href="http://localhost:8080/LibraryManagementSystem/Student/change_password.jsp" class="text-dark text-decoration-none">Change Password</a></span>

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