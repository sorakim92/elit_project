<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  	
</head>
<style>

.field_title {
    font-size: 20px;
    text-align: center;
}

.field_cho {
    width:150px;
    height:40px;
}
.field_bl {
    width:300px;
    height:30px;
}
.field_area {
    width:300px;
    height:70px;
}
.total {
    text-align:center;
}
.button1 {
    text-align:center;
}
.btn1 {
    width:70px;
    height:30px;
    color: white;
    background-color: orange;
    
    
}
.btn2 {
    width:70px;
    height:30px;
    border-color: orange;
    background-color: white;
    color:black;
}
</style>

<script>
			
  	$(function() {
  		$("#btn1").click(function(){ 
  			
  			if( $("#b_group").val() == "" ) {
  				alert("분류 선택 해주세요.");
  				$("#b_group").focus();
  				return false;
  			}
  			if( $("#rdate").val() == "" ) {
  				alert("작성일을 입력해주세요.");
  				$("#rdate").focus();
  				return false;
  			}
  			if( $("#userid").val() == "" ) {
  				alert("작성자 아이디 입력해주세요.");
  				$("#userid").focus();
  				return false;
  			}
  			
  			if( $("#ment").val() == "" ) {
  				alert("이유 입력해주세요.");
  				$("#ment").focus();
  				return false;
  			}
  			
	
  			var formdata = $("#frm").serialize();
  			$.ajax({
  				type : "post",
  				url  : "b_ConsumerListWriteSave.do",
  				data : formdata,
  				
  				//processData : false,
  				//contentType : false,
  				
  				datatype : "text",  // 성공여부 (ok)
  				success : function(data) {
  					if (data == "ok") {
  						alert("저장완료");
  						opener.document.location="b_consumerList.do";
  						self.close();
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



<form name="frm" id="frm">    
<fieldset>

    <div class="total">
		
        <div class="">
            <font class="field_title">*분류</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="b_group" id="b_group" class= "field_cho" >
                <option value="" class="">분류선택</option>
                <option value="리뷰테러">리뷰테러</option>
                <option value="가격테러">가격테러</option>
                <option value="급작취소">급작취소</option>
                <option value="잘못">잘못된 주소정보</option>
            </select>   
        </div><br>

        <div class="">
            <label class="field_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*작성일</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" class="field_bl" id="rdate" name="rdate" title="rdate" maxlength="16">
        </div><br>

        <div class="">
            <label class="field_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*유저 아이디</label>&nbsp;&nbsp;&nbsp;
            <input type="text" class="field_bl" id="userid" name="userid" title="">
        </div><br>

        

        <div class="">
            <label class="field_title" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*이유</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea class="field_area" name="ment" id="ment" ></textarea>   
        </div>
        
    </div>  <br><br> 

    <div class="button1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" id="btn1" class="btn1" >등록</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<button type="reset" class="btn2" onclick="window.close();">취소</button>
    </div>
    </form>
</fieldset>
</html>



