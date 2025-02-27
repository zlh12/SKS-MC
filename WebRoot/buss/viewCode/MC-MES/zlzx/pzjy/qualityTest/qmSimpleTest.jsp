<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl" %>
<%@ include file="/plf/common/pub_tag.jsp" %>
<%@page import="com.more.fw.core.staticresource.PlfStaticRes" %>
<!-- 页面加载前 -->
<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="beforePageLoad"/>
</jsp:include>
<head>
    <title>
        <dict:lang value="QT-简单质检-列表"/>
    </title>
    <%@ include file="/plf/common/pub_meta.jsp" %>
    <jsp:include page="/plf/common/fp/pub_head_fp.jsp">
        <jsp:param name="popDivWinFp" value="1"/>
        <jsp:param name="datePicker" value="1"/>
        <jsp:param name="chosen" value="1"/>
        <jsp:param name="msData" value="1"/>
        <jsp:param name="scroll" value="1"/>
        <jsp:param name="jqueryprint" value="1"/>

    </jsp:include>
    <%@ include file="/plf/page/common/buss/bussCommJs.jsp" %>
    <%@ include file="/plf/page/common/buss/listCommJs.jsp" %>
    <bu:header formId="50c012f45e304e2993fb61b37d32e6be"/>


    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
        <jsp:param name="modelName" value="VIEW_TYPE_17"/>
        <jsp:param name="location" value="inHead"/>
    </jsp:include>
    <!-- head里面 -->
    <!-- 产品静态资源 -->


    <object id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0>
        <embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
    </object>

</head>

<body>
<div class="content-in">
    <div class="dlist">
        <div class="hd">
            <bu:func viewId="305e5fbcca544e5ebb423f1d352958ee"/>
        </div>
        <div class="bd">
            <div class="search-box">
                <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                        <jsp:param name="modelName" value="VIEW_TYPE_17"/>
                        <jsp:param name="location" value="searchForm"/>
                    </jsp:include>


                    <table class="search_table">
                        <bu:search deal_mark="1" viewId="305e5fbcca544e5ebb423f1d352958ee"/>

                    </table>

                </form>
                <a href="javascript:void(0);" class="more"></a>
            </div>
            <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.ConstantsMc@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
                    <jsp:param name="location" value="listForm"/>
                </jsp:include>
                <input type="hidden" name="formPage50c012f45e304e2993fb61b37d32e6be" id="formPage50c012f45e304e2993fb61b37d32e6be" value="${formPage50c012f45e304e2993fb61b37d32e6be}"/>
                <input type="hidden" name="formId" id="formId1" value='50c012f45e304e2993fb61b37d32e6be'/>
                <input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
                <input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
                <div class="panel-ajax datagrid datagrid-div1" id="50c012f45e304e2993fb61b37d32e6be">
                    <div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajax50c012f45e304e2993fb61b37d32e6be" style="">
                        <div class="datagrid-header">
                            <div class="datagrid-header-inner" id="datagrid-header-inner50c012f45e304e2993fb61b37d32e6be">
                                <bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htable50c012f45e304e2993fb61b37d32e6be">
                                    <s:set name="_$type" value="'view'"/>
                                    <tbody class="isParentsTitle">
                                    <bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
                                        <td class="datagrid-cell" name="noprintset_SEQ" style="width:30px; text-align:center;">
                                            <bu:thSeq formId="50c012f45e304e2993fb61b37d32e6be" i18n="1"/></td>
                                        <td class="datagrid-cell no-print" style="width:30px; text-align:center">
                                            <span><input type="checkbox" id="selectAll_50c012f45e304e2993fb61b37d32e6be" onclick="_selectAjaxTableAllData(this,'50c012f45e304e2993fb61b37d32e6be')" style="cursor: pointer;" title="全选"/></span>
                                        </td>

                                        <%--1.组织机构--%>
                                        <td class="datagrid-cell" style="width:200px;">
                                            <bu:uitn colNo="DATA_AUTH" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--2.工单号--%>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_PROJECT_ID" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--3.判定结果--%>
                                        <td class="datagrid-cell" style="width:90px;">
                                            <bu:uitn colNo="QT_CHECK_RESULT" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--审核结果--%>
                                        <%--
                                        <td class="datagrid-cell" style="width:90px;">
                                            <bu:uitn colNo="QT_EXAMINE_RESULT" formId="50c012f45e304e2993fb61b37d32e6be"/></td>
                                        --%>
                                        <%--4.机种料号--%>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_MODEL_CODE" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--5.机种名称--%>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_MODEL_NAME" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--6.规格--%>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_SPEC" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--7.检测数量--%>
                                        <td class="datagrid-cell" style="width:90px;">
                                            <bu:uitn colNo="QT_CHECK_NUM" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--8.检测人员--%>
                                        <td class="datagrid-cell" style="width:90px;">
                                            <bu:uitn colNo="QT_CHECK_EMP" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--9.检测时间--%>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_CHECK_TIME" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        <%--10.审核人员--%>
                                        <%--
                                        <td class="datagrid-cell" style="width:90px;">
                                            <bu:uitn colNo="QT_EXAMINE_EMP" formId="50c012f45e304e2993fb61b37d32e6be"/></td>

                                        --%>
                                        <%--11.审核时间--%>
                                        <%--
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="QT_EXAMINE_TIME" formId="50c012f45e304e2993fb61b37d32e6be"/></td>
                                        --%>
                                    </bu:tr>
                                    </tbody>
                                </bu:table>
                            </div>
                        </div>
                        <div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDiv50c012f45e304e2993fb61b37d32e6be" onscroll="ajaxTableScroll(this,'50c012f45e304e2993fb61b37d32e6be')">
                            <table class="datagrid-btable fixedTable dblClick" id="datagrid-btable-ajax50c012f45e304e2993fb61b37d32e6be">
                                <tbody id="tbody_50c012f45e304e2993fb61b37d32e6be" class="isParents"></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <c:if test="${formPage50c012f45e304e2993fb61b37d32e6be==1}">
                    <div class="center">
                        <s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=50c012f45e304e2993fb61b37d32e6be&showLoading=0"/>
                    </div>
                </c:if>

                <div id="printset_div" style="background-color: white;margin-top: 50px;display:none;">
                    <div class="hd" style="background-color: #f6f5f7;height: 35px;">
                        <div class="optn" style="top:45px;right:30px;">
                            <button type="button" onclick="printset_17('50c012f45e304e2993fb61b37d32e6be','1');">打印</button>
                        </div>
                    </div>
                    <div style="height: 390px;overflow:auto;border-top: 1px solid #eaeaea;">
                        <table id="printset_tab" class="basic-table" style="text-align: center;margin-top:10px;">
                            <tr>
                                <td style="width: 100px;text-align: right;">列字段</td>
                                <td style="padding-left: 5px;">是否打印</td>
                                <td style="padding-left: 5px;">打印列宽</td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>序号</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="SEQ" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="SEQ" value="30" title_name="序号"/>px
                                </td>
                            </tr>

                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>检测内容</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_CHECK_CONTENT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_CHECK_CONTENT" value="" title_name="检测内容"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>检测人</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_CHECK_EMP" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_CHECK_EMP" value="" title_name="检测人"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>实际检测数量</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_CHECK_NUM" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_CHECK_NUM" value="" title_name="实际检测数量"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>判定结果</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_CHECK_RESULT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_CHECK_RESULT" value="" title_name="判定结果"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>检测时间</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_CHECK_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_CHECK_TIME" value="" title_name="检测时间"/>px
                                </td>
                            </tr>
                            <%--
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>审核说明</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_EXAMINE_CONTENT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_EXAMINE_CONTENT" value="" title_name="审核说明"/>px
                                </td>
                            </tr>
                            --%>
                            <%--
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>审核人</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_EXAMINE_EMP" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_EXAMINE_EMP" value="" title_name="审核人"/>px
                                </td>
                            </tr>
                            --%>
                            <%--
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>审核结果</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_EXAMINE_RESULT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_EXAMINE_RESULT" value="" title_name="审核结果"/>px
                                </td>
                            </tr>
                            --%>
                            <%--
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>审核时间</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_EXAMINE_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_EXAMINE_TIME" value="" title_name="审核时间"/>px
                                </td>
                            </tr>
                            --%>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>机种料号</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_MODEL_CODE" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_MODEL_CODE" value="" title_name="机种料号"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>工单</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_PROJECT_ID" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_PROJECT_ID" value="" title_name="工单"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>机种名称</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_MODEL_NAME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_MODEL_NAME" value="" title_name="机种名称"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>规格</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="QT_SPEC" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="QT_SPEC" value="" title_name="规格"/>px
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <input type="hidden" name="tableCount" id="tableCount" value='1'/>

            </form>
        </div>
    </div>
