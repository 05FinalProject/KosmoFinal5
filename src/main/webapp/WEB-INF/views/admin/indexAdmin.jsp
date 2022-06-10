<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>                                                                                  
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/admin/plugins/summernote/summernote-bs4.min.css">
  <script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>
  <!-- 폰트어썸 -->
  <script src="https://kit.fontawesome.com/23b331c6f8.js" crossorigin="anonymous"></script>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <%@ include file="../admin/common/adminNavbar.jsp" %>
  
  <%@ include file="../admin/common/adminSidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>${getUserTotalSize}</h3>
                <p style="font-size: 25px">총 유저수</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-users"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>${getPetTotalSize}</h3>
                <p style="font-size: 25px">반려견 등록수</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-dog"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>${getSignupCount}</h3>

                <p style="font-size: 25px">오늘 등록된 회원가입 수</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-user-plus"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>${getCommunityTotalSize}</h3>
                <p style="font-size: 25px">게시글 등록 수</p>
              </div>
              <div class="icon">
                <i class="fa-solid fa-square-pen"></i>
              </div>
            </div>
          </div>

          <!-- ./col -->
        </div>
        <!-- Main content -->
        <section class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6">
                <!-- DONUT CHART -->
                <div class="card card-danger">
                  <div class="card-header">
                    <h3 class="card-title" style="font-size: 20px">시설 별 등록 갯수</h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool"
                              data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="chartjs-size-monitor">
                      <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                      </div>
                      <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                      </div>
                    </div>
                    <canvas id="agencyDonutchart" width="250" height="250"></canvas>
                  </div>
                  <!-- /.card-body -->
                </div>
              </div>
              <!-- END DONUT CHART-->
              <!-- /.col (LEFT) -->

              <!-- /.col (RIGHT) -->
              <div class="col-md-6">
                <div class="card card-danger">
                  <div class="card-header">
                    <h3 class="card-title" style="font-size: 20px">월별 회원가입수</h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool"
                              data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="chartjs-size-monitor">
                      <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                      </div>
                      <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                      </div>
                    </div>
                    <canvas id="userBarchart" width="250" height="250"></canvas>
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- END BAR CHART-->
              </div>
              <!-- /.col (RIGHT) -->
            </div>
            <!-- /.row -->
          </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
      </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
          </section>
          <!-- /.Left col -->
        </div>
      </div>
    <!-- /.content -->
  <!-- /.content-wrapper -->
  <%@ include file="../admin/common/adminFooter.jsp" %>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
  
  
</script>
<!-- Bootstrap 4 -->
<script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/admin/plugins/moment/moment.min.js"></script>
<script src="/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/admin/dist/js/pages/dashboard.js"></script>
<script type="text/javascript">
$('#dashboard').addClass('active')
</script>

<script>
  function colorize() {
    let r = Math.floor(Math.random() * 200);
    let g = Math.floor(Math.random() * 200);
    let b = Math.floor(Math.random() * 200);
    let color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
    return color;
  }

  let jsonDataAgency = ${agency};
  let jsonObjectAgency = JSON.stringify(jsonDataAgency);
  let jDataAgency = JSON.parse(jsonObjectAgency);
  console.log(jDataAgency);
  let labelListAgency = []; // 배열생성
  let valueListAgency = [];
  let colorList = [];

  for (let i = 0; i < jDataAgency.length; i++) {
    let dAgency = jDataAgency[i];
    if(dAgency.agencyCategoryNum == 1){
      dAgency.agencyCategoryNum="애견호텔";
    }else if(dAgency.agencyCategoryNum == 2){
      dAgency.agencyCategoryNum="애견카페";
    }else if(dAgency.agencyCategoryNum == 3){
      dAgency.agencyCategoryNum="동물병원";
    }else if(dAgency.agencyCategoryNum == 5){
      dAgency.agencyCategoryNum="장례식장";
    }

    labelListAgency.push(dAgency.agencyCategoryNum);
    valueListAgency.push(dAgency.agencyChartCount);
    colorList.push(colorize());
  }
  //dAgency.agencyCategoryNum가 1이면 동물호텔로 이름 변경

  let data = {
    labels: labelListAgency,
    datasets: [{
      backgroundColor: colorList,
      data: valueListAgency
    }],
  };

  let ctx1 = document.getElementById('agencyDonutchart').getContext('2d');
  new Chart(ctx1, {
    type: 'doughnut',
    data: data
  });

  //**************바 차트***********************
  let jsonDataUser = ${userSignup};
  let jsonObjectUser = JSON.stringify(jsonDataUser);
  let jDataUser = JSON.parse(jsonObjectUser);
  console.log(jDataUser);
  let labelListUser = []; // 배열생성
  let valueListUser = [];
  let colorList2 = [];

  for (let i = 0; i < jDataUser.length; i++) {
    let dUser = jDataUser[i];

    labelListUser.push(dUser.userSignupMonth);
    valueListUser.push(dUser.userSignupNum);
    colorList2.push(colorize());
  }

  let data2 = {
    labels: labelListUser,
    datasets: [{
      backgroundColor: colorList2,
      data: valueListUser
    }],
  };

  let ctx2 = document.getElementById('userBarchart').getContext('2d');
  new Chart(ctx2, {
    type: 'bar',
    data: data2
  });
</script>
</body>
</html>