<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>                                                                        

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="/admin/indexAdmin" class="nav-link" id="dashboard">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard              
              </p>
            </a>
          </li>
          
          <li class="nav-item" id="charts">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Charts
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/chartsjs" class="nav-link" id="chartsjs">
                  <i class="far fa-circle nav-icon"></i>
                  <p>ChartJS</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/flot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Flot</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/inline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inline</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/uplot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>uPlot</p>
                </a>
              </li>
            </ul>
          </li>
          
        <li class="nav-item">
            <a href="/admin/adminMember" class="nav-link" id="member">
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
                <a href="/admin/report/adminRpReview" class="nav-link" id="review">
                  <i class="far fa-circle nav-icon"></i>
                  <p>리뷰</p>
                </a>
              </li>
              <li class="nav-item" >
                <a href="/admin/report/adminRpComment" class="nav-link" id="comment">
                  <i class="far fa-circle nav-icon"></i>
                  <p>댓글</p>
                </a>
              </li>
              <li class="nav-item" >
                <a href="/admin/report/adminRpBoard" class="nav-link" id="board">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시글</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/report/adminBlacklist" class="nav-link" id="blacklist">
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
                <a href="/admin/facilities/adminShelter" class="nav-link" id="shelter">
                  <i class="far fa-circle nav-icon"></i>
                  <p>보호소</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/facilities/adminHospital" class="nav-link" id="hospital">
                  <i class="far fa-circle nav-icon"></i>
                  <p>동물병원</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/facilities/adminHotel" class="nav-link" id="hotel">
                  <i class="far fa-circle nav-icon"></i>
                  <p>애견호텔</p>
                </a>
              </li>            
              <li class="nav-item">
                <a href="/admin/facilities/adminFuneralhall" class="nav-link" id="funeralhall">
                  <i class="far fa-circle nav-icon"></i>
                  <p>장례식장</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/facilities/adminCafe" class="nav-link" id="cafe">
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
                <a href="/admin/communities/adminDaily" class="nav-link" id="daily">
                  <i class="far fa-circle nav-icon"></i>
                  <p>일상공유</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>자원봉사</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/editors.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>가정분양</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>물품나눔</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>행사</p>
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
          
           <li class="nav-item">
            <a href="pages/gallery.html" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                이벤트관리
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  