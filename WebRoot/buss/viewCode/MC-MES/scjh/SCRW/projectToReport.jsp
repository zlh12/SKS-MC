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
        <dict:lang value="VOID-工时报工-今日待报工"/>
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
    <bu:header formId="426d60fe64314fb0b97a38b40090f10d"/>


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
            <bu:func viewId="8a067183a2124f6eab981534e5cdaab0"/>
        </div>
        <div class="bd">
            <div class="search-box">
                <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                        <jsp:param name="modelName" value="VIEW_TYPE_17"/>
                        <jsp:param name="location" value="searchForm"/>
                    </jsp:include>


                    <table class="search_table">
                        <bu:search deal_mark="1" viewId="8a067183a2124f6eab981534e5cdaab0"/>

                    </table>

                </form>
                <a href="javascript:void(0);" class="more"></a>
            </div>
            <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.ConstantsMc@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
                    <jsp:param name="location" value="listForm"/>
                </jsp:include>
                <input type="hidden" name="formPage426d60fe64314fb0b97a38b40090f10d" id="formPage426d60fe64314fb0b97a38b40090f10d" value="${formPage426d60fe64314fb0b97a38b40090f10d}"/>
                <input type="hidden" name="formId" id="formId1" value='426d60fe64314fb0b97a38b40090f10d'/>
                <input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
                <input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
                <div class="panel-ajax datagrid datagrid-div1" id="426d60fe64314fb0b97a38b40090f10d">
                    <div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajax426d60fe64314fb0b97a38b40090f10d" style="">
                        <div class="datagrid-header">
                            <div class="datagrid-header-inner" id="datagrid-header-inner426d60fe64314fb0b97a38b40090f10d">
                                <bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htable426d60fe64314fb0b97a38b40090f10d">
                                    <s:set name="_$type" value="'view'"/>
                                    <tbody class="isParentsTitle">
                                    <bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
                                        <td class="datagrid-cell" name="noprintset_SEQ" style="width:30px; text-align:center;">
                                            <bu:thSeq formId="426d60fe64314fb0b97a38b40090f10d" i18n="1"/></td>
                                        <td class="datagrid-cell no-print" style="width:30px; text-align:center">
                                            <span><input type="checkbox" id="selectAll_426d60fe64314fb0b97a38b40090f10d" onclick="_selectAjaxTableAllData(this,'426d60fe64314fb0b97a38b40090f10d')" style="cursor: pointer;" title="全选"/></span>
                                        </td>
                                        <td style="width:200px; text-align:center" name="noprintset_DATA_AUTH" class="datagrid-cell">
                                            <bu:uitn colNo="DATA_AUTH" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:110px; text-align:center" name="noprintset_PROJECT_ID" class="datagrid-cell">
                                            <bu:uitn colNo="PROJECT_ID" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_REP_NUM" class="datagrid-cell">
                                            <bu:uitn colNo="REP_NUM" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_PROJECT_UNIT" class="datagrid-cell">
                                            <bu:uitn colNo="PROJECT_UNIT" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_PREPARE_TIME" class="datagrid-cell">
                                            <bu:uitn colNo="PREPARE_TIME" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_MEASURE_UNIT1" class="datagrid-cell">
                                            <bu:uitn colNo="MEASURE_UNIT1" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_MACHINE_TIME" class="datagrid-cell">
                                            <bu:uitn colNo="MACHINE_TIME" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_MEASURE_UNIT2" class="datagrid-cell">
                                            <bu:uitn colNo="MEASURE_UNIT2" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_PEOPLE_TIME" class="datagrid-cell">
                                            <bu:uitn colNo="PEOPLE_TIME" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_MEASURE_TIME3" class="datagrid-cell">
                                            <bu:uitn colNo="MEASURE_TIME3" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:140px; text-align:center" name="noprintset_FINISH_DATE" class="datagrid-cell">
                                            <bu:uitn colNo="FINISH_DATE" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_REVERSE_FLAG" class="datagrid-cell">
                                            <bu:uitn colNo="REVERSE_FLAG" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:80px; text-align:center" name="noprintset_SFLAG" class="datagrid-cell">
                                            <bu:uitn colNo="SFLAG" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:150px; text-align:center" name="noprintset_MESSAGE" class="datagrid-cell">
                                            <bu:uitn colNo="MESSAGE" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:140px; text-align:center" name="noprintset_CREATE_TIME" class="datagrid-cell">
                                            <bu:uitn colNo="CREATE_TIME" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                        <td style="width:100px; text-align:center" name="noprintset_CREATE_USER" class="datagrid-cell">
                                            <bu:uitn colNo="CREATE_USER" formId="426d60fe64314fb0b97a38b40090f10d"/></td>
                                    </bu:tr>
                                    </tbody>
                                </bu:table>
                            </div>
                        </div>
                        <div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDiv426d60fe64314fb0b97a38b40090f10d" onscroll="ajaxTableScroll(this,'426d60fe64314fb0b97a38b40090f10d')">
                            <table class="datagrid-btable fixedTable dblClick" id="datagrid-btable-ajax426d60fe64314fb0b97a38b40090f10d">
                                <tbody id="tbody_426d60fe64314fb0b97a38b40090f10d" class="isParents"></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <c:if test="${formPage426d60fe64314fb0b97a38b40090f10d==1}">
                    <div class="center">
                        <s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=426d60fe64314fb0b97a38b40090f10d&showLoading=0"/>
                    </div>
                </c:if>

                <div id="printset_div" style="background-color: white;margin-top: 50px;display:none;">
                    <div class="hd" style="background-color: #f6f5f7;height: 35px;">
                        <div class="optn" style="top:45px;right:30px;">
                            <button type="button" onclick="printset_17('426d60fe64314fb0b97a38b40090f10d','1');">打印</button>
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
                                    <span>组织机构</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="DATA_AUTH" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="DATA_AUTH" value="" title_name="组织机构"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>工单号</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PROJECT_ID" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PROJECT_ID" value="" title_name="工单号"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?报工数量</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="REP_NUM" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="REP_NUM" value="" title_name="?报工数量"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?产量单位</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PROJECT_UNIT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PROJECT_UNIT" value="" title_name="?产量单位"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?准备工时</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PREPARE_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PREPARE_TIME" value="" title_name="?准备工时"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?计量单位1</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="MEASURE_UNIT1" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="MEASURE_UNIT1" value="" title_name="?计量单位1"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?机器工时</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="MACHINE_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="MACHINE_TIME" value="" title_name="?机器工时"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?计量单位2</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="MEASURE_UNIT2" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="MEASURE_UNIT2" value="" title_name="?计量单位2"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?人工工时</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PEOPLE_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PEOPLE_TIME" value="" title_name="?人工工时"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?计量单位3</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="MEASURE_TIME3" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="MEASURE_TIME3" value="" title_name="?计量单位3"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?完工时间</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="FINISH_DATE" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="FINISH_DATE" value="" title_name="?完工时间"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?报工标识</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="REVERSE_FLAG" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="REVERSE_FLAG" value="" title_name="?报工标识"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?同步结果</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="SFLAG" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="SFLAG" value="" title_name="?同步结果"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?消息文本</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="MESSAGE" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="MESSAGE" value="" title_name="?消息文本"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>创建时间</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="CREATE_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="CREATE_TIME" value="" title_name="创建时间"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>创建人</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="CREATE_USER" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="CREATE_USER" value="" title_name="创建人"/>px
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
<bu:submit viewId="8a067183a2124f6eab981534e5cdaab0"/>
<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="beforeJsLoad"/>
</jsp:include>
<bu:script viewId="8a067183a2124f6eab981534e5cdaab0"/>

