<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--<%@page import = "model.dto.*" %>-->
<!--<%@page import = "model.dao.*" %>-->
<!--<%@page import ="controller.product.*" %>-->

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
		
		#policyTypeMenu {
			
			width: 100px;
			background-color: lightgray;
			
		}
		#policyTypeMenu li:hover {
			background-color: #635BFF;
			color: white;
		}
		ul {
			list-style-type: none;
		
		}
		li {

		display: block;
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
	<td>${viewItem.local} </td>
	</tr>
	<tr>
	<th>����</th>
	<td>${viewItem.age} </td>
	</tr>
	<tr>
	<th>�ҵ����</th>
	<td>
	${viewItem.income} ���� ���� 
	</td>
	</tr>
	</table>
	<br>
	<b>��û ���</b><br><br>
	<table>
	<tr>
	<th>�����Ⱓ	</th>
	<td>${viewItem.period} </td>
	</tr>
	<tr>
	<th>�������</th>
	<td>
	${viewItem.howToApply} </td>
	
	
	</table>
	
	<br>
	</div>

	
</body>
</html>