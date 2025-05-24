<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="row">
        <div class="col text-center">
            <h1>User edit page</h1>
        </div>
    </div>
    <div class="row">
        <form action="/administration/users" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="userId" value="${user.id}">

<#--            <div class="row g-3 align-items-center">-->
<#--                <div class="col-auto">-->
<#--                    <label for="username" class="col-form-label">Username</label>-->
<#--                </div>-->
<#--                <div class="col-auto">-->
<#--                    <input type="text" name="username" class="form-control" value="${user.username}" id="username">-->
<#--                </div>-->
<#--            </div>-->

            <div class="row g-3 align-items-center">
                <div class="col-auto">
                    Username - ${user.username}
                </div>
            </div>


            <ul class="list-group m-2">
                <#list roles as role>
                    <li class="list-group-item">
                        <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}
                               id="${role}" class="form-check-input me-1">
                        <label class="form-check-label" for="${role}">${role}</label>
                    </li>
                </#list>
            </ul>


            <div class="form-check">
                <input type="checkbox" id="active" name="active" class="form-check-input"  ${user.activ?string("checked", "")}  />
                <label class="form-check-label" for="active">Active</label>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</@c.page>