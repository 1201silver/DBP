<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
    <style>
.container {
	width: 385px;
	line-height: 50px;
	margin: 40px auto;
}

h5 {
	text-align: center;
}

h5 span {
	color: teal;
}

.login {
	background-color: #BBDEFB;
	color: white;
	border-radius: 5px;
	border: 0;
	padding: 10px 172px;
}

#signup {
	background-color: white;
	color: teal;
	border: 0;
	font-size: 17px;
}

p {
	text-align: center;
}

i {
	color: lightgray;
}

input {
	border: 1px solid lightgray;
	border-radius: 3px;
}
</style>
</head>
<body>
	<div class="container">

        	<h5><span>�α���</span> �������Դϴ�.</h5>
        <hr />
        <form action="login.do" method="post">
            <input type="text" placeholder="���̵�" name="id" required style="height:30px; width: 380px" /><br />
            <input type="password" placeholder="��й�ȣ" name="pw" required style="height:30px; width: 380px" /><br />
            <input type="submit" value="�α���" class="login" />
            <button onclick="location.href='main.jsp';" class="login" >HOME</button>
        </form>
        <hr />
        <p><a href="signup.jsp"><input type="button" value="ȸ������" id="signup" /></a></p>
    </div>
</body>
</html>