<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <title>Trung Tâm Luyện Thi Trắc Nghiệm Online</title>
    <meta name="description" content="Đây là website luyện thi trắc nghiệm"/>
    <meta name="keywords" content="Thi online"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/Home.css">
    <link rel="stylesheet" href="css/dangnhap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="trangchu_login"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse " id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="trangchu_login">Trang chủ</a></li>
                <li><a href="gioithieu_login">Giới thiệu</a></li>
                
                <li><a href="tailieu_login">Tài liệu</a></li>
                <li><a href="hotro_login">Hỗ trợ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                 <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel" data-flickity='{"autoPlay": true}'>
                    <img src="anhtailieu/logo1.png" height="420px" width="1150px"/>
                    <img src="anhtailieu/ toic.jpg" height="420px" width="1150px"/>
                </div>
            </div>
            <br>
        </div>
        <hr>
    </div>
</div>

<div class="container text-center">
    <h2 style="color: #2aabd2" >GIỚI THIỆU VỀ TRUNG TÂM</h2>
    <h4>
        Đây là một dịch vụ mới nổi trong lĩnh vực thi trắc nghiệm trực tuyến và đang được phổ biến rất nhanh chóng.
        <br>
        Dịch vụ với đầy đủ tính năng giúp giáo viên ra đề và cho học sinh thi trực tuyến.
        <br>
        Học sinh có thể làm bài trên máy tính hoặc điện thoại thông minh, làm bài tại phòng máy, trên lớp hoặc ở nhà.
        <br>
        Đăng ký và thi ngay tại website tại
        <a href="dang-ky.html"> đây</a>
    </h4>
    <br>
    <div class="row">

    </div>
    <hr>
</div>

<br>

<footer class="container-fluid text-center">
    <p>
        <span class="glyphicon glyphicon-map-marker"> Địa chỉ: Số 1 - Võ Văn Ngân - TP.Hồ Chí Minh</span>
    </p>
    <p>
        <span class="glyphicon glyphicon-phone"> Điện thoại: (0933) 37596358 </span>
    </p>
    <p>
        <span class="glyphicon glyphicon-envelope"> Email tttn@gmail.com</span>
    </p>
</footer>
<script src="jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<div id="id01" class="modal">

    <form class="modal-content animate" action="/action_page.php">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="anhtailieu/LogoC500.png" style="width: 80px" height="80px" alt="Avatar" class="avatar">
        </div>

        <div>
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required >
        </div>
        <div>
            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
        </div>
        <div>
            <button style="width: 80px; height: 50px; margin-left: 100px">Login</button>
            <input type="checkbox" checked="checked"> Remember me
        </div>

        <div  style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn" style="margin-left: 335px">
                Cancel</button>
            <span class="psw" style="padding-right: 240px">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>