<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� �󼼺���</title>
<style>
		.container {
			width: 80%;
			line-height: 50px;
			margin: 100px auto;
			margin-bottom: 100px;
		}
		
		h5 {
			text-align: center;
		}
		
		h5 span {
			color: teal;
		}
		


		table {
			border: 1px solid lightgray;
			border-collapse: collapse;
			padding: 10px;
			width: 90%; 
		}
		 th, td {
    		border: 1px solid #EDEDED;
    		padding: 5px;
 
  		}
  		th {
  			background-color: #F5F5F5;
  			width: 90px;
  			font-weight: normal;
  		}
  		 #btn {
		 	text-decoration:none
		 }


</style>
<script>
function postRemove() {
	return confirm("���� �����Ͻðڽ��ϱ�?");		
}
</script>

</head>
<body>
	
<!-- header -->
 <jsp:include page="/header.jsp"/>
	<div class="container">
        	<h5><span>�� �󼼺���</span></h5>
        	
	<table>
    
	  	  <tr>
			<th>����</th>
			<td>${post.title}</td>
		  </tr>
		  <tr>
			<th>�ۼ���</th>
			<td>${post.userId}</td>
		  </tr>
		  <tr>
			<th>��¥</th>
			<td>${post.writeDate}</td>
		  </tr>
		  <tr>
			<th>����</th>
			<td>${post.content}</td>
		  </tr>
	
	</table>
	<!-- ����/���� -->
	
	����  ���� 
	
	
	<!-- ��� ���� -->
	<div style="margin-top: 50px;">
	<form name="form" method="POST" action="<c:url value='/post/reply/add' />">
		<input type="text" name="comment" placeholder="�����  �ۼ��ϼ���" style="width:85%; height: 50px; border-radius: 8px; border: none; background-color: #F5F5F5;">
		<input type="submit" value="���" style="border: none; height: 50px; width: 50px; border-radius: 8px; " />
	</form>
	</div>
	
	<!-- ��� ����  -->
	<div>
	
	
	</div>
	
	
	<!-- ����, ����, ���  -->
	<div style="text-align: center; padding: 50px;">
		<a id="btn" href="<c:url value='/post/update'>
		     		   <c:param name='commId' value='${post.post_id}'/>
				  </c:url>">����</a>		  
	    <a id="btn" href="<c:url value='/post/delete'>
					   <c:param name='commId' value='${post.post_id}'/>
				 </c:url>" onclick="return communityRemove();">����</a> 
	    <a id="btn" href="<c:url value='/post/list' />">���</a> 
    
    </div>

</div>

</body>
</html>