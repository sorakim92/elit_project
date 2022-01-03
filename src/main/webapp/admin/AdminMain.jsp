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
            <a href="#">입점문의</a>
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
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-file-text-alt icon-large'></i>
           <b> 광고 </b>           
          </div>
          <div class='panel-body'>
           <p>[하남시] XX육개장 칼국수 배너</p>
          </div>
        </div>

        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-envelope icon-large'></i>
           <b> 문의내역</b>           
          </div>
          <div class='panel-body'>
           <p>[하남시] XX족발 사장님 로그인문의</p>
          </div>
        </div>

        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-user icon-large'></i>
           <b> 신규 사업자 목록 </b> 
          </div>         
          <div class='panel-body'>
            <p>내가 바로 사장이다</p>
           </div>
        </div>


        
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
