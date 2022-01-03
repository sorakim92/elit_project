<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>AdList</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="admin/assets/images/favicon.ico" rel="icon" type="image/ico" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>


<style>
 
  .table{width:100%;max-width:100%;margin-bottom:1rem;background-color:transparent}.table td,.table th{padding:.75rem;vertical-align:top;border-top:1px solid #dee2e6}.table thead th{vertical-align:bottom;border-bottom:2px solid #dee2e6}.table tbody+tbody{border-top:2px solid #dee2e6}.table .table{background-color:#fff}.table-sm td,.table-sm th{padding:.3rem}.table-bordered{border:1px solid #dee2e6}.table-bordered td,.table-bordered th{border:1px solid #dee2e6}.table-bordered thead td,.table-bordered thead th{border-bottom-width:2px}.table-striped tbody tr:nth-of-type(odd){background-color:rgba(0,0,0,.05)}.table-hover tbody tr:hover{background-color:rgba(0,0,0,.075)}.table-primary,.table-primary>td,.table-primary>th{background-color:#b8daff}.table-hover .table-primary:hover{background-color:#9fcdff}.table-hover .table-primary:hover>td,.table-hover .table-primary:hover>th{background-color:#9fcdff}.table-secondary,.table-secondary>td,.table-secondary>th{background-color:#d6d8db}.table-hover .table-secondary:hover{background-color:#c8cbcf}.table-hover .table-secondary:hover>td,.table-hover .table-secondary:hover>th{background-color:#c8cbcf}.table-success,.table-success>td,.table-success>th{background-color:#c3e6cb}.table-hover .table-success:hover{background-color:#b1dfbb}.table-hover .table-success:hover>td,.table-hover .table-success:hover>th{background-color:#b1dfbb}.table-info,.table-info>td,.table-info>th{background-color:#bee5eb}.table-hover .table-info:hover{background-color:#abdde5}.table-hover .table-info:hover>td,.table-hover .table-info:hover>th{background-color:#abdde5}.table-warning,.table-warning>td,.table-warning>th{background-color:#ffeeba}.table-hover .table-warning:hover{background-color:#ffe8a1}.table-hover .table-warning:hover>td,.table-hover .table-warning:hover>th{background-color:#ffe8a1}.table-danger,.table-danger>td,.table-danger>th{background-color:#f5c6cb}.table-hover .table-danger:hover{background-color:#f1b0b7}.table-hover .table-danger:hover>td,.table-hover .table-danger:hover>th{background-color:#f1b0b7}.table-light,.table-light>td,.table-light>th{background-color:#fdfdfe}.table-hover .table-light:hover{background-color:#ececf6}.table-hover .table-light:hover>td,.table-hover .table-light:hover>th{background-color:#ececf6}.table-dark,.table-dark>td,.table-dark>th{background-color:#c6c8ca}.table-hover .table-dark:hover{background-color:#b9bbbe}.table-hover .table-dark:hover>td,.table-hover .table-dark:hover>th{background-color:#b9bbbe}.table-active,.table-active>td,.table-active>th{background-color:rgba(0,0,0,.075)}.table-hover .table-active:hover{background-color:rgba(0,0,0,.075)}.table-hover .table-active:hover>td,.table-hover .table-active:hover>th{background-color:rgba(0,0,0,.075)}.table .thead-dark th{color:#fff;background-color:#212529;border-color:#32383e}.table .thead-light th{color:#495057;background-color:#e9ecef;border-color:#dee2e6}.table-dark{color:#fff;background-color:#212529}.table-dark td,.table-dark th,.table-dark thead th{border-color:#32383e}.table-dark.table-bordered{border:0}.table-dark.table-striped tbody tr:nth-of-type(odd){background-color:rgba(255,255,255,.05)}.table-dark.table-hover tbody tr:hover{background-color:rgba(255,255,255,.075)}@media (max-width:575.98px){.table-responsive-sm{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-sm>.table-bordered{border:0}}@media (max-width:767.98px){.table-responsive-md{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-md>.table-bordered{border:0}}@media (max-width:991.98px){.table-responsive-lg{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-lg>.table-bordered{border:0}}@media (max-width:1199.98px){.table-responsive-xl{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive-xl>.table-bordered{border:0}}.table-responsive{display:block;width:100%;overflow-x:auto;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar}.table-responsive>.table-bordered{border:0}
 
/*  	링크걸린거 */
 	a:link {
	color: green;
	text-decoration: none;
	font-size: 15px;
	}
	
/* 	방문했던거 */
	a:visited {
		color: #7a7a7a;
		text-decoration: none;
		font-size: 15px;
	}
	
/* 	마우스 올렸을때 */
	a:hover{
		color: black;
		text-decoration: none;    
		font-size: 15px;
	}
	 	
	 
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
          <li class='active launcher'>
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
          <li class='title'>광고</li>         
        </ul>       
        
      </section>
      <!--           신청된 광고 개수 뽑기 -->
           <form id ="statusfrm" name="statusfrm">
       		<input type="hidden" id = "status" name="status">
        </form>
        
       <!-- Content -->
       <div id='content'>
        <div class='panel panel-default'>
          <div class='panel-heading'>
            <i class='icon-file-text-alt icon-large'></i>
           <b> 신청된 광고   <font color="red">${count }</font>건 </b>           
          </div>
          <div class='panel-body'>
          

          
           
            <!-- 본문내용 -->
       
       	
        <div style="width:100%; 
					float:left; 
					margin-top:20px; 
					font-size:13px;"
					class="bd_tbl_div">
            <table style="width:100%; font-size : 16px; color : grey;" class="table table-hover">
                <colgroup>
                    <col width="6.5%" />
                    <col width="*" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                  
                </colgroup>
                 <tr style="font-weight : bold; color:black;" >
                 	<th>승인여부</th>
                    <th>제목</th>
                    <th>광고위치</th>
                    <th>신청일</th>          
                    <th>유저아이디</th> 
                </tr>
                
                <c:forEach var="result" items="${list }">
                <tr>
                
                	<td>${result.status }</td>
                    <td>
                     <a href="AdDetail.do?adindex=${result.adindex }">
                    	${result.ment }                  
                    </a>
                   </td>
                    <td>${result.service }</td>
                    <td>${result.rdate }</td> 
                    
                    <td>${result.userid }</td> 
              
                </tr>
                
                </c:forEach>
            </table>
          
        </div>
       
       
       
            <!-- 본문끝 -->
          </div>    

<!--           페이징처리 -->
          <div style="text-align:center;" >
            <ul class='pagination pagination-sm'>
            
              	<c:forEach var = "i" begin = "${vo.page_sno }" end = "${vo.page_eno }">
              		<li>
              			<a href = 'AdList.do?page_no=${i }'>${i }</a>
              		</li>
              	
              	
              	</c:forEach>
              
          
              
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
