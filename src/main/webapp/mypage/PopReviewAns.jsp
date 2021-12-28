<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
.review.title {
    float: left;
}
.contents {
    width: 500px;
    height: 300px;
    text-align: left;
}
.btn_submit {
    width:100px;
    height:40px;
    color:white;
    background:orange
   
}
.btn1_submit {
    width:100px;
    height:40px;
    color:black;
    background:white
   

}

</style>
<script>



	$(function() {
		$("#btn_submit").click(function(){ 
			
			
			if( $("#contents").val() == "" ) {
				alert("내용을 입력해주세요.");
				$("#contents").focus();
				return false;
			}
			

			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "popReviewAnsWrite.do",
				data : formdata,
				
				//processData : false,
				//contentType : false,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("저장완료");
						opener.document.location="storeReviewList.do";
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
	


<body>
	<form name="frm" id="frm">
  <div align="center" >
        <h3 id="" class="review.title">답변하기</h3><br>
  </div>
    
        <div align="center">
                <input name="contents" id="contents"  class="contents"  ></input>
       </div>
                    
   

        <br><br>
        <div class="win_btn" align="center">
            <button type="button"  id="btn_submit" class="btn_submit"  >답변등록</button>
            
            <button type="reset" class="btn1_submit" onclick="window.close();">취소</button>
        </div>
	</form>
    
</body>
</html>