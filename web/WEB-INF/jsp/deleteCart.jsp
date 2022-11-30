<%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-29
  Time: 오후 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("cartId");

    session.invalidate();

    response.sendRedirect("cartList.do");
%>

