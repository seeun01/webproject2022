<%@ page import="java.net.URLDecoder" %>
<%@ page import="handler.dto.CatDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="handler.dao.CatDAO" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-12-01
  Time: 오후 6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

   String catId = session.getId();
    //String catId = request.getParameter("id");

    System.out.println(catId);

    String application_name = "";
    String application_age = "";
    String application_phone = "";
    String application_location = "";

    Cookie[] cookies = request.getCookies();
    if (cookies != null){
        for(int i=0; i<cookies.length; i++){
            Cookie thisCookie = cookies[i];
            String n = thisCookie.getName();
            if(n.equals("application_name"))
                application_name = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
            if(n.equals("application_age"))
                application_age = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
            if(n.equals("application_phone"))
                application_phone = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
            if(n.equals("application_location"))
                application_location = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
        }
    }
%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <meta charset="UTF-8">
    <title>입양신청 정보</title>
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Roboto+Slab&display=swap" rel="stylesheet">

    <style>
        *{
            font-family: 'Playfair Display', serif;
            font-family: 'Roboto Slab', serif;
        }
    </style>
</head>
<body>
    <div class="container">
        <%@include file="./main/header.jsp"%>
    </div>

    <main class="container">
        <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
            <div class="col-md-6 px-0">
                <h1 class="display-4 fst-italic">입양 신청 내역</h1>
                <%-- <h1 class="display-4 fst-italic">관심목록</h1>--%>
            </div>
        </div>
    <div class="container">
        <h2 class="pb-2 border-bottom"></h2>
    </div>
        <hr>
        <div class="text-center">
            <%--<h2 class="pb-2 border-bottom">입양 신청 정보</h2>--%>
        </div>
        <div>
            <table class="table table-hover">
                <tr class = "table-dark">
                    <th class="text-center font-weight-bold">이름</th>
                    <th class="text-center font-weight-bold">나이</th>
                    <th class="text-center font-weight-bold">전화번호</th>
                    <th class="text-center font-weight-bold">위치</th>
                </tr>
                <tr class = "table-light">
                    <td class="text-center"><em><%=application_name%></em></td>
                    <td class="text-center"><%=application_age%></td>
                    <td class="text-center"><%=application_phone%></td>
                    <td class="text-center"><%=application_location%></td>
                </tr>
            </table>
        </div>
        </div>
       <%-- <h2 class="pb-2 border-bottom">입양 신청 정보</h2>--%>
        <div class="row" id="card">
            <%

                ArrayList<CatDTO> catlist = (ArrayList<CatDTO>)session.getAttribute("catList");
                if(catlist == null)
                    catlist = new ArrayList<CatDTO>();

                CatDTO cat = catlist.get(0);
            %>

            <div class="col-md-6">
                <img src = "/img/<%=cat.getCatImage()%>" style="width: 80%" style = "height: 80%"/></div>
            <div class="col-md-6">
                <div class="d-flex flex-column gap-2">
                    <div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>
                    <h4 class="fw-semibold mb-0">묘종</h4>
                    <p class="text-muted border-bottom"><%=cat.getCatType()%></p></div>
                <div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>
                    <h4 class="fw-semibold mb-0">나이</h4>
                    <p class="text-muted border-bottom"><%=cat.getAge()%></p></div>
                <div class="d-flex flex-column gap-2">
                    <div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>
                    <h4 class="fw-semibold mb-0">성별</h4>
                    <p class="text-muted border-bottom"><%=cat.getGender()%></p></div>
                <div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>
                    <h4 class="fw-semibold mb-0">보호위치</h4>
                    <p class="text-muted border-bottom"><%=cat.getLocation()%></p></div>
                <div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>
                    <h4 class="fw-semibold mb-0">특이사항</h4>
                    <p class="text-muted border-bottom"><%=cat.getEtc()%></p></div>
               <%--<a href="main.do" class="btn btn-secondary">확인&raquo;</a>--%>
                </div>
            <hr>
        </div>
        <a href="main.do" class="w-100 btn btn-lg btn-secondary">확인&raquo;</a>
    </main>
    <%@include file="./main/footer.jsp"%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
