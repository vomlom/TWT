<#import "parts/common.ftl" as c>
<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" class="form-control" value="${filter!}" placeholder="Search by tag">
            <button class="btn btn-primary ml-2" type="submit">Search</button>
        </form>
    </div>
</div>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse" id="collapseExample">
    <div class="form-goup mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input class="form-control" type="text" name="text" placeholder="Your message"/>
            </div>
            <div class="form-group">
                <input class="form-control" type="text" name="tag" placeholder="Tag">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input id="customFile" type="file" name="file">
                    <label for="customFile" class="custom-file-label">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button class="btn btn-primary" type="submit">Добавить</button>
        </form>
    </div>
</div>

<div class="card-columns">
<#list messages as message>

    <div class="card my-3 card">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
        </#if>
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>



        <div class="card-footer text-muted">
            ${message.authorName}
        </div>


    </div>

<#else>
No Messages
</#list>
</div>
</@c.page>