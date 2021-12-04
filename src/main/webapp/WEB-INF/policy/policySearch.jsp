<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"> 
<title>��å ã��</title>
<style type="text/css">

	table {
			border: 1px solid lightgray;
			border-collapse: collapse;
			margin-top: 30px;
			width: 100%; 
			align: center;
		}
		 th, td {
    		border: 1px solid #EDEDED;

  		}
  		
  		
		ul {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    background-color: #333;
		}
		ul:after{
		    content:'';
		    display: block;
		    clear:both;
		}
		li {
		    float: left;
		}
		li a {
		    display: block;
		    color: white;
		    text-align: center;
		    padding: 14px 16px;
		    text-decoration: none;
		}
		li a:hover:not(.active) {
		    background-color: #111;
		}
		.active {
		    background-color: #8080FF;
		}
		#board, #bList, #pageForm {
		    text-align :center;
		}
		
		.policySearch-div {
			margin-top: 50px;
			width: 80%;
			margin-left: 120px;
			
			}

</style>
<script>
function uncheck(){
	$(':checkbox:checked').prop('checked',false);
};
</script>
</head>
<body>
<form action = "<%= request.getContextPath() %>/policySearch.jsp">

  	<!-- header -->
   <jsp:include page="/WEB-INF/home/header.jsp" />
   
<div class="policySearch-div">
	<b>��å����</b>
	<input type="checkbox" name="contents" value="�������">�������
	<input type="checkbox" name="contents" value="â������">â������
	<input type="checkbox" name="contents" value="�ְű���">�ְű���
	<input type="checkbox" name="contents" value="��Ȱ����">��Ȱ����
	<input type="checkbox" name="contents" value="��å����">��å����

	<hr/><b>�ҵ���� </b>
	<select id="income" name="income">
		<option value="">����</option>
		<c:forEach var="i" begin="1" end="10" step="1">
			<option value="${i}">${i}</option>
		</c:forEach>
	</select>
	<hr/><b>�������� </b>
	<!-- ���� ����, ���, ��õ,  ����, ���, ��û��, ���ֵ�, ������ -->
	<input type="checkbox" name="local" value="����">����
	<input type="checkbox" name="local" value="��⵵">��⵵
	<input type="checkbox" name="local" value="��õ">��õ
	<input type="checkbox" name="local" value="����">����
	<input type="checkbox" name="local" value="���">���
	<input type="checkbox" name="local" value="������">������
	<input type="checkbox" name="local" value="��û��">��û��
	<input type="checkbox" name="local" value="���ֵ�">���ֵ�
	
	
	
	<hr/><b>���� </b>
	<select id="age" name="age">
		<option value="">��</option>
		<c:forEach var="i" begin="0" end="30">
			<option value="${i}">${i}</option>
		</c:forEach>
	</select>
	<br>
	<br>
	<input type="submit" value="�˻�">
	<br>
	<br>

	<input type="button" value="������ ���ΰ�ħ" onClick="window.location.reload()">
	
	
</form>
  <!-- ��å ��� �κ� -->
    <br>
    <div id="board">
        <table>
         <tr>
                <td>��å��</td>
                <td>����</td>
                <td style="width: 60%;">���</td>
         </tr>

        <c:forEach var="policy" items="${polList}">
            <tr>
                <td>
                    <a href="<c:url value='/policy/view'>
                    <c:param name='policy' value='${policy.policyId}'/>
                    </c:url>">
                    ${policy.name}
                    </a>
                </td>
                <td>${policy.category}</td>
                <td>${policy.policySummary}</td>
                
            </tr>  
		</c:forEach>
	
        </table>
    </div>
    
    <!-- ������ �ѹ� �κ� -->
    <br>
    <div id="pageForm">
        <c:if test="${startPage != 1}">
            <a href='BoardListAction.bo?page=${startPage-1}'>[ ���� ]</a>
        </c:if>
        
        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
            <c:if test="${pageNum == spage}">
                ${pageNum}&nbsp;
            </c:if>
            <c:if test="${pageNum != spage}">
                <a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
            </c:if>
        </c:forEach>
        
        <c:if test="${endPage != maxPage }">
            <a href='BoardListAction.bo?page=${endPage+1 }'>[����]</a>
        </c:if>
    </div>
    
	</div>
     <!-- footer -->
	<jsp:include page="/WEB-INF/home/footer.jsp"/>

</body>
</html>