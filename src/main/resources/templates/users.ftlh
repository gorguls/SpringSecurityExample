<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="row">
        <div class="col text-center">
            <h1>Users list</h1>
        </div>
    </div>
    <div class="row">
        <table class="table">
            <thead>
            <tr><th>Name</th><th>Role</th><th>Active</th><th>Edit</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td>${user.activ?string('yes', 'no')}</td>
                    <td><a href="/administration/user/${user.id}">Edit</a></td>
                </tr>
            </#list>
            </tbody>
        </table>

    </div>
</@c.page>