<%@ page import="handler.action.CatDetailAction" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-28
  Time: 오전 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <meta charset="utf-8">
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Roboto+Slab&display=swap" rel="stylesheet">

    <style>
        *{
            font-family: 'Playfair Display', serif;
            font-family: 'Roboto Slab', serif;
        }
        img {
           /* width: 300px;
            height: 150px;*/
            object-fit: fill;
        }
    </style>
</head>
<%
    String catDetailData = (String) request.getAttribute("CatDetailData");
    System.out.println(catDetailData);
    String id = request.getParameter("id");
    System.out.println(id);
%>
<body>
    <div class="container">
        <%@ include file="./main/header.jsp"%>
    </div>
    <main class="container">
        <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
            <div class="col-md-6 px-0">
                <h1 class="display-4 fst-italic">입양하고 싶은 고양이를 선택해주세요!</h1>
                <p class="lead my-3">끝까지 책임질 수 있는 분만 입양해주세요</p>
            </div>
        </div>
        <div class="container">
            <h2 class="pb-2 border-bottom">상세소개</h2>
            <div class="row" id="card">
            </div>
            <hr>
        </div>
    </main>
    <script>
        $(document).ready(function(){
            makeCatDetail();
        })

        function makeCatDetail() {
            let detailCat = <%=catDetailData%>;
            let id = <%=id%>;
            let list = $('#card');
            let text = '';

                text +='<div class="col-md-6">'
                    +'<img src = "/img/'+ detailCat.fileName +'" style="width: 80%" style = "height: 80%"/></div>'
                    +'<div class="col-md-6"><div class="d-flex flex-column gap-2">'
                    +'<div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>'
                    +'<h4 class="fw-semibold mb-0">묘종</h4>'
                    +'<p class="text-muted border-bottom">'+ detailCat.catType +'</p></div>'
                    +'<div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>'
                    +'<h4 class="fw-semibold mb-0">나이</h4>'
                    +'<p class="text-muted border-bottom">' + detailCat.age + '</p></div>'
                    +'<div class="d-flex flex-column gap-2">'
                    +'<div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>'
                    +'<h4 class="fw-semibold mb-0">성별</h4>'
                    +'<p class="text-muted border-bottom">'+ detailCat.gender +'</p></div>'
                    +'<div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>'
                    +'<h4 class="fw-semibold mb-0">보호위치</h4>'
                    +'<p class="text-muted border-bottom">'+ detailCat.location +'</p></div>'
                    +'<div class="d-flex flex-column gap-2"><div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3"></div>'
                    +'<h4 class="fw-semibold mb-0">특이사항</h4>'
                    +'<p class="text-muted border-bottom">'+ detailCat.etc +'</p></div>'
                    +'<p><form name="addForm" action="addCart.do?id='+ id +'" method="post"></form>'
                    +'<a href="#" class="btn btn-info" onclick=""> 입양신청 &raquo;</a>'
                    +'<a class="btn btn-success" onclick="addToCart()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16"> <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/></svg>관심등록</a>'
                    +'<a href="cartList.do" class="btn btn-warning">관심목록보기&raquo;</a>'
                    +'<a href="main.do" class="btn btn-secondary">목록&raquo;</a>'
                    +'</div>'
            list.append(text);
        }

        function addToCart(){
            if(confirm("관심고양이로 추가되었습니다.")){
                let id = <%=id%>;
                window.location.href = 'addCart.do?id=' + id+ '';
            }
            else {
                document.addForm.reset();
            }
        }
    </script>
    <div>
        <%@ include file="./main/footer.jsp"%>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
