<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
<title>Trung Tâm Luyện Thi Trắc Nghiệm Online</title>
<meta name="description" content="Đây là website luyện thi trắc nghiệm" />
<meta name="keywords" content="Thi online" />
<meta charset="utf-8" />
<link rel="stylesheet" href="css/Home.css">
<link rel="stylesheet" href="css/AddAdmin_User.css">
<link rel="stylesheet" href="css/dangnhap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<link href="AddAdmin_User.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
        $(function () {
            $('#btnadd').click(function () {
                $('#addques')
                    .validate(
                        {
                            // Specify validation rules
                            rules: {
                                // The key name on the left side is the name attribute
                                // of an input field. Validation rules are defined
                                // on the right side
                                subid: "required",
                                quesid: "required",
                                answera: "required",
                                answerb: "required",
                                answerc: "required",
                                answerd: "required",
                                content: {
                                    required: true,
                                    minlength: 5
                                }


                            },
                            // Specify validation error messages
                            messages: {
                                mon: "Please enter subid",
                                noidung: "Please enter quesid",
                                answera: "Please enter answer",
                                answerb: "Please enter answer",
                                answerc: "Please enter answer",
                                answerd: "Please enter answer",



                            },
                            // Make sure the form is submitted to the destination defined
                            // in the "action" attribute of the form when valid
                            submitHandler: function (form) {
                                form.submit();
                            }
                        });
            });

        });

    </script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="giaodien.html"><span
					class="glyphicon glyphicon-home"></span></a>
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
					<li><a href="index.jsp"><span
							class="glyphicon glyphicon-log-out"></span> Đăng Xuất</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<div class="carousel" data-flickity='{"autoPlay": true}'>
						<img src="css/logo1.png" height="420px" width="1150px" /> <img
							src="css/toic.jpg" height="420px" width="1150px" />
					</div>
				</div>
				<br>
			</div>
			<hr>
		</div>
	</div>

	<div class="container1">
		<form action="Xuly_add_taocauhoi" method="post">
			<label>Môn </label> <input text="Toeic" style="color: black" id="mon"></input>
			 <label>Nội dung</label>
			  <input name="noidung" style="color: black" /> 
			
			<label>Answer A</label> <input name="answera">
			</center>
			<label>Answer B</label> <input name="answerb">
			</center>
			<label>Answer C</label> <input name="answerc">
			</center>
			<label>Answer D</label> <input name="answerd">
			</center>
			<label>CorrectAnswer</label> <select style="color: black"
				name="dapandung">
				<option value="1">A</option>
				<option value="2">B</option>
				<option value="3">C</option>
				<option value="4">D</option>
			</select>
			</center>
			<button type="submit" id="btnadd" type="submit" style="width: 100px;">
				<i class="fa fa-plus" aria-hidden="true">ADD</i>
			</button>
			<button type="submit" id="btncancel" style="width: 100px; color: red"
				onclick="location.href='giaovien.html';">
				<i class="fa fa-ban" aria-hidden="true" type="submit">CANCEL</i>
			</button>
		</form>		
	</div>
	<br>

	<footer class="container-fluid text-center">
		<p>
			<span class="glyphicon glyphicon-map-marker"> Địa chỉ: Số 1 -
				Võ Văn Ngân - TP.Hồ Chí Minh</span>
		</p>
		<p>
			<span class="glyphicon glyphicon-phone"> Điện thoại: (0933)
				37596358 </span>
		</p>
		<p>
			<span class="glyphicon glyphicon-envelope"> Email
				tttn@gmail.com</span>
		</p>
	</footer>
	<script src="jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>