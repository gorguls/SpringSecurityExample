<#include "security.ftlh">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Navbar</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <#if known>
                    <li class="nav-item">
                        <a class="nav-link" href="/securedPage">Secured page</a>
                    </li>
                </#if>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" href="/administration">Administration</a>
                    </li>
                </#if>
                <#if !known>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Log in</a>
                    </li>
                </#if>
            </ul>
            <#if known>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn btn-primary">Выйти</button>
                </form>
            </#if>
        </div>
    </div>
</nav>
<#--<div>${known?string('yes', 'no')}</div>-->
<#--<div>${name}</div>-->
<#--<div>admin - ${isAdmin?string('yes', 'no')}</div>-->