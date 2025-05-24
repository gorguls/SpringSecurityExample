<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="row">
        <div class="col text-center">
            <h1> Login page</h1>
        </div>
        <div class="row justify-content-center">
            <div class="col-4">
                <form action="/login" method="post">

                    <input type="hidden" name="_csrf" value="${_csrf.token}">

                    <div class="mb-3">
                        <label for="username" class="form-lable">Username : </label>
                        <div class="col-sm-10">
                            <input type="text" name="username" id="username" class="form-control"/>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-lable">Password: </label>
                        <div class="col-sm-10">
                            <input type="password" name="password" id="password" class="form-control"/>
                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                </form>
                <a href="/registration">Зарегистрироваться</a>
            </div>
        </div>
    </div>
</@c.page>