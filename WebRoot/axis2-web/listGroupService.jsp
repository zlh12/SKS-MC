<%--
  ~ Licensed to the Apache Software Foundation (ASF) under one
  ~ or more contributor license agreements. See the NOTICE file
  ~ distributed with this work for additional information
  ~ regarding copyright ownership. The ASF licenses this file
  ~ to you under the Apache License, Version 2.0 (the
  ~ "License"); you may not use this file except in compliance
  ~ with the License. You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied. See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>

<%@page import="com.more.fw.core.common.method.CommMethodMc"%>
<%@ page import="org.apache.axis2.Constants" %>
<%@ page import="org.apache.axis2.description.AxisModule" %>
<%@ page import="org.apache.axis2.description.AxisOperation" %>
<%@ page import="org.apache.axis2.description.AxisService" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@page import="com.more.fw.core.staticresource.PlfStaticRes"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="include/httpbase.jsp"/>
  <title>List Services</title>
  <link href="axis2-web/css/axis-style.css?_mc_res_version=<%=PlfStaticRes.AXIS_STYLE_CSS %>" rel="stylesheet" type="text/css" />
</head>

<body>
<jsp:include page="include/adminheader.jsp"/>
<h1>Available services</h1>
<%
  String prefix = CommMethodMc.escapeJs(request.getAttribute("frontendHostUrl")) + (String)request.getSession().getAttribute(Constants.SERVICE_PATH) +"/";
%>
<%
    HashMap serviceMap = (HashMap) request.getSession().getAttribute(Constants.SERVICE_MAP);
    request.getSession().setAttribute(Constants.SERVICE_MAP,null);
    AxisService axisService = (AxisService) serviceMap.get(request.getParameter("serviceName"));
    if (axisService != null) {
        Iterator operations;
        String serviceName;
        operations = axisService.getOperations();
        serviceName = CommMethodMc.escapeJs(axisService.getName());//serviceName这里已经有转
%><hr>

<h2><font color="blue"><a href="<%=prefix + serviceName%>?wsdl"><%=serviceName%></a>
</font></h2>
<font color="blue">Service EPR :</font><font color="black"><%=prefix + serviceName%></font>
<h4>Service Description : <font color="black"><%=CommMethodMc.escapeJs(axisService.getServiceDescription())%></font></h4>
<i><font color="blue">Service Status : <%=axisService.isActive() ? "Active" : "InActive"%></font></i><br/>
<%
  Collection engagedModules = axisService.getEngagedModules();
  String moduleName;
  if (engagedModules.size() > 0) {
%>
<i>Engaged Modules for the Axis Service</i><ul>
  <%
    for (Iterator iteratorm = engagedModules.iterator(); iteratorm.hasNext();) {
      AxisModule axisOperation = (AxisModule) iteratorm.next();
      moduleName = axisOperation.getName();
  %><li><%=CommMethodMc.escapeJs(moduleName)%></li>
  <%
    }%>
</ul>
<%
  }
  if (operations.hasNext()) {
%><br><i>Available operations</i><%
} else {
%><i> There are no operations specified</i><%
  }
%><ul><%
  operations = axisService.getOperations();
  while (operations.hasNext()) {
    AxisOperation axisOperation = (AxisOperation) operations.next();
%><li><%=axisOperation.getName().getLocalPart()%></li>
  <%
    engagedModules = axisOperation.getEngagedModules();
    if (engagedModules.size() > 0) {
  %>
  <br><i>Engaged Modules for the Operation</i><ul>
  <%
    for (Iterator iterator2 = engagedModules.iterator(); iterator2.hasNext();) {
      AxisModule moduleDecription = (AxisModule) iterator2.next();
      moduleName = moduleDecription.getName();
  %><li><%=CommMethodMc.escapeJs(moduleName)%></li><br><%
  }
%></ul><%
    }

  }
%></ul>
<%
  }
%>
<jsp:include page="include/adminfooter.inc"/>
</body>
</html>
