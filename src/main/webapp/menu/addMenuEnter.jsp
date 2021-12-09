<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  	<link rel="stylesheet" href="css/headFooter.css">
  	
	
	
	
<script type="text/javascript">
	
    function uploadImgPreview() {

    	// @breif 업로드 파일 읽기

    	let fileInfo = document.getElementById("file1").files[0];

    	let reader = new FileReader();
		

        // @details readAsDataURL( )을 통해 파일을 읽어 들일때 onload가 실행

        reader.onload = function() {

            // @details 파일의 URL을 Base64 형태로 가져온다.

            document.getElementById("thumbnailImg").src = reader.result;

        };
	
		if( fileInfo ) {

		            // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.
		    reader.readAsDataURL( fileInfo );
		
	     }
    	
    }

</script>

<script>
			
  	$(function() {
  		$("#btn_save").click(function(){ 
  			
  			if( $("#menuname").val() == "" ) {
  				alert("메뉴명을 입력해주세요.");
  				$("#menuname").focus();
  				return false;
  			}
  			if( $("#menuinfo").val() == "" ) {
  				alert("소개글을 입력해주세요.");
  				$("#menuinfo").focus();
  				return false;
  			}
  			if( $("#price").val() == "" ) {
  				alert("가격 입력해주세요.");
  				$("#price").focus();
  				return false;
  			}
  			if( $("#menukeyword").val() == "" ) {
  				alert("구분 선택해주세요.");
  				$("#menukeyword").focus();
  				return false;
  			}
  			
	
  			var formdata = $("#frm").serialize();
  			$.ajax({
  				type : "post",
  				url  : "menuWriteSave.do",
  				data : formdata,
  				
  				//processData : false,
  				//contentType : false,
  				
  				datatype : "text",  // 성공여부 (ok)
  				success : function(data) {
  					if (data == "ok") {
  						alert("저장완료");
  						location="menuList.do";
  					} else {
  						alert("저장실패");
  					}
  				},	
  				error : function() {
  					alert("오류발생");
  				}
  			});
  		});
  	});
 </script>
  	
 

</head>
<style>
@font-face {
    font-family: "hanna";
    src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
    font-family: "jua";
    src: url("../fonts/BMJUA_otf.otf");
}
html{
    height: 100%;
}
body {
    font-size: 16px;
    font-family: hanna;
    padding-left:100px;
    height:100%;
}
header {
	width:1000px;
	height:100px;
	/*background-color:#ffcc99;*/
	/*line-height:5.0;*/
}
nav {
	width:1000px;
	height:100px;
	/*background-color:#f8cacc;*/
	text-align:center;
	line-height:3.5;
}
.wrapper {
    width: 1000px;
    min-height: calc(100vh-70px);
    position: relative;
    /*background-color: beige;*/
    padding: 10px;
    flex-direction: column;
    display: flex;
    margin: auto;
}
.logo {
    width:  300px;
    height: 50px; 
    float : left;
}
.logo1 {
    width:  300px;
    height: 50px; 
    float : left;
}
.search {
    width: 500px;
    height: 50px;
    float : left;
    margin: 20px 0 0 0;
    text-align: right;
}
.login {
    width: 150px;
    height: 50px;
    float: left;
    margin: 20px 50px 0 0;
    text-align: right;
}



section {
	width:1000px;
	height:900px;
	/*background-color:#92a8d1;*/
	text-align:center;
}


.footer {
	width:100%;
    height:100px;
	background-color:#ccc;
    position: absolute;
    bottom: 0;
    left: 0;
}
.ft_ul {
    width:100%;
    height:50px;
}
.ft_info {
    width:100%;
    height:50px;
    text-align: center;
    font-size:14px;
    padding-bottom:20px;
}
.ul1{
    float:left;
    padding-top:7px;
}

.ul1 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;
}

.ul2{
    float:right;
    padding-top:7px;
}

.ul2 li{
    font-size:14px;
    list-style:none;
    float:left;
    border-left:1px solid #ccc;
    padding-left:10px;
    padding-right:10px;   
}
.th {
    text-align:left;
}
.upImgFile {
	width: 200px;
	margin-top: 50px;
}

</style>

<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
     
    
     <header class="width:100%; height:50px;">
        <div class="logo" style=" cursor: pointer;" onclick="location.href='mainPage.do';">
    	<img src="<c:url value='/img/logo.png'/>" width="200px" height="100px" alt="로고"/>
	    <h4>사장님광장</h4>
	    </div>
        <div class="search">
            <a href>마이페이지</a>
            <a href>사장님 광장</a>
        </div> 
       
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
    
        
    <nav>
        <div class="">
          
            <a href><font size="4" color="black">주문관리 |</font></a>
            <a href><font size="4">메뉴관리 |</font></a>
            <a href><font size="4" color="black">광고신청/관리 |</font></a>
            <a href><font size="4" color="black">커뮤니티</font></a>
        </div>
    </nav>
        
    <form name="frm" id="frm" enctype="miltipart/form-data"  > 
     <section>
     	
        <div style="text-align:left;" >
            <font size="5">메뉴추가</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </div>
        <br>
        <div class=""  margin:0 auto; width:800px;>
            
            
        </div>
        <br>
        <div>
        
	<div class="row">
    	<div class="col-sm-12">
      
        
<fieldset>
    <div class="row">
        <div class="col-sm-6" sytle="text-align:left">
            <div class="form-group" >
            <label for="" class="fieldTitle" >메뉴명</label>
            <input type="text" class="emailField form-control" name="menuname" id="menuname" >
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label class="fieldTitle" for="'first_name">소개글</label>
                <input type="text" placeholder="" value="" class="emailField form-control"  id="menuinfo" name="menuinfo">
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="fieldTitle" for="last_name">가격</label>
                <input type="text" placeholder="" value=""  class="emailField form-control"  id="price" name="price">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-12">
                    <label class="fieldTitle" for="phone1">구분</label>
                </div>

                        
        <div class="col-sm-12">
             <div class="form-group">   
                        <select type="text" name="menukeyword"   id="menukeyword" class="form-control country-code">
                            <option value="">추천메뉴</option>
                            <option value="인기메뉴">인기메뉴</option>
                            <option value="음료">음료</option>
                        </select>
                        
              </div> 
              <div class="col-sm-12">
            <div class="form-group" >
                  <label class="fieldTitle" for="last_name">이미지 넣기</label><br><br>
                  <input  type="file"   name="file1" id="file1" onChange="uploadImgPreview();"  accept="image/*" ></input>
           </div>
                       
                  <img id="thumbnailImg" name="thumbnailImg"  style="width:400px; height:300px;">
                  <br/>						
                        
        </div><br> <br><br><br><br>  
                       
                 

        </div>

    </div>
    
</section>
<div style="text-align:center;" >
    <button type="button" id="btn_save">적용</button>
    <button type="reset">취소</button>
</div>   
 </form>  
 
  
 </div>

    <footer>
      <%@ include file = "../include/main_footer.jsp" %>
    </footer>
</div>
</body>
</html>
