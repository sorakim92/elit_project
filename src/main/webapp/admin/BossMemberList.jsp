<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>BossMemberList</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   
    
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
        <li class='launcher'>
          <i class='icon-home'></i>
          <a href="adMain.do">메인화면</a>
        </li>
        <br><br>
        <li class='launcher'>
          <i class='icon-file-text-alt'></i>
          <a href="AdList.do">광고</a>
        </li>
        <br><br>
        <li class='launcher'>
          <i class='icon-envelope'></i>
          <a href="adInquiry.do">문의내역</a>
        </li>
        <br><br>
        <li class='active launcher'>
          <i class='icon-user'></i>
          <a href='BossMemberList.do'>사업자관리</a>
        </li>
        <br><br>
        <li class='launcher'>
          <i class='icon-star'></i>
          <a href='#'>ELIT 이동</a>
        </li>
        <br><br>
        <li class='launcher'>
          <i class='icon-cog'></i>
          <a href='AdminRegister.do'>관리자관리</a>
        </li>
      </ul>
    </section>
      
      <!-- Tools -->
      <section id='tools'>
        <ul class='breadcrumb' id='breadcrumb'>
          <li class='title'>사업자 관리 (추가/제거)</li>         
        </ul>       
      </section>

      <!-- Content -->
      <div id='content'>
        <div class='panel panel-default grid'>
          <div class='panel-heading'>
            <i class='icon-user icon-large'></i>
            <b>신규 사업자</b>
            <div class='panel-tools'>
              <div class='btn-group'>
                
                <a class='btn' data-toggle='toolbar-tooltip' href='#' title='Reload'>
                  <i class='icon-refresh'></i>
                </a>
              </div>
            </div>
          </div>
          <div class='panel-body filters'>
            <div class='row'>
              <div class='col-md-9'>
                <p>(회원가입폼 -> 사업자 체크 -> 여기에 표시)</p>
                기능 해야하는데 판을 너무 키웠어 ...
              </div>
              <div class='col-md-3'>
                <div class='input-group'>
                  <input class='form-control' placeholder='Quick search...' type='text'>
                  <span class='input-group-btn'>
                    <button class='btn' type='button'>
                      <i class='icon-search'></i>
                    </button>
                  </span>
                </div>
              </div>
            </div>
          </div>
          <table class='table'>
            <thead>
              <tr>
                <th>#</th>
                <th>User ID</th>
                <th>Name</th>
                <th>Number</th>
                <th>Loc / Store</th>
                <th class='actions'>
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="result" items="${list }">
              <tr class='success'>
                <td>1</td>
                <td>${result.userid }</td> 
                <td>${result.username}</td> 
               <td>${result.userphoen }</td> 
                <td>[하남]네네치킨</td>
                <td class='action'>
                  <a class='btn btn-success' data-toggle='tooltip' href='#' title='add'>
                    <i class='icon-zoom-in'></i>
                  </a>
             
                  
                  <a class='btn btn-danger' data-toggle='tooltip' href='#' title='del'>
                    <i class='icon-trash'></i>
                  </a>
                </td>
              </tr>
              
                </c:forEach>
                
            </tbody>
          </table>
          <div class='panel-footer' style="text-align:center;">
            <ul class='pagination pagination-sm'>
              <li>
                <a href='#'>«</a>
              </li>
              <li class='active'>
                <a href='#'>1</a>
              </li>
              <li>
                <a href='#'>2</a>
              </li>
              <li>
                <a href='#'>3</a>
              </li>
              <li>
                <a href='#'>4</a>
              </li>
              <li>
                <a href='#'>5</a>
              </li>
              <li>
                <a href='#'>6</a>
              </li>
              <li>
                <a href='#'>7</a>
              </li>
              <li>
                <a href='#'>8</a>
              </li>
              <li>
                <a href='#'>»</a>
              </li>
            </ul>
           
          </div>
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
