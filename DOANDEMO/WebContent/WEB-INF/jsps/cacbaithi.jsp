<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Thi Thử</title>
    <meta charset="UTF-8">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="bootstrap\icon\icon.css" rel="stylesheet">
    <link rel="stylesheet" href="css/cacbaithi.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#batdau").click(function () {
                $("#cauhoi").show("500");
            });
        });
        $(document).ready(function () {
            $("#ketthuc").click(function () {
                $("#cauhoi").hide("500");
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").hide();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#1").click(function () {
                $("#1").css("background-color", "aqua");
                $("#c1").show("500");
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#2").click(function () {
                $("#2").css("background-color", "aqua");
                $("#c2").show("500");
                $("#c1").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#3").click(function () {
                $("#3").css("background-color", "aqua");
                $("#c3").show("500");
                $("#toilui").show("500");
                $("#c1").hide();
                $("#c2").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#4").click(function () {
                $("#4").css("background-color", "aqua");
                $("#c4").show("500");
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#5").click(function () {
                $("#5").css("background-color", "aqua");
                $("#c5").show("500");
                $("#c4").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#6").click(function () {
                $("#6").css("background-color", "aqua");
                $("#c6").show("500");
                $("#c5").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#7").click(function () {
                $("#7").css("background-color", "aqua");
                $("#c7").show("500");
                $("#c6").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c8").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#8").click(function () {
                $("#8").css("background-color", "aqua");
                $("#c8").show("500");
                $("#c7").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c9").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#9").click(function () {
                $("#9").css("background-color", "aqua");
                $("#c9").show("500");
                $("#c8").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c10").hide();
                $("#toilui").show("500");
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#10").click(function () {
                $("#10").css("background-color", "aqua");
                $("#c10").show("500");
                $("#c9").hide();
                $("#c1").hide();
                $("#c2").hide();
                $("#c3").hide();
                $("#c4").hide();
                $("#c5").hide();
                $("#c6").hide();
                $("#c7").hide();
                $("#c8").hide();
                $("#toilui").show("500");
            });
        });
    </script>
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
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span>Đăng xuất</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">
    <div class="row">
        <div class="btn-group">
            <input style="margin-top:100px;font-size: 30px; width:300px;" type="button" class="btn btn-default"
                   value="Thể loại:Trắc nghiệm">
        </div>
        <div class="btn-group">
            <input style="margin-top:100px;font-size: 30px;" type="button" class="btn btn-default"
                   value="Thời gian:15 phút">
        </div>
        <button id="batdau" style="margin-top:100px;font-size: 30px;" type="button" class="btn btn-primary">
            <i class="material-icons" style="font-size:36px;margin-right:10px;">&#xe8ae;</i>Bắt đầu làm bài
        </button>
        <button id="ketthuc" style="margin-top:100px;font-size: 30px;" type="button" class="btn btn-primary">Thoát
        </button>
    </div>

    <div id="cauhoi" class="container dethi">
        <div class="row">
            <button id="1" type="button" class="btn btn-default btn-lg">câu 1</button>
            <button id="2" type="button" class="btn btn-default btn-lg">câu 2</button>
            <button id="3" type="button" class="btn btn-default btn-lg">câu 3</button>
            <button id="4" type="button" class="btn btn-default btn-lg">câu 4</button>
            <button id="5" type="button" class="btn btn-default btn-lg">câu 5</button>
            <button id="6" type="button" class="btn btn-default btn-lg">câu 6</button>
            <button id="7" type="button" class="btn btn-default btn-lg">câu 7</button>
            <button id="8" type="button" class="btn btn-default btn-lg">câu 8</button>
            <button id="9" type="button" class="btn btn-default btn-lg">câu 9</button>
            <button id="10" type="button" class="btn btn-default btn-lg">câu 10</button>
        </div>
    </div>

    <!--Tạo nội dung câu hỏi-->
    <div style="margin-left:180px;text-align:left">
        <div id="c1" class="cau1">
            <h1>Câu 1.</h1>
        </div>
        <div id="c2" class="cau1">
            <h1>Câu 2.</h1>
        </div>
        <div id="c3" class="cau1">
            <h1>Câu 3.</h1>
        </div>
        <div id="c4" class="cau1">
            <h1>Câu 4.</h1>
        </div>
        <div id="c5" class="cau1">
            <h1>Câu 5.</h1>
        </div>
        <div id="c6" class="cau1">
            <h1>Câu 6.</h1>
        </div>
        <div id="c7" class="cau1">
            <h1>Câu 7.</h1>
        </div>
        <div id="c8" class="cau1">
            <h1>Câu 8.</h1>
        </div>
        <div id="c9" class="cau1">
            <h1>Câu 9.</h1>
        </div>
        <div id="c10" class="cau1">
            <h1>Câu 10.</h1>
        </div>
    </div>
    <!--Tạo tới và lui-->
    <div id="toilui" class="container">
        <ul class="pager" style="margin-left:50px">
            <li>
                <button style="margin-left:50px;" type="button" id="Finish" class="btn btn-primary btn-lg block">
                    FINISH
                </button>
            </li>
        </ul>
    </div>

</div>
</div>
</body>

</html>
    