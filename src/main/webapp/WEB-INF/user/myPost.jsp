<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="/WEB-INF/home/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �� ��</title>
<style>

	table {
			border: 1px solid lightgray;
			border-collapse: collapse;
			padding: 10px;
			margin-top: 80px;
			margin: 100px auto;
			width: 70%; 
			align: center;
		}
	th, td {
    		border: 1px solid #EDEDED;
    		padding: 5px;
 
  		}
  		
</style>
</head>
<body>
	<table>
      <thead>
		<tr>
		  <td style="width: 80%">����</td>
		  <td>��¥</td>
		</tr>
      </thead>
      <tbody>  	 
		<c:forEach var="post" items="${postList}">
			<tr>
			  <td style="width: 70%"><a href="<c:url value='/post/view'>
						      <c:param name='postNum' value='${post.postNum}'/>
						   </c:url>">
				  ${post.title} </a>
			  </td>
			  <td>${post.writeDate}</td>
			</tr>
		</c:forEach>
	  </tbody>
	</table>


</body>
</html>
 <%@ include file="/WEB-INF/home/footer.jsp" %>