<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
    <link rel="stylesheet" href="../css/css.css">
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
        

    
<style>
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
}    
.navbar_menu {
  display: flex;
  list-style: none;
  border-bottom: 2px solid #ccc;
  padding-left: 0;
}
.navbar_menu li {
  padding: 8px 12px;
  margin-top: 20px;
}
.navbar_menu li:hover {
  background: pink;
  border-radius: 4px;
}
@media screen and(max-width: 768px) {
  .navbar {
    flex-direction: column;
    padding: 8px 12px;
  }
  .navbar-menu {
    flex-direction: column;
    width: 100%;
  }

  .navbar-menu li {
    width: 100%;
    text-align: center;
  }
}
.box > .nail {
  border: 1px solid #ccc;
  width: 100%;
  height: 100px;

}
.box2 {
        margin-top: 20px;
        width: 100%;
}
</style>
    <section>
 <!-- 마이페이지 부분 시작 -->   
 
 <nav class="navbar">
    <div style="width:100%;">
        <ul class="navbar_menu">
            <h4 class="h4">마이페이지</h4>
            <li><a href="#">주문내역</a></li>
            <li><a href="#">회원정보수정</a></li>
            <li><a href="#">문의내역</a></li>
            <li><a href="#">찜목록</a></li>
            <li><a href="#">리뷰관리</a></li>
            <li><a href="#">ADMIN</a></li>
        </ul>
    </div>
</nav>

<section>
    <div class="lmage">
        <div class="box">
            <p class="nail">
                <img src="../img/id.png"  alt="이미지">
                
                ELIT을 이용해 주셔서 고맙습니다."
            </p>
                
                   
               
            </div>
            <div class="box2">
                <table border="1">
                    <colgroup>
                        <col style="width: 5%;">
                        <col style="width: 25%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <colgroup>
                        <tr align="center">
                            <th scope="col">번호</th>
                            <th scope="col">쿠폰명</th>
                            <th scope="col">쿠폰적용 상품</th>
                            <th scope="col">구매금액</th>
                            <th scope="col">결제수단</th>
                            <th scope="col">쿠폰혜택</th>
                            <th scope="col">사용여부</th>
                            <th scope="col">사용가능 기간</th>
                        </tr>
                    </colgroup>                        
                        <tr style="height: 100px;">
                            <td colspan="8" class="message">보유하고 계신 쿠폰 내역이 없습니다</td>
                        </tr>                        
                </table>

        <p style="text-align: left; margin-top: 10px;">
            주문내역
        </p>   
         <div style="margin: 0; border-top: 1px solid #ccc; line-height: 2.0;">
        <!-- 상위 추천메뉴 이외에 -->
        <table style="margin-top: 10px; width:100%;" class="cate_tbl2"> 
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
    <td>
        <div style="width:120px; height: 120px; border: 1px solid #f8cacc; border-radius: 2em;
        margin:5px 20px 10px 20px; text-align: center;">
            <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
        </div>
    </td>
    <td style="text-align: left; ">
        <span style="font-weight: bold;">가게이름</span>
            <button type="button" style="float: right;" value="주문상세">주문상세</button>
               
            <div style="font-size:13px; text-align: left; padding-left: 0px;">                       
                <span>주문상품</span>
            </div>
        </div>
        <div style="font-size:13px; text-align: left; padding-left: 0px;">
            <span>갯수 가격</span><br>
            <span><img src="/img/star.png" style="width:20px; height:20px; ">5.0</span>
        </div>
    </table>     
    <!--주문내역-->








    </section>
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
