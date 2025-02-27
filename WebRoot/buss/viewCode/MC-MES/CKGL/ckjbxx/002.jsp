<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<!-- 页面加载前 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="beforePageLoad" />
 </jsp:include>
<head>
    <title>
		<dict:lang value="物料作业日志2" />
    </title>
    <%@ include file="/plf/common/pub_meta.jsp"%>
    <jsp:include page="/plf/common/fp/pub_head_fp.jsp">
        <jsp:param name="popDivWinFp" value="1" />
        <jsp:param name="datePicker" value="1" />
        <jsp:param name="chosen" value="1" />
        <jsp:param name="msData" value="1" />
        <jsp:param name="scroll" value="1" />
    </jsp:include>
    <%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
    <%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="206ec4f50200408bb3528a9246d4b69a"/>

    
     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
         <jsp:param name="modelName" value="VIEW_TYPE_17" />
         <jsp:param name="location" value="inHead" />
    </jsp:include>
    <!-- head里面 -->
</head>

<body>
    <div class="content-in">
        <div class="dlist">
            <div class="hd">
		<bu:func viewId="5d0142d669614f049149ec884f616fda" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="searchForm" />
                       </jsp:include>
                     
		<bu:search viewId="5d0142d669614f049149ec884f616fda" />
                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.Constants@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="listForm" />
                     </jsp:include>
		<input type="hidden" name="formPage206ec4f50200408bb3528a9246d4b69a" id="formPage206ec4f50200408bb3528a9246d4b69a" value="${formPage206ec4f50200408bb3528a9246d4b69a}"/>
		<input type="hidden" name="formId" id="formId1" value='206ec4f50200408bb3528a9246d4b69a'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
		<div class="panel-ajax datagrid datagrid-div1"  id="206ec4f50200408bb3528a9246d4b69a">
		<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajax206ec4f50200408bb3528a9246d4b69a" style="">
		<div class="datagrid-header">
		<div class="datagrid-header-inner" id="datagrid-header-inner206ec4f50200408bb3528a9246d4b69a">
		<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htable206ec4f50200408bb3528a9246d4b69a">
		<s:set name="_$type" value="'view'" />
		<tbody class="isParentsTitle">
		<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
			<td class="datagrid-cell" style="width:30px; text-align:center;" ><bu:thSeq  formId="206ec4f50200408bb3528a9246d4b69a" i18n="1"/></td>
			<td class="datagrid-cell" style="width:30px; text-align:center"><span><input type="checkbox" id="selectAll_206ec4f50200408bb3528a9246d4b69a" onclick="_selectAjaxTableAllData(this,'206ec4f50200408bb3528a9246d4b69a')" style="cursor: pointer;"title="全选"/></span></td>
			<td class="datagrid-cell"><dict:lang value="组织机构" /></td >
			<td class="datagrid-cell"><bu:uitn colNo="WTI_ITEM_SN" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_OPERATE_TYPE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_ITEM_CODE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_ITEM_NAME" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_ITEM_SPEC" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_DOC_NUM" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_DOC_TYPE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_SUP_CODE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_CUST_CODE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_WH_CODE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_STORAGE_CODE" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_OPERATE_TIME" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="WTI_OPERATE_EMP" formId="206ec4f50200408bb3528a9246d4b69a" /></td>
		</bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDiv206ec4f50200408bb3528a9246d4b69a" onscroll="ajaxTableScroll(this,'206ec4f50200408bb3528a9246d4b69a')">
		<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajax206ec4f50200408bb3528a9246d4b69a">
		<tbody id="tbody_206ec4f50200408bb3528a9246d4b69a" class="isParents">
		</tbody>
		</table>		</div>
		</div>
		</div>
		<c:if test="${formPage206ec4f50200408bb3528a9246d4b69a==1}">			<div class="center">
			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=206ec4f50200408bb3528a9246d4b69a&showLoading=0" />
			</div>
		</c:if>

		<input type="hidden" name="tableCount" id="tableCount" value='1' />

               </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="5d0142d669614f049149ec884f616fda" />
      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
           <jsp:param name="modelName" value="VIEW_TYPE_17" />
           <jsp:param name="location" value="beforeJsLoad" />
      </jsp:include>
		<bu:script viewId="5d0142d669614f049149ec884f616fda" />
    
    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
        <jsp:param name="modelName" value="VIEW_TYPE_17" />
        <jsp:param name="location" value="jsLoading" />
      </jsp:include>
    
