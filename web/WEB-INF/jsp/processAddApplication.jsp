<%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-12-01
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="java.net.URLEncoder"%>
<%
    request.setCharacterEncoding("utf-8");
/*    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String phone = request.getParameter("phone");
    String location = request.getParameter("location");*/

    //System.out.println(name + age + phone + location + "");
    request.setCharacterEncoding("utf-8");
    Cookie name = new Cookie("application_name", URLEncoder.encode((String)request.getAttribute("name"),"utf-8"));
    Cookie age = new Cookie("application_age", URLEncoder.encode((String)request.getAttribute("age"),"utf-8"));
    Cookie phone = new Cookie("application_phone", URLEncoder.encode((String)request.getAttribute("phone"),"utf-8"));
    Cookie location = new Cookie("application_location", URLEncoder.encode((String)request.getAttribute("location"),"utf-8"));
    String catId = request.getParameter("catId");

    //System.out.println(name);

    name.setMaxAge(24*60*60);
    age.setMaxAge(24*60*60);
    phone.setMaxAge(24*60*60);
    location.setMaxAge(24*60*60);

    response.addCookie(name);
    response.addCookie(age);
    response.addCookie(phone);
    response.addCookie(location);

    response.sendRedirect("applicationConfirmation.do?id="+catId);
%>

