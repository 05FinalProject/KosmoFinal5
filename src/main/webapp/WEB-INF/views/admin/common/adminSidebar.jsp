<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>                                                                        

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin" class="brand-link">
	    <div style="text-align : center;">
	    	<img alt="AdminLogo" src="/admin/dist/img/adminLogo.png" >
	    </div>
      <!-- <img src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> -->
      <span class="brand-text font-weight-light"></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="/admin" class="nav-link" id="dashboard">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          
        <li class="nav-item">
            <a href="adminUser" class="nav-link" id="user">
              <i class="nav-icon fa-solid fa-user"></i>
              <p>
                회원관리
              </p>
            </a>
          </li>
          
        <li class="nav-item" id="report">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-ban"></i>
              <p>
                신고관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item" >
                <a href="adminReview" class="nav-link" id="review">
                  <i class="far fa-circle nav-icon"></i>
                  <p>리뷰</p>
                </a>
              </li>
              <li class="nav-item" >
                <a href="adminComment" class="nav-link" id="comment">
                  <i class="far fa-circle nav-icon"></i>
                  <p>댓글</p>
                </a>
              </li>
              <li class="nav-item" >
                <a href="adminCommunity" class="nav-link" id="community">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시글</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adminBlacklist" class="nav-link" id="blacklist">
                  <i class="far fa-circle nav-icon"></i>
                  <p>블랙리스트</p>
                </a>
              </li>
            </ul>
          </li>
          
          <li class="nav-item" id="facilities">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-house"></i>
              <p>
                시설/정보관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">      
              <li class="nav-item">
                <a href="adminAddFacilities" class="nav-link" id="addFacilities">
                  <i class="far fa-circle nav-icon"></i>
                  <p>시설등록</p>
                </a>
              </li>     
              <li class="nav-item">
                <a href="adminShelter" class="nav-link" id="shelter">
                  <i class="far fa-circle nav-icon"></i>
                  <p>보호소</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adminHospital" class="nav-link" id="hospital">
                  <i class="far fa-circle nav-icon"></i>
                  <p>동물병원</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adminHotel" class="nav-link" id="hotel">
                  <i class="far fa-circle nav-icon"></i>
                  <p>애견호텔</p>
                </a>
              </li>            
              <li class="nav-item">
                <a href="adminFuneralhall" class="nav-link" id="funeralhall">
                  <i class="far fa-circle nav-icon"></i>
                  <p>장례식장</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adminCafe" class="nav-link" id="cafe">
                  <i class="far fa-circle nav-icon"></i>
                  <p>애견카페</p>
                </a>
                </li>
                </ul>
              </li>
                    
            <li class="nav-item" id="communities">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-comment-dots"></i>
              <p>
                커뮤니티관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="adminDaily" class="nav-link" id="daily">
                  <i class="far fa-circle nav-icon"></i>
                  <p>일상공유</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>산책로</p>
                </a>
              </li>                         
            </ul>
          </li>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>