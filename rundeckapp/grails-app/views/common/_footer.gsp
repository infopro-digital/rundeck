<%@ page import="com.opensymphony.module.sitemesh.RequestConstants" %>
<div class="row">
<div class="col-sm-12">
    <g:message code="main.app.name"/>
    &copy; Copyright 2014 <a href="http://simplifyops.com">
    <span style="color:red;">#Simplify</span>Ops</a>.

    All rights reserved.

    <g:link controller="menu" action="licenses">Licenses</g:link>
    <g:set var="buildIdent" value="${grailsApplication.metadata['build.ident']}"/>
    <g:set var="appId" value="${g.message(code: 'main.app.name')}"/>
    <g:set var="versionDisplay" value="inline"/>
    <g:if test="${request.getAttribute(RequestConstants.PAGE)}">
        <g:ifPageProperty name='meta.tabpage'>
            <g:ifPageProperty name='meta.tabpage' equals='configure'>
                <g:set var="versionDisplay" value="block"/>
            </g:ifPageProperty>
        </g:ifPageProperty>
    </g:if>
    <g:if test="${versionDisplay != 'block'}">
        <span class="version"><g:enc>${buildIdent}</g:enc></span>

        <span class="rundeck-version-identity" data-version-string="${enc(attr: buildIdent)}"
              data-app-id="${enc(attr: appId)}"></span>
    </g:if>
</div>
</div>

<g:if test="${versionDisplay == 'block'}">
    <div class="row row-space">
    <div class="col-sm-12  ">
        <div class="rundeck-version-block" data-version-string="${enc(attr: buildIdent)}" data-app-id="${enc(attr: appId)}"></div>
    </div>
    </div>
</g:if>
