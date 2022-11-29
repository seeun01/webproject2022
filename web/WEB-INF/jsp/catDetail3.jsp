<%--
  Created by IntelliJ IDEA.
  User: ssky6
  Date: 2022-11-26
  Time: 오후 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <!-- Web Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7cPlayfair+Display:400i" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Template core CSS-->
    <link href="../../css/template.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <%@ include file="./main/header.jsp"%>
    </div>

    <div class="wrapper">
        <!-- Hero-->
        <section class="module-cover parallax text-center" data-overlay="0.3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <img src = "../../img/jalu.png" />
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero end-->

        <!-- Blog-->
        <section class="module">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <!-- Post-->
                        <article class="post">
                            <div class="post-preview"><img src="assets/images/blog/1.jpg" alt=""></div>
                            <div class="post-wrapper">
                                <div class="post-header">
                                    <h1 class="post-title">Minimalist Chandelier</h1>
                                    <ul class="post-meta">
                                        <li>November 18, 2016</li>
                                        <li>In <a href="#">Branding</a>, <a href="#">Design</a></li>
                                        <li><a href="#">3 Comments</a></li>
                                    </ul>
                                </div>
                                <div class="post-content">
                                    <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth art party deep v chillwave. Seitan High Life reprehenderit consectetur cupidatat kogi.</p>
                                    <p>Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.</p>
                                    <blockquote class="blockquote">
                                        <p>To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.</p>
                                        <footer class="blockquote-footer">Amanda Pollock, Google Inc.</footer>
                                    </blockquote>
                                    <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>
                                    <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth art party deep v chillwave. Seitan High Life reprehenderit consectetur cupidatat kogi.</p>
                                    <ol>
                                        <li>Digital Strategy</li>
                                        <li>Software Development</li>
                                        <li>Interaction Design</li>
                                    </ol>
                                    <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>
                                    <p>Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.</p>
                                </div>
                                <div class="post-footer">
                                    <div class="post-tags"><a href="#">Lifestyle</a><a href="#">Music</a><a href="#">News</a><a href="#">Travel</a></div>
                                </div>
                            </div>
                        </article>
                        <!-- Post end-->

                        <!-- Comments area-->
                        <div class="comments-area m-b-50">
                            <h5 class="comments-title">3 Comments</h5>
                            <div class="comment-list">
                                <!-- Comment-->
                                <div class="comment">
                                    <div class="comment-author"><img class="avatar" src="assets/images/avatar/1.jpg" alt=""></div>
                                    <div class="comment-body">
                                        <div class="comment-meta">
                                            <div class="comment-meta-author"><a href="#">Jason Ford</a></div>
                                            <div class="comment-meta-date"><a href="#">May 5, 2015 at 4:51 am</a></div>
                                        </div>
                                        <div class="comment-content">
                                            <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>
                                        </div>
                                        <div class="comment-reply"><a href="#">Reply</a></div>
                                    </div>
                                    <!-- Subcomment-->
                                    <div class="children">
                                        <div class="comment">
                                            <div class="comment-author"><img class="avatar" src="assets/images/avatar/2.jpg" alt=""></div>
                                            <div class="comment-body">
                                                <div class="comment-meta">
                                                    <div class="comment-meta-author"><a href="#">Harry Benson</a></div>
                                                    <div class="comment-meta-date"><a href="#">May 5, 2015 at 4:51 am</a></div>
                                                </div>
                                                <div class="comment-content">
                                                    <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella.</p>
                                                </div>
                                                <div class="comment-reply"><a href="#">Reply</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Comment-->
                                <div class="comment">
                                    <div class="comment-author"><img class="avatar" src="assets/images/avatar/3.jpg" alt=""></div>
                                    <div class="comment-body">
                                        <div class="comment-meta">
                                            <div class="comment-meta-author"><a href="#">Henry Cain</a></div>
                                            <div class="comment-meta-date"><a href="#">May 5, 2015 at 4:51 am</a></div>
                                        </div>
                                        <div class="comment-content">
                                            <p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>
                                        </div>
                                        <div class="comment-reply"><a href="#">Reply</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-respond">
                                <h5 class="comment-reply-title">Leave a Reply</h5>
                                <p class="comment-notes">Your email address will not be published. Required fields are marked</p>
                                <form class="comment-form row">
                                    <div class="form-group col-md-4">
                                        <input class="form-control" type="text" placeholder="Name">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input class="form-control" type="text" placeholder="Email">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input class="form-control" type="url" placeholder="Website">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <textarea class="form-control" rows="8" placeholder="Comment"></textarea>
                                    </div>
                                    <div class="form-submit col-md-12">
                                        <button class="btn btn-dark" type="submit">Post Comment</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Comments area end-->
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div>
        <%@ include file="./main/footer.jsp"%>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
