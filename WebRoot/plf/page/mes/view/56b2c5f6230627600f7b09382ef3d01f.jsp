<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<title>
		<dict:lang value="负责人信息关联列表" />
	</title>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<jsp:include page="/plf/common/fp/pub_head_fp.jsp">
		<jsp:param name="popDivWinFp" value="1" />
		<jsp:param name="datePicker" value="1" />
		<jsp:param name="chosen" value="1" />
	</jsp:include>
	<%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
	<%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="55523b5c987a4d3db9d13b3fdbe627c1"/>

</head>
<body scroll="auto" style="overflow: auto;" >

	<div class="content-in">
              <div class="dlist">
                  <div class="hd">
		<bu:func viewId="5bcf7e6e6bd24a3b9e6ccb113a49299e" />
                  </div>
                  
                  <div class="bd">
                      <div class="search-box">
						<form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
							<input type="hidden" name="exeid" value="${exeid}" />
							<input type="hidden" name="searchParaShowState" id="searchParaShowState" value="${paraMap.searchParaShowState}" />
							<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:search viewId="5bcf7e6e6bd24a3b9e6ccb113a49299e" />
						</form>
                        <a href="javascript:void(0);" class="more"></a>
                      </div>

		<form id="listForm" name="listForm" action="${path}buss/bussModel.ms" method="post">
			<input type="hidden" name="exeid" value="${exeid}" />
			<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
<input type="hidden" name="formId" value='55523b5c987a4d3db9d13b3fdbe627c1'/>
 <div class="panel datagrid datagrid-div1"  id="55523b5c987a4d3db9d13b3fdbe627c1">
 <div class="datagrid-div2 datagrid-div6 datagrid-view-kz" id="datagrid-view-kz" style="">
 <div class="datagrid-header">
 <div class="datagrid-header-inner" id="datagrid-header-inner">
		<bu:table  id="datagrid-htable-kz"  cssClass="datagrid-htable fixedTable datagrid-div6" >
		<s:set name="_$type" value="'view'" />
		<tbody>
		<bu:tr cssClass="datagrid-header-row" id="datagrid-title-kz">
			<td class="datagrid-cell" style="width:15px; text-align:center;" ><bu:thSeq  formId="55523b5c987a4d3db9d13b3fdbe627c1" i18n="1"/></td>
			<td class="datagrid-cell" style="width:15px; text-align:center"><bu:thSBox listType="2" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CAC_GROUP" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CAC_CHARGE_EMP" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CAC_CHARGE_TECH" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CAC_CHARGE_DEVICE" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CAC_CHARGE_QUALITY" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="CA_ID" formId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
		</bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3" id="datagrid-body-kz" onscroll="tableScroll()">
		<bu:table cssClass="datagrid-btable fixedTable" id="datagrid-btable-kz">
		<tbody id="tbody_55523b5c987a4d3db9d13b3fdbe627c1">
		<bu:loop id="ls" value="dataList" status="seq" >
		<bu:tr cssClass="datagrid-row">
			<td style="width:15px;text-align:center;" class="datagrid-cell datagrid-cell-0">
<bu:tdSeq currentPage="${page.currentPage}" pageRecord="${page.pageRecord}" seq="%{#seq.count}" /></td>
			<td style="width:15px" class="datagrid-cell datagrid-cell-1">
<bu:tdSBox formidFirstId="55523b5c987a4d3db9d13b3fdbe627c1" /></td>
			<bu:td cssClass="datagrid-cell datagrid-cell-1" colNo="CAC_GROUP" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CAC_GROUP" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CAC_GROUP}" seq="%{#seq}" />
			</bu:td>
			<bu:td cssClass="datagrid-cell datagrid-cell-2" colNo="CAC_CHARGE_EMP" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CAC_CHARGE_EMP" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CAC_CHARGE_EMP}" seq="%{#seq}" />
			</bu:td>
			<bu:td cssClass="datagrid-cell datagrid-cell-3" colNo="CAC_CHARGE_TECH" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CAC_CHARGE_TECH" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CAC_CHARGE_TECH}" seq="%{#seq}" />
			</bu:td>
			<bu:td cssClass="datagrid-cell datagrid-cell-4" colNo="CAC_CHARGE_DEVICE" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CAC_CHARGE_DEVICE" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CAC_CHARGE_DEVICE}" seq="%{#seq}" />
			</bu:td>
			<bu:td cssClass="datagrid-cell datagrid-cell-5" colNo="CAC_CHARGE_QUALITY" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CAC_CHARGE_QUALITY" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CAC_CHARGE_QUALITY}" seq="%{#seq}" />
			</bu:td>
			<bu:td cssClass="datagrid-cell datagrid-cell-6" colNo="CA_ID" formId="55523b5c987a4d3db9d13b3fdbe627c1" >
				<bu:ui colNo="CA_ID" formId="55523b5c987a4d3db9d13b3fdbe627c1" value="%{CA_ID}" seq="%{#seq}" />
			</bu:td>
		</bu:tr>
		</bu:loop>
		</tbody>
		</bu:table>
  </div>
  </div>
  </div>
  <% if(null != request.getAttribute("page")){
  PaginationImpl _pageTop = (PaginationImpl)request.getAttribute("page"); 
  if(_pageTop.isPage()){%>
  <div class="center">
    <s:include value="/plf/page/fp/pagination.jsp?formId=searchForm" />
  </div>
  <% }}%></div>


		</form>

		</div>
	</div>
  </div>
		<bu:submit viewId="5bcf7e6e6bd24a3b9e6ccb113a49299e" />
		<bu:script viewId="5bcf7e6e6bd24a3b9e6ccb113a49299e" />
	<script type="text/javascript">

	var isQuery = false;
	function query(thisObj){
		if(isQuery){util.alert("<dict:lang value="数据正在提交，请稍候" />...");}
		//如果有时间段的存在，则复制到搜索表单中
		if($("#timeBucketId")){
			$("#searchForm").append($("#timeBucketId").clone());
		}
		if($("#isClearOrder").val()==1){
    		clearSelectOrder();
    	}
		document.forms.searchForm.submit();
		util.showTopLoading();
		isQuery=true;
	}
	
	function alertInfo(msg){
		utilsFp.alert(msg);
	}
	
	function reloadPg(msg,title,width,height,time){
		//utilsFp.alert(msg,reloadPgExe);
		msgPop(msg,reloadPgExe,title,width,height,time);
	}
	
	function reloadPgExe(){
		//document.forms.searchForm.submit();
		query();
		util.showTopLoading();
		top.$(".dialog-close").click();
	}
	
	function init(){
		if($("#leftTable-kz").length>0){
			$("#leftTable-kz").show();
		}
		
		if($("#leftTable").length>0){
			$("#leftTable").show();
		}
		<s:if test='null != #parameters[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] && #request[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] == "1"'>query();</s:if>
 	}

</script>

<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
