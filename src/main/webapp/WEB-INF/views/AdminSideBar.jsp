
	<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="assets/images/faces/face1.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">${user.firstName}</span>
                  <span class="text-secondary text-small">Admin</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="index.html">
                <span class="menu-title">Admin Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">List</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>	
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="listroles"> Roles</a></li>
                  <li class="nav-item"> <a class="nav-link" href="getallpg">PG</a></li>
                  <li class="nav-item"> <a class="nav-link" href="getallusers">Users</a></li>
                   <li class="nav-item"> <a class="nav-link" href="listamenity"> Amenity</a></li>
                   <li class="nav-item"> <a class="nav-link" href="listplans">Subscription Plans</a></li>
                <li class="nav-item"> <a class="nav-link" href="listtransactiondetail"> Transaction Detail</a></li>
                <li class="nav-item"> <a class="nav-link" href="listsubscribedusers">Subscribed Users Detail</a></li>
               	  
              <li class="nav-item"> <a class="nav-link" href="getallpgrate"> PG Rate</a></li>
       	  	   <li class="nav-item"> <a class="nav-link" href="getallfeedback"> Feedback</a></li>
                <li class="nav-item"> <a class="nav-link" href="listbookeduser">Booked Pg Information </a></li>
               	  <li class="nav-item"> <a class="nav-link" href="listtransaction"> Transaction </a></li>
               	 
                   <li class="nav-item"> <a class="nav-link" href="listtransactiondetail"> Transaction Detail </a></li>
               	  
                  
                </ul>
              </div>
            </li>
           	<li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="true" aria-controls="general-pages">
                <span class="menu-title">Report</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
              <div class="collapse show" id="general-pages" style="">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="getallpg">PG</a></li>
                  <li class="nav-item"> <a class="nav-link" href="getallusers">User</a></li>
                </ul>
              </div>
            </li>	 
            <li class="nav-item"> 
              <a class="nav-link" href="pages/forms/basic_elements.html">
                <span class="menu-title">Forms</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Tables</span>
                <i class="mdi mdi-table-large menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item sidebar-actions">
              <span class="nav-link">
                <div class="border-bottom">
                  <h6 class="font-weight-normal mb-3">Projects</h6>
                </div>
                <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
                <div class="mt-4">
                  <div class="border-bottom">
                  </div>
                  <ul class="gradient-bullet-list mt-4">
                  </ul>
                </div>
              </span>
            </li>
          </ul>
        </nav>