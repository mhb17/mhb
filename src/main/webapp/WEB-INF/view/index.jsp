<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html class="bg-dark text-white">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>
<header>
    <%--<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">--%>
        <%--<img src="${pageContext.request.contextPath}/resources/mhb.jpg" width="250" height="70">--%>
        <%--<ul class="navbar-nav">--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Link</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Link</a>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</nav>--%>

    <div class="row"  >

        <div class="col"><h1 class="text-dark">MHB Sport NEWS</h1>
            <div class="spinner-grow text-primary"></div>
            <div class="spinner-grow text-info"></div>
            <div class="spinner-grow text-warning"></div>
            <div class="spinner-grow text-danger"></div>
            </div>
        <div class="col"><img src="${pageContext.request.contextPath}/resources/mhb.jpg" width="350" height="120"></div>
        <div class="col" >
            <br>
            <button type="button"  class="btn btn-outline-primary" style="margin:25px 0">log in</button>
            <button type="button" class="btn btn-outline-success" >sign up</button>
        </div>
    </div>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
            <a class="navbar-brand" href="#">MHB Sport</a>

            <ul class="navbar-nav">
                <li class="nav-item">

                    <div class="btn-group" class="row">
                        <button type="button" class="btn btn-primary">football</button>
                        <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="https://www.laliga.com/en-GB">la liga</a>
                            <a class="dropdown-item" href="https://www.premierleague.com/">premier league</a>
                            <a class="dropdown-item" href="http://www.legaseriea.it/en">serie A</a>
                            <a class="dropdown-item" href="https://www.persianleague.com/">Persian Gulf</a>
                            <a class="dropdown-item" href="https://www.uefa.com/uefachampionsleague/8">UCL</a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-secondary">team</button>
                        <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Link 1</a>
                            <a class="dropdown-item" href="#">Link 2</a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-success">player</button>
                        <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Link 1</a>
                            <a class="dropdown-item" href="#">Link 2</a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-info">basketball</button>
                        <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Link 1</a>
                            <a class="dropdown-item" href="#">Link 2</a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-warning">vollyball</button>
                        <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Link 1</a>
                            <a class="dropdown-item" href="#">Link 2</a>
                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger">tennis</button>
                        <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Link 1</a>
                            <a class="dropdown-item" href="#">Link 2</a>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
            </ul>
        </nav>

</header>
<br>
<div id="demo" class="carousel slide" data-ride="carousel" align="center">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/resources/3.jpg" alt="liverpool" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>liverpool</h3>
                    <p>We had such a great time </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/resources/2.jpg" alt="chelsea" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>Chelsea</h3>
                    <p>Thank you, Chelsea!</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/resources/1.jpg" alt="zenit" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>zenit</h3>
                    <p>sardar azmoon scores!</p>
                </div>
            </div>
        </div>

    </div>

    <a class="carousel-control-prev alert-dark" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon alert-dark"></span>
    </a>
    <a class="carousel-control-next alert-dark" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon alert-dark"></span>
    </a>
</div>

<c:forEach items="${newses}" var="item">
    ${item}<br>
</c:forEach>

</body>

</html>