<script>
<%--生成异步表格--%>
function createTableModel(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='206ec4f50200408bb3528a9246d4b69a'){<%--仓库作业日志表2--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
            arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>");
            arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_ITEM_SN' class='datagrid-cell "+ms.tdClass(formId, 'WTI_ITEM_SN')+"' style='"+ms.tdStyle(formId, 'WTI_ITEM_SN')+"' "+ms.tdEvent(formId, 'WTI_ITEM_SN')+">")
            arrHtml.push("<span colno='WTI_ITEM_SN' class='"+ms.uiClass(formId, 'WTI_ITEM_SN')+"' style='"+ms.uiStyle(formId, 'WTI_ITEM_SN')+"' "+ms.uiEvent(formId, 'WTI_ITEM_SN')+" title='"+ms.titleAttr(formId,'WTI_ITEM_SN','IS_TITLE_ATTR',v)+"' >"+v['WTI_ITEM_SN']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_OPERATE_TYPE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_OPERATE_TYPE')+"' style='"+ms.tdStyle(formId, 'WTI_OPERATE_TYPE')+"' "+ms.tdEvent(formId, 'WTI_OPERATE_TYPE')+">")
            arrHtml.push("<span colno='WTI_OPERATE_TYPE' class='"+ms.uiClass(formId, 'WTI_OPERATE_TYPE')+"' style='"+ms.uiStyle(formId, 'WTI_OPERATE_TYPE')+"' "+ms.uiEvent(formId, 'WTI_OPERATE_TYPE')+" title='"+ms.titleAttr(formId,'WTI_OPERATE_TYPE','IS_TITLE_ATTR',v)+"' >"+v['WTI_OPERATE_TYPE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_ITEM_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_ITEM_CODE')+"' style='"+ms.tdStyle(formId, 'WTI_ITEM_CODE')+"' "+ms.tdEvent(formId, 'WTI_ITEM_CODE')+">")
            arrHtml.push("<span colno='WTI_ITEM_CODE' class='"+ms.uiClass(formId, 'WTI_ITEM_CODE')+"' style='"+ms.uiStyle(formId, 'WTI_ITEM_CODE')+"' "+ms.uiEvent(formId, 'WTI_ITEM_CODE')+" title='"+ms.titleAttr(formId,'WTI_ITEM_CODE','IS_TITLE_ATTR',v)+"' >"+v['WTI_ITEM_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_ITEM_NAME' class='datagrid-cell "+ms.tdClass(formId, 'WTI_ITEM_NAME')+"' style='"+ms.tdStyle(formId, 'WTI_ITEM_NAME')+"' "+ms.tdEvent(formId, 'WTI_ITEM_NAME')+">")
            arrHtml.push("<span colno='WTI_ITEM_NAME' class='"+ms.uiClass(formId, 'WTI_ITEM_NAME')+"' style='"+ms.uiStyle(formId, 'WTI_ITEM_NAME')+"' "+ms.uiEvent(formId, 'WTI_ITEM_NAME')+" title='"+ms.titleAttr(formId,'WTI_ITEM_NAME','IS_TITLE_ATTR',v)+"' >"+v['WTI_ITEM_NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_ITEM_SPEC' class='datagrid-cell "+ms.tdClass(formId, 'WTI_ITEM_SPEC')+"' style='"+ms.tdStyle(formId, 'WTI_ITEM_SPEC')+"' "+ms.tdEvent(formId, 'WTI_ITEM_SPEC')+">")
            arrHtml.push("<span colno='WTI_ITEM_SPEC' class='"+ms.uiClass(formId, 'WTI_ITEM_SPEC')+"' style='"+ms.uiStyle(formId, 'WTI_ITEM_SPEC')+"' "+ms.uiEvent(formId, 'WTI_ITEM_SPEC')+" title='"+ms.titleAttr(formId,'WTI_ITEM_SPEC','IS_TITLE_ATTR',v)+"' >"+v['WTI_ITEM_SPEC']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_DOC_NUM' class='datagrid-cell "+ms.tdClass(formId, 'WTI_DOC_NUM')+"' style='"+ms.tdStyle(formId, 'WTI_DOC_NUM')+"' "+ms.tdEvent(formId, 'WTI_DOC_NUM')+">")
            arrHtml.push("<span colno='WTI_DOC_NUM' class='"+ms.uiClass(formId, 'WTI_DOC_NUM')+"' style='"+ms.uiStyle(formId, 'WTI_DOC_NUM')+"' "+ms.uiEvent(formId, 'WTI_DOC_NUM')+" title='"+ms.titleAttr(formId,'WTI_DOC_NUM','IS_TITLE_ATTR',v)+"' >"+v['WTI_DOC_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_DOC_TYPE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_DOC_TYPE')+"' style='"+ms.tdStyle(formId, 'WTI_DOC_TYPE')+"' "+ms.tdEvent(formId, 'WTI_DOC_TYPE')+">")
            arrHtml.push("<span colno='WTI_DOC_TYPE' class='"+ms.uiClass(formId, 'WTI_DOC_TYPE')+"' style='"+ms.uiStyle(formId, 'WTI_DOC_TYPE')+"' "+ms.uiEvent(formId, 'WTI_DOC_TYPE')+" title='"+ms.titleAttr(formId,'WTI_DOC_TYPE','IS_TITLE_ATTR',v)+"' >"+v['WTI_DOC_TYPE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_SUP_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_SUP_CODE')+"' style='"+ms.tdStyle(formId, 'WTI_SUP_CODE')+"' "+ms.tdEvent(formId, 'WTI_SUP_CODE')+">")
            arrHtml.push("<span colno='WTI_SUP_CODE' class='"+ms.uiClass(formId, 'WTI_SUP_CODE')+"' style='"+ms.uiStyle(formId, 'WTI_SUP_CODE')+"' "+ms.uiEvent(formId, 'WTI_SUP_CODE')+" title='"+ms.titleAttr(formId,'WTI_SUP_CODE','IS_TITLE_ATTR',v)+"' >"+v['WTI_SUP_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_CUST_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_CUST_CODE')+"' style='"+ms.tdStyle(formId, 'WTI_CUST_CODE')+"' "+ms.tdEvent(formId, 'WTI_CUST_CODE')+">")
            arrHtml.push("<span colno='WTI_CUST_CODE' class='"+ms.uiClass(formId, 'WTI_CUST_CODE')+"' style='"+ms.uiStyle(formId, 'WTI_CUST_CODE')+"' "+ms.uiEvent(formId, 'WTI_CUST_CODE')+" title='"+ms.titleAttr(formId,'WTI_CUST_CODE','IS_TITLE_ATTR',v)+"' >"+v['WTI_CUST_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_WH_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_WH_CODE')+"' style='"+ms.tdStyle(formId, 'WTI_WH_CODE')+"' "+ms.tdEvent(formId, 'WTI_WH_CODE')+">")
            arrHtml.push("<span colno='WTI_WH_CODE' class='"+ms.uiClass(formId, 'WTI_WH_CODE')+"' style='"+ms.uiStyle(formId, 'WTI_WH_CODE')+"' "+ms.uiEvent(formId, 'WTI_WH_CODE')+" title='"+ms.titleAttr(formId,'WTI_WH_CODE','IS_TITLE_ATTR',v)+"' >"+v['WTI_WH_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_STORAGE_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WTI_STORAGE_CODE')+"' style='"+ms.tdStyle(formId, 'WTI_STORAGE_CODE')+"' "+ms.tdEvent(formId, 'WTI_STORAGE_CODE')+">")
            arrHtml.push("<span colno='WTI_STORAGE_CODE' class='"+ms.uiClass(formId, 'WTI_STORAGE_CODE')+"' style='"+ms.uiStyle(formId, 'WTI_STORAGE_CODE')+"' "+ms.uiEvent(formId, 'WTI_STORAGE_CODE')+" title='"+ms.titleAttr(formId,'WTI_STORAGE_CODE','IS_TITLE_ATTR',v)+"' >"+v['WTI_STORAGE_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_OPERATE_TIME' class='datagrid-cell "+ms.tdClass(formId, 'WTI_OPERATE_TIME')+"' style='"+ms.tdStyle(formId, 'WTI_OPERATE_TIME')+"' "+ms.tdEvent(formId, 'WTI_OPERATE_TIME')+">")
            arrHtml.push("<span colno='WTI_OPERATE_TIME' class='"+ms.uiClass(formId, 'WTI_OPERATE_TIME')+"' style='"+ms.uiStyle(formId, 'WTI_OPERATE_TIME')+"' "+ms.uiEvent(formId, 'WTI_OPERATE_TIME')+" title='"+ms.titleAttr(formId,'WTI_OPERATE_TIME','IS_TITLE_ATTR',v)+"' >"+v['WTI_OPERATE_TIME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WTI_OPERATE_EMP' class='datagrid-cell "+ms.tdClass(formId, 'WTI_OPERATE_EMP')+"' style='"+ms.tdStyle(formId, 'WTI_OPERATE_EMP')+"' "+ms.tdEvent(formId, 'WTI_OPERATE_EMP')+">")
            arrHtml.push("<span colno='WTI_OPERATE_EMP' class='"+ms.uiClass(formId, 'WTI_OPERATE_EMP')+"' style='"+ms.uiStyle(formId, 'WTI_OPERATE_EMP')+"' "+ms.uiEvent(formId, 'WTI_OPERATE_EMP')+" title='"+ms.titleAttr(formId,'WTI_OPERATE_EMP','IS_TITLE_ATTR',v)+"' >"+v['WTI_OPERATE_EMP']+"</span>")
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
    setScroll();
}
</script>
<script type="text/javascript" src="${path}plf/page/fp/js/paginationMultAx.js"></script>
<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
<!-- 页面结束 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="pageOver" />
 </jsp:include>
