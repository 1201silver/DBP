<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%  // DAO�� ����� Ʈ������
int arr[] = null;
%>    
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="EUC-KR">
	<title>��å �󼼺���</title>
	<style>
		#detail {
			padding-left: 150px;
			width: 80%;
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
	
	</style>
	</head>
	<script>
	function chkDelete(id) {
	//  ���� ���� Ȯ��
	   var r = confirm("�����Ͻðڽ��ϱ�?");
	   
	   if (r) {
	      location.href = "deleteOk.jsp?uid=" + id;
	   }
	}
	</script>
	<body>
	
<!-- header -->
 <jsp:include page="/header.jsp"/>
	
	<div id="detail">
	<h3>
	${policy.name} </h3>
	${policy.contents} <br><br>
	
	<b>�������</b><br><br>
	<table>
	<tr>
	<th>�ڰ� ���</th>  
	<td>${policy.qualificationForApplication}</td>
	</tr>
	<tr>
	<th>����</th>
	<td>${policy.local} </td>
	</tr>
	<tr>
	<th>����</th>
	<td>${policy.startAge} - ${policy.endAge}</td>
	</tr>
	<tr>
	<th>�ҵ����</th>
	<td>
	${policy.income} ���� ���� 
	</td>
	</tr>
	</table>
	<br>
	<b>��û ���</b><br><br>
	<table>
	<tr>
	<th>�����Ⱓ	</th>
	<td>${policy.startDate} - ${policy.endDate} </td>
	</tr>
	<tr>
	<th>�������</th>
	<td>
	${policy.howToApply} </td>
	
	</table>
	
	<br>
	</div>

	
</body>
</html>