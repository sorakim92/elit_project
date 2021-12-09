<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<script>

</script>
<body>
 
<table border="1" width="300" height="300" align= "center">
<center>
<span style="color: green; font-weight: bold;">변경할 비밀번호를 입력해주세요.</span> <br> <br>    
        <br> <br>
        
        
    <div style="text-align:center;">
        <tr>        
            <td><form name="frm" method="post">
                <div style="text-align:center;">
            변경할 비밀번호 입력 : <input type = "number" name = "newuserpw" id="newuserpw" placeholder = "비밀번호를 입력하세요." >

            <br> <br>
            <button type="submit" name="submit">비밀번호 변경</button>
            </div>
                    
                </form>
                </td>
            </tr>
    </div>
</center>
</table>
 
</body>
</html>