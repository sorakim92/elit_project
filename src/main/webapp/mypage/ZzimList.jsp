<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>찜 목록 </title>
    <link rel="stylesheet" href="../css/layout.css">
    
</head>
<style>
@font-face {
  font-family: "Hanna";
  src: url("fonts/BMHANNAAir_ttf.ttf");
}

@font-face {
  font-family: "jua";
  src: url("fonts/BMJUA_ttf.ttf");
}
@font-face {
  font-family: "hanna";
  src: url("../fonts/BMHANNAAir_otf.otf");
}
@font-face {
  font-family: "jua";
  src: url("../fonts/BMJUA_otf.otf");
}

a {
  text-decoration: none;
  color: inherit;
}

html {
  height: 100%;
}

body {
  font-size: 16px;
  font-family: hanna;
  padding-left: 100px;
  height: 100%;
}

header {
  width: 1000px;
  height: 100px;
  /*background-color:#ffcc99;*/
  /*line-height:5.0;*/
}

.logo {
  width: 300px;
  height: 50px;
  float: left;
}
.search {
  width: 500px;
  height: 50px;
  float: left;
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

ul,
li {
  list-style: none;
}

.nav .gnb {
  float: left;
}

nav .gnb li {
  display: inline-block;
  margin-top: 28px;
  margin-left: 30px;
  padding: 10px;
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

section {
  width: 1000px;
  height: 900px;
  /*background-color:#92a8d1;*/
  text-align: center;
}

.footer {
  width: 100%;
  height: 100px;
  background-color: #ccc;
  position: absolute;
  bottom: 0;
  left: 0;
}

.ft_ul {
  width: 100%;
  height: 50px;
}
.ft_info {
  width: 100%;
  height: 50px;
  text-align: center;
  font-size: 14px;
  padding-bottom: 20px;
}
.ul1 {
  float: left;
  padding-top: 7px;
}

.ul1 li {
  font-size: 14px;
  list-style: none;
  float: left;
  border-left: 1px solid #ccc;
  padding-left: 10px;
  padding-right: 10px;
}

.ul2 {
  float: right;
  padding-top: 7px;
}

.ul2 li {
  font-size: 14px;
  list-style: none;
  float: left;
  border-left: 1px solid #ccc;
  padding-left: 10px;
  padding-right: 10px;
}

</style>
<body>
    <div class= "wrapper">
        <header class="width:100px; height:50px;">
            <div class="logo">
                <img src="../img/logo.png" width:"150px" height="50px" alt="로고">
            </div>
            <div class="search">
                <input type="text" name="" id="" class=""> 
                <img scr="" width="" height="" alt="돋보기">
            </div> 
            <div class="login">
                <button type="button" class="btn btn-outline-warning" style="border-color: #f8cacc; color: black;">로그인</button>
            </div> 
          
        </header>
        <nav>
          <div>
                <ul class="gnb">
                    <li><a href="#">주문내역</a></li>
                    <li><a href="#">회원정보수정</a></li>
                    <li><a href="#">문의내역</a></li>
                    <li><a href="#">찜목록</a></li>
                    <li><a href="#">리뷰관리</a></li>
                </ul>
            </div>
        </nav>
        <section class="content" padding-top: 30px;>
           
            <!--메뉴-->
             <div style="width:100%;">
                <table style="width:100%; text-align:left; border-bottom: 2px solid #ccc ">
                    <colgroup>
                        <col width="30%" />
                        <col width="*" />
                    </colgroup>
    
                    <tr>
                        <td rowspan="4">
                            <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                        border-radius: 2em;
                            margin:5px 20px 10px 20px; text-align: center;">
                                <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                            </div>
                        </td>
                        <td style="font-weight: bold; font-size:16px;"><span>업체명</span></td>
                        <td><span style="font-size:25px; font-weight: bold;">x</span></td>
                    </tr>
                    <tr>
                        <td><span>별점</span></td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                    </tr>
                    <tr >
                        <td style="padding-bottom:10px;">배달비</td>
                    </tr>
    
                     <tr>
                        <td rowspan="4">
                            <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                        border-radius: 2em;
                            margin:5px 20px 10px 20px; text-align: center;">
                                <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                            </div>
                        </td>
                        <td style="font-weight: bold; font-size:16px;"><span>업체명</span></td>
                        <td><span style="font-size:25px; font-weight: bold;">x</span></td>
                    </tr>
                    <tr>
                        <td><span>별점</span></td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                    </tr>
                    <tr >
                        <td style="padding-bottom:10px;">배달비</td>
                    </tr>
                    <tr>
                        <td rowspan="4">
                            <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                        border-radius: 2em;
                            margin:5px 20px 10px 20px; text-align: center;">
                                <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                            </div>
                        </td>
                        <td style="font-weight: bold; font-size:16px;"><span>업체명</span></td>
                        <td><span style="font-size:25px; font-weight: bold;">x</span></td>
                    </tr>
                    <tr>
                        <td><span>별점</span></td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                    </tr>
                    <tr >
                        <td style="padding-bottom:10px;">배달비</td>
                    </tr>
                    <tr>
                        <td rowspan="4">
                            <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                        border-radius: 2em;
                            margin:5px 20px 10px 20px; text-align: center;">
                                <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                            </div>
                        </td>
                        <td style="font-weight: bold; font-size:16px;"><span>업체명</span></td>
                        <td><span style="font-size:25px; font-weight: bold;">x</span></td>
                    </tr>
                    <tr>
                        <td><span>별점</span></td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                    </tr>
                    <tr >
                        <td style="padding-bottom:10px;">배달비</td>
                    </tr>
                    <tr>
                        <td rowspan="4">
                            <div style="width:130px; height: 130px; border: 1px solid #f8cacc; 
                                        border-radius: 2em;
                            margin:5px 20px 10px 20px; text-align: center;">
                                <img src="/img/addpic.png" alt="업체대표사진" width="100" height="100" name="" id="">
                            </div>
                        </td>
                        <td style="font-weight: bold; font-size:16px;"><span>업체명</span></td>
                        <td><span style="font-size:25px; font-weight: bold;">x</span></td>
                    </tr>
                    <tr>
                        <td><span>별점</span></td>
                    </tr>
                    <tr>
                        <td>배달소요시간</td>
                    </tr>
                    <tr >
                        <td style="padding-bottom:10px;">배달비</td>
                    </tr>
                </table>
            </div>
        </section>
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
    </body>
    </html>
    