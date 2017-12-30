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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="AddAdmin_User.css" rel="stylesheet" type="text/css">
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
					<li><a href="#">Các bài thi</a></li>
					<li><a href="tailieu.jsp">Tài liệu</a></li>
					<li><a href="Hotro.jsp">Hỗ trợ</a></li>
				</ul>
            <ul class="nav navbar-nav navbar-right">
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
                    <img src="logo1.png" height="420px" width="1150px"/>
                    <img src="toic.jpg" height="420px" width="1150px"/>
                </div>
            </div>
            <br>
        </div>
        <hr>
    </div>
</div>

<div class="container text-center">
    <h1 style="color: #2aabd2">TRUNG TÂM LUYỆN THI TRẮC NGHIỆM ONLINE </h1>
    <br><br>
    <div class="container1">
        <br>

        <section class="features">
            <h3 class="text-center">Add Exam</h3>
            <div class="container1">
            
            
                <form action="Xuly_add_themdethi" id="mngexam" method="post">

                    <label>Tên đề<input type="text"
                                          class="form-control" name="nameExam"></label>                   
                    <label>Ngày thi <input type="text" class="form-control datepicker"
                                           id="datetimepicker" name="timeTest">
                    </label>
                     <label>Số lượng câu hỏi <input type="text" class="form-control datepicker"
                                           id="numbers" name="numbers">
                    </label>
                   

                    
                    <label>Lớp</label>
                    <select name="class"
                            style="width: 100px; font-size: 14pt; color: black;">

                        <option value="1">TOEIC1</option>
                        <option value="2">TOEIC2</option>
                        <option value="3">TOEIC3</option>
                        <option value="4">TOEIC4</option>


                    </select>
                   
 					<button type="submit" id="btnCreate">Tạo đề</button>

                   

                </form>
               
            </div>
        </section>
        <div></div>
        <div></div>


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

</div>
</body>
</html>