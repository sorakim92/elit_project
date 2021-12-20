<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
    .pagination li a {
    	color : #474747;
    }
    
</style>
    
    <nav aria-label="Page navigation example" 
    class="d-flex justify-content-center"
    style="display:inline-block;">
    
        <ul class="pagination" >
        
         <c:if test="${vo.page_sno > 1 }">
          <li class="page-item">
          	<a class="page-link" href="${requestScope['javax.servlet.forward.request_uri']}?page_no=1&s_field=${s_field}&s_text=${s_text}" aria-label="Previous">
              <img src="img/dbleArrowLeft.png" width="11" >
            </a>
          </li>
     	  <li class="page-item" style="padding:0">
            <a class="page-link" href="${requestScope['javax.servlet.forward.request_uri']}?page_no=${vo.page_sno-1}&s_field=${s_field}&s_text=${s_text}" aria-label="Previous">
              <img src="img/prev.png" width="7">
            </a>
          </li>
         </c:if>
	          
	          <c:forEach var="i" begin="${vo.page_sno }" end="${vo.page_eno }">
	          	<li class="page-item">
	          		
			          	<a 
			          	<c:if test="${vo.page_no == i }"> style = "font-weight:bold; color: #92a8d1;"
			          	</c:if> 
			          	class="page-link" href="${requestScope['javax.servlet.forward.request_uri']}?page_no=${i }&s_field=${s_field}&s_text=${s_text}">
		    		      	${i }
		    		    </a>
	    		    </li>
	          </c:forEach>
          
            <c:if test="${vo.page_eno < vo.total_page }">
	          <li class="page-item">
	          	<a class="page-link" href="${requestScope['javax.servlet.forward.request_uri']}?page_no=${vo.page_eno+1 }&s_field=${s_field}&s_text=${s_text}" aria-label="Next">
	              <img src="img/next.png" width="7" >
	            </a>
	          </li>
	     	  <li class="page-item">
	            <a class="page-link" href="${requestScope['javax.servlet.forward.request_uri']}?page_no=${vo.total_page}&s_field=${s_field}&s_text=${s_text}" aria-label="Next">
	              <img src="img/dbleArrowRight.png" width="11" >
	            </a>
	          </li>
         </c:if>

        </ul>
      </nav>