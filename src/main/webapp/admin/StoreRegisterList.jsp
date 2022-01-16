
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
    <script>
    $(function(){
    	$("#btn_save").click(function(){
    		var formdata = $(frm2).serialize();
    		
    		$.ajax({
    			type : "post",
    			data : formdata,
    			url  : "storeSave.do",
    			datatype : "json",
    			success : function(data){
    				//{"aaaa":"ok","bbbb":"강성모"}
    				if(data.aaaa=="ok"){
    					alert("입점 승인완료");
    				} else if(data.aaaa=="er1"){
    					alert("이미 등록된 점포입니다.");
    				} else if(data.aaaa=="er3"){
    					alert("점포 추가실패.");
    				} else if(data.aaaa=="er2"){
    					alert("입점문의 status 변경에러")
    				}
    			},
    			error : function(){
    				alert("전송오류");
    			}
    			
    		})
    	})
    	
    })
    
    
    $(function(){
		$("#btn_Reject").click(function(){
		var formdata = $(frm2).serialize();
		
			$.ajax({
				type : "post",
				data : formdata,
				url  : "StoreReject.do",
				datatype : "json",
				success  : function(data){
					if(data.aaaa=="ok"){
						alert("거절완료");
					} else{
						alert("승인실패!");
					}
				},
				error : function(){
					alert("전송오류~");
				}
			})
		})
	})
    
    
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
          
            <div class='col-md-9'>               
            </div>
            <div class='col-md-3'>
            
            
              <form name="frm" method="post" action="StoreRegisterList.do">
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

            <table class='table'>
              <thead>
                <tr>                
<!--                   <th>Status</th>	 -->
                  <th>지역</th>
                  <th style="padding-right:80px; text-align:center;">가게이름</th>                 
                  <th>가게번호</th>                 
                  <th>신청자이름</th>
                  <th>이메일</th>
                  <th>아이디</th>
                  <th>Rdate</th>
                  <th class='actions'  style="text-align:center;">
                    Actions
                  </th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="result" items="${list }">
                <tr>
<!--                   <td><font color="red">미답변</font></td> -->
                  <td>${result.region }</td>
                  <td style="padding-right:80px; text-align:center;">
                 	 <a href="StoreRegisterList.do?openindex=${result.openindex }">
                 	 ${result.storename }
                 	 </a>
                  </td>
                  <td>${result.phone }</td>
                  <td>${result.name }</td>
               	  <td>${result.email }</td>
                  <td>${result.userid }</td>
                  <td>${result.rdate }</td>                 
                  <td class='action'  style="text-align:center;">
                    <a class='btn btn-info' data-toggle='tooltip' href='BossMemberList.do?k2text=${result.userid }' title='사업자등록'>
                      <i class='icon-edit'></i>
                    </a>     
                </tr> 
                </c:forEach>              
              </tbody>
            </table>
          </div>

		<!--           페이징처리 -->
          <div style="text-align:center;" >
            <ul class='pagination pagination-sm'>
            
              	<c:forEach var = "i" begin = "${bvo.page_sno }" end = "${bvo.page_eno }">
              		<li>
              			<a href = 'StoreRegisterList.do?page_no=${i }'>${i }</a>
              		</li>
              	
              	
              	</c:forEach>
              </ul>
          
        </div>  
        <div class='panel panel-default'>
          <div class='panel-heading'>           
           <b> Detail..</b>           
          </div>
          <div class='panel-body'>
         
		<form id = "frm2" name ="frm2" >
			<input type ="hidden" id = "userid" name ="userid" value = "${vo.userid }">
            <input type ="hidden" id = "openindex" name ="openindex" value = "${vo.openindex }">
<!--         그리고 jquery에 넘길때는 id값이 편함   sql로   값을 넘길때 name으로 넘기기때문에 name값이 중요 -->
              <fieldset>
                <div class='form-group row'>
                  <div class='col-lg-2'>
                    <label class='control-label'>STORENAME</label>
                    <input class='form-control'readonly placeholder='I D'  
                    name="storename" id="storename"
                    value = "${vo.storename }">
                  </div>
                  <div class='col-lg-3'>
                    <label class='control-label'>STOREPHONE</label>
                    <input class='form-control'readonly placeholder='Phone'  
                    name="storephone" id="storephone"
                    value = "${vo.phone }">
                  </div>
                  <div class='col-lg-7'>
                    <label class='control-label'>STOREADDR</label>
                    <input class='form-control' readonly placeholder='Addr'  
                    name="storeaddr" id="storeaddr"
                    value = "${vo.address }">
                  </div>
                  
                </div>
                 <div class='form-group'>
                  <label class='control-label'>INQUIRE</label>
                  <input class='form-control' readonly placeholder='Inquire'
                  value = "${vo.inquire }">
                </div>
          
                 <div class='form-group row'>
                  <div class='col-lg-3'>
                    <label class='control-label'>CATEGORY</label>
                    <input class='form-control' readonly placeholder='Category'  
                    name="category" id="category"
                    value = "${vo.category }">
                    <input type="hidden" name="cateunq" id="cateunq" value="${vo.cateunq }">
                  </div>                  
                  <div class='col-lg-3'>
                    <label class='control-label'>FEE(배달비)</label>
                    <input class='form-control' placeholder='Fee' 
                    name="fee" id="fee"
                    value = "3000">
                  </div>
                  <div class='col-lg-3'>
                    <label class='control-label'>MINPRICE(주문최소금액)	</label>
                    <input class='form-control' placeholder='Minprice'  
                   name="minprice" id="minprice"
                    value = "10000">
                  </div>

                </div>
               

              </fieldset>
           <div class='form-actions'>
                <button class='btn btn-default' id ="btn_save"  style ="margin-right : 30px;" type='button'>저장하기</button>
                <button class='btn btn-default' id ="btn_Reject" style ="margin-right : 30px;" type='button'> 거절 </button>
                
              </div>
            </form>




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
