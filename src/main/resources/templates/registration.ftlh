<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/securedPage">Secured page</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/administration">Administration</a>
                    </li>

                </ul>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn btn-primary">Выйти</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div class="container text-center m-2">
    <div class="row">
        <div class="col">
            <h1> Registration page</h1>
            <form action="/registration" method="post">

                <input type="hidden" name="_csrf" value="${_csrf.token}">

                <div class="mb-3">
                    <label for="username" class="form-lable">Username : </label>
                    <div class="col-sm-10">
                        <input type="text" name="username" id="username" class="form-control" />
                    </div>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-lable">Password: </label>
                    <div class="col-sm-10">
                        <input type="password" name="password" id="password" class="form-control"/>
                    </div>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Sign on</button>
                </div>
            </form>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>