<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
    <jsp:param name="modelName" value="VIEW_TYPE_17"/>
    <jsp:param name="location" value="jsLoading"/>
</jsp:include>

<script>
    <%--生成异步表格--%>

    function createTableModel(ms, formId) {
        var arrHtml = [];
        var arrLeftHtml = [];
        var uiTxt = ms.uiTxt(formId) == null ? [] : ms.uiTxt(formId);
        var trClass = ms.trClass(formId);
        var trStyle = ms.trStyle(formId);
        var trEvent = ms.trEvent(formId);
        var colNo = $("#relColVals").val();
        if (formId == '426d60fe64314fb0b97a38b40090f10d') {<%--VOID-工时报工表单--%>
            $.each(uiTxt, function (i, v) {
                var backgroudColor = (i + 1) % 2 == 0 ? "tr-hover" : "";
                arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                arrHtml.push("<input type='hidden' id='DATA_AUTH_ID_" + v.ID + "'  value='" + v.DATA_AUTH_ID + "' />");
                getRelColVal(arrHtml, v, colNo);
                arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");
                arrHtml.push("<td class='datagrid-cell no-print' style='width:30px;text-align:center;' ><span class='_noedit'>");
                arrHtml.push("<input type='checkbox' name='" + formId + "$ID' value='" + v.ID + "' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='DATA_AUTH' name='noprintset_DATA_AUTH' class='datagrid-cell TD_DATA_AUTH " + ms.tdClass(formId, 'DATA_AUTH') + "' style='" + ms.tdStyle(formId, 'DATA_AUTH') + "' " + ms.tdEvent(formId, 'DATA_AUTH') + ">");
                arrHtml.push("<span colno='DATA_AUTH' class='" + ms.uiClass(formId, 'DATA_AUTH') + "' style='" + ms.uiStyle(formId, 'DATA_AUTH') + "' " + ms.uiEvent(formId, 'DATA_AUTH') + " title='" + ms.titleAttr(formId, 'DATA_AUTH', 'IS_TITLE_ATTR', v) + "' >" + v['DATA_AUTH'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell  " + ms.tdClass(formId, 'PROJECT_ID') + "' style='" + ms.tdStyle(formId, 'PROJECT_ID') + "' " + ms.tdEvent(formId, 'PROJECT_ID') + ">");
                arrHtml.push("<span colno='PROJECT_ID' class='" + ms.uiClass(formId, 'PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'PROJECT_ID') + "' " + ms.uiEvent(formId, 'PROJECT_ID') + " title='" + ms.titleAttr(formId, 'PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_ID'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REP_NUM' name='noprintset_REP_NUM' class='datagrid-cell  " + ms.tdClass(formId, 'REP_NUM') + "' style='" + ms.tdStyle(formId, 'REP_NUM') + "' " + ms.tdEvent(formId, 'REP_NUM') + ">");
                arrHtml.push("<span colno='REP_NUM' class='" + ms.uiClass(formId, 'REP_NUM') + "' style='" + ms.uiStyle(formId, 'REP_NUM') + "' " + ms.uiEvent(formId, 'REP_NUM') + " title='" + ms.titleAttr(formId, 'REP_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['REP_NUM'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_UNIT' name='noprintset_PROJECT_UNIT' class='datagrid-cell  " + ms.tdClass(formId, 'PROJECT_UNIT') + "' style='" + ms.tdStyle(formId, 'PROJECT_UNIT') + "' " + ms.tdEvent(formId, 'PROJECT_UNIT') + ">");
                arrHtml.push("<span colno='PROJECT_UNIT' class='" + ms.uiClass(formId, 'PROJECT_UNIT') + "' style='" + ms.uiStyle(formId, 'PROJECT_UNIT') + "' " + ms.uiEvent(formId, 'PROJECT_UNIT') + " title='" + ms.titleAttr(formId, 'PROJECT_UNIT', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_UNIT'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PREPARE_TIME' name='noprintset_PREPARE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'PREPARE_TIME') + "' style='" + ms.tdStyle(formId, 'PREPARE_TIME') + "' " + ms.tdEvent(formId, 'PREPARE_TIME') + ">");
                arrHtml.push("<span colno='PREPARE_TIME' class='" + ms.uiClass(formId, 'PREPARE_TIME') + "' style='" + ms.uiStyle(formId, 'PREPARE_TIME') + "' " + ms.uiEvent(formId, 'PREPARE_TIME') + " title='" + ms.titleAttr(formId, 'PREPARE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['PREPARE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_UNIT1' name='noprintset_MEASURE_UNIT1' class='datagrid-cell  " + ms.tdClass(formId, 'MEASURE_UNIT1') + "' style='" + ms.tdStyle(formId, 'MEASURE_UNIT1') + "' " + ms.tdEvent(formId, 'MEASURE_UNIT1') + ">");
                arrHtml.push("<span colno='MEASURE_UNIT1' class='" + ms.uiClass(formId, 'MEASURE_UNIT1') + "' style='" + ms.uiStyle(formId, 'MEASURE_UNIT1') + "' " + ms.uiEvent(formId, 'MEASURE_UNIT1') + " title='" + ms.titleAttr(formId, 'MEASURE_UNIT1', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_UNIT1'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MACHINE_TIME' name='noprintset_MACHINE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'MACHINE_TIME') + "' style='" + ms.tdStyle(formId, 'MACHINE_TIME') + "' " + ms.tdEvent(formId, 'MACHINE_TIME') + ">");
                arrHtml.push("<span colno='MACHINE_TIME' class='" + ms.uiClass(formId, 'MACHINE_TIME') + "' style='" + ms.uiStyle(formId, 'MACHINE_TIME') + "' " + ms.uiEvent(formId, 'MACHINE_TIME') + " title='" + ms.titleAttr(formId, 'MACHINE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['MACHINE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_UNIT2' name='noprintset_MEASURE_UNIT2' class='datagrid-cell  " + ms.tdClass(formId, 'MEASURE_UNIT2') + "' style='" + ms.tdStyle(formId, 'MEASURE_UNIT2') + "' " + ms.tdEvent(formId, 'MEASURE_UNIT2') + ">");
                arrHtml.push("<span colno='MEASURE_UNIT2' class='" + ms.uiClass(formId, 'MEASURE_UNIT2') + "' style='" + ms.uiStyle(formId, 'MEASURE_UNIT2') + "' " + ms.uiEvent(formId, 'MEASURE_UNIT2') + " title='" + ms.titleAttr(formId, 'MEASURE_UNIT2', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_UNIT2'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PEOPLE_TIME' name='noprintset_PEOPLE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'PEOPLE_TIME') + "' style='" + ms.tdStyle(formId, 'PEOPLE_TIME') + "' " + ms.tdEvent(formId, 'PEOPLE_TIME') + ">");
                arrHtml.push("<span colno='PEOPLE_TIME' class='" + ms.uiClass(formId, 'PEOPLE_TIME') + "' style='" + ms.uiStyle(formId, 'PEOPLE_TIME') + "' " + ms.uiEvent(formId, 'PEOPLE_TIME') + " title='" + ms.titleAttr(formId, 'PEOPLE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['PEOPLE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_TIME3' name='noprintset_MEASURE_TIME3' class='datagrid-cell  " + ms.tdClass(formId, 'MEASURE_TIME3') + "' style='" + ms.tdStyle(formId, 'MEASURE_TIME3') + "' " + ms.tdEvent(formId, 'MEASURE_TIME3') + ">");
                arrHtml.push("<span colno='MEASURE_TIME3' class='" + ms.uiClass(formId, 'MEASURE_TIME3') + "' style='" + ms.uiStyle(formId, 'MEASURE_TIME3') + "' " + ms.uiEvent(formId, 'MEASURE_TIME3') + " title='" + ms.titleAttr(formId, 'MEASURE_TIME3', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_TIME3'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='FINISH_DATE' name='noprintset_FINISH_DATE' class='datagrid-cell  " + ms.tdClass(formId, 'FINISH_DATE') + "' style='" + ms.tdStyle(formId, 'FINISH_DATE') + "' " + ms.tdEvent(formId, 'FINISH_DATE') + ">");
                arrHtml.push("<span colno='FINISH_DATE' class='" + ms.uiClass(formId, 'FINISH_DATE') + "' style='" + ms.uiStyle(formId, 'FINISH_DATE') + "' " + ms.uiEvent(formId, 'FINISH_DATE') + " title='" + ms.titleAttr(formId, 'FINISH_DATE', 'IS_TITLE_ATTR', v) + "' >" + v['FINISH_DATE'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REVERSE_FLAG' name='noprintset_REVERSE_FLAG' class='datagrid-cell  " + ms.tdClass(formId, 'REVERSE_FLAG') + "' style='" + ms.tdStyle(formId, 'REVERSE_FLAG') + "' " + ms.tdEvent(formId, 'REVERSE_FLAG') + ">");
                arrHtml.push("<span colno='REVERSE_FLAG' class='" + ms.uiClass(formId, 'REVERSE_FLAG') + "' style='" + ms.uiStyle(formId, 'REVERSE_FLAG') + "' " + ms.uiEvent(formId, 'REVERSE_FLAG') + " title='" + ms.titleAttr(formId, 'REVERSE_FLAG', 'IS_TITLE_ATTR', v) + "' >" + v['REVERSE_FLAG'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='SFLAG' name='noprintset_SFLAG' class='datagrid-cell  " + ms.tdClass(formId, 'SFLAG') + "' style='" + ms.tdStyle(formId, 'SFLAG') + "' " + ms.tdEvent(formId, 'SFLAG') + ">");
                arrHtml.push("<span colno='SFLAG' class='" + ms.uiClass(formId, 'SFLAG') + "' style='" + ms.uiStyle(formId, 'SFLAG') + "' " + ms.uiEvent(formId, 'SFLAG') + " title='" + ms.titleAttr(formId, 'SFLAG', 'IS_TITLE_ATTR', v) + "' >" + v['SFLAG'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MESSAGE' name='noprintset_MESSAGE' class='datagrid-cell  " + ms.tdClass(formId, 'MESSAGE') + "' style='" + ms.tdStyle(formId, 'MESSAGE') + "' " + ms.tdEvent(formId, 'MESSAGE') + ">");
                arrHtml.push("<span colno='MESSAGE' class='" + ms.uiClass(formId, 'MESSAGE') + "' style='" + ms.uiStyle(formId, 'MESSAGE') + "' " + ms.uiEvent(formId, 'MESSAGE') + " title='" + ms.titleAttr(formId, 'MESSAGE', 'IS_TITLE_ATTR', v) + "' >" + v['MESSAGE'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_TIME' name='noprintset_CREATE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'CREATE_TIME') + "' style='" + ms.tdStyle(formId, 'CREATE_TIME') + "' " + ms.tdEvent(formId, 'CREATE_TIME') + ">");
                arrHtml.push("<span colno='CREATE_TIME' class='" + ms.uiClass(formId, 'CREATE_TIME') + "' style='" + ms.uiStyle(formId, 'CREATE_TIME') + "' " + ms.uiEvent(formId, 'CREATE_TIME') + " title='" + ms.titleAttr(formId, 'CREATE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['CREATE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_USER' name='noprintset_CREATE_USER' class='datagrid-cell  " + ms.tdClass(formId, 'CREATE_USER') + "' style='" + ms.tdStyle(formId, 'CREATE_USER') + "' " + ms.tdEvent(formId, 'CREATE_USER') + ">");
                arrHtml.push("<span colno='CREATE_USER' class='" + ms.uiClass(formId, 'CREATE_USER') + "' style='" + ms.uiStyle(formId, 'CREATE_USER') + "' " + ms.uiEvent(formId, 'CREATE_USER') + " title='" + ms.titleAttr(formId, 'CREATE_USER', 'IS_TITLE_ATTR', v) + "' >" + v['CREATE_USER'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("</tr>")
            });
            if ($("#leftTableDiv" + formId).length > 0) {
                $("#left-tbody_" + formId).html(arrLeftHtml.join(""));
            }
            setCrossWiseScroll(formId, arrHtml);
            $("#tbody_" + formId).html(arrHtml.join(""));
        }
        setNumColWidth(formId);
        clearAllSelect();
        setTableWidth(formId);
        setScroll(formId);
    }
</script>
<script>
    <%--生成异步表格--%>

    function createTableModel_print(ms, formId) {
        var arrHtml = [];
        var arrLeftHtml = [];
        var uiTxt = ms.uiTxt(formId) == null ? [] : ms.uiTxt(formId);
        var trClass = ms.trClass(formId);
        var trStyle = ms.trStyle(formId);
        var trEvent = ms.trEvent(formId);
        var colNo = $("#relColVals").val();
        if (formId == '426d60fe64314fb0b97a38b40090f10d') {<%--VOID-工时报工表单--%>
            $.each(uiTxt, function (i, v) {
                var backgroudColor = (i + 1) % 2 == 0 ? "tr-hover" : "";
                arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                getRelColVal(arrHtml, v, colNo);
                arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");
                arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell " + ms.tdClass(formId, 'PROJECT_ID') + "' style='" + ms.tdStyle(formId, 'PROJECT_ID') + "' " + ms.tdEvent(formId, 'PROJECT_ID') + ">");
                arrHtml.push("<span colno='PROJECT_ID' class='" + ms.uiClass(formId, 'PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'PROJECT_ID') + "' " + ms.uiEvent(formId, 'PROJECT_ID') + " title='" + ms.titleAttr(formId, 'PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_ID'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REP_NUM' name='noprintset_REP_NUM' class='datagrid-cell " + ms.tdClass(formId, 'REP_NUM') + "' style='" + ms.tdStyle(formId, 'REP_NUM') + "' " + ms.tdEvent(formId, 'REP_NUM') + ">");
                arrHtml.push("<span colno='REP_NUM' class='" + ms.uiClass(formId, 'REP_NUM') + "' style='" + ms.uiStyle(formId, 'REP_NUM') + "' " + ms.uiEvent(formId, 'REP_NUM') + " title='" + ms.titleAttr(formId, 'REP_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['REP_NUM'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_UNIT' name='noprintset_PROJECT_UNIT' class='datagrid-cell " + ms.tdClass(formId, 'PROJECT_UNIT') + "' style='" + ms.tdStyle(formId, 'PROJECT_UNIT') + "' " + ms.tdEvent(formId, 'PROJECT_UNIT') + ">");
                arrHtml.push("<span colno='PROJECT_UNIT' class='" + ms.uiClass(formId, 'PROJECT_UNIT') + "' style='" + ms.uiStyle(formId, 'PROJECT_UNIT') + "' " + ms.uiEvent(formId, 'PROJECT_UNIT') + " title='" + ms.titleAttr(formId, 'PROJECT_UNIT', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_UNIT'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PREPARE_TIME' name='noprintset_PREPARE_TIME' class='datagrid-cell " + ms.tdClass(formId, 'PREPARE_TIME') + "' style='" + ms.tdStyle(formId, 'PREPARE_TIME') + "' " + ms.tdEvent(formId, 'PREPARE_TIME') + ">");
                arrHtml.push("<span colno='PREPARE_TIME' class='" + ms.uiClass(formId, 'PREPARE_TIME') + "' style='" + ms.uiStyle(formId, 'PREPARE_TIME') + "' " + ms.uiEvent(formId, 'PREPARE_TIME') + " title='" + ms.titleAttr(formId, 'PREPARE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['PREPARE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_UNIT1' name='noprintset_MEASURE_UNIT1' class='datagrid-cell " + ms.tdClass(formId, 'MEASURE_UNIT1') + "' style='" + ms.tdStyle(formId, 'MEASURE_UNIT1') + "' " + ms.tdEvent(formId, 'MEASURE_UNIT1') + ">");
                arrHtml.push("<span colno='MEASURE_UNIT1' class='" + ms.uiClass(formId, 'MEASURE_UNIT1') + "' style='" + ms.uiStyle(formId, 'MEASURE_UNIT1') + "' " + ms.uiEvent(formId, 'MEASURE_UNIT1') + " title='" + ms.titleAttr(formId, 'MEASURE_UNIT1', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_UNIT1'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MACHINE_TIME' name='noprintset_MACHINE_TIME' class='datagrid-cell " + ms.tdClass(formId, 'MACHINE_TIME') + "' style='" + ms.tdStyle(formId, 'MACHINE_TIME') + "' " + ms.tdEvent(formId, 'MACHINE_TIME') + ">");
                arrHtml.push("<span colno='MACHINE_TIME' class='" + ms.uiClass(formId, 'MACHINE_TIME') + "' style='" + ms.uiStyle(formId, 'MACHINE_TIME') + "' " + ms.uiEvent(formId, 'MACHINE_TIME') + " title='" + ms.titleAttr(formId, 'MACHINE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['MACHINE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_UNIT2' name='noprintset_MEASURE_UNIT2' class='datagrid-cell " + ms.tdClass(formId, 'MEASURE_UNIT2') + "' style='" + ms.tdStyle(formId, 'MEASURE_UNIT2') + "' " + ms.tdEvent(formId, 'MEASURE_UNIT2') + ">");
                arrHtml.push("<span colno='MEASURE_UNIT2' class='" + ms.uiClass(formId, 'MEASURE_UNIT2') + "' style='" + ms.uiStyle(formId, 'MEASURE_UNIT2') + "' " + ms.uiEvent(formId, 'MEASURE_UNIT2') + " title='" + ms.titleAttr(formId, 'MEASURE_UNIT2', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_UNIT2'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PEOPLE_TIME' name='noprintset_PEOPLE_TIME' class='datagrid-cell " + ms.tdClass(formId, 'PEOPLE_TIME') + "' style='" + ms.tdStyle(formId, 'PEOPLE_TIME') + "' " + ms.tdEvent(formId, 'PEOPLE_TIME') + ">");
                arrHtml.push("<span colno='PEOPLE_TIME' class='" + ms.uiClass(formId, 'PEOPLE_TIME') + "' style='" + ms.uiStyle(formId, 'PEOPLE_TIME') + "' " + ms.uiEvent(formId, 'PEOPLE_TIME') + " title='" + ms.titleAttr(formId, 'PEOPLE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['PEOPLE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MEASURE_TIME3' name='noprintset_MEASURE_TIME3' class='datagrid-cell " + ms.tdClass(formId, 'MEASURE_TIME3') + "' style='" + ms.tdStyle(formId, 'MEASURE_TIME3') + "' " + ms.tdEvent(formId, 'MEASURE_TIME3') + ">");
                arrHtml.push("<span colno='MEASURE_TIME3' class='" + ms.uiClass(formId, 'MEASURE_TIME3') + "' style='" + ms.uiStyle(formId, 'MEASURE_TIME3') + "' " + ms.uiEvent(formId, 'MEASURE_TIME3') + " title='" + ms.titleAttr(formId, 'MEASURE_TIME3', 'IS_TITLE_ATTR', v) + "' >" + v['MEASURE_TIME3'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='FINISH_DATE' name='noprintset_FINISH_DATE' class='datagrid-cell " + ms.tdClass(formId, 'FINISH_DATE') + "' style='" + ms.tdStyle(formId, 'FINISH_DATE') + "' " + ms.tdEvent(formId, 'FINISH_DATE') + ">");
                arrHtml.push("<span colno='FINISH_DATE' class='" + ms.uiClass(formId, 'FINISH_DATE') + "' style='" + ms.uiStyle(formId, 'FINISH_DATE') + "' " + ms.uiEvent(formId, 'FINISH_DATE') + " title='" + ms.titleAttr(formId, 'FINISH_DATE', 'IS_TITLE_ATTR', v) + "' >" + v['FINISH_DATE'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REVERSE_FLAG' name='noprintset_REVERSE_FLAG' class='datagrid-cell " + ms.tdClass(formId, 'REVERSE_FLAG') + "' style='" + ms.tdStyle(formId, 'REVERSE_FLAG') + "' " + ms.tdEvent(formId, 'REVERSE_FLAG') + ">");
                arrHtml.push("<span colno='REVERSE_FLAG' class='" + ms.uiClass(formId, 'REVERSE_FLAG') + "' style='" + ms.uiStyle(formId, 'REVERSE_FLAG') + "' " + ms.uiEvent(formId, 'REVERSE_FLAG') + " title='" + ms.titleAttr(formId, 'REVERSE_FLAG', 'IS_TITLE_ATTR', v) + "' >" + v['REVERSE_FLAG'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='SFLAG' name='noprintset_SFLAG' class='datagrid-cell " + ms.tdClass(formId, 'SFLAG') + "' style='" + ms.tdStyle(formId, 'SFLAG') + "' " + ms.tdEvent(formId, 'SFLAG') + ">");
                arrHtml.push("<span colno='SFLAG' class='" + ms.uiClass(formId, 'SFLAG') + "' style='" + ms.uiStyle(formId, 'SFLAG') + "' " + ms.uiEvent(formId, 'SFLAG') + " title='" + ms.titleAttr(formId, 'SFLAG', 'IS_TITLE_ATTR', v) + "' >" + v['SFLAG'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='MESSAGE' name='noprintset_MESSAGE' class='datagrid-cell " + ms.tdClass(formId, 'MESSAGE') + "' style='" + ms.tdStyle(formId, 'MESSAGE') + "' " + ms.tdEvent(formId, 'MESSAGE') + ">");
                arrHtml.push("<span colno='MESSAGE' class='" + ms.uiClass(formId, 'MESSAGE') + "' style='" + ms.uiStyle(formId, 'MESSAGE') + "' " + ms.uiEvent(formId, 'MESSAGE') + " title='" + ms.titleAttr(formId, 'MESSAGE', 'IS_TITLE_ATTR', v) + "' >" + v['MESSAGE'] + "</span>");
                arrHtml.push("</td>");
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
<script type="text/javascript">
    $(function () {
        $("#DATA_AUTH").width("150px");
        $("#DATA_AUTH_chosen").width("150px");
    });
    function getVoidSelectedCount() {
        var selCount = 0;
        $(".datagrid-btable tbody tr").each(function (seq) {
            if ($(this).find(":checkbox._selectdata").prop("checked")) {
                selCount++;
                if ($(this).parent().hasClass("isChilds")) {
                    var parentTrId = $(this).parents("table").attr("parantId");
                    _selectedEditTr = $("#" + parentTrId);
                } else {
                    _selectedEditTr = $(this);
                }
            }
        });
        if (selCount == 0) {
            utilsFp.confirmIcon(1, "", "", "", "<dict:lang value="请选择一条记录" />", "", "260", "145");
        }
        return selCount;
    }
    // var url = "http://10.10.80.193:8018/mc/http/interface.ms?model=ProjectReportIntfImpl&method=sync";
    var url = "http://localhost:8018/mc/http/interface.ms?model=ProjectReportIntfImpl&method=sync";
    function ajaxHttp(){
        var idArray = [];
        var i = 0;

        $('input:checkbox').each(function () {
            if ($(this).attr('checked')) {
                var curId = $(this).parent().parent().parent().attr("id");
                if (curId != null && curId != "datagrid-title-ajax") {
                    idArray[i] = curId;
                    i++;
                }
            }
        });
        console.log("idArray: >>> ");
        console.log(idArray.join(","));

        console.log("this is ajaxHttp function: >>> ");
        util.showLoading("处理中...");
        $.ajax({
            type: "POST",
            dataType: "json",
            url: url,
            data:  {idList: idArray.join(",")},
            success: function(data){
                util.closeLoading();
                var info = eval(data[0]);

                console.log("info: >>> ");
                console.log(info);
                var resultMap = eval(info);
                console.log("resultMap: >>> ");
                console.log(resultMap);

                var sflag = resultMap.SFLAG;
                var message = resultMap.MESSAGE;
                console.log("sflag: >>> "+sflag);
                console.log("message: >>> ");
                console.log(message);

                if(sflag == 'Y'){
                    utilsFp.confirmIcon(2, "", "query", "", "info:成功", 0, "300", "");
                }else{
                    utilsFp.confirmIcon(3, "", "query", "", "info:" +message, 0, "300", "");
                }
            },
            error:function(e1,e2,e3) {
                console.log("e1: >>> ");
                console.log(e1);
                console.log("e2: >>> ");
                console.log(e2);
                console.log("e3: >>> ");
                console.log(e3);
                util.closeLoading();
                utilsFp.confirmIcon(3, "", "query", "", "error:" + "传输异常", 0, "300", "");
            }
        });
    }
</script>