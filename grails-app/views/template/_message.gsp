<g:if test="${flash.message}">
    <div class="alert alert-success fade in">
        ${flash.message}
    </div>
</g:if>
<g:if test="${flash.warn}">
    <div class="alert alert-warning fade in">
        ${flash.warn}
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="alert alert-warning fade in">
        ${flash.error}
    </div>
</g:if>