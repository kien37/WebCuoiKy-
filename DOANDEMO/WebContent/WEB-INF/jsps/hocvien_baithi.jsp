<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Model.DAO"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=vi>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" type="text/css" rel="stylesheet">

<link rel="shortcut icon" href="images/logo.png" />
<title>Trang Thi</title>
</head>
<body>
	<%
		DAO con = new DAO();
		String query = "select * from DETHI where MADE=3";
		ResultSet rs2 = con.myExec(query);
		int t = 0;
		String gio;
		String phut;
		String giay;
	%>
	<div id="slider">
		<img alt="SPKT" src="images/SPKT.jpg">
	</div>
	<section id="menuTD">
	<div id="menuTD1">
		<ul>
			<li><a href="#">Trang ch?</a></li>
			<li><a href="#">Hu?ng d?n</a></li>

		</ul>
	</div>
	<div id="thoat">
		<button class="button">
			<a href="TrangChu.html">Thoát</a>
		</button>
	</div>
	<div class="clear"></div>
	</section>
	<input id="nut3" type="button" name="submit" onclick="NopBai()"
		value="N?p Bài">

	<section id="danhsach">
	<div id="menu">
		<ul>
			<li>
				<%
					while (rs2.next()) {
						gio = rs2.getString(6).substring(0, 2);
						phut = rs2.getString(6).substring(3, 5);
						giay = rs2.getString(6).substring(6, 8);
				%> 
			</li>
			<li>
			<script language="javascript">
				//d?ng h?

				var h = null; // Gi?
				var m = null; // Phút
				var s = null; // Giây

				var timeout = null; // Timeout

				function start() {

					/*BU?C 1: L?Y GIÁ TR? BAN Ð?U*/
					if (h == null) {
						h = parseInt(<%=gio%>);
						m = parseInt(<%=phut%>);
						s = parseInt(<%=giay%>);
					}

					/*BU?C 1: CHUY?N Ð?I D? LI?U*/
					// N?u s? giây = -1 t?c là dã ch?y ngu?c h?t s? giây, lúc này:
					//  - gi?m s? phút xu?ng 1 don v?
					//  - thi?t l?p s? giây l?i 59
					if (s == -1) {
						m -= 1;
						s = 59;
					}

					// N?u s? phút = -1 t?c là dã ch?y ngu?c h?t s? phút, lúc này:
					//  - gi?m s? gi? xu?ng 1 don v?
					//  - thi?t l?p s? phút l?i 59
					if (m == -1) {
						h -= 1;
						m = 59;
					}

					// N?u s? gi? = -1 t?c là dã h?t gi?, lúc này:
					//  - D?ng chuong trình
					if (h == -1) {
						clearTimeout(timeout);
						alert('H?t gi?');
						return false;
					}

					/*BU?C 1: HI?N TH? Ð?NG H?*/
					document.getElementById('h').innerText = h.toString();
					document.getElementById('m').innerText = m.toString();
					document.getElementById('s').innerText = s.toString();

					/*BU?C 1: GI?M PHÚT XU?NG 1 GIÂY VÀ G?I L?I SAU 1 GIÂY */
					timeout = setTimeout(function() {
						s--;
						start();
					}, 1100);
				}
				function displays() {
					document.getElementById("CauHoi").style.display = 'block';
					document.getElementById("nut").style.display = 'block';
				}
			</script> 
				<span id="h"><%=gio%></span> : 
				<span id="m"><%=phut%></span>: 
				<span id="s"><%=giay%></span> <br> 
				<input type="button" value="B?t Ð?u Ki?m Tra " onclick="start()" /> <br>
				<%
					}
				%>
			</li>
			
			<li><a href="TrangChu.html"><p>
						Thoát <img src="images/accept.png">
					</p></a></li>
		</ul>
	</div>
	<div class="clear"></div>
	</section>
</body>
</html>