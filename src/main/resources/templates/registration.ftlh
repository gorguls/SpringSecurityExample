<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="row">
        <div class="col text-center">
            <h1> Registration page</h1>
        </div>
        <#if errorMessage??><div class="text-center">${errorMessage}</div></#if>
        <@l.login false />
    </div>
</@c.page>