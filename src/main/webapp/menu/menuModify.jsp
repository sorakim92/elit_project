<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function uploadImgPreview() {
    	let fileInfo = document.getElementById("menuimage").files[0];
    	let reader = new FileReader();
		
        reader.onload = function() {

            document.getElementById("thumbnailImg").src = reader.result;

        };
	
		if( fileInfo ) {

		            // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.
		    reader.readAsDataURL( fileInfo );
		
	     }
    	

    }

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
</style>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <div class="logo">
            <img src="../img/logo.png" width="200px" height="100px" alt="로고">
            <h4>사장님광장</h4>
        </div>
        <div class="search">
        <!-- 돋보기누를때 input 박스 활성화 -->
            <input type="text" name="" id="" class=""> 
            <img src="../img/mag.png" width="15" height="15" alt="돋보기">
            <a href>마이페이지</a>
            <a href>사장님 광장</a>
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div class="">
          
            <a href><font size="4" color="black">주문관리 |</font></a>
            <a href><font size="4">메뉴관리 |</font></a>
            <a href><font size="4" color="black">광고신청/관리 |</font></a>
            <a href>><font size="4" color="black">커뮤니티</font></a>
        </div>
    </nav>
        
    
     <section>
     <form name="frm" id="frm" action="menuModify.jsp">
        <div style="text-align:left;" >
            <font size="5">메뉴수정</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </div>
        <br>
        <div class=""  margin:0 auto; width:800px;>
            
            
        </div>
        <br>
        <div>
            
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>나의 메뉴 </h3>
                            
                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-6" sytle="text-align:left">
                                        <div class="form-group" >
                                        <label for="" class="fieldTitle" >메뉴명</label>
                                        <a id="edit-" href="#">수정</a>
                                        <input type="menu" class="emailField form-control" name="menuname" id="menuname" value="${vo.menuname}" required disabled>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="fieldTitle" for="'first_name">소개글</label>
                                            <input type="text" placeholder="" value="${vo.menuinfo}" class="emailField form-control"  name="menuinfo" id="menuinfo">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="fieldTitle" for="last_name">가격</label>
                                            <input type="text" placeholder="" value="${vo.price}" class="emailField form-control"  name="price" id="price">
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
                                                    <select name="menukeyword" id="menukeyword" value="${vo.menukeyword }" class="form-control country-code">
                                                        <option value="">추천메뉴</option>
                                                        <option value="">인기메뉴</option>
                                                        <option value="">음료</option>
                                                    </select>
                                                    
                                                 </div> 
                                            <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="fieldTitle" for="last_name">이미지</label><br><br>
                                                        <img id="thumbnailImg" value="${vo.thumbnailImg}" src="" style:width=400px; height=300px;"><br>
                                                    </div>   
                                                </div><br> 
                                                <div>
                                            		<label class="fieldTitle" for="last_name">이미지 변경 </label>
                                                    <input  type="file" id="menuimage" onChange="uploadImgPreview();"   accept="image/*" > </input>
                                                </div>  
                                                <br><br>
                                                 
                                                
                </div>

        </div>
        
</section>
<div style="text-align:center;" >
    <button type="submit"class="btn3" id="btn3">수정</button>
    <button type="reset" class="btn3" id="btn2">취소</button>
</div>
 </form>             
    
    <footer>
        <div class="footer">
            <div class="ft_ul">
                <ul class="ul1">
                    <li>공지사항</li>
                    <li>고객센터</li>
                    <li>입점문의</li>
                    <li>회원탈퇴</li>
                </ul>
                <ul class="ul2">
                    <li>이용약관</li>
                    <li>개인정보처리방침</li>
                </ul>
            </div>
            <div class="ft_info">
                (주) 이릿딜리버리...? 사업자등록번호 131-0000-0000<br>
                 주소 서울송파구 ********************* <br>
                COPYRIGHT ~~~~~~~~~ ALL RIGHT RESERVED
            </div>
        </div>
    </footer>
</div>
</body>
</html>
