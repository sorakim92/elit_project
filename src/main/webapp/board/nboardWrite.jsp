<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 글쓰기</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!-- footer header css -->
	<link rel="stylesheet" href="css/headFooter.css">
	<!-- css -->
    <link rel="stylesheet" href="css/mainLayout.css">
</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("fonts/BMHANNAAir_otf.otf")format("opentype");
}
@font-face {
    font-family: "jua";
    src: url("fonts/BMJUA_otf.otf")format("opentype");
}

</style>

<script>

$(function(){

	/* 공지사항 글쓰기에서 저장 버튼 클릭시 */
	$("#btn_save").click(function(){
		
		if($("#title").val() == "" ) {
			alert("제목을 입력해주세요.");
			("#title").focus();
			return false;
		}
		if($("#content").val() == "" ) {
			alert("내용을 입력해주세요.");
			("#content").focus();
			return false;
		}
					
  		var formdata = $("#frm").serialize();
  		//alert(formdata);
  		$.ajax({
  			type : "post",
  			url  : "nboardWriteSave.do",
  			data : formdata,
  			
  			datatype : "text",  //성공여부 ( ok ) 
  			success : function(data) {
  				
  				if(data == "Nok") {
  					alert("저장성공");
  					location="nBoardList.do";
  				} else if(data == "Fok") {
  					alert("저장성공");
					location="faqList.do";
  				}else {
  					alert("저장실패");
  				}
  				
  			},
  			error  : function() {
					alert("오류발생");
  			}
  			
  		});
		
		
		
	})
	
})


</script>


<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
       <%@include file = "../include/main_header.jsp" %>
    </header>
        
    <nav class="board_nav">
        <div >
            <%@include file="../include/board_subTab.jsp" %>
       </div>
    </nav>
 
    <section >
        <div class="board_sc_top">
            <div class="board_sc_title">
                공지사항 글쓰기
            </div>
        </div>
        
        <div style="width:100%; height:500px; border:1px solid #ccc; 
                    float:left; margin-top: 10px;">
                    
        <form name="frm" id="frm">
         
        <table style="width:100%;" class="table table-hover">
            <colgroup>
                <col width="15%" />
                <col width="*" />
            </colgroup>
            <tr>
            	<th class="">분류</th>
                <td class="" style="text-align:left;">
                	<select name="sort" id="sort">
                		<option value="N">공지사항</option>
						<option value="F">자주묻는질문</option>
                	</select>
                </td>
            </tr>
            <tr>
                <th class="">제목</th>
                <td class="" style="text-align:left;">
                    <input type="text" name="title" id="title" class="bd_input1" autofocus>
                </td>
            </tr>
            <tr>
                <th class="">글쓴이</th>
                <td class="" style="text-align:left;">	
                	<input type="text" name="name" id="name" value="관리자">
                </td>
            </tr>
            <tr>
                <th class="">내용</th>
                <td class="" style="text-align:left;">
                    <textarea name="content" id="content" class="bd_textarea"></textarea>
                </td>
            </tr>
        </table>
		</form>
        </div>


    </section>
    <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="board_btn_write">
        <button type="button" 
        		class="btn btn-outline-warning" 
                style="border-color: #f8cacc; color: black;"
                onclick="location.href='nBoardList.do'";
                >
            목록</button>
        <button type="button" 
        		class="btn btn-outline-warning" 
        		id="btn_save" 
                style="border-color: #f8cacc;background-color: #f8cacc; color: black;">
            저장</button>
    </div>
    

</div>
    <footer>
          <%@include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
