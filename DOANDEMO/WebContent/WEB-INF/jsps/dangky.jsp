<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta name="description" content="Đăng ký" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/Home.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/dangnhap.css"/>
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
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse " id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">Trang chủ</a></li>
                <li><a href="gioithieu.jsp">Giới thiệu</a></li>
               
                <li><a href="tailieu.jsp">Tài liệu</a></li>
                <li><a href="Hotro.jsp">Hỗ trợ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="dangky"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
                <li><a onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                    <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
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
                    <img src="anhtailieu/toic.jpg" height="420px" width="1150px"/>
                </div>
            </div>
            <br>

            <div style="margin-left: 900px">
                <form action="#" method="post">
                    <input type="text" name="txtSearch" placeholder=""/>
                    <input type="submit" name="btnSearch" value="Search"/>
                </form>
            </div>
        </div>
        <hr>
    </div>
</div>

<h2 style="padding-left: 500px">Đăng ký tài khoản</h2>

<form action="dangky_hocvien" style="border:1px solid #ccc" method="get">
	<center>
    <div class="container">
        <label><b>Họ Tên</b></label>
        <input type="text" placeholder="Enter Ho Ten" name="hoten" required>

        <label><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>

        <label><b>Số điện thoại</b></label>
        <input type="text" placeholder="Enter SDT" name="sdt" required>
        
        <label><b>User Name</b></label>
        <input type="text" placeholder="Enter User Name" name="uname" required>        

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <label><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
        

        <div class="clearfix">
            <button type="submit" class="signupbtn" style="width:30%">Sign Up</button>
        </div>
    </div>
    </center>
</form>
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
</body>
</html>