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
               <%-- <div class="col-md-6">
                    <img src = "/img/dana.png" style="width: 80%" style = "height: 80%"/>
                </div>
                <div class="col-md-6">
                    <div class="d-flex flex-column gap-2">
                        <div
                                class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
                        </div>
                        <h4 class="fw-semibold mb-0">묘종</h4>
                        <p class="text-muted border-bottom">터키쉬앙고라</p>
                    </div>
                    <div class="d-flex flex-column gap-2">
                        <div
                                class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
                        </div>
                        <h4 class="fw-semibold mb-0">나이</h4>
                        <p class="text-muted border-bottom">5살</p>
                    </div>
                    <div class="d-flex flex-column gap-2">
                        <div
                                class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
                        </div>
                        <h4 class="fw-semibold mb-0">성별</h4>
                        <p class="text-muted border-bottom">여</p>
                    </div>
                    <div class="d-flex flex-column gap-2">
                        <div
                                class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
                        </div>
                        <h4 class="fw-semibold mb-0">보호위치</h4>
                        <p class="text-muted border-bottom">인천광역시 낙섬동로 104</p>
                    </div>
                    <div class="d-flex flex-column gap-2">
                        <div
                                class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-4 rounded-3">
                        </div>
                        <h4 class="fw-semibold mb-0">특이사항</h4>
                        <p class="text-muted border-bottom">아주 귀엽고귀엽고귀여움</p>
                    </div>
                    <p>	<form name="addForm" action="" method="post"></form>
                    <a href="#" class="btn btn-info" onclick="addToCart()"> 도서 주문 &raquo;</a>
                    <a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
                    <a href="books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
                </div>--%>
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
                    +'<p><form name="addForm" action="" method="post"></form>'
                    +'<a href="#" class="btn btn-info" onclick=""> 입양신청 &raquo;</a>'
                    +'<a href="" class="btn btn-warning">관심등록&raquo;</a>'
                    +'<a href="" class="btn btn-secondary">목록&raquo;</a>'
                    +'</div>'
            list.append(text);
        }
    </script>
    <div>
        <%@ include file="./main/footer.jsp"%>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
