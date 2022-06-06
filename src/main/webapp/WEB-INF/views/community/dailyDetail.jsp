<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>너와 함개</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- 템플릿2 -->
    <!-- Links of CSS files -->
    <link rel="stylesheet" href="/community/css/bootstrap.min.css">
    <link rel="stylesheet" href="/community/css/animate.min.css">
    <link rel="stylesheet" href="/community/css/remixicon.css">
    <link rel="stylesheet" href="/community/css/flaticon.css">
    <link rel="stylesheet" href="/community/css/jquery-ui.min.css">
    <link rel="stylesheet" href="/community/css/magnific-popup.min.css">
    <link rel="stylesheet" href="/community/css/simplebar.min.css">
    <link rel="stylesheet" href="/community/css/metismenu.min.css">
    <link rel="stylesheet" href="/community/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/community/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/community/css/style.css">
    <link rel="stylesheet" href="/community/css/responsive.css">
    <script src="https://kit.fontawesome.com/23b331c6f8.js"
            crossorigin="anonymous"></script>


    <!-- <link rel="icon" type="image/png" href="/community/images/favicon.png"> -->

    <style type="text/css">
        #total {
            diplay: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            margin: 60px;
        }

        #comment-insert-btn {
            background: #f8b03a;
            color: white;
            float: right;
            border: #f8b03a;
        }

        #siren {
            background: none;
            width: 30px;
            border: none;
            float: right;
        }

        #etc {
            margin-top: 20px;
        }

        .write-comment {
            margin-top: 30px;
            float: right;
        }

        information-content {
            margin-top: 30px;
        }

        .comment-input {
            border: solid #e6e6e6;
            border-radius: 8px;
            width: 80%;
        }

        .comment-btn {
            width: 15%;
        }

        .friend-plus {
            dispaly: flex;
            flex-direction: row;
            justify-content: left;
        }

        #userProfile {
            display: flex;

        }

        #fa-user-plus {
            margin-left: 2%;
        }

        #fa-user-check {
            margin-left: 2%;
        }

        .modal {
            position: fixed;
            width: 100%;
            height: 100%;
            z-index: 1000;
            background: rgba(0, 0, 0, 0.5);
            top: 0;
            left: 0;
            display: none;
        }

        .modal_content {
            width: 28%;
            background: #fff;
            border-radius: 20px;
            position: fixed;
            top: 50%;
            left: 50%;

            text-align: center;
            box-sizing: border-box;
            padding: 74px 0;
            line-height: 30px;
            display: flex;
            position: absolute;
            transform: translate(-50%, -50%);
        }

        .btn-danger {
            background-color: white;
        }

        ul {
            list-style: none;
            padding-left: 0px;
        }

        .form-control {
            border: solid 1px !important;
            border-color: #ff8a00 !important;
            text-align: center;
        }

    </style>

</head>


<%@include file="../include/Header.jsp" %>

<body>
<div id="total">
    <form action="updateCommunity" method="post">
        <input name="communityNum" type="hidden"
               value="${community.communityNum }">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-12">
                <div class="pet-details-image">
                    <!-- 사용자가 첨부한 이미지 들어오는 자리 -->
                    <!-- <img src="../../img/emptyHeart.png"> -->
                </div>
            </div>

            <div class="col-lg-6 col-md-12">
                <div class="products-details-content">
                    <div id="userProfile" class="container">
                        <div class="item"><h3>${community.user.userNickname }</h3></div>
                        <div class="item" id="fa-user-plus"><a href="#"><i class="fa-solid fa-user-plus"></i></a></div>
                        <div class="item" id="fa-user-check"><a href="#"><i class="fa-solid fa-user-check"></i></a>
                        </div>
                    </div>
                    <hr>

                    <div>
                        <div class="communityContent">${community.communityContent }</div>
                        <div id="etc">
                            <small><span>${community.communityInsertdate }</span></small>
                            <%--<button id="siren" data-toggle="modal" data-target="#staticBackdrop">
                                <img src="../../img/siren.png">
                          </button>--%>
                            <span><img id="siren" class="siren" src="../../img/siren.png"></span>
                        </div>
                    </div>
                </div>
                <hr>

                <!-- 댓글리스트 출력 -->
                <div class="seller-information">
                    <div class="information-content">
                        <img src="/community/images/user/user-25.jpg"
                             class="rounded-circle" alt="image">
                        <h6>댓글 작성자 닉네임</h6>
                        <p>댓글 내용 출력</p>
                    </div>
                </div>
                <br/>
            </div>
        </div>
    </div>
