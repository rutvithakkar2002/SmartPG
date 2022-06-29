
	<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="${user.imgurl}" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">${user.firstName}</span>
                  <span class="text-secondary text-small">PG Owner</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="pgownerdashboard">
                <span class="menu-title">PGOwner Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            
            
             <li class="nav-item"> <a class="nav-link" href="OfferPage"> Offers</a></li>
            
          
            
             <li class="nav-item"> <a class="nav-link" href="pgownernewpg">Register pg</a></li>
            
            
             <li class="nav-item"> <a class="nav-link" href="edituserprofile?userId=${user.userId}"> Manage Profile</a></li>
                  <li class="nav-item"> <a class="nav-link" href="managePG">Manage PG</a></li>
													
            	
            
    
            
         
          </ul>
        </nav>