</div>
<bu:submit viewId="305e5fbcca544e5ebb423f1d352958ee"/>
<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="beforeJsLoad"/>
</jsp:include>
<bu:script viewId="305e5fbcca544e5ebb423f1d352958ee"/>

<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="jsLoading"/>
</jsp:include>

<script>
    <%--生成异步表格--%>

    function createTableModel(ms, formId) {
        // var arrHtml = [];
        // var arrLeftHtml = [];
        // var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
        // var uiRaw = ms.uiRaw(formId)==null?[]:ms.uiRaw(formId);
        // var trClass = ms.trClass(formId);
        // var trStyle = ms.trStyle(formId);
        // var trEvent = ms.trEvent(formId);
        // var colNo = $("#relColVals").val();

        var arrHtml = [];
        var arrLeftHtml = [];
        var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
        var uiRaw = ms.uiRaw(formId)==null?[]:ms.uiRaw(formId);
        var trClass = ms.trClass(formId);
        var trStyle = ms.trStyle(formId);
        var trEvent = ms.trEvent(formId);

        if (formId == '50c012f45e304e2993fb61b37d32e6be') {
            <%--QT-简单质检表单--%>
            $.each(uiTxt, function (i, v) {
                // var backgroudColor = (i + 1) % 2 == 0 ? "tr-hover" : "";
                // arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                // arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                // arrHtml.push("<input type='hidden' id='DATA_AUTH_ID_" + v.ID + "'  value='" + v.DATA_AUTH_ID + "' />");
                // getRelColVal(arrHtml, v, colNo);
                // arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");
                // arrHtml.push("<td class='datagrid-cell no-print' style='width:30px;text-align:center;' ><span class='_noedit'>");
                // arrHtml.push("<input type='checkbox' name='" + formId + "$ID' value='" + v.ID + "' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                // arrHtml.push("</td>");
                var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
                arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
                arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
                arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
                arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>");
                arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                arrHtml.push("</td>");

                /*-- 1.组织机构 --*/
                // arrHtml.push("<td colno='DATA_AUTH' name='noprintset_DATA_AUTH' class='datagrid-cell  " + ms.tdClass(formId, 'DATA_AUTH') + "' style='" + ms.tdStyle(formId, 'DATA_AUTH') + "' " + ms.tdEvent(formId, 'DATA_AUTH') + ">")
                // arrHtml.push("<span colno='DATA_AUTH' class='" + ms.uiClass(formId, 'DATA_AUTH') + "' style='" + ms.uiStyle(formId, 'DATA_AUTH') + "' " + ms.uiEvent(formId, 'DATA_AUTH') + " title='" + ms.titleAttr(formId, 'DATA_AUTH', 'IS_TITLE_ATTR', v) + "' >" + v['DATA_AUTH'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='DATA_AUTH' class='datagrid-cell TD_DATA_AUTH"+ms.tdClass(formId, 'DATA_AUTH')+"' style='text-align:center;width:200px;"+ms.tdStyle(formId, 'DATA_AUTH')+"' "+ms.tdEvent(formId, 'DATA_AUTH')+">")
                arrHtml.push("<span colno='DATA_AUTH' class='"+ms.uiClass(formId, 'DATA_AUTH')+"' style='"+ms.uiStyle(formId, 'DATA_AUTH')+"' "+ms.uiEvent(formId, 'DATA_AUTH')+" title='"+ms.titleAttr(formId,'DATA_AUTH','IS_TITLE_ATTR',v)+"' >"+v['DATA_AUTH']+"</span>")
                arrHtml.push("<input type='hidden' id='DATA_AUTH_ID_"+v['ID']+"' value='"+v['DATA_AUTH_ID']+"' /></td>");

                /*-- 2.工单 --*/
                // arrHtml.push("<td colno='QT_PROJECT_ID' name='noprintset_QT_PROJECT_ID' class='datagrid-cell  " + ms.tdClass(formId, 'QT_PROJECT_ID') + "' style='" + ms.tdStyle(formId, 'QT_PROJECT_ID') + "' " + ms.tdEvent(formId, 'QT_PROJECT_ID') + ">")
                // arrHtml.push("<span colno='QT_PROJECT_ID' class='" + ms.uiClass(formId, 'QT_PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'QT_PROJECT_ID') + "' " + ms.uiEvent(formId, 'QT_PROJECT_ID') + " title='" + ms.titleAttr(formId, 'QT_PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['QT_PROJECT_ID'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_PROJECT_ID' class='datagrid-cell "+ms.tdClass(formId, 'QT_PROJECT_ID')+"' style='width:150px;"+ms.tdStyle(formId, 'QT_PROJECT_ID')+"' "+ms.tdEvent(formId, 'QT_PROJECT_ID')+">")
                arrHtml.push("<span colno='QT_PROJECT_ID' class='"+ms.uiClass(formId, 'QT_PROJECT_ID')+"' onclick='itemJump1(\""+v['QT_PROJECT_ID']+"\")' style='display: inline;border-bottom: 1px solid #004098;' "+ms.uiEvent(formId, 'QT_PROJECT_ID')+" title='"+ms.titleAttr(formId,'QT_PROJECT_ID','IS_TITLE_ATTR',v)+"' >"+v['QT_PROJECT_ID']+"</span>")
                arrHtml.push("</td>");

                /*-- 3.判定结果 --*/
                // arrHtml.push("<td colno='QT_CHECK_RESULT' name='noprintset_QT_CHECK_RESULT' class='datagrid-cell  " + ms.tdClass(formId, 'QT_CHECK_RESULT') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_RESULT') + "' " + ms.tdEvent(formId, 'QT_CHECK_RESULT') + ">")
                // arrHtml.push("<span colno='QT_CHECK_RESULT' class='" + ms.uiClass(formId, 'QT_CHECK_RESULT') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_RESULT') + "' " + ms.uiEvent(formId, 'QT_CHECK_RESULT') + " title='" + ms.titleAttr(formId, 'QT_CHECK_RESULT', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_RESULT'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_CHECK_RESULT' class='datagrid-cell "+ms.tdClass(formId, 'QT_CHECK_RESULT')+"' style='width:70px;text-align:center;"+ms.tdStyle(formId, 'QT_CHECK_RESULT')+"' "+ms.tdEvent(formId, 'QT_CHECK_RESULT')+">")
                arrHtml.push("<span colno='QT_CHECK_RESULT' class='"+ms.uiClass(formId, 'QT_CHECK_RESULT')+"' style='"+ms.uiStyle(formId, 'QT_CHECK_RESULT')+"' "+ms.uiEvent(formId, 'QT_CHECK_RESULT')+" title='"+ms.titleAttr(formId,'QT_CHECK_RESULT','IS_TITLE_ATTR',v)+"' >"+v['QT_CHECK_RESULT']+"</span>")
                arrHtml.push("</td>");

                /*审核结果*/
                // arrHtml.push("<td colno='QT_EXAMINE_RESULT' name='noprintset_QT_EXAMINE_RESULT' class='datagrid-cell  " + ms.tdClass(formId, 'QT_EXAMINE_RESULT') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_RESULT') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_RESULT') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_RESULT' class='" + ms.uiClass(formId, 'QT_EXAMINE_RESULT') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_RESULT') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_RESULT') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_RESULT', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_RESULT'] + "</span>")
                // arrHtml.push("</td>");

                // arrHtml.push("<td colno='QT_EXAMINE_RESULT' class='datagrid-cell "+ms.tdClass(formId, 'QT_EXAMINE_RESULT')+"' style='width:70px;text-align:center;"+ms.tdStyle(formId, 'QT_EXAMINE_RESULT')+"' "+ms.tdEvent(formId, 'QT_EXAMINE_RESULT')+">")
                // arrHtml.push("<span colno='QT_EXAMINE_RESULT' class='"+ms.uiClass(formId, 'QT_EXAMINE_RESULT')+"' style='"+ms.uiStyle(formId, 'QT_EXAMINE_RESULT')+"' "+ms.uiEvent(formId, 'QT_EXAMINE_RESULT')+" title='"+ms.titleAttr(formId,'QT_EXAMINE_RESULT','IS_TITLE_ATTR',v)+"' >"+v['QT_EXAMINE_RESULT']+"</span>")
                // arrHtml.push("<input type='hidden' id='state_"+v.ID+"' value='"+uiRaw[i].QT_EXAMINE_RESULT+"'></td>");

                /*-- 4.机种料号 --*/
                // arrHtml.push("<td colno='QT_MODEL_CODE' name='noprintset_QT_MODEL_CODE' class='datagrid-cell  " + ms.tdClass(formId, 'QT_MODEL_CODE') + "' style='" + ms.tdStyle(formId, 'QT_MODEL_CODE') + "' " + ms.tdEvent(formId, 'QT_MODEL_CODE') + ">")
                // arrHtml.push("<span colno='QT_MODEL_CODE' class='" + ms.uiClass(formId, 'QT_MODEL_CODE') + "' style='" + ms.uiStyle(formId, 'QT_MODEL_CODE') + "' " + ms.uiEvent(formId, 'QT_MODEL_CODE') + " title='" + ms.titleAttr(formId, 'QT_MODEL_CODE', 'IS_TITLE_ATTR', v) + "' >" + v['QT_MODEL_CODE'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_MODEL_CODE' class='datagrid-cell "+ms.tdClass(formId, 'QT_MODEL_CODE')+"' style='width:150px;"+ms.tdStyle(formId, 'QT_MODEL_CODE')+"' "+ms.tdEvent(formId, 'QT_MODEL_CODE')+">")
                arrHtml.push("<span colno='QT_MODEL_CODE' class='"+ms.uiClass(formId, 'QT_MODEL_CODE')+"' style='"+ms.uiStyle(formId, 'QT_MODEL_CODE')+"' "+ms.uiEvent(formId, 'QT_MODEL_CODE')+" title='"+ms.titleAttr(formId,'QT_MODEL_CODE','IS_TITLE_ATTR',v)+"' >"+v['QT_MODEL_CODE']+"</span>")
                arrHtml.push("</td>");

                /*-- 5.机种名称 --*/
                // arrHtml.push("<td colno='QT_MODEL_NAME' name='noprintset_QT_MODEL_NAME' class='datagrid-cell  " + ms.tdClass(formId, 'QT_MODEL_NAME') + "' style='" + ms.tdStyle(formId, 'QT_MODEL_NAME') + "' " + ms.tdEvent(formId, 'QT_MODEL_NAME') + ">")
                // arrHtml.push("<span colno='QT_MODEL_NAME' class='" + ms.uiClass(formId, 'QT_MODEL_NAME') + "' style='" + ms.uiStyle(formId, 'QT_MODEL_NAME') + "' " + ms.uiEvent(formId, 'QT_MODEL_NAME') + " title='" + ms.titleAttr(formId, 'QT_MODEL_NAME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_MODEL_NAME'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_MODEL_NAME' class='datagrid-cell "+ms.tdClass(formId, 'QT_MODEL_NAME')+"' style='width:150px;"+ms.tdStyle(formId, 'QT_MODEL_NAME')+"' "+ms.tdEvent(formId, 'QT_MODEL_NAME')+">")
                arrHtml.push("<span colno='QT_MODEL_NAME' class='"+ms.uiClass(formId, 'QT_MODEL_NAME')+"' style='"+ms.uiStyle(formId, 'QT_MODEL_NAME')+"' "+ms.uiEvent(formId, 'QT_MODEL_NAME')+" title='"+ms.titleAttr(formId,'QT_MODEL_NAME','IS_TITLE_ATTR',v)+"' >"+v['QT_MODEL_NAME']+"</span>")
                arrHtml.push("</td>");

                /*-- 6.规格 --*/
                // arrHtml.push("<td colno='QT_SPEC' name='noprintset_QT_SPEC' class='datagrid-cell  " + ms.tdClass(formId, 'QT_SPEC') + "' style='" + ms.tdStyle(formId, 'QT_SPEC') + "' " + ms.tdEvent(formId, 'QT_SPEC') + ">")
                // arrHtml.push("<span colno='QT_SPEC' class='" + ms.uiClass(formId, 'QT_SPEC') + "' style='" + ms.uiStyle(formId, 'QT_SPEC') + "' " + ms.uiEvent(formId, 'QT_SPEC') + " title='" + ms.titleAttr(formId, 'QT_SPEC', 'IS_TITLE_ATTR', v) + "' >" + v['QT_SPEC'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_SPEC' class='datagrid-cell "+ms.tdClass(formId, 'QT_SPEC')+"' style='width:90px;"+ms.tdStyle(formId, 'QT_SPEC')+"' "+ms.tdEvent(formId, 'QT_SPEC')+">")
                arrHtml.push("<span colno='QT_SPEC' class='"+ms.uiClass(formId, 'QT_SPEC')+"' style='"+ms.uiStyle(formId, 'QT_SPEC')+"' "+ms.uiEvent(formId, 'QT_SPEC')+" title='"+ms.titleAttr(formId,'QT_SPEC','IS_TITLE_ATTR',v)+"' >"+v['QT_SPEC']+"</span>")
                arrHtml.push("</td>");

                /*-- 7.检测数量 --*/
                // arrHtml.push("<td colno='QT_CHECK_NUM' name='noprintset_QT_CHECK_NUM' class='datagrid-cell  " + ms.tdClass(formId, 'QT_CHECK_NUM') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_NUM') + "' " + ms.tdEvent(formId, 'QT_CHECK_NUM') + ">")
                // arrHtml.push("<span colno='QT_CHECK_NUM' class='" + ms.uiClass(formId, 'QT_CHECK_NUM') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_NUM') + "' " + ms.uiEvent(formId, 'QT_CHECK_NUM') + " title='" + ms.titleAttr(formId, 'QT_CHECK_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_NUM'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_CHECK_NUM' class='datagrid-cell "+ms.tdClass(formId, 'QT_CHECK_NUM')+"' style='width:100px;text-align:right;"+ms.tdStyle(formId, 'QT_CHECK_NUM')+"' "+ms.tdEvent(formId, 'QT_CHECK_NUM')+">")
                arrHtml.push("<span colno='QT_CHECK_NUM' class='"+ms.uiClass(formId, 'QT_CHECK_NUM')+"' style='"+ms.uiStyle(formId, 'QT_CHECK_NUM')+"' "+ms.uiEvent(formId, 'QT_CHECK_NUM')+" title='"+ms.titleAttr(formId,'QT_CHECK_NUM','IS_TITLE_ATTR',v)+"' >"+v['QT_CHECK_NUM']+"</span>")
                arrHtml.push("</td>");

                /*-- 8.检测人员 --*/
                // arrHtml.push("<td colno='QT_CHECK_EMP' name='noprintset_QT_CHECK_EMP' class='datagrid-cell  " + ms.tdClass(formId, 'QT_CHECK_EMP') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_EMP') + "' " + ms.tdEvent(formId, 'QT_CHECK_EMP') + ">")
                // arrHtml.push("<span colno='QT_CHECK_EMP' class='" + ms.uiClass(formId, 'QT_CHECK_EMP') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_EMP') + "' " + ms.uiEvent(formId, 'QT_CHECK_EMP') + " title='" + ms.titleAttr(formId, 'QT_CHECK_EMP', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_EMP'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_CHECK_EMP' class='datagrid-cell "+ms.tdClass(formId, 'QT_CHECK_EMP')+"' style='width:90px;text-align:center;"+ms.tdStyle(formId, 'QT_CHECK_EMP')+"' "+ms.tdEvent(formId, 'QT_CHECK_EMP')+">")
                arrHtml.push("<span colno='QT_CHECK_EMP' class='"+ms.uiClass(formId, 'QT_CHECK_EMP')+"' style='"+ms.uiStyle(formId, 'QT_CHECK_EMP')+"' "+ms.uiEvent(formId, 'QT_CHECK_EMP')+" title='"+ms.titleAttr(formId,'QT_CHECK_EMP','IS_TITLE_ATTR',v)+"' >"+v['QT_CHECK_EMP']+"</span>")
                arrHtml.push("</td>");

                /*-- 9.检测时间 --*/
                // arrHtml.push("<td colno='QT_CHECK_TIME' name='noprintset_QT_CHECK_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'QT_CHECK_TIME') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_TIME') + "' " + ms.tdEvent(formId, 'QT_CHECK_TIME') + ">")
                // arrHtml.push("<span colno='QT_CHECK_TIME' class='" + ms.uiClass(formId, 'QT_CHECK_TIME') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_TIME') + "' " + ms.uiEvent(formId, 'QT_CHECK_TIME') + " title='" + ms.titleAttr(formId, 'QT_CHECK_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_TIME'] + "</span>")
                // arrHtml.push("</td>");
                arrHtml.push("<td colno='QT_CHECK_TIME' class='datagrid-cell "+ms.tdClass(formId, 'QT_CHECK_TIME')+"' style='width:140px;text-align:center;"+ms.tdStyle(formId, 'QT_CHECK_TIME')+"' "+ms.tdEvent(formId, 'QT_CHECK_TIME')+">")
                arrHtml.push("<span colno='QT_CHECK_TIME' class='"+ms.uiClass(formId, 'QT_CHECK_TIME')+"' style='"+ms.uiStyle(formId, 'QT_CHECK_TIME')+"' "+ms.uiEvent(formId, 'QT_CHECK_TIME')+" title='"+ms.titleAttr(formId,'QT_CHECK_TIME','IS_TITLE_ATTR',v)+"' >"+v['QT_CHECK_TIME']+"</span>")
                arrHtml.push("</td>");

                /*-- 10.审核人员 --*/
                // arrHtml.push("<td colno='QT_EXAMINE_EMP' name='noprintset_QT_EXAMINE_EMP' class='datagrid-cell  " + ms.tdClass(formId, 'QT_EXAMINE_EMP') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_EMP') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_EMP') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_EMP' class='" + ms.uiClass(formId, 'QT_EXAMINE_EMP') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_EMP') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_EMP') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_EMP', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_EMP'] + "</span>")
                // arrHtml.push("</td>");

                // arrHtml.push("<td colno='QT_EXAMINE_EMP' class='datagrid-cell "+ms.tdClass(formId, 'QT_EXAMINE_EMP')+"' style='width:90px;text-align:center;"+ms.tdStyle(formId, 'QT_EXAMINE_EMP')+"' "+ms.tdEvent(formId, 'QT_EXAMINE_EMP')+">")
                // arrHtml.push("<span colno='QT_EXAMINE_EMP' class='"+ms.uiClass(formId, 'QT_EXAMINE_EMP')+"' style='"+ms.uiStyle(formId, 'QT_EXAMINE_EMP')+"' "+ms.uiEvent(formId, 'QT_EXAMINE_EMP')+" title='"+ms.titleAttr(formId,'QT_EXAMINE_EMP','IS_TITLE_ATTR',v)+"' >"+v['QT_EXAMINE_EMP']+"</span>")
                // arrHtml.push("</td>");

                /*-- 11.审核时间 --*/
                // arrHtml.push("<td colno='QT_EXAMINE_TIME' name='noprintset_QT_EXAMINE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'QT_EXAMINE_TIME') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_TIME') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_TIME') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_TIME' class='" + ms.uiClass(formId, 'QT_EXAMINE_TIME') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_TIME') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_TIME') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_TIME'] + "</span>")
                // arrHtml.push("</td>");

                // arrHtml.push("<td colno='QT_EXAMINE_TIME' class='datagrid-cell "+ms.tdClass(formId, 'QT_EXAMINE_TIME')+"' style='width:140px;text-align:center;"+ms.tdStyle(formId, 'QT_EXAMINE_TIME')+"' "+ms.tdEvent(formId, 'QT_EXAMINE_TIME')+">")
                // arrHtml.push("<span colno='QT_EXAMINE_TIME' class='"+ms.uiClass(formId, 'QT_EXAMINE_TIME')+"' style='"+ms.uiStyle(formId, 'QT_EXAMINE_TIME')+"' "+ms.uiEvent(formId, 'QT_EXAMINE_TIME')+" title='"+ms.titleAttr(formId,'QT_EXAMINE_TIME','IS_TITLE_ATTR',v)+"' >"+v['QT_EXAMINE_TIME']+"</span>")
                // arrHtml.push("</td>");

                arrHtml.push("</tr>")
        //     });
        //     if ($("#leftTableDiv" + formId).length > 0) {
        //         $("#left-tbody_" + formId).html(arrLeftHtml.join(""));
        //     }
        //     setCrossWiseScroll(formId, arrHtml);
        //     $("#tbody_" + formId).html(arrHtml.join(""));
        // }
        // setNumColWidth(formId);
        // clearAllSelect();
        // setTableWidth(formId);
        // setScroll(formId);
            });
            if($("#leftTableDiv"+formId).length>0){
                $("#left-tbody_"+formId).html(arrLeftHtml.join(""));
            }
            setCrossWiseScroll(formId,arrHtml);
            $("#tbody_"+formId).html(arrHtml.join(""));
        }
        setNumColWidth(formId);
        clearAllSelect();
        setTableWidth(formId);
        if(isFirstSetScroll == 0){
            isFirstSetScroll =1;
            setScroll();
        }
    }

    function judgIsOpen(title, url) {
        var flag = true;
        var timestamp = Date.parse(new Date());
        $(window.parent.document).find("#tag1").siblings().each(function (seq, item) {
            //打开过的标签不再重复打开
            console.log(top);
            if (title == $(item).attr("title")) {
                var count = item.id.substring(3);
                $(window.parent.document).find("#iframe" + count).attr("src", url);
                top.switchTag(item.id, "content" + count, url);
                flag = false;
                return;
            }
        });
        if (flag) {
            showPopWinFp(url, 800, 400, null, title, timestamp, 1);
        }
    }

    function itemJump1(obj) {
        var title = "<dict:lang value="工单信息" />";
        var formId = $("#formId1").val();
        var url = "${path}buss/bussModel.ms?&formId=" + formId + "&exeid=53745dab58e344cdb6e278900138763f&FUNC_CODE=F3466&frameId=" + _currentFrame + "&jumpId=" + obj;
        judgIsOpen(title, url);
    }
