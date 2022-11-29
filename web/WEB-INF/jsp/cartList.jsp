<%@ page import="handler.dto.CatDTO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-29
  Time: 오전 11:09
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
    <title>장바구니</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <%
        String cartId = session.getId();
       /* ArrayList<CatDTO> cartlist = (ArrayList<CatDTO>)session.getAttribute("catList");
        CatDTO cat = null;
        if(cartlist==null) {
            cartlist = new ArrayList<CatDTO>();
        }
        for(int i=0; i< cartlist.size(); i++) {
            cat = cartlist.get(i);
        }*/
    %>
</head>
<style type="text/css">
    table{
        width:100%;
    }
    tr{
        height:70px;
    }
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
<body>
<div class="container">
    <%@ include file="./main/header.jsp"%>
</div>
<div class="container">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
        <div class="col-md-6 px-0">
           <%-- <h1 class="display-4 fst-italic">관심목록</h1>--%>
        </div>
    </div>
    <h2 class="pb-2 border-bottom">관심목록</h2>
    <hr>
</div>
<div class="album py-5 bg-light">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4" id="card">
            <%
                int sum=0;
                ArrayList<CatDTO> cartlist = (ArrayList<CatDTO>)session.getAttribute("catList");
                if(cartlist==null)
                    cartlist = new ArrayList<CatDTO>();
                for(int i=0; i< cartlist.size(); i++){
                    CatDTO cat = cartlist.get(i);
            %>
            <div class="col">
                <div class="card shadow-sm">
                    <img src = "/img/<%=cat.getCatImage()%>" class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/></img>
                    <div class="card-body">
                        <p class="card-text"><%=cat.getCatType()%></p>
                        <p><%=cat.getAge()%>살</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a class="btn btn-sm btn-outline-secondary" href="catDetail.do?id=<%=cat.getOid()%>">상세보기</a>
                            </div>
                            <small class="text-muted"></small>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<%--<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">장바구니</h1>
    </div>
</div>
<div class="container">
    <div class="row">
        <table width="100%">
            <tr>
                <td align="right"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a>
                    <a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
            </tr>
        </table>
    </div>
    <div style="padding-top:50px">
        <table class="table table-hover">
            <tr>
                <th>상품</th>
                <th>가격</th>
                <th>수량</th>
                <th>소재</th>
                <th>비고</th>
            </tr>
            <%
                int sum=0;
                ArrayList<CatDTO> cartlist = (ArrayList<CatDTO>)session.getAttribute("catList");
                if(cartlist==null)
                    cartlist = new ArrayList<CatDTO>();
                for(int i=0; i< cartlist.size(); i++){
                    CatDTO cat = cartlist.get(i);
            %>
            <tr>
                <td><%=cat.getOid()%>-<%=cat.getCatType()%></td>
                <td><%=cat.getAge()%></td>
                <td><%=cat.getGender()%></td>
                <td><%=cat%></td>
                <td><a href="" class="badge badge-danger">삭제</a></td>
            </tr>
            <%
                }
            %>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th>총액</th>
                <th><%=sum%></th>
            </tr>
        </table>
        <a href="./books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
    </div>
</div>--%>
<%--<script>
    $(document).ready(function(){
        makeCatCard();
    })

    function makeCatCard(){

        let cartlist = <%=cat%>;
        let list = $('#card');
        let text = '';

        console.log(cartlist);

        for(let i=0; i<cartlist.length; i++){
            //cat = cartlist[i];
            let id = i +1;
            text+='<div class="col">'
                +'<div class="card shadow-sm">'
                +'<img src = "/img/' + cartlist[i].fileName + '" class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/></img>'
                +'<div class="card-body">'
                +'<p class="card-text">' + cartlist[i].catType + '</p>'
                +'<p>' + cartlist[i].age + '살</p>'
                +'<div class="d-flex justify-content-between align-items-center">'
                +'<div class="btn-group">'
                /*+'<button type="button" class="btn btn-sm btn-secondary" href = "catDetail.do">상세보기</button>'*/
                +'<a class="btn btn-sm btn-outline-secondary" href="catDetail.do?id=' + id + '">상세보기</a>'
                +'</div>'
                +'<small class="text-muted"></small>'
                +'</div>'
                +'</div>'
                +'</div>'
                +'</div>'
            }
            list.append(text);
    }
</script>--%>
<div>
    <%@ include file="./main/footer.jsp"%>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>