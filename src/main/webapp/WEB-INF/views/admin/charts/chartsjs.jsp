<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | ChartJS 시설</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/admin/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
    <!-- 차트 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

    <%@ include file="../../admin/common/adminNavbar.jsp" %>
    <%@ include file="../../admin/common/adminSidebar.jsp" %>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>ChartJS</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">ChartJS</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <!-- DONUT CHART -->
                        <div class="card card-danger">
                            <div class="card-header">
                                <h3 class="card-title">시설 별 등록 갯수</h3>
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
                                <canvas id="agencyPiechart" width="250" height="250"></canvas>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.col (LEFT) -->
                        <div class="col-md-6">

                        </div>
                        <!-- /.col (RIGHT) -->
                    </div>
                    <!-- /.row -->
                </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.2.0
        </div>
        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Add Content Here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/admin/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE App -->
<script src="/admin/dist/js/adminlte.min.js"></script>
<!-- Page specific script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
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

    let ctx1 = document.getElementById('agencyPiechart').getContext('2d');
    new Chart(ctx1, {
        type: 'pie',
        data: data
    });
</script>

</body>
</html>
