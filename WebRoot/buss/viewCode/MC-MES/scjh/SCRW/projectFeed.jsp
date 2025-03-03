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
		<dict:lang value="VOID-投料列表" />
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
		<bu:header formId ="f3da7355abf64b23b39786625855ca9a"/>

    
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
		<bu:func viewId="f99519d8f57a445db222bc807e9b6445" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="searchForm" />
                       </jsp:include>
                     

  <table class="search_table">
      <bu:search deal_mark="1" viewId="f99519d8f57a445db222bc807e9b6445" /> 

  </table>

                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.ConstantsMc@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="listForm" />
                     </jsp:include>
		<input type="hidden" name="formPagef3da7355abf64b23b39786625855ca9a" id="formPagef3da7355abf64b23b39786625855ca9a" value="${formPagef3da7355abf64b23b39786625855ca9a}"/>
		<input type="hidden" name="formId" id="formId1" value='f3da7355abf64b23b39786625855ca9a'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
		<div class="panel-ajax datagrid datagrid-div1"  id="f3da7355abf64b23b39786625855ca9a">
		<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajaxf3da7355abf64b23b39786625855ca9a" style="">
		<div class="datagrid-header">
		<div class="datagrid-header-inner" id="datagrid-header-innerf3da7355abf64b23b39786625855ca9a">
		<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htablef3da7355abf64b23b39786625855ca9a">
		<s:set name="_$type" value="'view'" />
		<tbody class="isParentsTitle">
		<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
			<td class="datagrid-cell" name="noprintset_SEQ" style="width:30px; text-align:center;" ><bu:thSeq  formId="f3da7355abf64b23b39786625855ca9a" i18n="1"/></td>
			<td class="datagrid-cell no-print" style="width:30px; text-align:center"><span><input type="checkbox" id="selectAll_f3da7355abf64b23b39786625855ca9a" onclick="_selectAjaxTableAllData(this,'f3da7355abf64b23b39786625855ca9a')" style="cursor: pointer;"title="全选"/></span></td>
			<td name="noprintset_PROJECT_ID" class="datagrid-cell"><bu:uitn colNo="PROJECT_ID" formId="f3da7355abf64b23b39786625855ca9a" /></td>
			<td name="noprintset_ITEM_CODE" class="datagrid-cell"><bu:uitn colNo="ITEM_CODE" formId="f3da7355abf64b23b39786625855ca9a" /></td>
			<td name="noprintset_ITEM_NUM" class="datagrid-cell"><bu:uitn colNo="ITEM_NUM" formId="f3da7355abf64b23b39786625855ca9a" /></td>
			<td name="noprintset_FEED_NUM" class="datagrid-cell"><bu:uitn colNo="FEED_NUM" formId="f3da7355abf64b23b39786625855ca9a" /></td>
			<td name="noprintset_PROCESS_ORDER" class="datagrid-cell"><bu:uitn colNo="PROCESS_ORDER" formId="f3da7355abf64b23b39786625855ca9a" /></td>
			<td name="noprintset_STATUS" class="datagrid-cell"><bu:uitn colNo="STATUS" formId="f3da7355abf64b23b39786625855ca9a" /></td>
		</bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDivf3da7355abf64b23b39786625855ca9a" onscroll="ajaxTableScroll(this,'f3da7355abf64b23b39786625855ca9a')">
		<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajaxf3da7355abf64b23b39786625855ca9a">
		<tbody id="tbody_f3da7355abf64b23b39786625855ca9a" class="isParents">
		</tbody>
		</table>		</div>
		</div>
		</div>
		<c:if test="${formPagef3da7355abf64b23b39786625855ca9a==1}">			<div class="center">
			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=f3da7355abf64b23b39786625855ca9a&showLoading=0" />
			</div>
		</c:if>

 <div id="printset_div" style="background-color: white;margin-top: 50px;display:none;">
 <div class="hd" style="background-color: #f6f5f7;height: 35px;">
 <div class="optn" style="top:45px;right:30px;">
 <button type="button" onclick="printset_17('f3da7355abf64b23b39786625855ca9a','1');">打印</button>
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
 <td style="width: 100px;text-align: right;"><span>序号</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="SEQ" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="SEQ" value="30" title_name="序号" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>工单号</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="PROJECT_ID" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="PROJECT_ID" value="" title_name="工单号" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>?物料编码</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="ITEM_CODE" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="ITEM_CODE" value="" title_name="?物料编码" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>?备料数量</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="ITEM_NUM" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="ITEM_NUM" value="" title_name="?备料数量" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>投入数量</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="FEED_NUM" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="FEED_NUM" value="" title_name="投入数量" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>?工艺顺序</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="PROCESS_ORDER" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="PROCESS_ORDER" value="" title_name="?工艺顺序" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>?投料状态</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="STATUS" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="STATUS" value="" title_name="?投料状态" />px
 </td>
 </tr>
 </table>
 </div>
 </div>
		<input type="hidden" name="tableCount" id="tableCount" value='1' />

               </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="f99519d8f57a445db222bc807e9b6445" />
      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
           <jsp:param name="modelName" value="VIEW_TYPE_17" />
           <jsp:param name="location" value="beforeJsLoad" />
      </jsp:include>
		<bu:script viewId="f99519d8f57a445db222bc807e9b6445" />
    
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
    if(formId=='f3da7355abf64b23b39786625855ca9a'){<%--VOID-投料表单--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            arrHtml.push("<input type='hidden' id='DATA_AUTH_ID_"+v.ID+"'  value='"+v.DATA_AUTH_ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
            arrHtml.push("<td class='datagrid-cell no-print' style='width:30px;text-align:center;' ><span class='_noedit'>");
            arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
            arrHtml.push("</td>");
            arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell  "+ms.tdClass(formId, 'PROJECT_ID')+"' style='"+ms.tdStyle(formId, 'PROJECT_ID')+"' "+ms.tdEvent(formId, 'PROJECT_ID')+">")
            arrHtml.push("<span colno='PROJECT_ID' class='"+ms.uiClass(formId, 'PROJECT_ID')+"' style='"+ms.uiStyle(formId, 'PROJECT_ID')+"' "+ms.uiEvent(formId, 'PROJECT_ID')+" title='"+ms.titleAttr(formId,'PROJECT_ID','IS_TITLE_ATTR',v)+"' >"+v['PROJECT_ID']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='ITEM_CODE' name='noprintset_ITEM_CODE' class='datagrid-cell  "+ms.tdClass(formId, 'ITEM_CODE')+"' style='"+ms.tdStyle(formId, 'ITEM_CODE')+"' "+ms.tdEvent(formId, 'ITEM_CODE')+">")
            arrHtml.push("<span colno='ITEM_CODE' class='"+ms.uiClass(formId, 'ITEM_CODE')+"' style='"+ms.uiStyle(formId, 'ITEM_CODE')+"' "+ms.uiEvent(formId, 'ITEM_CODE')+" title='"+ms.titleAttr(formId,'ITEM_CODE','IS_TITLE_ATTR',v)+"' >"+v['ITEM_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='ITEM_NUM' name='noprintset_ITEM_NUM' class='datagrid-cell  "+ms.tdClass(formId, 'ITEM_NUM')+"' style='"+ms.tdStyle(formId, 'ITEM_NUM')+"' "+ms.tdEvent(formId, 'ITEM_NUM')+">")
            arrHtml.push("<span colno='ITEM_NUM' class='"+ms.uiClass(formId, 'ITEM_NUM')+"' style='"+ms.uiStyle(formId, 'ITEM_NUM')+"' "+ms.uiEvent(formId, 'ITEM_NUM')+" title='"+ms.titleAttr(formId,'ITEM_NUM','IS_TITLE_ATTR',v)+"' >"+v['ITEM_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='FEED_NUM' name='noprintset_FEED_NUM' class='datagrid-cell  "+ms.tdClass(formId, 'FEED_NUM')+"' style='"+ms.tdStyle(formId, 'FEED_NUM')+"' "+ms.tdEvent(formId, 'FEED_NUM')+">")
            arrHtml.push("<span colno='FEED_NUM' class='"+ms.uiClass(formId, 'FEED_NUM')+"' style='"+ms.uiStyle(formId, 'FEED_NUM')+"' "+ms.uiEvent(formId, 'FEED_NUM')+" title='"+ms.titleAttr(formId,'FEED_NUM','IS_TITLE_ATTR',v)+"' >"+v['FEED_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='PROCESS_ORDER' name='noprintset_PROCESS_ORDER' class='datagrid-cell  "+ms.tdClass(formId, 'PROCESS_ORDER')+"' style='"+ms.tdStyle(formId, 'PROCESS_ORDER')+"' "+ms.tdEvent(formId, 'PROCESS_ORDER')+">")
            arrHtml.push("<span colno='PROCESS_ORDER' class='"+ms.uiClass(formId, 'PROCESS_ORDER')+"' style='"+ms.uiStyle(formId, 'PROCESS_ORDER')+"' "+ms.uiEvent(formId, 'PROCESS_ORDER')+" title='"+ms.titleAttr(formId,'PROCESS_ORDER','IS_TITLE_ATTR',v)+"' >"+v['PROCESS_ORDER']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='STATUS' name='noprintset_STATUS' class='datagrid-cell  "+ms.tdClass(formId, 'STATUS')+"' style='"+ms.tdStyle(formId, 'STATUS')+"' "+ms.tdEvent(formId, 'STATUS')+">")
            arrHtml.push("<span colno='STATUS' class='"+ms.uiClass(formId, 'STATUS')+"' style='"+ms.uiStyle(formId, 'STATUS')+"' "+ms.uiEvent(formId, 'STATUS')+" title='"+ms.titleAttr(formId,'STATUS','IS_TITLE_ATTR',v)+"' >"+v['STATUS']+"</span>")
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
function createTableModel_print(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='f3da7355abf64b23b39786625855ca9a'){<%--VOID-投料表单--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
            arrHtml.push("<td colno='PROJECT_ID' name='noprintset_PROJECT_ID' class='datagrid-cell "+ms.tdClass(formId, 'PROJECT_ID')+"' style='"+ms.tdStyle(formId, 'PROJECT_ID')+"' "+ms.tdEvent(formId, 'PROJECT_ID')+">")
            arrHtml.push("<span colno='PROJECT_ID' class='"+ms.uiClass(formId, 'PROJECT_ID')+"' style='"+ms.uiStyle(formId, 'PROJECT_ID')+"' "+ms.uiEvent(formId, 'PROJECT_ID')+" title='"+ms.titleAttr(formId,'PROJECT_ID','IS_TITLE_ATTR',v)+"' >"+v['PROJECT_ID']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='ITEM_CODE' name='noprintset_ITEM_CODE' class='datagrid-cell "+ms.tdClass(formId, 'ITEM_CODE')+"' style='"+ms.tdStyle(formId, 'ITEM_CODE')+"' "+ms.tdEvent(formId, 'ITEM_CODE')+">")
            arrHtml.push("<span colno='ITEM_CODE' class='"+ms.uiClass(formId, 'ITEM_CODE')+"' style='"+ms.uiStyle(formId, 'ITEM_CODE')+"' "+ms.uiEvent(formId, 'ITEM_CODE')+" title='"+ms.titleAttr(formId,'ITEM_CODE','IS_TITLE_ATTR',v)+"' >"+v['ITEM_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='ITEM_NUM' name='noprintset_ITEM_NUM' class='datagrid-cell "+ms.tdClass(formId, 'ITEM_NUM')+"' style='"+ms.tdStyle(formId, 'ITEM_NUM')+"' "+ms.tdEvent(formId, 'ITEM_NUM')+">")
            arrHtml.push("<span colno='ITEM_NUM' class='"+ms.uiClass(formId, 'ITEM_NUM')+"' style='"+ms.uiStyle(formId, 'ITEM_NUM')+"' "+ms.uiEvent(formId, 'ITEM_NUM')+" title='"+ms.titleAttr(formId,'ITEM_NUM','IS_TITLE_ATTR',v)+"' >"+v['ITEM_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='FEED_NUM' name='noprintset_FEED_NUM' class='datagrid-cell "+ms.tdClass(formId, 'FEED_NUM')+"' style='"+ms.tdStyle(formId, 'FEED_NUM')+"' "+ms.tdEvent(formId, 'FEED_NUM')+">")
            arrHtml.push("<span colno='FEED_NUM' class='"+ms.uiClass(formId, 'FEED_NUM')+"' style='"+ms.uiStyle(formId, 'FEED_NUM')+"' "+ms.uiEvent(formId, 'FEED_NUM')+" title='"+ms.titleAttr(formId,'FEED_NUM','IS_TITLE_ATTR',v)+"' >"+v['FEED_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='PROCESS_ORDER' name='noprintset_PROCESS_ORDER' class='datagrid-cell "+ms.tdClass(formId, 'PROCESS_ORDER')+"' style='"+ms.tdStyle(formId, 'PROCESS_ORDER')+"' "+ms.tdEvent(formId, 'PROCESS_ORDER')+">")
            arrHtml.push("<span colno='PROCESS_ORDER' class='"+ms.uiClass(formId, 'PROCESS_ORDER')+"' style='"+ms.uiStyle(formId, 'PROCESS_ORDER')+"' "+ms.uiEvent(formId, 'PROCESS_ORDER')+" title='"+ms.titleAttr(formId,'PROCESS_ORDER','IS_TITLE_ATTR',v)+"' >"+v['PROCESS_ORDER']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='STATUS' name='noprintset_STATUS' class='datagrid-cell "+ms.tdClass(formId, 'STATUS')+"' style='"+ms.tdStyle(formId, 'STATUS')+"' "+ms.tdEvent(formId, 'STATUS')+">")
            arrHtml.push("<span colno='STATUS' class='"+ms.uiClass(formId, 'STATUS')+"' style='"+ms.uiStyle(formId, 'STATUS')+"' "+ms.uiEvent(formId, 'STATUS')+" title='"+ms.titleAttr(formId,'STATUS','IS_TITLE_ATTR',v)+"' >"+v['STATUS']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("</tr>")
        });
        if($("#leftTableDiv"+formId).length>0){
            $("#left-tbody_"+formId).html(arrLeftHtml.join(""));
        }
        setCrossWiseScroll(formId,arrHtml);
        $("#tbody_print_"+formId).html(arrHtml.join(""));
    }
    setNumColWidth(formId);
    clearAllSelect();
    setTableWidth(formId);
    setScroll(formId);
}
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
