<div class="col-2 bg-primary sidenav">
          <div class="navbar-brand">
            <img src="http://localhost:8080/LibraryManagementSystem/assets/img/logo.png" class="w-100" alt="" />
          </div>
          <h5 class="my-2 bg-light p-2 text-primary" style="border-radius: 5px">
            <i class="fa fa-tachometer-alt px-2"></i> Admin Dashboard
          </h5>

          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link mt-4 mb-1 text-white" href="http://localhost:8080/LibraryManagementSystem/Admin/index.jsp">Home</a>
            </li>
            <li class="nav-item mb-1">
              <div class="dropdown-btn1 nav-link text-white dropdownBack"> Books
                <i class="fa fa-caret-down"></i>
              </div>
              <div class="dropdown-container">
                <a class="nav-link text-white" href="http://localhost:8080/LibraryManagementSystem/Admin/all_books.jsp" >All Books</a>
                <a class="nav-link text-white" href="http://localhost:8080/LibraryManagementSystem/Admin/register_book.jsp">Register Book</a>
                <a class="nav-link text-white" href="book_issued.html">Issued Books</a>
                <a class="nav-link text-white" href="book_returned.html">Returned Books</a>
              </div>
            </li>
            <li class="nav-item">
              <div class="dropdown-btn2 nav-link text-white dropdownBack">
                Users <i class="fa fa-caret-down"></i>
              </div>
              <div class="dropdown-container">
                <a class="nav-link text-white" href="http://localhost:8080/LibraryManagementSystem/Admin/register_user.jsp" >Register User</a>
                <a class="nav-link text-white" href="http://localhost:8080/LibraryManagementSystem/Admin/all_users.jsp">All Users</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link mt-1 mb-1 text-white" href="settings.jsp?${sessionScope['user_id']}">Settings</a>
            </li>
           
            <li class="nav-item">
                <a class="nav-link mb-1 text-white" href="LogoutUser" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    Logout
                </a>

                <form id="logout-form" action="http://localhost:8080/LibraryManagementSystem/LogoutUser" method="POST" class="d-none">
                    
                </form>
            </li>
            
            
            
          </ul>
        </div>