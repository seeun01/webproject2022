<%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-30
  Time: 오후 8:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Roboto+Slab&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>입양신청</title>
    <%
        request.setCharacterEncoding("utf-8");
        String cartId = session.getId();
    %>
    <script>
        function addApplication() {
            let name = document.form.name.value;
            let age = document.form.age.value;
            let phone = document.form.phone.value;
            let location = document.form.location.value;
            //alert(name + age + phone + location);

            if(name == "") {
                alert("이름을 입력하세요");
                document.form.name.focus();
                return;
            }
            if(age == "") {
                alert("나이를 입력하세요");
                document.form.age.focus();
                return;
            }
            if(phone == "") {
                alert("전화번호를 입력하세요");
                document.form.phone.focus();
                return;
            }
            if(location == "") {
                alert("사는곳을 입력하세요");
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
                <h1 class="display-4 fst-italic">입양 신청서를 작성해주세요!</h1>
                <p class="lead my-3"></p>
                <p class="lead mb-0"><a href="#" class="text-white fw-bold"></a></p>
            </div>
        </div>

        <form name = "form" action="processAddApplication.do?id=<%=request.getParameter("id")%>" class="form-horizontal" method="post" enctype="multipart/form-data" accept-charset="utf-8">
            <input type = "hidden" name = "catId" value="<%=request.getParameter("id")%>" id = id>
            <div class="mb-3">
                <label for="name" class="form-label">이름</label>
                <input name = "name" type="text" class="form-control" id="name" placeholder="">
            </div>
            <div class="mb-3">
                <label for="age" class="form-label">나이</label>
                <input name = "age" type="text" class="form-control" id="age" placeholder="">
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">전화번호</label>
                <input name = "phone" type="text" class="form-control" id="phone" placeholder="">
            </div>
            <div class="mb-3">
                <label for="location" class="form-label">사는곳</label>
                <input name = "location" type="text" class="form-control" id="location" placeholder="">
            </div>
            <div class="mb-3">
                <input class="w-100 btn btn-lg btn-secondary" type = "button" value="신청" onclick="addApplication()">
            </div>
        </form>
    </main>
    <div>
        <%@ include file="./main/footer.jsp"%>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</div>
</body>
</html>
