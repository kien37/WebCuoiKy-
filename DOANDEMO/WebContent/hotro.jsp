<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <title>Hỗ trợ</title>
    <meta name="description" content="Đây là website luyện thi trắc nghiệm"/>
    <meta name="keywords" content="Thi online"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/Home.css">
    <link rel="stylesheet" href="css/hotro.css">
    <link rel="stylesheet" href="css/dangnhap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="giaodien.html"><span class="glyphicon glyphicon-home"></span></a>
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
        </div>
        <hr>
    </div>
</div>

<div class="row">
    <div class="container text-center">
        <h2 style="color: #2aabd2">TRUNG TÂM LUYỆN THI TRẮC NGHIỆM ONLINE</h2>
        <h4>
            Thắc mắc mọi vấn đề của bạn có thể được liên hệ tới trung tâm
            <br>
            bạn có thể gửi ý kiến của bạn vào biểu mẫu dưới để chúng tôi có
            <br>
            thể gửi trả phản hồi cho bạn một cách nhanh nhất!!!!
            <br>
        </h4>
    </div>
</div>
<hr>
<div class="container" class="row">

    <form>
        <div class="col-sm-12 from group">
            <input class="from-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <textarea class="form-control" id="comment" name="comment" placeholder="Comment" rows="5"></textarea>
    </form>

    <div class="col-sm-12" >
        <input type="submit" name="btnSend" value="Send"/>
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
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <div id="id01" class="modal">

    <form class="modal-content animate" action="login" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="anhtailieu/LogoC500.png" style="width: 80px" height="80px" alt="Avatar" class="avatar">
        </div>
		<div>
			<label class="radiobox">Học Viên
	  			<input type="radio" checked="checked" name="radio" value="1">
	  			<span class="checkmark"></span>
			</label>
			<label class="radiobox">Giáo Viên
	  			<input type="radio" name="radio" value="2">
	  			<span class="checkmark"></span>
			</label>
			<label class="radiobox">Admin
	  			<input type="radio" name="radio" value="3">
	  			<span class="checkmark"></span>
			</label>
		</div>
        <div>
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
        </div>
        <div>
            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
        </div>
        <div>
            <button type=submit style="width: 80px; height: 50px; margin-left: 100px">Login</button>
            <input type="checkbox" checked="checked"> Remember me
        </div>

        <div style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"
                    style="margin-left: 335px">
                Cancel
            </button>
            <span class="psw" style="padding-right: 240px">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('id01');
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>