</form>

<!-- 모달 신고창 띄우기 ************************************************* -->
<div class="modal">
    <div class="modal_content"
         title="클릭하면 창이 닫힙니다." style="padding-top: 20px;padding-bottom: 20px;">

        <div class="col-12 mt-4 mt-lg-0">

            <button type="button" class="close">
                <span aria-hidden="true">×</span>
                <span class="sr-only">Close</span>
            </button>

            <h4>게시글 신고하기</h4>

            <div class="widget-sidebar pet-sidebar">
                <div class="padding-6">
                    <div class="gen-after-report">
                        <div class="gen-extra-report">
                            <ul>
                                <li>
                                    <div style="float: left">작성자 : ${community.user.userEmail }</div>
                                    <div style="float: left">작성자 : ${community.user.userEmail }</div>
                                </li>
                                <br>
                                <li>
                                    <div style="float: left; height: 150px;">내용 : ${community.communityContent}</div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div id="water">
                    <form action="/community/reportCommunity" method="post">
                        <input type="hidden" name="communityNum" value="${community.communityNum}">
                        <input type="text" name="userEmail" value="${community.user.userEmail}">
                        <div class="form-group">
                            <select name="rReason" class="form-control">
                                <option value="0">신고 사유 선택</option>
                                <option value="게시글 도배">게시글 도배</option>
                                <option value="욕설/비방">욕설/비방</option>
                                <option value="음란성">음란성</option>
                                <option value="광고/홍보성">광고/홍보성</option>
                                <option value="개인정보 유출">개인정보 유출</option>
                                <option value="저작권 불법 도용">저작권 불법 도용</option>
                                <option value="기타">기타</option>
                            </select>
                        </div>
                        <button type="submit" id="btn1" class="btn btn-primary btn-block font-weight-bold text-uppercase">
                        신고하기
                    </button>
                </form>
                </div>
            </div>



        </div>
    </div>
</div>

<!-- 모달창 테이블 끝 ******************************************************** -->

<!-- 댓글 입력창 -->
<!-- 		<div class="">
    <form action="">
        <div class="col-md-6 row write-comment">
            <label>댓글</label>
            <div class="comment-input">
                <input type="text" class="form-control" placeholder="댓글을 입력해주세요">
            </div>
            <div class="comment-btn">
                <button type="submit" class="btn btn-primary"
                    id="comment-insert-btn">등록</button>
            </div>
        </div>
    </form>
</div> -->
<form class="mt-5">
    <div class="input-group input-group-lg">
        <input type="email"
               class="form-control bg-transparent border-primary text-white text-uppercase"
               placeholder="댓글을 입력해주세요." aria-label="Email"
               aria-describedby="subscribe">
        <div class="input-group-append">
            <button type="submit" id="subscribe"
                    class="btn btn-primary text-uppercase font-weight-bold">
                <span class="d-none d-sm-inline">등록</span> <i
                    class="fas fa-paper-plane d-inline d-sm-none"></i>
            </button>
        </div>
    </div>
</form>
</div>


<%@include file="../include/Footer.jsp" %>

</body>

<script type="text/javascript">
    $(".siren").click(function () {
        $(".modal").fadeIn();
    });

    $(".close").click(function () {
        $(".modal").fadeOut();
    });

</script>

<!-- 템플릿2 -->
<!-- Links of JS files -->
<script src="/community/js/jquery.min.js"></script>
<script src="/community/js/bootstrap.bundle.min.js"></script>
<script src="/community/js/jquery.magnific-popup.min.js"></script>
<script src="/community/js/jquery-ui.min.js"></script>
<script src="/community/js/simplebar.min.js"></script>
<script src="/community/js/metismenu.min.js"></script>
<script src="/community/js/owl.carousel.min.js"></script>
<script src="/community/js/wow.min.js"></script>
<script src="/community/js/main.js"></script>

</html>