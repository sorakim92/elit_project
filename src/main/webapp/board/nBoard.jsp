<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 1</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
    clear:both;
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
.article_nav {
    display: inline-block;
}
.article_nav li {
    font-size:16px;
    list-style:none;
    float:left;
    padding-left:10px;
    padding-right:10px;
    padding-bottom: -20px;
}
</style>
<body>
<div class="wrapper">
    <div class="main" style="min-height: 100%; padding-bottom:100px; flex:1;">
    <header class="width:100%; height:50px;">
        <div class="logo">
            <img src="../img/logo.png" width="200px" height="100px" alt="로고">
        </div>
        <div class="search">
        <!-- 돋보기누를때 input 박스 활성화 -->
            <input type="text" name="" id="" class=""> 
            <img src="../img/mag.png" width="15" height="15" alt="돋보기">
        </div> 
        <!-- 기능: 로그아웃상태에서는 로그인 버튼,  로그인상태에서는 마이페이지 | 로그아웃 -->
        <div class="login">
            <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
        </div>
    </header>
        
    <nav>
        <div style="width:100%; 
                    height:50px; border-bottom: 1px solid #ccc;">
            <ul class="article_nav">
                <li>공지사항</li>
                <li>FAQ</li>
                <li>문의하기</li>
            </ul>
       </div>
    </nav>
        




    <section >
        <div style="width:100%; height:auto; padding:10px;  margin: -40px;">
            <div style="width:70%; text-align: left; margin-left:40px;
                        font-family: jua; float:left;">
                공지사항
            </div>
            <div style="float:left; width:25%;">
                <img src="../img/mag.png" width="15" height="15" alt="돋보기">
                <input type="text" name="" id="" class="" value="검색어를입력하세요"> 
            </div>
        </div>
        
        <div style="width:100%; height:500px; border:1px solid #ccc; 
                    float:left; margin-top: 10px;">
        <table style="width:100%;" class="table table-hover">
            <colgroup>
                <col width="*" />
                <col width="15%" />
                <col width="10%" />
            </colgroup>
            <tr>
                <td>개인정보처리방침 개정안내 </td>
                <td>20xx.xx.xx</td>
                <td>xxxhits</td>
            </tr>
            <tr>
                <td colspan="3">
                    <br> == 내용 ==  
                </td>
            </tr>
        </table>

        </div>
  

        <div style="width:100%; float:left; margin-top:20px; font-size:13px;">
            <table style="width:100%;" class="table table-hover">
                <colgroup>
                    <col width="*" />
                    <col width="10%" />
                  
                </colgroup>
                <tr>
                    <td>개인정보처리방침 개정안내 </td>
                    <td>2021.11.02</td> 
                </tr>
                <tr>
                    <td>개인정보처리방침 개정안내 </td>
                    <td>2021.11.02</td>
                </tr>
                <tr>
                    <td>개인정보처리방침 개정안내 </td>
                    <td>2021.11.02</td>
                </tr>
            </table>
        </div>
    </section>
    <!-- 글쓰기 버튼부분 (관리자)-->

    <div class="" style=" width: 100%;
    height: 50px;
    margin: 20px 50px 0 0;
    text-align: right;">
        <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">글쓰기</button>
    </div>
    
<!-- 페이징 -->
    <div style=" font-size:10px; " >
    <nav aria-label="Page navigation example" 
    class="d-flex justify-content-center"
    style="display:inline-block;">
        <ul class="pagination" >
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
      </div>


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
