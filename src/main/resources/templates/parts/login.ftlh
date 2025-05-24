<#macro login isLoginForm>
    <div class="row justify-content-center">
        <div class="col-4">
            <form action="<#if isLoginForm>/login<#else>/registration</#if>" method="post">

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
                    <button type="submit" class="btn btn-primary"><#if isLoginForm>Sign in<#else>Sign on</#if></button>
                </div>
            </form>
            <#if isLoginForm><a href="/registration">Зарегистрироваться</a></#if>
        </div>
    </div>
</#macro>
