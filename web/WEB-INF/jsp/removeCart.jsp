<%@ page import="handler.dao.CatDAO" %>
<%@ page import="handler.dto.CatDTO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-29
  Time: 오후 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");

    CatDAO dao = CatDAO.getInstance();

    CatDTO cat = dao.getCat(id);
    if(cat == null){
        response.sendRedirect("exceptionNoProductId.jsp");
    }

    ArrayList<CatDTO> list = (ArrayList<CatDTO>) session.getAttribute("catList");
    CatDTO cats = new CatDTO();

    for(int i = 0; i < list.size(); i++){
        cats = list.get(i);
        if(cats.getOid().equals(id)){
            list.remove(cats);
        }
    }

    response.sendRedirect("cartList.do");
%>
