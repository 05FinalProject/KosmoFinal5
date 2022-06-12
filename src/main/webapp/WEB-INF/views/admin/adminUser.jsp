<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | DataTables</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/admin/plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">

    <style>
        #modelTbody{
            text-align: center;
        }

        .manage{
            display: flex;

        }
    </style>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

    <%@ include file="../admin/common/adminNavbar.jsp" %>

    <%@ include file="../admin/common/adminSidebar.jsp" %>


    <input type="hidden" id="userEmail" value="" />
    <!-- Modal -->
    <div class="modal fade" id="userModal${user.userPhone}" data-backdrop="static" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">반려견 정보</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table id="example3" class="table table-hover">
                        <thead style="text-align:center">
                            <tr>
                                <th>이름</th>
                                <th>나이</th>
                                <th>성별</th>
                                <th>견종</th>
                                <th>몸무게</th>
                                <th>중성화여부</th>
                            </tr>
                        </thead>
                        <tbody id="modelTbody">

                         </tbody>
                     </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>회원관리</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                            <li class="breadcrumb-item active">회원관리</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">회원목록</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>이메일</th>
                                        <th>이름</th>
                                        <th>전화번호</th>
                                        <th>주소</th>
                                        <th>가입날짜</th>
                                        <th style="text-align: center">관리</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${userList}" var="user">
                                        <tr>
                                            <td data-toggle="modal" data-target="#userModal" content="${user.userEmail}" class="email">${user.userEmail}</td>
                                            <td>${user.userName}</td>
                                            <td>${user.userPhone}</td>
                                            <td>${user.userAddress}</td>
                                            <td>${user.userSignup}</td>
                                            <td>
                                                <c:set var="yn" value="${user.userState}"/>
                                                <c:set var="black" value="${user.userBlack}"/>
                                                <c:choose>
                                                    <c:when test="${yn eq 'N'}">
                                                        탈퇴회원
                                                    </c:when>
                                                    <c:when test="${black eq 'Y'}">
                                                        블랙리스트
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="manage">
                                                        <form action="/deleteUser" method="post">
                                                            <input type="hidden" name="userEmail"
                                                                   value="${user.userEmail}"/>
                                                            <button id="btnDelete" type="submit" class="btn btn-outline-danger">탈퇴
                                                            </button>
                                                        </form>
                                                        <form action="/insertBlackList" method="post">
                                                            <input type="hidden" name="userEmail" value="${user.userEmail}"/>
                                                            <button id="btnBlack" type="submit" class="btn btn-outline-dark">블랙
                                                            </button>
                                                        </form>
                                                        </div>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                        </tr>

                                    </c:forEach>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
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
<!-- Bootstrap 4 -->
<script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/admin/plugins/jszip/jszip.min.js"></script>
<script src="/admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="/admin/dist/js/adminlte.min.js"></script>

<!-- Page specific script -->
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false,
            "responsive": true,
        });
    });

</script>
<script type="text/javascript">
    $('.email').click(function () {
        $('#modelTbody').empty()
        $('#userEmail').val($(this).attr('content'))
        $.ajax({
            url: '/admin/getUserPet',
            data: {userEmail: $('#userEmail').val()},
            type: 'get',
            dataType: 'json',
            success: function (data) {

                data.forEach(function(e){
                    $('#modelTbody').append(' <tr>'+
                        ' <td>'+e.petName+'</td>'+
                        '<td>'+e.petAge+'</td>'+
                        '<td>'+e.petGender+'</td>'+
                        '<td>'+e.petVariety+'</td>'+
                        '<td>'+e.petWeight+'</td>'+
                        '<td>'+e.petNeutering+'</td>'+
                        '</tr>')
                })
            }
        })
    })

    $(function () {
        $('#btnDelete').click(function() {
            let secession = confirm('회원을 탈퇴시키겠습니까?');
            if(secession == true){
                alert('탈퇴완료');
            }
            else{
               return false;
            }
        });
    })

</script>
</body>
</html>
