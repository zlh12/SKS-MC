<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<%@page import="com.more.fw.core.staticresource.PlfStaticRes"%>
<!-- 页面加载前 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="beforePageLoad" />
 </jsp:include>
<head>
    <title>
		<dict:lang value="leo-生产-待质检" />
    </title>
    <%@ include file="/plf/common/pub_meta.jsp"%>
    <jsp:include page="/plf/common/fp/pub_head_fp.jsp">
        <jsp:param name="popDivWinFp" value="1" />
        <jsp:param name="datePicker" value="1" />
        <jsp:param name="chosen" value="1" />
        <jsp:param name="msData" value="1" />
        <jsp:param name="scroll" value="1" />
         <jsp:param name="jqueryprint" value="1" />
         
    </jsp:include>
    <%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
    <%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="f76584409e4a476381f8d66c3ec36d5c"/>

    
     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
         <jsp:param name="modelName" value="VIEW_TYPE_17" />
         <jsp:param name="location" value="inHead" />
    </jsp:include>
    <!-- head里面 -->
    <!-- 产品静态资源 -->

	
	<object  id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
       <embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
	</object>

</head>

<body>
    <div class="content-in">
        <div class="dlist">
            <div class="hd">
		<bu:func viewId="86571274fc9849bb974f022362c4addd" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="searchForm" />
                       </jsp:include>
                     

  <table class="search_table">
      <bu:search deal_mark="1" viewId="86571274fc9849bb974f022362c4addd" /> 

  </table>

                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.ConstantsMc@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="listForm" />
                     </jsp:include>
		<input type="hidden" name="formPagef76584409e4a476381f8d66c3ec36d5c" id="formPagef76584409e4a476381f8d66c3ec36d5c" value="${formPagef76584409e4a476381f8d66c3ec36d5c}"/>
		<input type="hidden" name="formId" id="formId1" value='f76584409e4a476381f8d66c3ec36d5c'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='5ee6f7f0d5e04e9ea961d06ac1a909e2'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='76819937bf4340c7a136992246a07831'/>
		<div class="panel-ajax datagrid datagrid-div1"  id="f76584409e4a476381f8d66c3ec36d5c">
		<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajaxf76584409e4a476381f8d66c3ec36d5c" style="">
		<div class="datagrid-header">
		<div class="datagrid-header-inner" id="datagrid-header-innerf76584409e4a476381f8d66c3ec36d5c">
		<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htablef76584409e4a476381f8d66c3ec36d5c">
		<s:set name="_$type" value="'view'" />
		<tbody class="isParentsTitle">
		<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
                                        <td class="datagrid-cell" name="noprintset_SEQ" style="width:30px; text-align:center;">
                                            <bu:thSeq formId="f76584409e4a476381f8d66c3ec36d5c" i18n="1"/></td>
                                        <td class="datagrid-cell no-print" style="width:30px; text-align:center">
                                            <span><input type="checkbox" id="selectAll_f76584409e4a476381f8d66c3ec36d5c" onclick="_selectAjaxTableAllData(this,'f76584409e4a476381f8d66c3ec36d5c')" style="cursor: pointer;" title="全选"/></span>
                                        </td>
                                        
                                        <td class="datagrid-cell" style="width:200px;">
                                            <bu:uitn colNo="DATA_AUTH" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="PROJECT_ID" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:70px;">
                                            <bu:uitn colNo="PROJECT_STATUS" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:100px;">
                                            <bu:uitn colNo="IS_REL" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:70px;">
                                            <bu:uitn colNo="PROJECT_SORT" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
          								<td class="datagrid-cell" style="text-align:center;width:100px;">
                                            <bu:uitn colNo="PM_CHECK_STUST" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:150px;">
                                            <bu:uitn colNo="PRODUCT_MATERIAL" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:150px;">
                                            <bu:uitn colNo="PRODUCT_NAME" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:150px;">
                                            <bu:uitn colNo="PRODUCT_STANDARD" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:65px;">
                                            <bu:uitn colNo="PRODUCT_COUNT" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:65px;">
                                            <bu:uitn colNo="REL_NUM" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:90px;">
                                            <bu:uitn colNo="CREATE_USER" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:140px;">
                                            <bu:uitn colNo="CREATE_TIME" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:90px;">
                                            <bu:uitn colNo="CHECK_USER" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="text-align:center;width:140px;">
                                            <bu:uitn colNo="EDIT_TIME" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                        <td class="datagrid-cell" style="width:150px;">
                                            <bu:uitn colNo="PM_MEMO" formId="f76584409e4a476381f8d66c3ec36d5c"/></td>
                                    </bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDivf76584409e4a476381f8d66c3ec36d5c" onscroll="ajaxTableScroll(this,'f76584409e4a476381f8d66c3ec36d5c')">
		<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajaxf76584409e4a476381f8d66c3ec36d5c">
		<tbody id="tbody_f76584409e4a476381f8d66c3ec36d5c" class="isParents">
		</tbody>
		</table>		</div>
		</div>
		</div>
		<c:if test="${formPagef76584409e4a476381f8d66c3ec36d5c==1}">			<div class="center">
			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=f76584409e4a476381f8d66c3ec36d5c&showLoading=0" />
			</div>
		</c:if>

 <div id="printset_div" style="background-color: white;margin-top: 50px;display:none;">
 <div class="hd" style="background-color: #f6f5f7;height: 35px;">
 <div class="optn" style="top:45px;right:30px;">
 <button type="button" onclick="printset_17('f76584409e4a476381f8d66c3ec36d5c','1');">打印</button>
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
                                    <span>工单ID</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PROJECT_ID" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PROJECT_ID" value="" title_name="工单ID"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>工单状态</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PROJECT_STATUS" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PROJECT_STATUS" value="" title_name="工单状态"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>关联状态</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="IS_REL" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="IS_REL" value="" title_name="关联状态"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>?工单类别</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PROJECT_SORT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PROJECT_SORT" value="" title_name="?工单类别"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>机种料号</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PRODUCT_MATERIAL" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PRODUCT_MATERIAL" value="" title_name="机种料号"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>机种名称</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PRODUCT_NAME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PRODUCT_NAME" value="" title_name="机种名称"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>规格</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PRODUCT_STANDARD" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PRODUCT_STANDARD" value="" title_name="规格"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>计划数量</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PRODUCT_COUNT" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PRODUCT_COUNT" value="" title_name="计划数量"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>关联数量</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="REL_NUM" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="REL_NUM" value="" title_name="关联数量"/>px
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
                                    <span>质检人</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="CHECK_USER" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="CHECK_USER" value="" title_name="修改人"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>修改时间</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="EDIT_TIME" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="EDIT_TIME" value="" title_name="修改时间"/>px
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;text-align: right;">
                                    <span>备注</span>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="checkbox" name="PM_MEMO" value="1" checked="checked"/>
                                </td>
                                <td style="padding-left: 5px;">
                                    <input type="text" name="PM_MEMO" value="" title_name="备注"/>px
                                </td>
                            </tr>
 </table>
 </div>
 </div>
		
		<input type="hidden" id="relColVals" name="relColVals" value='PROJECT_ID'/>
		<input type="hidden" name="tableCount" id="tableCount" value='1' />

               </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="86571274fc9849bb974f022362c4addd" />
      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
           <jsp:param name="modelName" value="VIEW_TYPE_17" />
           <jsp:param name="location" value="beforeJsLoad" />
      </jsp:include>
		<bu:script viewId="86571274fc9849bb974f022362c4addd" />
    
    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
        <jsp:param name="modelName" value="VIEW_TYPE_17" />
        <jsp:param name="location" value="jsLoading" />
      </jsp:include>
    
