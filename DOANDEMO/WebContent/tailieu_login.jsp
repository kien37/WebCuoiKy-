<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<script src="js/bootstrap.js"></script>
<html>
<head>
    <title>Trung Tâm Luyện Thi Trắc Nghiệm Online</title>
    <meta name="description" content="Đây là website luyện thi trắc nghiệm"/>
    <meta name="keywords" content="Thi online"/>
    <meta charset="utf-8"/>
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

<div class="container text-center">
    <h1 style="color: #2aabd2">TÀI LIỆU </h1>
    <br>
    <div class="row">
        <div class="col-sm-4">
                <a href="tailieu/800cautracnghiem.htm">
                                       
            <img src="anhtailieu/800.jpg" height="150" width="300"/>
            <p>800 Câu trắc nghiệm có đáp án </p>
            </a>
        </div>
        <div class="col-sm-4">
                <a href="tailieu/100cautruc.htm">
                                       
            <img src="anhtailieu/cautruc.jpg" height="150" width="300"/>
            <p>100 Cấu Trúc Thường gặp </p>
            </a>
        </div>

        <div class="col-sm-4">
                <a href="tailieu/motvaidangcauhoi.htm">
                                       
            <img src="anhtailieu/cauhoi.jpg" height="150" width="300"/>
            <p>Một vài dạng câu hỏi </p>
            </a>
        </div>
        <div class="col-sm-4">
                <a href="tailieu/motsocautruc.htm">
                                       
            <img src="anhtailieu/cautruc.gif" height="150" width="300"/>
            <p>Một số cấu trúc thường gặp</p>
            </a>
        </div>
        <div class="col-sm-4">
                <a href="tailieu/500dongtu.htm">
                                       
            <img src="anhtailieu/dongtu.jpg" height="150" width="300"/>
            <p>500 Động từ phổ biến </p>
            </a>
        </div>
       <div class="col-sm-4">
                <a href="tailieu/cumdongtu.htm">
                                       
            <img src="anhtailieu/cumdongtu.jpg" height="150" width="300"/>
            <p>Một số cụm động từ thông dụng </p>
            </a>
        </div>
       <div class="col-sm-4">
               <a href="tailieu/kienthuc.htm">
                                       
            <img src="anhtailieu/kienthuc.png" height="150" width="300"/>
            <p>Tổng hợp các kiến thức cần thiết  </p>
            </a>
        </div>
       <div class="col-sm-4">
                <a href="tailieu/nguphap.htm">
                                       
            <img src="anhtailieu/grammar.jpeg" height="150" width="300"/>
            <p>Những chủ điểm ngữ pháp thường sử dụng trong bài thi toeic reading </p>
            </a>
        </div>
       <div class="col-sm-4">
                <a href="tailieu/500cauhoi.htm">
                                       
            <img src="anhtailieu/500.jpg" height="150" width="300"/>
            <p>500 Câu trắc nghiệm - CÔ MAI PHƯƠNG – NGOẠI NGỮ 24H </p>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <p> Tôi học bao nhiêu thời gian tùy thích với 16 ca học mỗi ngày vì học trực tuyến nên tôi có thể học
                    bất
                    <br>
                    cứ đâu dù đang ở nhà hay đang đi công tác. Tôi còn được luyện tập với bộ học liệu gồm hơn
                    <br>
                    5000 bài học được cập nhật liên tục từ các đầu báo hàng đầu trên thế giới. Nhờ đó vốn từ vựng của
                    tôi
                    <br>
                    đã được tăng lên rất nhanh. Bên cạnh việc luyện tập và trau dồi từ vựng, tôi còn có thể cập nhật
                    nhanh
                    <br>
                    nhất những tin tức về tài chính, kinh tế, xã hội; việc này rất có ích cho công việc hiện tại của
                    tôi.
                    <br>
                    Vừa được học tiếng Anh vừa được bổ sung kiến thức, đây thực sự là trải nghiệm rất tuyệt vời.
                    <br>
                <hr>
                Phí Ngọc Chi - CIO Gateway
                </p>
            </div>
        </div>
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
            <img src="antailieu/LogoC500.png" style="width: 80px" height="80px" alt="Avatar" class="avatar">
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
            <button style="width: 80px; height: 50px; margin-left: 100px">Login</button>
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
</html>