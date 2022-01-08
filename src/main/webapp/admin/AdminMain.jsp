<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>AdminMain</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    
    <style>
    
    body {
    font-size: 16px;   
}
/* 	.container{ */
/* 	margin-bottom : 0px; */
/* 	margin-top : 0px; */
/* 	border: 1px solid #ccc; */
/* 	} */

	.alert{
/* 		border: 1px solid #ccc; */
		margin: 0px 0px 10px 0px;
	}
    </style>
    
    
  </head>
  <body class='main page'>
    <!-- Navbar -->
    <div class='navbar navbar-default' id='navbar'>
      <a class='navbar-brand' href='#'>
        <i class='icon-cloud'></i>
        E L I T 관리자
      </a>
    </div>
    
    <div id='wrapper'>
   
      <!-- Sidebar -->
      <section id='sidebar'>
        <i class='icon-align-justify icon-large' id='toggle'></i>
        <ul id='dock'>
          <li class='active launcher'>
            <i class='icon-home'></i>
            <a href="AdminMain.do">메인화면</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-file-text-alt'></i>
            <a href="AdList.do">광고</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-envelope'></i>
            <a href="StoreRegisterList.do">입점문의</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-user'></i>
            <a href='BossMemberList.do'>사업자관리</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-star'></i>
            <a href='mainPage.do'>ELIT 이동</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-cog'></i>
            <a href='AdminRegister.do'>직원 관리</a>
          </li>
        </ul>
      </section>
      
      <!-- Tools -->
      <section id='tools'>
        <ul class='breadcrumb' id='breadcrumb'>
          <li class='title'>메인화면</li>         
        </ul>       
      </section>

      <!-- Content -->
      <div id='content'>
      <form style="float:left;">
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-file-text-alt icon-large'></i>
           <b><font color="green">( NEW )</font> 광고 신청</b>           
          </div>
          <div class='panel-body' style="float:left;">
          	<div class="container">
          <c:forEach var="result" items="${list }">          
				<div class="alert alert-success alert-dismissible fade in" role="alert">
			  		<strong>${result.name }님 &nbsp&nbsp </strong> "${result.ment }"
				</div>      
          </c:forEach>
          </div>
          </div>
        </div>
		</form>
		
		<form style="float:left;">
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-envelope icon-large'></i>
           <b> <font color="blue">( NEW )</font>입점문의</b>           
          </div>
          <div class='panel-body' style="float:left;">
           	<div class="container">
           		<c:forEach var="resultB" items="${listB }">
					<div class="alert alert-info alert-dismissible fade in" role="alert">
				  		<strong>${resultB.name }님  &nbsp&nbsp</strong>
				  		" ${resultB.category } &nbsp&nbsp/&nbsp&nbsp
				  		${resultB.region } &nbsp&nbsp/&nbsp&nbsp
				  		${resultB.address } &nbsp&nbsp/&nbsp&nbsp
				  		${resultB.storename } "
					</div>
				</c:forEach>
			</div>
          </div>
        </div>
		</form>
		
		<form style="float:left;">
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-user icon-large'></i>
           <b> <font color="red">( NEW )</font>신규 사업자 목록 </b> 
          </div>         
          <div class='panel-body' style="float:left;">
            	<div class="container" >
            		<c:forEach var="resultC" items="${listC }">
						<div class="alert alert-warning alert-dismissible fade in" role="alert">
					  		<strong>${resultC.username }(${resultC.userid })</strong> 님이 새로운 사업자로 추가되었습니다.
						</div>
					</c:forEach>
				</div>
           </div>
        </div>
		</form>

        
      </div>
    
    </div>
    <!-- Footer -->
    <!-- Javascripts -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script><script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js" type="text/javascript"></script><script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js" type="text/javascript"></script><script src="assets/javascripts/application-985b892b.js" type="text/javascript"></script>
    <!-- Google Analytics -->
    <script>
      var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
      (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
      g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
      s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>
  </body>
</html>