<script>
 <%--处理无子表单状态--%> 
function getFormIdInitChildPage(){
     var tableCount = $("#tableCount").val();
      if(tableCount==1){
        return;
      }
      for ( var i = 2; i <= tableCount; i++) {
       var formId = $("#formId"+i).val();
         if(isPage(formId)){
            initChildPage(formId);
               }
             }
 }
<%--生成异步表格--%>
function createTableModel(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='f76584409e4a476381f8d66c3ec36d5c'){<%--VOID-工单关联-历史关联列表--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
           arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                arrHtml.push("<input type='hidden' id='DATA_AUTH_ID_" + v.ID + "'  value='" + v.DATA_AUTH_ID + "' />");
                getRelColVal(arrHtml, v, colNo);
                arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");
                arrHtml.push("<td class='datagrid-cell no-print' style='width:30px;text-align:center;' ><span class='_noedit'>");
                arrHtml.push("<input type='checkbox' name='" + formId + "$ID' value='" + v.ID + "' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='DATA_AUTH' name='noprintset_DATA_AUTH' class='datagrid-cell TD_DATA_AUTH " + ms.tdClass(formId, 'DATA_AUTH') + "' style='width:200px;text-align:center;" + ms.tdStyle(formId, 'DATA_AUTH') + "' " + ms.tdEvent(formId, 'DATA_AUTH') + ">");
                arrHtml.push("<span colno='DATA_AUTH' class='" + ms.uiClass(formId, 'DATA_AUTH') + "' style='" + ms.uiStyle(formId, 'DATA_AUTH') + "' " + ms.uiEvent(formId, 'DATA_AUTH') + " title='" + ms.titleAttr(formId, 'DATA_AUTH', 'IS_TITLE_ATTR', v) + "' >" + v['DATA_AUTH'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell  " + ms.tdClass(formId, 'PROJECT_ID') + "' style='width:150px;" + ms.tdStyle(formId, 'PROJECT_ID') + "' " + ms.tdEvent(formId, 'PROJECT_ID') + ">");
                arrHtml.push("<span colno='PROJECT_ID' class='" + ms.uiClass(formId, 'PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'PROJECT_ID') + "' " + ms.uiEvent(formId, 'PROJECT_ID') + " title='" + ms.titleAttr(formId, 'PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_ID'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_STATUS' name='noprintset_PROJECT_STATUS' class='datagrid-cell  " + ms.tdClass(formId, 'PROJECT_STATUS') + "' style='text-align:center;width:70px;" + ms.tdStyle(formId, 'PROJECT_STATUS') + "' " + ms.tdEvent(formId, 'PROJECT_STATUS') + ">");
                arrHtml.push("<span colno='PROJECT_STATUS' class='" + ms.uiClass(formId, 'PROJECT_STATUS') + "' style='" + ms.uiStyle(formId, 'PROJECT_STATUS') + "' " + ms.uiEvent(formId, 'PROJECT_STATUS') + " title='" + ms.titleAttr(formId, 'PROJECT_STATUS', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_STATUS'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='IS_REL' name='noprintset_IS_REL' class='datagrid-cell  " + ms.tdClass(formId, 'IS_REL') + "' style='text-align:center;width:100px;" + ms.tdStyle(formId, 'IS_REL') + "' " + ms.tdEvent(formId, 'IS_REL') + ">");
                arrHtml.push("<span colno='IS_REL' class='" + ms.uiClass(formId, 'IS_REL') + "' style='" + ms.uiStyle(formId, 'IS_REL') + "' " + ms.uiEvent(formId, 'IS_REL') + " title='" + ms.titleAttr(formId, 'IS_REL', 'IS_TITLE_ATTR', v) + "' >" + v['IS_REL'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_SORT' name='noprintset_PROJECT_SORT' class='datagrid-cell  " + ms.tdClass(formId, 'PROJECT_SORT') + "' style='text-align:center;width:70px;" + ms.tdStyle(formId, 'PROJECT_SORT') + "' " + ms.tdEvent(formId, 'PROJECT_SORT') + ">");
                arrHtml.push("<span colno='PROJECT_SORT' class='" + ms.uiClass(formId, 'PROJECT_SORT') + "' style='" + ms.uiStyle(formId, 'PROJECT_SORT') + "' " + ms.uiEvent(formId, 'PROJECT_SORT') + " title='" + ms.titleAttr(formId, 'PROJECT_SORT', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_SORT'] + "</span>");
                arrHtml.push("</td>");
      			arrHtml.push("<td colno='PM_CHECK_STUST' name='noprintset_PM_CHECK_STUSTT' class='datagrid-cell  " + ms.tdClass(formId, 'PM_CHECK_STUST') + "' style='text-align:center;width:70px;" + ms.tdStyle(formId, 'PM_CHECK_STUST') + "' " + ms.tdEvent(formId, 'PM_CHECK_STUST') + ">");
                arrHtml.push("<span colno='PM_CHECK_STUST' class='" + ms.uiClass(formId, 'PM_CHECK_STUST') + "' style='" + ms.uiStyle(formId, 'PM_CHECK_STUST') + "' " + ms.uiEvent(formId, 'PM_CHECK_STUST') + " title='" + ms.titleAttr(formId, 'PM_CHECK_STUST', 'IS_TITLE_ATTR', v) + "' >" + v['PM_CHECK_STUST'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_MATERIAL' name='noprintset_PRODUCT_MATERIAL' class='datagrid-cell  " + ms.tdClass(formId, 'PRODUCT_MATERIAL') + "' style='text-align:center;width:150px;" + ms.tdStyle(formId, 'PRODUCT_MATERIAL') + "' " + ms.tdEvent(formId, 'PRODUCT_MATERIAL') + ">");
                arrHtml.push("<span colno='PRODUCT_MATERIAL' class='" + ms.uiClass(formId, 'PRODUCT_MATERIAL') + "' style='" + ms.uiStyle(formId, 'PRODUCT_MATERIAL') + "' " + ms.uiEvent(formId, 'PRODUCT_MATERIAL') + " title='" + ms.titleAttr(formId, 'PRODUCT_MATERIAL', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_MATERIAL'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_NAME' name='noprintset_PRODUCT_NAME' class='datagrid-cell  " + ms.tdClass(formId, 'PRODUCT_NAME') + "' style='text-align:center;width:150px;" + ms.tdStyle(formId, 'PRODUCT_NAME') + "' " + ms.tdEvent(formId, 'PRODUCT_NAME') + ">");
                arrHtml.push("<span colno='PRODUCT_NAME' class='" + ms.uiClass(formId, 'PRODUCT_NAME') + "' style='" + ms.uiStyle(formId, 'PRODUCT_NAME') + "' " + ms.uiEvent(formId, 'PRODUCT_NAME') + " title='" + ms.titleAttr(formId, 'PRODUCT_NAME', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_NAME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_STANDARD' name='noprintset_PRODUCT_STANDARD' class='datagrid-cell  " + ms.tdClass(formId, 'PRODUCT_STANDARD') + "' style='text-align:center;width:150px;" + ms.tdStyle(formId, 'PRODUCT_STANDARD') + "' " + ms.tdEvent(formId, 'PRODUCT_STANDARD') + ">");
                arrHtml.push("<span colno='PRODUCT_STANDARD' class='" + ms.uiClass(formId, 'PRODUCT_STANDARD') + "' style='" + ms.uiStyle(formId, 'PRODUCT_STANDARD') + "' " + ms.uiEvent(formId, 'PRODUCT_STANDARD') + " title='" + ms.titleAttr(formId, 'PRODUCT_STANDARD', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_STANDARD'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_COUNT' name='noprintset_PRODUCT_COUNT' class='datagrid-cell  " + ms.tdClass(formId, 'PRODUCT_COUNT') + "' style='text-align:center;width:65px;" + ms.tdStyle(formId, 'PRODUCT_COUNT') + "' " + ms.tdEvent(formId, 'PRODUCT_COUNT') + ">");
                arrHtml.push("<span colno='PRODUCT_COUNT' class='" + ms.uiClass(formId, 'PRODUCT_COUNT') + "' style='" + ms.uiStyle(formId, 'PRODUCT_COUNT') + "' " + ms.uiEvent(formId, 'PRODUCT_COUNT') + " title='" + ms.titleAttr(formId, 'PRODUCT_COUNT', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_COUNT'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REL_NUM' name='noprintset_REL_NUM' class='datagrid-cell  " + ms.tdClass(formId, 'REL_NUM') + "' style='text-align:center;width:65px;" + ms.tdStyle(formId, 'REL_NUM') + "' " + ms.tdEvent(formId, 'REL_NUM') + ">");
                arrHtml.push("<span colno='REL_NUM' class='" + ms.uiClass(formId, 'REL_NUM') + "' style='" + ms.uiStyle(formId, 'REL_NUM') + "' " + ms.uiEvent(formId, 'REL_NUM') + " title='" + ms.titleAttr(formId, 'REL_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['REL_NUM'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_USER' name='noprintset_CREATE_USER' class='datagrid-cell  " + ms.tdClass(formId, 'CREATE_USER') + "' style='text-align:center;width:90px;" + ms.tdStyle(formId, 'CREATE_USER') + "' " + ms.tdEvent(formId, 'CREATE_USER') + ">");
                arrHtml.push("<span colno='CREATE_USER' class='" + ms.uiClass(formId, 'CREATE_USER') + "' style='" + ms.uiStyle(formId, 'CREATE_USER') + "' " + ms.uiEvent(formId, 'CREATE_USER') + " title='" + ms.titleAttr(formId, 'CREATE_USER', 'IS_TITLE_ATTR', v) + "' >" + v['CREATE_USER'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_TIME' name='noprintset_CREATE_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'CREATE_TIME') + "' style='text-align:center;width:140px;" + ms.tdStyle(formId, 'CREATE_TIME') + "' " + ms.tdEvent(formId, 'CREATE_TIME') + ">");
                arrHtml.push("<span colno='CREATE_TIME' class='" + ms.uiClass(formId, 'CREATE_TIME') + "' style='" + ms.uiStyle(formId, 'CREATE_TIME') + "' " + ms.uiEvent(formId, 'CREATE_TIME') + " title='" + ms.titleAttr(formId, 'CREATE_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['CREATE_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CHECK_USER' name='noprintset_CHECK_USER' class='datagrid-cell  " + ms.tdClass(formId, 'CHECK_USER') + "' style='text-align:center;width:90px;" + ms.tdStyle(formId, 'CHECK_USER') + "' " + ms.tdEvent(formId, 'CHECK_USER') + ">");
                arrHtml.push("<span colno='CHECK_USER' class='" + ms.uiClass(formId, 'CHECK_USER') + "' style='" + ms.uiStyle(formId, 'CHECK_USER') + "' " + ms.uiEvent(formId, 'CHECK_USER') + " title='" + ms.titleAttr(formId, 'CHECK_USER', 'IS_TITLE_ATTR', v) + "' >" + v['CHECK_USER'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='EDIT_TIME' name='noprintset_EDIT_TIME' class='datagrid-cell  " + ms.tdClass(formId, 'EDIT_TIME') + "' style='text-align:center;width:140px;" + ms.tdStyle(formId, 'EDIT_TIME') + "' " + ms.tdEvent(formId, 'EDIT_TIME') + ">");
                arrHtml.push("<span colno='EDIT_TIME' class='" + ms.uiClass(formId, 'EDIT_TIME') + "' style='" + ms.uiStyle(formId, 'EDIT_TIME') + "' " + ms.uiEvent(formId, 'EDIT_TIME') + " title='" + ms.titleAttr(formId, 'EDIT_TIME', 'IS_TITLE_ATTR', v) + "' >" + v['EDIT_TIME'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PM_MEMO' name='noprintset_PM_MEMO' class='datagrid-cell  " + ms.tdClass(formId, 'PM_MEMO') + "' style='width:150px;" + ms.tdStyle(formId, 'PM_MEMO') + "' " + ms.tdEvent(formId, 'PM_MEMO') + ">");
                arrHtml.push("<span colno='PM_MEMO' class='" + ms.uiClass(formId, 'PM_MEMO') + "' style='" + ms.uiStyle(formId, 'PM_MEMO') + "' " + ms.uiEvent(formId, 'PM_MEMO') + " title='" + ms.titleAttr(formId, 'PM_MEMO', 'IS_TITLE_ATTR', v) + "' >" + v['PM_MEMO'] + "</span>");
                arrHtml.push("</td>");
                arrHtml.push("</tr>")
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
    setScroll(formId);
}
</script><script>
<%--生成异步表格--%>
/** function createTableModel_print(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='f76584409e4a476381f8d66c3ec36d5c'){<%--VOID-工单关联-历史关联列表--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
           arrHtml.push("<tr class='datagrid-row " + backgroudColor + " " + trClass + "' id='" + v.ID + "' abbr='" + v.ID + "' style='cursor: pointer;" + trStyle + "' " + trEvent + ">");
                arrHtml.push("<input type='hidden' name='ID' value='" + v.ID + "' />");
                getRelColVal(arrHtml, v, colNo);
                arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>" + v._SEQ + "</span></td>");
                arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell " + ms.tdClass(formId, 'PROJECT_ID') + "' style='" + ms.tdStyle(formId, 'PROJECT_ID') + "' " + ms.tdEvent(formId, 'PROJECT_ID') + ">")
                arrHtml.push("<span colno='PROJECT_ID' class='" + ms.uiClass(formId, 'PROJECT_ID') + "' style='" + ms.uiStyle(formId, 'PROJECT_ID') + "' " + ms.uiEvent(formId, 'PROJECT_ID') + " title='" + ms.titleAttr(formId, 'PROJECT_ID', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_ID'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_STATUS' name='noprintset_PROJECT_STATUS' class='datagrid-cell " + ms.tdClass(formId, 'PROJECT_STATUS') + "' style='" + ms.tdStyle(formId, 'PROJECT_STATUS') + "' " + ms.tdEvent(formId, 'PROJECT_STATUS') + ">")
                arrHtml.push("<span colno='PROJECT_STATUS' class='" + ms.uiClass(formId, 'PROJECT_STATUS') + "' style='" + ms.uiStyle(formId, 'PROJECT_STATUS') + "' " + ms.uiEvent(formId, 'PROJECT_STATUS') + " title='" + ms.titleAttr(formId, 'PROJECT_STATUS', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_STATUS'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='IS_REL' name='noprintset_IS_REL' class='datagrid-cell " + ms.tdClass(formId, 'IS_REL') + "' style='" + ms.tdStyle(formId, 'IS_REL') + "' " + ms.tdEvent(formId, 'IS_REL') + ">")
                arrHtml.push("<span colno='IS_REL' class='" + ms.uiClass(formId, 'IS_REL') + "' style='" + ms.uiStyle(formId, 'IS_REL') + "' " + ms.uiEvent(formId, 'IS_REL') + " title='" + ms.titleAttr(formId, 'IS_REL', 'IS_TITLE_ATTR', v) + "' >" + v['IS_REL'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_SORT' name='noprintset_PROJECT_SORT' class='datagrid-cell " + ms.tdClass(formId, 'PROJECT_SORT') + "' style='" + ms.tdStyle(formId, 'PROJECT_SORT') + "' " + ms.tdEvent(formId, 'PROJECT_SORT') + ">")
                arrHtml.push("<span colno='PROJECT_SORT' class='" + ms.uiClass(formId, 'PROJECT_SORT') + "' style='" + ms.uiStyle(formId, 'PROJECT_SORT') + "' " + ms.uiEvent(formId, 'PROJECT_SORT') + " title='" + ms.titleAttr(formId, 'PROJECT_SORT', 'IS_TITLE_ATTR', v) + "' >" + v['PROJECT_SORT'] + "</span>")
                arrHtml.push("</td>");
      			arrHtml.push("<td colno='PM_CHECK_STUST' name='noprintset_PM_CHECK_STUSTT' class='datagrid-cell  " + ms.tdClass(formId, 'PM_CHECK_STUST') + "' style='text-align:center;width:70px;" + ms.tdStyle(formId, 'PM_CHECK_STUST') + "' " + ms.tdEvent(formId, 'PM_CHECK_STUST') + ">")
                arrHtml.push("<span colno='PM_CHECK_STUST' class='" + ms.uiClass(formId, 'PM_CHECK_STUST') + "' style='" + ms.uiStyle(formId, 'PM_CHECK_STUST') + "' " + ms.uiEvent(formId, 'PM_CHECK_STUST') + " title='" + ms.titleAttr(formId, 'PM_CHECK_STUST', 'IS_TITLE_ATTR', v) + "' >" + v['PM_CHECK_STUST'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_MATERIAL' name='noprintset_PRODUCT_MATERIAL' class='datagrid-cell " + ms.tdClass(formId, 'PRODUCT_MATERIAL') + "' style='" + ms.tdStyle(formId, 'PRODUCT_MATERIAL') + "' " + ms.tdEvent(formId, 'PRODUCT_MATERIAL') + ">")
                arrHtml.push("<span colno='PRODUCT_MATERIAL' class='" + ms.uiClass(formId, 'PRODUCT_MATERIAL') + "' style='" + ms.uiStyle(formId, 'PRODUCT_MATERIAL') + "' " + ms.uiEvent(formId, 'PRODUCT_MATERIAL') + " title='" + ms.titleAttr(formId, 'PRODUCT_MATERIAL', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_MATERIAL'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_NAME' name='noprintset_PRODUCT_NAME' class='datagrid-cell " + ms.tdClass(formId, 'PRODUCT_NAME') + "' style='" + ms.tdStyle(formId, 'PRODUCT_NAME') + "' " + ms.tdEvent(formId, 'PRODUCT_NAME') + ">")
                arrHtml.push("<span colno='PRODUCT_NAME' class='" + ms.uiClass(formId, 'PRODUCT_NAME') + "' style='" + ms.uiStyle(formId, 'PRODUCT_NAME') + "' " + ms.uiEvent(formId, 'PRODUCT_NAME') + " title='" + ms.titleAttr(formId, 'PRODUCT_NAME', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_NAME'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_STANDARD' name='noprintset_PRODUCT_STANDARD' class='datagrid-cell " + ms.tdClass(formId, 'PRODUCT_STANDARD') + "' style='" + ms.tdStyle(formId, 'PRODUCT_STANDARD') + "' " + ms.tdEvent(formId, 'PRODUCT_STANDARD') + ">")
                arrHtml.push("<span colno='PRODUCT_STANDARD' class='" + ms.uiClass(formId, 'PRODUCT_STANDARD') + "' style='" + ms.uiStyle(formId, 'PRODUCT_STANDARD') + "' " + ms.uiEvent(formId, 'PRODUCT_STANDARD') + " title='" + ms.titleAttr(formId, 'PRODUCT_STANDARD', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_STANDARD'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_COUNT' name='noprintset_PRODUCT_COUNT' class='datagrid-cell " + ms.tdClass(formId, 'PRODUCT_COUNT') + "' style='" + ms.tdStyle(formId, 'PRODUCT_COUNT') + "' " + ms.tdEvent(formId, 'PRODUCT_COUNT') + ">")
                arrHtml.push("<span colno='PRODUCT_COUNT' class='" + ms.uiClass(formId, 'PRODUCT_COUNT') + "' style='" + ms.uiStyle(formId, 'PRODUCT_COUNT') + "' " + ms.uiEvent(formId, 'PRODUCT_COUNT') + " title='" + ms.titleAttr(formId, 'PRODUCT_COUNT', 'IS_TITLE_ATTR', v) + "' >" + v['PRODUCT_COUNT'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='REL_NUM' name='noprintset_REL_NUM' class='datagrid-cell " + ms.tdClass(formId, 'REL_NUM') + "' style='" + ms.tdStyle(formId, 'REL_NUM') + "' " + ms.tdEvent(formId, 'REL_NUM') + ">")
                arrHtml.push("<span colno='REL_NUM' class='" + ms.uiClass(formId, 'REL_NUM') + "' style='" + ms.uiStyle(formId, 'REL_NUM') + "' " + ms.uiEvent(formId, 'REL_NUM') + " title='" + ms.titleAttr(formId, 'REL_NUM', 'IS_TITLE_ATTR', v) + "' >" + v['REL_NUM'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PM_MEMO' name='noprintset_PM_MEMO' class='datagrid-cell " + ms.tdClass(formId, 'PM_MEMO') + "' style='" + ms.tdStyle(formId, 'PM_MEMO') + "' " + ms.tdEvent(formId, 'PM_MEMO') + ">")
                arrHtml.push("<span colno='PM_MEMO' class='" + ms.uiClass(formId, 'PM_MEMO') + "' style='" + ms.uiStyle(formId, 'PM_MEMO') + "' " + ms.uiEvent(formId, 'PM_MEMO') + " title='" + ms.titleAttr(formId, 'PM_MEMO', 'IS_TITLE_ATTR', v) + "' >" + v['PM_MEMO'] + "</span>")
                arrHtml.push("</td>");
                arrHtml.push("</tr>")
        });
        if($("#leftTableDiv"+formId).length>0){
            $("#left-tbody_"+formId).html(arrLeftHtml.join(""));
        }
        setCrossWiseScroll(formId,arrHtml);
        $("#tbody_print_"+formId).html(arrHtml.join(""));
    }
   
        setCrossWiseScroll(formId,arrHtml);
        $("#tbody_print_"+formId).html(arrHtml.join(""));
    }
    setNumColWidth(formId);
    clearAllSelect();
    setTableWidth(formId);
    setScroll(formId);
}  **/
</script>
<script type="text/javascript" src="${path}plf/page/fp/js/paginationMultAx.js?_mc_res_version=<%=PlfStaticRes.PaginationMultAx_JS %>"></script>
<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
<!-- 页面结束 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="pageOver" />
 </jsp:include>
