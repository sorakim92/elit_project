<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html class='no-js' lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    <title>AdminRegister</title>
    <meta content='lab2023' name='author'>
    <meta content='' name='description'>
    <meta content='' name='keywords'>
    <link href="admin/assets/stylesheets/application-a07755f5.css" rel="stylesheet" type="text/css" /><link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	
	<script>
	//emp update section Y -> N
		function fn_empdelete(id){
			var empid = id;
			$("#empid").val(empid);
			
			var formdata = $("#empfrm").serialize();
			$.ajax({
				type : "post",
				url  : "AdminDelete.do",
				data : formdata,
				
				datatype  : "text",
				success   : function(data){
					if(data == "ok") {
						document.location.reload();
						alert("관리자 박탈.");
					} else{
						alert("오류, 처리실패(관리자에게 문의해주세요)");
					}
				}
			})
			
			
		}
	
	
	
		function fn_empupdate(id){
			var empid = id;
			
		//	alert(empid + "아이디를 관리자로 추가합니다.");
		//  console.log(empid);
		//제이쿼리 $("#아이디") 아이디를 찾음
		$("#empid").val(empid);
		
		var formdata = $("#empfrm").serialize();
		// link 밑에 script두 줄 있어야 실행가능
		$.ajax({
			type : "post",
			url  : "AdminPlus.do",
			data : formdata,
			
			datatype : "text",
			success  : function(data){
				if(data == "ok") {
					//새로고침
					document.location.reload();
					alert("관리자로 추가되었습니다.");
				} else{
					alert("추가 실패");
				}
			},
			error    : function(){
				alert("오류, 처리실패(관리자에게 문의해주세요)");
			}
		})
		
		}
	
	</script>
	
	
    
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
            <a href="dashboard.html">메인화면</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-file-text-alt'></i>
            <a href="AdList.do">광고</a>
          </li>
          <br><br>
          <li class='launcher'>
            <i class='icon-envelope'></i>
            <a href="inquiry.html">문의내역</a>
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
          <li class='active launcher'>
            <i class='icon-cog'></i>
            <a href='AdminRegister.do'>관리자설정</a>
          </li>
        </ul>
      </section>
      
      <!-- Tools -->
      <section id='tools'>
        <ul class='breadcrumb' id='breadcrumb'>
          <li class='title'>관리자 설정</li>         
        </ul>       
      </section>

      <!-- Content -->
      <div id='content'>
        <div class='panel panel-default grid'>
          <div class='panel-heading'>
            <i class='icon-cog icon-large'></i>
            <b>관리자 추가/제거</b>          
            <div class='panel-tools'>                           
            </div>

            <div class='row'>
              <div class='col-md-9'>               
              </div>
              <div class='col-md-3'>
              
              	<form name="frm" method="post" action="AdminRegister.do">
                <div class='input-group'>
                  <input class='form-control' name = "ktext" id="ktext"
                   value="${ktext }"
                   placeholder='Quick search...' type='text'>
                   
                 <span class='input-group-btn'>
                  <button class='btn'>
                    <i class='icon-search'></i>
                  </button>
                </span>
              </div> 
              </form>   
                        
            </div>
           </div>

           
          </div> 
       <!-- 숨겨진 폼을 하나 만들어서 이름값을 설정 이제 위에서 함수 돌려서 이름에 데이터 넣을거임 -->
        <form id ="empfrm" name="empfrm">
       		<input type="hidden" id = "empid" name="empid">
        </form>
       
          <table class='table'>
            <thead>
              <tr>
                <th>#</th>
                <th>User ID</th>
                <th>Name</th>
                <th>Number</th>
                <th>Information</th>
                <th class='actions'>
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="result" items="${list }">
              <tr class='warning'>
                <td>1</td>
                <td>${result.empid }</td>
                <td>${result.ename }</td>
                <td>${result.phone }</td>
                <td>${result.section }</td>
                <td class='action'>
                  <a class='btn btn-success' data-toggle='tooltip' title='관리자추가'
                  	onclick ="javascript:fn_empupdate('${result.empid }')">
                    <i class='icon-zoom-in'></i>
                  </a>
              
                  
                  <a class='btn btn-danger' data-toggle='tooltip' title='관리자삭제'
                  	onclick ="javascript:fn_empdelete('${result.empid }')">
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