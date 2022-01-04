<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
         
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>StoreRegisterList</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="admin/assets/images/favicon.ico" rel="icon" type="image/ico" />
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
          <li class='launcher'>
            <i class='icon-home'></i>
            <a href="AdminMain.do">메인화면</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-file-text-alt'></i>
            <a href="AdList.do">광고</a>
          </li>
          <br><br>
          <li class='active launcher'>
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
          <li class='title'>입점문의</li>         
        </ul>       
      </section>

      <!-- Content -->

      <div id='content'>
        <div class='panel panel-default grid'>
          <div class='panel-heading'>
            <i class='icon-envelope icon-large'></i>
            <b>문의내역 확인/답변</b>     
          </div>
          <div class='panel-body filters'>
          
            <div class='input-body'>제목 : ~~~</div>   
            <br>  
            <div class='input-body'>내용 : ~~~</div>   
         
          </div>              
        </div>

        <div class='panel panel-default grid'>        
          <div class='panel-body'>
            <div class='col-md-9'>               
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

            <table class='table'>
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Loc/Store</th>
                  <th>State</th>
                  <th>Rdate</th>
                  <th class='actions'>
                    Actions
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>장난하냐</td>
                  <td>[하남시]하남돼지집</td>
                  <td><font color="red">미답변</font></td>
                  <td>21-11-03</td>
                  <td class='action'>

                    <a class='btn btn-success' data-toggle='tooltip' href='#' title='detail'>
                      <i class='icon-zoom-in'></i>
                    </a>
                    <a class='btn btn-info' data-toggle='tooltip' href='#' title='write'>
                      <i class='icon-edit'></i>
                    </a>     

                </tr>
                <tr>
                  <td>장난하냐</td>
                  <td>[하남시]하남돼지집</td>
                  <td><font color="red">미답변</font></td>
                  <td>21-11-03</td>
                  <td class='action'>

                    <a class='btn btn-success' data-toggle='tooltip' href='#' title='detail'>
                      <i class='icon-zoom-in'></i>
                    </a>
                    <a class='btn btn-info' data-toggle='tooltip' href='#' title='write'>
                      <i class='icon-edit'></i>
                    </a>     

                </tr>
              </tbody>
            </table>
          </div>


          <div style="text-align:center;" >
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
