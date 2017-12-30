<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
 <%@ page import="Model.DAO, Model.hocvienentry"  %>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <title>Thông tin cá nhân</title>
    <meta name="description" content="Đây là website luyện thi trắc nghiệm"/>
    <meta name="keywords" content="Thi online"/>
    <meta charset="utf-8"/>

    <link rel="stylesheet" href="css/dangnhap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
    <script src="jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>


</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<%
	DAO dao = new DAO();
	hocvienentry entries= null;
	String query ="select * from HOCVIEN where MAHV="+ request.getAttribute("idhocvien");
	try {
		ResultSet rs= dao.myExec(query);
		if(rs.next()) {
			int MAHV = rs.getInt("MAHV");
			String TENHV = rs.getString("TENHV");
			String TENDANGNHAP=rs.getString("TENDANGNHAP");
			String MATKHAU =rs.getString("MATKHAU");
			String EMAIL= rs.getString("EMAIL");
			String SDT= rs.getString("SDT");
			String GIOITINH= rs.getString("GIOITINH");				
			entries= new  hocvienentry(MAHV,TENHV, TENDANGNHAP, MATKHAU, EMAIL, SDT, GIOITINH);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

%>
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
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Đăng Xuất</a></li>
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
    <br>
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group" style="margin: 0; background-color: #575046; -moz-border-radius-topleft:10px;
                        -webkit-border-top-left-radius:10px;-moz-border-radius-topright:10px;
                        -webkit-border-top-right-radius:10px;text-align: center;color: white; height: 40px; padding-top: 9px">
                <strong>THÔNG TIN HỌC VIÊN</strong>
                <hr width="100%" align="left">
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4">ID</label>
                <div class="col-sm-8">
                    <p><%=entries.getMAHV()%></p>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4">Họ tên</label>
                <div class="col-sm-8">
                    <p><%=entries.getTENHV()%></p>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4">Email</label>
                <div class="col-sm-8">
                    <p><%=entries.getEMAIL()%></p>
                </div>
            </div>
            <div class="form-group">
                <a onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                    <span class="glyphicon glyphicon-lock">Đổi mật khẩu</span>
                </a>

            </div>

        </div>
        <div class="col-sm-6">
            <div class="form-group" style="margin-right:10px; text-align: center;background-color: #575046; -moz-border-radius-topleft:10px;
					-webkit-border-top-left-radius:10px;-moz-border-radius-topright:10px;
					-webkit-border-top-right-radius:10px;text-align: center;color: white; height: 40px;padding-top: 9px">
                <strong>THÔNG TIN LỊCH THI</strong>
                <hr width="100%" align="left">
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4">Khóa đăng ký</label>
                <div class="col-sm-8">
                    <p>Thi thử lần I</p>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4">Môn đăng ký</label>
                    <div class="col-sm-8">
                        <p>Toeic</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4">Thời gian thi</label>
                    <div class="col-sm-8">
                        <p>Ngày 15/5/2017</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
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
<div id="id01" class="modal">

    <form class="modal-content animate" action="hocvien" method="get">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="anhtailieu/LogoC500.png" style="width: 80px" height="80px" alt="Avatar" class="avatar">
        </div>

        <div>
            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
        </div>
        <div>
            <label><b>New Password</b></label>
            <input type="password" placeholder="Enter NewPassword" name="npsw" required>
        </div>
        <div>
            <button style="width: 80px; height: 50px; margin-left: 100px">Đồng ý</button>
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
</body>
</html>