<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="row">
        <div class="col text-center">
            <h1> Login page</h1>
        </div>
        <@l.login isLoginForm=true />
    </div>
</@c.page>