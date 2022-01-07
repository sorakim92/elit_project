<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>찜 목록</title>
<link rel="stylesheet" href="css/css.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- footer header css -->
<link rel="stylesheet" href="css/headFooter.css">


</head>
<style>
@font-face {
  font-family: "hanna";
  src: url("fonts/BMHANNAAir_otf.otf");
}

@font-face {
  font-family: "jua";
  src: url("fonts/BMJUA_otf.otf");
}

a {
  text-decoration: none;
  color: inherit;
}

html{
    height: 100%;
}

body {
    font-size: 16px;
    font-family: hanna;
    padding-left: 100px;
    height: 100%;
}

.navbar_menu {
  display: flex;
  list-style: none;  
  padding-left: 70px;
  margin-top: 10px;
  border-bottom: 2px solid #ccc;
}

.navbar_menu {
    display: flex;
    list-style: none;
    border-bottom: 2px solid #ccc;
    padding-left: 0;
}
</style>

<body>
	<div class="wrapper">
		<div class="main"
			style="min-height: 100%; padding-bottom: 100px; flex: 1;">
			<header class="width:100%; height:50px;">
				<%@include file="../include/main_header.jsp"%>
			</header>

			<nav>
				<div style="width: 100%; height: 100px;">
					<%@include file="../include/topmenu.jsp"%>
				</div>
			</nav>
			<section class="content">

				<!--메뉴-->
				<div style="width: 100%; line-height: 2.0;">
					<table
						style="width: 100%; text-align: center; border-bottom: 2px solid #ccc">
						<colgroup>
							<%-- <col width="30%" /> --%>
							<col width="20%" />
							<col width="30%" />
							<col width="*" />
						</colgroup>

						<tr>
							<!-- <td>가게이미지</td> -->
							<td>찜 리스트</td>							
							<td>가게이름</td>
							<td>가게소개</td>
							


						</tr>

						<c:forEach var="result" items="${list }">
							<tr>
								<%-- <td>${result.storeimage }</td> --%>								
								<td>${result.zzimindex }</td>								
								<td>${result.storename  }</td>
								<td>${result.storeinfo }</td>

							</tr>
						</c:forEach>

					</table>
				</div>
			</section>
			<footer>
				<%@include file="../include/main_footer.jsp"%>
			</footer>
		</div>
	</div>
</body>
</html>
