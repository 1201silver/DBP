<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���</title>
</head>
<body>
<table>
    <tr>
        <th colspan="2">��� ���</th>
    </tr>
    <c:choose>
        <c:when test="${message != null }">
            <tr>
                <td>${message }</td>
            </tr>
        </c:when>
        <c:otherwise>
            <c:forEach var="list" items="${list }">
                <tr>
                    <td><font size="1.5"><b>${list.cid }</b>
                        ${list.ctime }
                        <c:if test = "${sessionId.id == list.cid }">
                            <b>
                                <a href="javascript:open_win('BoardServlet?command=comment_edit_delete&cnum=${list.cnum }','noname')">[����/����]</a>
                            </b>
                        </c:if>
                        </font>
                        <br>
                            ${list.ccontent }
                    </td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</table>
<form action = "BoardServlet" method = "post" name = "check">
<input type = "hidden" name = "command" value = "comment_write">
<input type = "hidden" name = "pnum" value = "${param.num }">
<table>
    <tr>
        <th>���</th>
        <td><textarea rows="3" cols="40" name = "c_content"></textarea></td>
    
        <td><input type = "submit" value = "��۴ޱ�" onclick = "return com_check()"></td>
    </tr>
</table>
</form>
 
<c:forEach var="i" begin = "1" end ="${totalCount }" step="1">
    <a href="BoardServlet?command=board_view&num=${param.num }&page=${i}">[${i}]</a>
</c:forEach> 
<br>
</body>
</html>