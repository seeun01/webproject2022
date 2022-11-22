<%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-22
  Time: 오전 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<head>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <%
        request.setCharacterEncoding("UTF-8");
        String text = (String)request.getAttribute("text");
        System.out.println("text is " + text);
    %>
</head>
<script>

    $(document).ready(function(){
        addCat();
    })
    function addCat() {
        $.ajax({
            url: "ajax.do",
            type: "POST",
            data: {
                req: "addCat",
                data: "<%=text%>",
            },
            success: function (data) {
                alert(data);
                location.href = "/";
            }
        })
    }
</script>
