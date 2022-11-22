<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-21
  Time: 오후 5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>글 등록하기</title>
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/blog/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        /* stylelint-disable selector-list-comma-newline-after */

        h1, h2, h3, h4, h5, h6 {
            font-family: "Playfair Display", Georgia, "Times New Roman", serif/*rtl:Amiri, Georgia, "Times New Roman", serif*/;
        }

        .display-4 {
            font-size: 2.5rem;
        }
        @media (min-width: 768px) {
            .display-4 {
                font-size: 3rem;
            }
        }

        .flex-auto {
            flex: 0 0 auto;
        }

        .h-250 { height: 250px; }
        @media (min-width: 768px) {
            .h-md-250 { height: 250px; }
        }

        /* Pagination */
        .blog-pagination {
            margin-bottom: 4rem;
        }

        /*
         * Blog posts
         */
        .blog-post {
            margin-bottom: 4rem;
        }
        .blog-post-title {
            font-size: 2.5rem;
        }
        .blog-post-meta {
            margin-bottom: 1.25rem;
            color: #727272;
        }

    </style>

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
    <script>
        function addCat() {
            let catImage = document.form.catImage.value;
            let catType = document.form.catType.value;
            let age = document.form.age.value;
            let gender = document.form.gender.value;
            let location = document.form.location.value;
            let etc = document.form.etc.value;
            //alert(cat_type + age + gender + location);

            if(catImage == "") {
                alert("사진을 업로드하세요");
                document.form.catType.focus();
                return;
            }
            if(catType == "") {
                alert("묘종을 입력하세요");
                document.form.catType.focus();
                return;
            }
            if(age == "") {
                alert("나이를 입력하세요");
                document.form.age.focus();
                return;
            }
            if(gender == "") {
                alert("성별을 입력하세요");
                document.form.gender.focus();
                return;
            }
            if(location == "") {
                alert("보호위치를 입력하세요");
                document.form.location.focus();
                return;
            }
            if(etc == "") {
                alert("특이사항을 입력하세요");
                document.form.location.focus();
                return;
            }

           document.form.submit();
        }
    </script>
</head>

<body>
    <div class="container">
        <%@ include file="./main/header.jsp"%>
    </div>
    <main class="container">
        <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
            <div class="col-md-6 px-0">
                <h1 class="display-4 fst-italic">분양 보내고 싶은 고양이를 등록해주세요!</h1>
                <p class="lead my-3">고양이에 대한 자세한 설명을 작성해주세요</p>
                <p class="lead mb-0"><a href="#" class="text-white fw-bold"></a></p>
            </div>
        </div>

        <form name = "form" action="processAddCat.do" class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class = "mb-3">
                <label for="uploadFile" class="form-label">사진</label>
                <div class="input-group">
                    <input type="file" class="form-control" name="catImage" id="uploadFile" accept="image/*">
                    <%--button class="btn btn-secondary" class="input-group-text" onclick="uploadfile()">업로드</button>--%>
                </div>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">묘종</label>
                <input name = "catType" type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">나이</label>
                <input name = "age" type="text" class="form-control" id="exampleFormControlInput2" placeholder="">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput3" class="form-label">성별</label>
                <input name = "gender" type="text" class="form-control" id="exampleFormControlInput3" placeholder="">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput5" class="form-label">보호위치</label>
                <input name = "location" type="text" class="form-control" id="exampleFormControlInput5" placeholder="">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput4" class="form-label">특이사항</label>
                <textarea name = "etc" type="text" class="form-control" id="exampleFormControlInput4" placeholder=""></textarea>
            </div>
            <div class="mb-3">
                <input class="w-100 btn btn-lg btn-secondary" type = "button" value="등록" onclick="addCat()">
            </div>
        </form>
        <%--<img src = "/img/cat.png" />--%>
    </main>
    <div>
        <%@ include file="./main/footer.jsp"%>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