</script>
<script>
    <%--生成异步表格--%>

    function createTableModel_print(ms, formId) {
        var arrHtml = [];
        var arrLeftHtml = [];

        var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
        var uiRaw = ms.uiRaw(formId)==null?[]:ms.uiRaw(formId);

        console.log("uiRaw1: >>> ");
        console.log(uiRaw);

        console.log("uiTxt1: >>> ");
        console.log(uiTxt);

        var trClass = ms.trClass(formId);
        var trStyle = ms.trStyle(formId);
        var trEvent = ms.trEvent(formId);
        var colNo = $("#relColVals").val();
        if (formId == '50c012f45e304e2993fb61b37d32e6be') {
            <%--QT-简单质检表单--%>
            $.each(uiTxt, function (i, v) {
                var backgroudColor = (i + 1) % 2 == 0 ? "tr-hover" : "";
                arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                getRelColVal(arrHtml, v, colNo);
                arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");

                /*1.组织机构*/
                arrHtml.push("<td colno='DATA_AUTH' name='noprintset_DATA_AUTH' class='datagrid-cell " + ms.tdClass(formId, 'DATA_AUTH') + "' style='" + ms.tdStyle(formId, 'DATA_AUTH') + "' " + ms.tdEvent(formId, 'DATA_AUTH') + ">")
                arrHtml.push("<span colno='DATA_AUTH' class='" + ms.uiClass(formId, 'DATA_AUTH') + "' style='" + ms.uiStyle(formId, 'DATA_AUTH') + "' " + ms.uiEvent(formId, 'DATA_AUTH') + " title='" + ms.titleAttr(formId, 'DATA_AUTH', 'IS_TITLE_ATTR', v) + "' >" + v['DATA_AUTH'] + "</span>")
                arrHtml.push("</td>");

                /*2.工单*/
                arrHtml.push("<td colno='QT_PROJECT_ID' name='noprintset_QT_PROJECT_ID' class='datagrid-cell " + ms.tdClass(formId, 'QT_PROJECT_ID') + "' style='" + ms.tdStyle(formId, 'QT_PROJECT_ID') + "' " + ms.tdEvent(formId, 'QT_PROJECT_ID') + ">")
                arrHtml.push("<span colno='QT_PROJECT_ID' class='" + ms.uiClass(formId, 'QT_PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'QT_PROJECT_ID') + "' " + ms.uiEvent(formId, 'QT_PROJECT_ID') + " title='" + ms.titleAttr(formId, 'QT_PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['QT_PROJECT_ID'] + "</span>")
                arrHtml.push("</td>");

                /*3.判定结果*/
                arrHtml.push("<td colno='QT_CHECK_RESULT' name='noprintset_QT_CHECK_RESULT' class='datagrid-cell " + ms.tdClass(formId, 'QT_CHECK_RESULT') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_RESULT') + "' " + ms.tdEvent(formId, 'QT_CHECK_RESULT') + ">")
                arrHtml.push("<span colno='QT_CHECK_RESULT' class='" + ms.uiClass(formId, 'QT_CHECK_RESULT') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_RESULT') + "' " + ms.uiEvent(formId, 'QT_CHECK_RESULT') + " title='" + ms.titleAttr(formId, 'QT_CHECK_RESULT', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_RESULT'] + "</span>")
                arrHtml.push("</td>");

                /*审核结果*/
                // arrHtml.push("<td colno='QT_EXAMINE_RESULT' name='noprintset_QT_EXAMINE_RESULT' class='datagrid-cell " + ms.tdClass(formId, 'QT_EXAMINE_RESULT') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_RESULT') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_RESULT') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_RESULT' class='" + ms.uiClass(formId, 'QT_EXAMINE_RESULT') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_RESULT') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_RESULT') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_RESULT', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_RESULT'] + "</span>")
                // arrHtml.push("</td>");

                // arrHtml.push("<td colno='QT_EXAMINE_RESULT' class='datagrid-cell "+ms.tdClass(formId, 'QT_EXAMINE_RESULT')+"' style='width:70px;text-align:center;"+ms.tdStyle(formId, 'QT_EXAMINE_RESULT')+"' "+ms.tdEvent(formId, 'QT_EXAMINE_RESULT')+">")
                // arrHtml.push("<span colno='QT_EXAMINE_RESULT' class='"+ms.uiClass(formId, 'QT_EXAMINE_RESULT')+"' style='"+ms.uiStyle(formId, 'QT_EXAMINE_RESULT')+"' "+ms.uiEvent(formId, 'QT_EXAMINE_RESULT')+" title='"+ms.titleAttr(formId,'QT_EXAMINE_RESULT','IS_TITLE_ATTR',v)+"' >"+v['QT_EXAMINE_RESULT']+"</span>")
                // arrHtml.push("<input type='hidden' id='state_"+v.ID+"' value='"+uiRaw[i].QT_EXAMINE_RESULT+"'></td>");

                /*4.机种料号*/
                arrHtml.push("<td colno='QT_MODEL_CODE' name='noprintset_QT_MODEL_CODE' class='datagrid-cell " + ms.tdClass(formId, 'QT_MODEL_CODE') + "' style='" + ms.tdStyle(formId, 'QT_MODEL_CODE') + "' " + ms.tdEvent(formId, 'QT_MODEL_CODE') + ">")
                arrHtml.push("<span colno='QT_MODEL_CODE' class='" + ms.uiClass(formId, 'QT_MODEL_CODE') + "' style='" + ms.uiStyle(formId, 'QT_MODEL_CODE') + "' " + ms.uiEvent(formId, 'QT_MODEL_CODE') + " title='" + ms.titleAttr(formId, 'QT_MODEL_CODE', 'IS_TITLE_ATTR', v) + "' >" + v['QT_MODEL_CODE'] + "</span>")
                arrHtml.push("</td>");

                /*5.机种名称*/
                arrHtml.push("<td colno='QT_MODEL_NAME' name='noprintset_QT_MODEL_NAME' class='datagrid-cell " + ms.tdClass(formId, 'QT_MODEL_NAME') + "' style='" + ms.tdStyle(formId, 'QT_MODEL_NAME') + "' " + ms.tdEvent(formId, 'QT_MODEL_NAME') + ">")
                arrHtml.push("<span colno='QT_MODEL_NAME' class='" + ms.uiClass(formId, 'QT_MODEL_NAME') + "' style='" + ms.uiStyle(formId, 'QT_MODEL_NAME') + "' " + ms.uiEvent(formId, 'QT_MODEL_NAME') + " title='" + ms.titleAttr(formId, 'QT_MODEL_NAME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_MODEL_NAME'] + "</span>")
                arrHtml.push("</td>");

                /*6.规格*/
                arrHtml.push("<td colno='QT_SPEC' name='noprintset_QT_SPEC' class='datagrid-cell " + ms.tdClass(formId, 'QT_SPEC') + "' style='" + ms.tdStyle(formId, 'QT_SPEC') + "' " + ms.tdEvent(formId, 'QT_SPEC') + ">")
                arrHtml.push("<span colno='QT_SPEC' class='" + ms.uiClass(formId, 'QT_SPEC') + "' style='" + ms.uiStyle(formId, 'QT_SPEC') + "' " + ms.uiEvent(formId, 'QT_SPEC') + " title='" + ms.titleAttr(formId, 'QT_SPEC', 'IS_TITLE_ATTR', v) + "' >" + v['QT_SPEC'] + "</span>")
                arrHtml.push("</td>");

                /*7.检测数量*/
                arrHtml.push("<td colno='QT_CHECK_NUM' name='noprintset_QT_CHECK_NUM' class='datagrid-cell " + ms.tdClass(formId, 'QT_CHECK_NUM') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_NUM') + "' " + ms.tdEvent(formId, 'QT_CHECK_NUM') + ">")
                arrHtml.push("<span colno='QT_CHECK_NUM' class='" + ms.uiClass(formId, 'QT_CHECK_NUM') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_NUM') + "' " + ms.uiEvent(formId, 'QT_CHECK_NUM') + " title='" + ms.titleAttr(formId, 'QT_CHECK_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_NUM'] + "</span>")
                arrHtml.push("</td>");

                /*8.检测人员*/
                arrHtml.push("<td colno='QT_CHECK_EMP' name='noprintset_QT_CHECK_EMP' class='datagrid-cell " + ms.tdClass(formId, 'QT_CHECK_EMP') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_EMP') + "' " + ms.tdEvent(formId, 'QT_CHECK_EMP') + ">")
                arrHtml.push("<span colno='QT_CHECK_EMP' class='" + ms.uiClass(formId, 'QT_CHECK_EMP') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_EMP') + "' " + ms.uiEvent(formId, 'QT_CHECK_EMP') + " title='" + ms.titleAttr(formId, 'QT_CHECK_EMP', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_EMP'] + "</span>")
                arrHtml.push("</td>");

                /*9.检测时间*/
                arrHtml.push("<td colno='QT_CHECK_TIME' name='noprintset_QT_CHECK_TIME' class='datagrid-cell " + ms.tdClass(formId, 'QT_CHECK_TIME') + "' style='" + ms.tdStyle(formId, 'QT_CHECK_TIME') + "' " + ms.tdEvent(formId, 'QT_CHECK_TIME') + ">")
                arrHtml.push("<span colno='QT_CHECK_TIME' class='" + ms.uiClass(formId, 'QT_CHECK_TIME') + "' style='" + ms.uiStyle(formId, 'QT_CHECK_TIME') + "' " + ms.uiEvent(formId, 'QT_CHECK_TIME') + " title='" + ms.titleAttr(formId, 'QT_CHECK_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_CHECK_TIME'] + "</span>")
                arrHtml.push("</td>");

                /*10.审核人员*/
                // arrHtml.push("<td colno='QT_EXAMINE_EMP' name='noprintset_QT_EXAMINE_EMP' class='datagrid-cell " + ms.tdClass(formId, 'QT_EXAMINE_EMP') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_EMP') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_EMP') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_EMP' class='" + ms.uiClass(formId, 'QT_EXAMINE_EMP') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_EMP') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_EMP') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_EMP', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_EMP'] + "</span>")
                // arrHtml.push("</td>");

                /*11.审核时间*/
                // arrHtml.push("<td colno='QT_EXAMINE_TIME' name='noprintset_QT_EXAMINE_TIME' class='datagrid-cell " + ms.tdClass(formId, 'QT_EXAMINE_TIME') + "' style='" + ms.tdStyle(formId, 'QT_EXAMINE_TIME') + "' " + ms.tdEvent(formId, 'QT_EXAMINE_TIME') + ">")
                // arrHtml.push("<span colno='QT_EXAMINE_TIME' class='" + ms.uiClass(formId, 'QT_EXAMINE_TIME') + "' style='" + ms.uiStyle(formId, 'QT_EXAMINE_TIME') + "' " + ms.uiEvent(formId, 'QT_EXAMINE_TIME') + " title='" + ms.titleAttr(formId, 'QT_EXAMINE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['QT_EXAMINE_TIME'] + "</span>")
                // arrHtml.push("</td>");

                arrHtml.push("</tr>")
            });
            if ($("#leftTableDiv" + formId).length > 0) {
                $("#left-tbody_" + formId).html(arrLeftHtml.join(""));
            }
            setCrossWiseScroll(formId, arrHtml);
            $("#tbody_print_" + formId).html(arrHtml.join(""));
        }
        setNumColWidth(formId);
        clearAllSelect();
        setTableWidth(formId);
        setScroll(formId);
    }
</script>
<script type="text/javascript" src="${path}plf/page/fp/js/paginationMultAx.js?_mc_res_version=<%=PlfStaticRes.PaginationMultAx_JS %>"></script>
<%@ include file="/plf/common/fp/pub_dom_fp.jsp" %>
</body>
<%@ include file="/plf/common/pub_end.jsp" %>
<!-- 页面结束 -->
<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="pageOver"/>
</jsp:include>
