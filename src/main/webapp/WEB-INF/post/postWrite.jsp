<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� �ۼ�</title>

<script>
	function postWrite() {
		if (form.title.value == "") {
			alert("������ �Է��ϼ���.");
			form.title.focus();
			return false;
		} 
		else if (form.content.value == "") {
			alert("������ �Է��Ͻʽÿ�.");
			form.content.focus();
			return false;
		}	
	
		form.submit();
	}
	
</script>
</head>
<body>

<!-- header -->
   <jsp:include page="/WEB-INF/home/header.jsp" />
   
   <div style=" display: flex; justify-content: center;">

 <!--������ ��� exception ��ü�� ����� ���� �޽����� ��� -->
	<div>
		<c:if test="${creationFailed}">
			<h6><c:out value="${exception.getMessage()}"/></h6>
		</c:if>
	</div>	 
	
	
    <form class="form" name="form" method="POST" action="<c:url value='/post/add' />">
        <table style="margin-top: 100px;">
                <tr>
                <td height=20 align= center bgcolor=#8080FF><font color=white> �۾���</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                        <tr>
                        <td>�ۼ���</td>
                        <td><input type="text" name="name" size=20> </td>
                        </tr>
 
                        <tr>
                        <td>����</td>
                        <td> <input type="text" name="title" size=20
	            			<c:if test="${creationFailed}"> value="${post.title}"</c:if>>	  </td>
                        </tr>
 
                        <tr>
                        <td>����</td>
                        <td><textarea name="content" cols=85 rows=15></textarea></td>
                        </tr>
 
                      
                        </table>
 
                </td>
                </tr>
        </table>
        
  
		<input type="button" value="���" onClick="postWrite()"> &nbsp;
	    <input type="reset" value="�ʱ�ȭ">
    </form>
</div>

  <!-- footer -->
		<jsp:include page="/WEB-INF/home/footer.jsp"/>
</body>
</html>