<%@ page import="handler.dao.CatDAO" %>
<%@ page import="handler.dto.CatDTO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-29
  Time: 오전 10:39
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

    ArrayList<CatDTO> catsList = dao.getAllCatData();
    CatDTO cats = new CatDTO();
    for(int i = 0; i < catsList.size(); i++){
        cats = catsList.get(i);
        if(cats.getOid().equals(id)){
            break;
        }
    }

    ArrayList<CatDTO> list = (ArrayList<CatDTO>) session.getAttribute("catList");
    if(list == null){
        list = new ArrayList<CatDTO>();
        session.setAttribute("catList", list);
    }

    list.add(cats);
    System.out.println(list);
    response.sendRedirect("catDetail.do?id=" + id);
%>
