<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰관리</title>
    <link rel="stylesheet" href="../css/css.css">
    
</head>
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
        <section>
            <ul style="text-align: left; padding-top:10px;">
                <li>리뷰관리</li>
             </ul>
            <div style="margin-top: 20px; border-top: 1px solid #ccc; line-height: 2.0;">
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
                       
                    <div style="font-size:13px; text-align: left; padding-left: 0px;">                       
                        <span>주문상품</span>
                    </div>
                </div>
                <div style="font-size:13px; text-align: left; padding-left: 0px;">
                    <span>갯수 가격</span><br>
                    <span><img src="/img/star.png" style="width:20px; height:20px; ">5.0</span>
                </div>
            </table>
            <div style="font-size:16px; ; margin-left: 30px;  text-align: left;">
              <textarea cols="90" rows="20" placeholder="음식의 맛, 양, 포장 상태 등 음식에 대한 솔직한 리뷰를 남겨주세요."></textarea>
            </div>  

            <div>
            <button type="button" value="등록">등록</button>
            
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