<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script>
	var message = "${msg}";
	var url = "${url}";
	alert(message);
// 	alert(url);
	document.location.href= url;
</script>