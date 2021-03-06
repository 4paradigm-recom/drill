<#--

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<#include "*/generic.ftl">
<#macro page_head>
</#macro>

<#macro page_body>
<a href="/logs">back</a><br/>
<div class="page-header">
</div>
<h3>${model.getName()} <span class="badge alert-info">(last ${model.getMaxLines()} lines)</span></h3>
<p>
    <a href="/log/${model.getName()}/download">Download Full Log</a>
</p>
    <#if (model.getLines()?size > 0)>
    <pre>
        <#list model.getLines() as line>
${line}
        </#list>
     </pre>
    <#else>
    <div id="message" class="alert alert-info">
        <strong>Log is empty.</strong>
    </div>
    </#if>
</#macro>

<@page_html/>