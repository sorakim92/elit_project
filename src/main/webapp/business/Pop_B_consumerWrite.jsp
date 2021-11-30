<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sample</title>
  
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


<fieldset>

    <div class="total">
    
        <div class="">
            <font class="field_title">*분류</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="" id="" class= "field_cho" >
                <option value="" class="">분류선택</option>
                <option value="">리뷰테러</option>
                <option value="">가격테러</option>
                <option value="">급작취소</option>
                <option value="">잘못된 주소정보</option>
            </select>   
        </div><br>

        <div class="">
            <label class="field_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*작성일</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" class="field_bl" id="" title="" maxlength="16">
        </div><br>

        <div class="">
            <label class="field_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*작성자 아이디</label>&nbsp;&nbsp;&nbsp;
            <input type="password" class="field_bl" id="pw" title="">
        </div><br>

        <div class="">
            <label class="field_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*컨슈머 아이디 </label>&nbsp;
            <input type="text" class="field_bl" id="" title=""><br>
        </div><br>

        <div class="">
            <label class="field_title" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*이유</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea class="field_area" >100자 이내로 작성해주세요</textarea>   
        </div>
        
    </div>  <br><br> 

    <div class="button1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn1">등록</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn2">취소</button>
    </div>
</fieldset>


