<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>adAdvertise</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="admin/assets/images/favicon.ico" rel="icon" type="image/ico" />
    


<!-- jquery -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
<style>
  .ui-accordion .ui-accordion-header{
    background:#d5f3e9;
    color:black;
    border: black;  
  }
  .ui-accordion .ui-accordion-content {
	max-height:310px;
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
            <a href="adMain.do">메인화면</a>
          </li>
          <br><br>
          <li class='active launcher'>
            <i class='icon-file-text-alt'></i>
            <a href="adAdvertise.do">광고</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-envelope'></i>
            <a href="adInquiry.do">문의내역</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-user'></i>
            <a href='adBusiness.do'>사업자관리</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-star'></i>
            <a href='#'>ELIT 이동</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-cog'></i>
            <a href='adAdmin.do'>관리자관리</a>
          </li>
        </ul>
      </section>
      <!-- Tools -->
      <section id='tools'>
        <ul class='breadcrumb' id='breadcrumb'>
          <li class='title'>광고</li>         
        </ul>       
      </section>
      <!-- Content -->
       <!-- Content -->
       <div id='content'>
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-file-text-alt icon-large'></i>
           <b> 신청된 광고 <font color="red">4</font>건 </b>           
          </div>
          <div class='panel-body'>
           
            <!-- jquery -->
            <div id="accordion">
              <h3>[하남시] XX육개장 칼국수 배너</h3>
              <div>
                <p style="text-align:center;">
                <img src="/assets/images/addpic.png" class="img-fluid" alt="..." style="height:200px;" >
                </p>
                <p>
             민올ㅈㅁㄹㄴ러ㅏㅁ높ㅁㄷㅈ하노ㅜㅏ;ㅣ먼ㄻ나ㅣㅇ로ㅓㅏㅣㄴㅇ로누퓨퍼ㅏㄴ론아런ㅁㅍ추ㅏㅓㄴ말농ㄻㄴ
             ㄴㅇ러ㅏㅗㅁㄴ로며ㅑㄷㄹ눞ㅁㄴㅇ라ㅓㅗㅁㄴㅇ론ㅇ
             ㅁㄴㅇ라ㅣ뫠ㅑ도라ㅣㅁ눙ㄹ문라ㅣㅓㅁ냥
                </p>
                <p style="text-align:center;">
                  <button type="button" class="btn btn-success">설정</button>
                  <button type="button" class="btn btn-danger">반려</button>
                </p>
              </div>
              <h3>[하남시] 하남돼지집 배너</h3>
              <div>
                <p style="text-align:center;">
                  <img src="/assets/images/addpic.png" class="img-fluid" alt="..." style="height:200px;" >
                  </p>
                <p>
                  민올ㅈㅁㄹㄴ러ㅏㅁ높ㅁㄷㅈ하노ㅜㅏ;ㅣ먼ㄻ나ㅣㅇ로ㅓㅏㅣㄴㅇ로누퓨퍼ㅏㄴ론아런ㅁㅍ추ㅏㅓㄴ말농ㄻㄴ
                  ㄴㅇ러ㅏㅗㅁㄴ로며ㅑㄷㄹ눞ㅁㄴㅇ라ㅓㅗㅁㄴㅇ론ㅇ
                  ㅁㄴㅇ라ㅣ뫠ㅑ도라ㅣㅁ눙ㄹ문라ㅣㅓㅁ냥
                </p>
                <p style="text-align:center;">
                  <button type="button" class="btn btn-success">설정</button>
                  <button type="button" class="btn btn-danger">반려</button>
                </p>
              </div>
              <h3>[하남시] 육개장 칼국수 배너</h3>
              <div>
                <p style="text-align:center;">
                  <img src="/assets/images/addpic.png" class="img-fluid" alt="..." style="height:200px;" >
                  </p>
                <p>
                  민올ㅈㅁㄹㄴ러ㅏㅁ높ㅁㄷㅈ하노ㅜㅏ;ㅣ먼ㄻ나ㅣㅇ로ㅓㅏㅣㄴㅇ로누퓨퍼ㅏㄴ론아런ㅁㅍ추ㅏㅓㄴ말농ㄻㄴ
                  ㄴㅇ러ㅏㅗㅁㄴ로며ㅑㄷㄹ눞ㅁㄴㅇ라ㅓㅗㅁㄴㅇ론ㅇ
                  ㅁㄴㅇ라ㅣ뫠ㅑ도라ㅣㅁ눙ㄹ문라ㅣㅓㅁ냥
                </p>           
                <p style="text-align:center;">
                  <button type="button" class="btn btn-success">설정</button>
                  <button type="button" class="btn btn-danger">반려</button>
                </p>
              </div>
              <h3>으어어어ㅓㅇ</h3>
              <div>
                <p style="text-align:center;">
                  <img src="/assets/images/addpic.png" class="img-fluid" alt="..." style="height:200px;" >
                  </p>
                <p>                  
                  으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오
                  으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오
                  으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오으어어어ㅓㅇ마어르어럴덩런ㅇ응로오
                </p>
                <p style="text-align:center;">
                  <button type="button" class="btn btn-success">설정</button>
                  <button type="button" class="btn btn-danger">반려</button>
                </p>
              </div>
            </div>
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
