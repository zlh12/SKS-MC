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
		<dict:lang value="生产领料" />
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
		<bu:header formId ="bb156a44e6e242a885b3fde9386fd567"/>

    
     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
         <jsp:param name="modelName" value="VIEW_TYPE_17" />
         <jsp:param name="location" value="inHead" />
    </jsp:include>
    <!-- head里面 -->
<script type="text/javascript">
	var loaded = 1;
	var tab_len =3;

	var currentTag;
	var tabs = "";
	function switchTag(tag, content, url) {
		if (currentTag == tag) {
			return false;
		}
		document.getElementById("content2").style.display="";
		document.getElementById("content3").style.display="";
		//document.getElementById("content4").style.display="";
		for (i = 1; i < (tab_len + 1); i++) {
			if ("tag" + i == tag) {
				document.getElementById(tag).getElementsByTagName("a")[0].className = "selectli1";
				document.getElementById(tag).getElementsByTagName("a")[0]
						.getElementsByTagName("span")[0].className = "selectspan1";
			} else {
				document.getElementById("tag" + i).getElementsByTagName("a")[0].className = "";
				document.getElementById("tag" + i).getElementsByTagName("a")[0]
						.getElementsByTagName("span")[0].className = "";
			}
			$("#" + tag).addClass("current").siblings().removeClass("current");
			if ("content" + i == content) {
				currentTag = tag;
				document.getElementById(content).className = "";
			} else {
				document.getElementById("content" + i).className = "hidecontent";
			}
			document.getElementById("content").className = content;
		}
		if(tag=="tag1"){
			listAjaxTable("bb156a44e6e242a885b3fde9386fd567");
			$("#allSelect").removeAttr("checked");
		}
		if(tag=="tag2"){
			searchItemDetail();
			$("#allSelect1").removeAttr("checked");
		}
		if(tag=="tag3"){
			searchOutstock();
			$("#allSelect1").removeAttr("checked");
		}

	}
//$(function(){
//	$("#tag1").addClass("current");
//	$(document.getElementById('T2#WOD_DOC_TYPE')).closest('.group').attr("style","display:none;");
	
//})
$(function(){
 switchTag('tag3','content3','');
  //  switchTag('tag3','content3','');
  $(document.getElementById('T2#WOD_DOC_TYPE')).closest('.group').attr("style","display:none;");
  
})
//全选
    	function getAllModels(){
		if($("#allSelect").attr("checked")=="checked"){
			$("#addItemDetail :checkbox").attr("checked",true);
		}else{
			$("#addItemDetail :checkbox").each(function(){
				$(this).attr("checked",false);
			});
		}
	} 
  //全选1
     	function getAllModels1(){
		if($("#allSelect1").attr("checked")=="checked"){
			$("#addSecondItemDetail :checkbox").attr("checked",true);
		}else{
			$("#addSecondItemDetail :checkbox").each(function(){
				$(this).attr("checked",false);
			});
		}
	} 
	//全选1
     	function getAllModels3()(){
		if($("#allSelect3").attr("checked")=="checked"){
			$("#addOutstock :checkbox").attr("checked",true);
		}else{
			$("#addOutstock :checkbox").each(function(){
				$(this).attr("checked",false);
			});
		}
	} */
</script>
</head>

<body >
    <div class="content-in">
        <div class="dlist">
            <div class="hd">
		<bu:func viewId="b1bd96ced2af4ca1af9ea4e8dd2886a7" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="searchForm" />
                       </jsp:include>
                     
		<bu:search viewId="b1bd96ced2af4ca1af9ea4e8dd2886a7" />
                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.Constants@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="listForm" />
                     </jsp:include>
		<input type="hidden" name="formPagebb156a44e6e242a885b3fde9386fd567" id="formPagebb156a44e6e242a885b3fde9386fd567" value="${formPagebb156a44e6e242a885b3fde9386fd567}"/>
		<input type="hidden" name="formId" id="formId1" value='bb156a44e6e242a885b3fde9386fd567'/>
		<input type="hidden" name="formId" id="formId2" value='bb156a44e6e242a885b3fde9386fd502'/>
		<input type="hidden" name="formId" id="formId3" value='bb156a44e6e242a885b3fde9386fd503'/>
		<input type="hidden" name="formId" id="formId4" value='bb156a44e6e242a885b3fde9386fd504'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
		<input type="hidden" id="dataAuth" name="dataAuth" value='${sessionScope.mcDataAuth}'/>
		<input type="hidden" id="itemId" name="itemId" value=''/>
		<div class="js-tab">
			<DIV id="container" style="box-sizing: border-box;">
				<DIV class="hd">
					<UL class="tab-list tab" style="padding-left:12px;">
					<LI id="tag3"><A class=""
							onclick="switchTag('tag3','content3','');this.blur();"
							href="javascript:void(0);"> <SPAN><dict:lang value="出库单信息" /></SPAN> </A>
						</LI>
					    
						<LI id="tag1"><A class=""
							onclick="switchTag('tag1','content1','');this.blur();"
							href="javascript:void(0);"> <SPAN><dict:lang value="出库明细" /></SPAN> </A>
						</LI>
					<!--
						<LI id="tag3"><A class=""
							onclick="switchTag('tag3','content3','');this.blur();"
							href="javascript:void(0);"> <SPAN><dict:lang value="出库单信息" /></SPAN> </A>
						</LI>
						-->
						<LI id="tag2"><A class=""
							onclick="switchTag('tag2','content2','');this.blur();"
							href="javascript:void(0);"> <SPAN><dict:lang value="出库总明细" /></SPAN> </A>
						</LI>
						

					</UL>
				</DIV>
			<DIV class="content1" id="content" style="margin-top: 15px;">
				<DIV id="content1" style="margin-top:4px;" data-tab="tag1">
					<!--table1-->
					<div class="panel-ajax datagrid datagrid-div1"  id="bb156a44e6e242a885b3fde9386fd567">
					<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajaxbb156a44e6e242a885b3fde9386fd567" style="overflow: hidden;">
					<div class="datagrid-header">
					<div class="datagrid-header-inner head2" id="datagrid-header-innerbb156a44e6e242a885b3fde9386fd567">
					<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htablebb156a44e6e242a885b3fde9386fd567">
					<s:set name="_$type" value="'view'" />
					<tbody class="isParentsTitle">
					<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
						<td class="datagrid-cell" style="width:30px; text-align:center;" ><bu:thSeq  formId="bb156a44e6e242a885b3fde9386fd567" i18n="1"/></td>
					
					
					
					    <td class="datagrid-cell" style="width:200px;"><bu:uitn  colNo="DATA_AUTH" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="WOI_DOC_NUM" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:100px;"><bu:uitn  colNo="WOI_ITEM_CODE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:120px;"><bu:uitn colNo="T2#WOD_ERP_FLAG" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="T2#WOD_URGENT_FLAG" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="T10#WDI_LIGHT_FLAG" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:100px;"><bu:uitn  colNo="WOI_STATUS" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="T2#WOD_PICK_TYPE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="WOI_PLAN_NUM" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="WOI_REQUEST_NUM" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="WOI_OUT_NUM" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="WOI_CONNECT_DOC" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:120px;"><bu:uitn  colNo="T5#WDT_TYPE_NAME" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:120px;"><bu:uitn  colNo="T2#WOD_DISPATCH_SN" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:100px;"><bu:uitn  colNo="WOI_WH_CODE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="WOI_ITEM_NAME" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="WOI_ITEM_SPEC" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:120px;"><bu:uitn  colNo="T2#WOD_CUST_CODE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="WOI_DELIVERY_DATE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:80px;"><bu:uitn  colNo="T4#NAME" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="width:150px;"><bu:uitn  colNo="T2#WOD_CREATE_TIME" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
            
                        <td class="datagrid-cell" style="display:none;width:120px;"><bu:uitn  colNo="T2#WOD_DOC_TYPE" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
                        <td class="datagrid-cell" style="display:none;width:120px;"><bu:uitn  colNo="T2#WOD_DISPATCH_SN" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
						<td class="datagrid-cell" style="display:none;width:120px;"><bu:uitn  colNo="T2#WOD_STATUS" formId="bb156a44e6e242a885b3fde9386fd567" /></td>
					</bu:tr>
					</tbody>
					</bu:table>
					</div>
					</div>
					<div class="datagrid-body datagrid-div3 datagrid-body-ajax scroll2" id="tableDivbb156a44e6e242a885b3fde9386fd567" onscroll="ajaxTableScroll(this,'bb156a44e6e242a885b3fde9386fd567')" style="height: 130px;">
					<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd567">
					<tbody id="tbody_bb156a44e6e242a885b3fde9386fd567" class="isParents">
					</tbody>
					</table>		</div>
					</div>
					</div>
					<c:if test="${formPagebb156a44e6e242a885b3fde9386fd567==1}">			<div class="center">
						<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=bb156a44e6e242a885b3fde9386fd567&showLoading=0" />
						</div>
					</c:if>
					<!--table2-->
					<div class="panel-ajax datagrid datagrid-div1" style="margin-top:10px;"><!--143-->
						<div class="datagrid-div2 datagrid-div6 datagrid-view"  tyle="overflow-x:hidden;border-bottom:0;">
							<div class="datagrid-header" style="">
								<div class="datagrid-header-inner head1" id="" >
									<table  class="datagrid-htable fixedTable  "  id="datagrid-htablebb156a44e6e242a885b3fde9386fd502">
										<tbody>
										<tr class="thcolor datagrid-header-row">
											<td class="datagrid-cell" align="center" style="width:30px;text-align: center"></td >
											
							            <!--    <td class="datagrid-cell" style="width:200px;" ><dict:lang value="组织机构" /></td > -->
											<td class="datagrid-cell" style="width:210px;" ><dict:lang value="物料SN" /></td >
											<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料料号" /></td >
											<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料名称" /></td >
											<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料规格" /></td >
											<td class="datagrid-cell" style="width:80px;" ><dict:lang value="出库数量" /></td >
											<td class="datagrid-cell" style="width:150px;" ><dict:lang value="关联单号" /></td >
											<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装小箱SN" /></td >
											<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装大箱SN" /></td >
											<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装栈板SN" /></td >
											<td class="datagrid-cell" style="width:100px;" ><dict:lang value="顶级包装SN" /></td >
											<td class="datagrid-cell" style="width:110px;" ><dict:lang value="仓库" /></td >
											<td class="datagrid-cell" style="width:80px;" ><dict:lang value="操作人" /></td >
											<td class="datagrid-cell" style="width:130px;" ><dict:lang value="操作时间" /></td >
											<td class="datagrid-cell" style="width:70px;" ><dict:lang value="上传标识" /></td >
											<td class="datagrid-cell" style="width:150px;" ><dict:lang value="上传时间" /></td >
											
										</tr>
										</tbody>		
									</table>
								</div>
							</div>
							<div class="datagrid-body datagrid-div3 scroll1" ><!--130-->
								<table class="datagrid-btable fixedTable" style="table-layout: fixed;"  id="datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502">
									<tbody id="addItemDetail" >
									</tbody>
								</table>
							</div>
							</div>
					</div>
							<div style="background-color: white;margin-top:0px;" id="pageDiv">
	                 			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=searchItemInfo&formId=formId2&showLoading=0" />
	                 				</div>	
						
				</DIV>
			</DIV>
			<DIV id="content2" style="display:none" data-tab="tag2">
				<!--table3-->
				<div class="panel1 datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"  style="overflow-x:hidden;border:0;">
						<div class="datagrid-header" style="">
							<div class="datagrid-header-inner head" id="" >
								<table  class="datagrid-htable fixedTable  "  id="datagrid-htablebb156a44e6e242a885b3fde9386fd503" >
									<tbody>
									<tr class="thcolor datagrid-header-row">
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"></td >
										
						                <td class="datagrid-cell" style="width:200px;" ><dict:lang value="组织机构" /></td >
										<td class="datagrid-cell" style="width:210px;" ><dict:lang value="物料SN" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料料号" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料名称" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="物料规格" /></td >
										<td class="datagrid-cell" style="width:80px;" ><dict:lang value="出库数量" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="关联单号" /></td >
										<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装小箱SN" /></td >
										<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装大箱SN" /></td >
										<td class="datagrid-cell" style="width:100px;" ><dict:lang value="包装栈板SN" /></td >
										<td class="datagrid-cell" style="width:100px;" ><dict:lang value="顶级包装SN" /></td >
										<td class="datagrid-cell" style="width:110px;" ><dict:lang value="仓库" /></td >
										<td class="datagrid-cell" style="width:80px;" ><dict:lang value="操作人" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="操作时间" /></td >
										<td class="datagrid-cell" style="width:70px;" ><dict:lang value="上传标识" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="上传时间" /></td >
										
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll">
							<table class="datagrid-btable fixedTable" style=" table-layout: fixed;"   id="datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503">
								<tbody id="addSecondItemDetail" >
								</tbody>
							</table>
						</div>
						</div>
				</div>
						<div style="background-color: white;" id="pageDiv">
                 			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=searchSecondItem&formId=formId3&showLoading=0" />
                 			</div>	
					
			</DIV>
			
		</div>
			<DIV id="content3" style="display:none" data-tab="tag3">
				<!--table3-->
				<div class="panel1 datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"  style="overflow-x:hidden;border:0;">
						<div class="datagrid-header" style="">
							<div class="datagrid-header-inner head3" id="" >
								<table  class="datagrid-htable fixedTable  " id="datagrid-htablebb156a44e6e242a885b3fde9386fd504" >
									<tbody>
									<tr class="thcolor datagrid-header-row">
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"></td >
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"><input type="checkbox" id="allSelect3" name="allSelect3" onchange="getAllModels3();"/></td >
						                <td class="datagrid-cell" style="width:200px;" ><dict:lang value="组织机构" /></td >
										<td class="datagrid-cell" style="width:160px;" ><dict:lang value="出库单号" /></td >
                                        <td class="datagrid-cell" style="width:130px;" ><dict:lang value="单据类型" /></td >
										<td class="datagrid-cell" style="width:110px;" ><dict:lang value="状态" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="紧急标志" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="亮灯标志" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="仓库" /></td > 
										<td class="datagrid-cell" style="width:160px;" ><dict:lang value="出库日期" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="开单人" /></td >
										<td class="datagrid-cell" style="width:160px;" ><dict:lang value="开单时间" /></td >
										<td class="datagrid-cell" style="width:130px;" ><dict:lang value="关结人" /></td >
										<td class="datagrid-cell" style="width:160px;" ><dict:lang value="关结时间" /></td >
										<td class="datagrid-cell" style="width:150px;" ><dict:lang value="备注" /></td >
										
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll3">
							<table class="datagrid-btable fixedTable" style="table-layout: fixed;"  id="datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd504">
								<tbody id="addOutstock" >
								</tbody>
							</table>
						</div>
						</div>
				</div>
						<div style="background-color: white;" id="pageDiv">
                 			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=searchOutstockItem&formId=formId4&showLoading=0" />
                 			</div>	
					
			</DIV>	
		
		</div>

		<input type="hidden" name="tableCount" id="tableCount" value='2' />

               </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="b1bd96ced2af4ca1af9ea4e8dd2886a7" />
      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
           <jsp:param name="modelName" value="VIEW_TYPE_17" />
           <jsp:param name="location" value="beforeJsLoad" />
      </jsp:include>
		<bu:script viewId="b1bd96ced2af4ca1af9ea4e8dd2886a7" />
    
      <!--<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
        <jsp:param name="modelName" value="VIEW_TYPE_17" />
        <jsp:param name="location" value="jsLoading" />
      </jsp:include>-->
<script type="text/javascript">
				function listAjaxTable(formId){
                    var currentPage="";
                    var pageRecord="";
                    var isFirstLoad;
                    $(document.getElementById('T2#WOD_DOC_TYPE')).val('DJ10');
                    var url = "${path}buss/bussModel_listMsData.ms?uiRaw="+"{\""+formId+"\":\"CREATE_TIME,CREATE_USER,WOI_DOC_NUM,WOI_STATUS\"}";
                    //var url = "/mes/buss/bussModel_listMsData.ms";
                    var searchParams = $("#searchForm").serialize()+"&"+$("#searchFormTop").serialize();
                    if(isPage(formId)){
                        var isFirstLoad = firstLoadThisPage(formId);
                        var currentPage = isFirstLoad? 1 : _GLO_FORM_PAGE_MAP[formId].currentPage;
                        var pageRecord =  isFirstLoad? 20 : _GLO_FORM_PAGE_MAP[formId].pageRecord;
                    }
                    util.showLoading("处理中...");
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: url,
                        data:searchParams+"&page.currentPage="+currentPage+"&page.pageRecord=" + pageRecord,
                        success: function(data){
                            if(data.RES){
                                var ms = new MSdata(data);
                                var page = ms.page(formId);
                                createTableModel(ms,formId);
                                if(isPage(formId)){
                                    initPage(page,formId);
                                }
                            }else{
                                utilsFp.confirmIcon(3,"","","", data.RES_MSG,"","260","145");
                            }
                            clearChildTable();
                        	util.closeLoading();
                        },
                        error: function(msg){
                        	util.closeLoading();
                            utilsFp.confirmIcon(3,"","","", msg,"","260","145");
                        }
                    });
                }
                
                
                function isPage(formId){
                    var isPageVal =  $("#formPage"+formId).val();
                    if(isPageVal =="1"){    
                       return true;
                    }
                    return false;
                }
                
                
                function query(thisObj){
                 var formId = $("#formId1").val();
                   
                   if($("#tag1").attr("class")=="current"){
                        listAjaxTable(formId);
                    }
                    if($("#tag2").attr("class")=="current"){
                        searchItemDetail();
                    }
                    if($("#tag3").attr("class")=="current"){
                      $('.scroll3').mCustomScrollbar("destroy");
                        searchOutstockItem("formId4");
                        setPopScroll('.scroll3','.head3');
                    }
                    //defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd567');
                }
                    
                
                function clearChildTable(){
                    $(".isChilds").empty();
                    getFormIdInitChildPage();
                }
                
               
               function setTableWidth(formId){
                    /**
                    *var scrollHeight = $("#tableDiv"+formId)[0].scrollHeight;
                    var height = $("#tableDiv"+formId).height();
                    var datagridHeaderWidth = $("#datagrid-view-ajax"+formId+" .datagrid-header").width();
                    if(scrollHeight-height>0){
                      $("#datagrid-htable"+formId).css("width",datagridHeaderWidth-20+'px');
                      $("#datagrid-btable-ajax"+formId).css("width",datagridHeaderWidth-20+'px');
                    }else{
                      $("#datagrid-htable"+formId).css("width",datagridHeaderWidth+'px');
                      $("#datagrid-btable-ajax"+formId).css("width",datagridHeaderWidth+'px');    
                    }
                    *
                    */
                }
            
                
                function alertInfo(msg){
                    utilsFp.confirmIcon(1,"","","", msg,"","260","145");
                }
                
                
                function clearAllSelect(){
                    $(".left-datagrid-title-ajax,.datagrid-title-ajax").find("input[type='checkbox']").prop("checked",false);
                }
                
                function reloadPg(msg,title,width,height,time){
                    msgPop(msg,"",title,width,height,time);
                }
                
                
                function listChildAjaxTable(formId,paramList){
                    var data = {
                        "paraMap.formidFirstId":_GLO_FORM_PAGE_MAP[formId].formidFirstId,
                        "paraMap.subFormId":_GLO_FORM_PAGE_MAP[formId].subFormId,
                        "paraMap.subRelColId":_GLO_FORM_PAGE_MAP[formId].subRelColId,
                        "paraMap.relColVal":_GLO_FORM_PAGE_MAP[formId].relColVal,
                        "paraMap.subSortCol":_GLO_FORM_PAGE_MAP[_GLO_subFormId]._subSortColStr,
                        "paraMap.subSortColOrder":_GLO_FORM_PAGE_MAP[_GLO_subFormId]._subSortColOrderStr
                    };
                    if(isPage(formId)){
                        data["page.currentPage"] = _GLO_FORM_PAGE_MAP[formId].currentPage;
                        data["page.pageRecord"] = _GLO_FORM_PAGE_MAP[formId].pageRecord;
                    }
                    if(paramList != null && paramList != ""){
                        data["paramList"] = paramList;
                    }
                    if($("#DATA_AUTH").length>0){
                    	data["DATA_AUTH"] = $("#DATA_AUTH").val();
                    }
                    var url = "${path}buss/bussModel_listMsCasData.ms?exeid=db26ac43455245b8a8c60f8d3cc69ac9";
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: url,
                        data:data,
                        success: function(data){
                            if(data.RES){
                                var ms = new MSdata(data);
                                var page = ms.page(formId);
                                createTableModel(ms,formId);
                                if(isPage(formId)){
                                    initPage(page,formId);    
                                }
                            }else{
                                utilsFp.confirmIcon(3,"","","", data.RES_MSG,"","260","145");
                            }
                        },
                        error: function(msg){
                            utilsFp.confirmIcon(3,"","","", "后台操作出错!","","260","145");
                        }
                    });
                }
                
                function setCrossWiseScroll(formId,arrHtml){
                    if(arrHtml.length==0){
                        var tableWidth = $("#datagrid-btable-ajax"+formId).width();  
                        arrHtml.push("<tr  style='width: ");
                        arrHtml.push(tableWidth+"px");
                        arrHtml.push(";");
                        arrHtml.push("height:1000px;'");
                        $("#tableDiv"+formId).css({"overflow-y":"hidden","overflow-x":"auto"});
                   }else{
                        $("#tableDiv"+formId).css({"overflow-y":"auto","overflow-x":"auto"});    
                   }
               }
                
                
                function initChildPage(formId){
                    var ajaxPage = new Object();
                    ajaxPage.currentPage = 1;
                    ajaxPage.pageRecord = 20;
                    ajaxPage.totalRecord = 0;
                    ajaxPage.totalPage = 1;
                    ajaxPage.first = true;
                    ajaxPage.last = true;
                    pageFun(ajaxPage,formId);
                }
                
                
                
                function initPage(page,formId){
                    var ajaxPage = new Object();
                    ajaxPage.currentPage = parseInt(page.currentPage);
                    ajaxPage.pageRecord = parseInt(page.pageRecord);
                    ajaxPage.totalPage = parseInt(page.totalPage);
                    ajaxPage.totalRecord = parseInt(page.totalRecord);
                    ajaxPage.first = page.first;
                    ajaxPage.last = page.last;
                    pageFun(ajaxPage,formId);
                };
                
                
                function firstLoadThisPage(formId){
                    if(typeof(_GLO_FORM_PAGE_MAP[formId].currentPage) =="undefined"){
                        return true;
                    }
                    return false;
                }
                
                
                function getFormIdInitChildPage(){
                    var tableCount = $("#tableCount").val();
                    for ( var i = 2; i <= tableCount; i++) {
                        var formId = $("#formId"+i).val();
                        if(isPage(formId)){
                           initChildPage(formId);
                        }
                    }
                }
                
                
                function initTableWidth(){
                    var width = $(window).width() - 2;
                    $(".datagrid-htable,.datagrid-btable").width(width);
                }
                
                
                
                function init(){
                    if($(".leftTable-ajax").length>0){
                        $(".leftTable-ajax").show();
                    };
                    getFormIdInitChildPage();
                    initTableWidth();
                    $(document.getElementById('T2#WOD_DOC_TYPE')).val('DJ10');
                   // listAjaxTable($("#formId1").val());
                    
                 }
            
                $(function(){
                    var colNo = $("#relColVals").val();
                    var subRelColIds = $("#subRelColIds").val();
                    var subFormIds = $("#subFormIds").val();
                    if(subRelColIds!="null"){
                        var formId1 = $("#formId1").val();
                        $(".isParents tr").live("click",function(){
                            var _this = $(this);
                            var relColVals = "";
                            var abbr = _this.attr("abbr");
                            var arrColNo = colNo.split(",");
                            $(arrColNo).each(function(i,v){
                                relColVals += $("tr[abbr='"+abbr+"']").find("input[name='"+v+"']").val()+",";
                            });
                            setSubData(formId1,subFormIds,subRelColIds,relColVals,"","",true);
                        });
                    };
                });
                
                function getRelColVal(arr,obj,colNo){
                      if(colNo){
                       var arrColNo = colNo.split(",");
                          $(arrColNo).each(function(i,v){
                             if(v!="ID"){
                               arr.push("<input type='hidden' name='"+v+"' value='"+obj[v]+"' />");
                             }
                          });
                      }
                }
            var isFirstSetScroll = 0;
            
</script>
<script type="text/javascript">
	//点击入库信息获取物料信息
	var getItemDetailUrl = "${path}buss/bussModel_exeFunc.ms?funcMId=9373d092dd704f0dbdc3026faad20db4";
	function showItemDetail(itemId){  
		//var itemCode = $("#ITEM_CODE_"+itemId).val();
		$("#itemId").val(itemId);
		
		util.showLoading("处理中...");
		$.ajax({
				    type: "POST",
				    dataType: "json",
				    url: getItemDetailUrl,
				    data: {
				        "itemId":itemId
				    },
					success: function(data){
							util.closeLoading();
							$("#addItemDetail").empty();
							if(null != data.ajaxPage.dataList){
								var rccList = eval(data.ajaxPage.dataList);
								var tempFlag="";
								for(var i = 0;i < rccList.length; i++){
								  //  if(rccList[i].DATA_AUTH==null)  rccList[i].DATA_AUTH="";
									if(rccList[i].ITEM_SN==null)  rccList[i].ITEM_SN="";
									//if(rccList[i].WRD_SPLIT_NUM==null)  rccList[i].WRD_SPLIT_NUM="";
									if(rccList[i].ITEM_CODE==null)  rccList[i].ITEM_CODE="";
									if(rccList[i].ITEM_NAME==null)  rccList[i].ITEM_NAME="";
									if(rccList[i].ITEM_SPEC==null)  rccList[i].ITEM_SPEC="";
									if(rccList[i].OUTSTOCK_NUM==null)  rccList[i].OUTSTOCK_NUM="";
									if(rccList[i].DOC_NUM==null)  rccList[i].DOC_NUM="";
									if(rccList[i].FIRST_SN==null)  rccList[i].FIRST_SN="";
									//if(rccList[i].STORAGE_NAME==null)  rccList[i].STORAGE_NAME="";
									//if(rccList[i].SUPPLIER_NAME==null)  rccList[i].SUPPLIER_NAME="";
									if(rccList[i].SECOND_SN==null)  rccList[i].SECOND_SN="";
									if(rccList[i].THIRD_SN==null)  rccList[i].THIRD_SN="";
									if(rccList[i].FOURTH_SN==null)  rccList[i].FOURTH_SN="";
									if(rccList[i].WH_NAME==null)  rccList[i].WH_NAME="";
									if(rccList[i].OUTSTOCK_EMP==null)  rccList[i].OUTSTOCK_EMP="";
									if(rccList[i].OUTSTOCK_TIME==null)  rccList[i].OUTSTOCK_TIME="";
									if(rccList[i].UPLOAD_FLAG=="Y"){
										tempFlag="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
									}else{
										tempFlag="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
									}
									if(rccList[i].UPLOAD_TIME==null)  rccList[i].UPLOAD_TIME="";
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tbody:last").append("<tr id='tr1_"+i+"' ></tr>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+(i+1)+"</td>");
									//$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:200px;text-align: center;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"</td>");
								//	$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='text-align: center;width:200px;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+rccList[i].ID+"' value='"+rccList[i].DATA_AUTH2+"' /></td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:210px;text-align: left;' title='"+rccList[i].ITEM_SN+"'>"+rccList[i].ITEM_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_CODE+"'>"+rccList[i].ITEM_CODE+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_NAME+"'>"+rccList[i].ITEM_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_SPEC+"'>"+rccList[i].ITEM_SPEC+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:80px;text-align: right;' title='"+rccList[i].OUTSTOCK_NUM+"'>"+rccList[i].OUTSTOCK_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='width:150px;text-align: left;' title='"+rccList[i].DOC_NUM+"'>"+rccList[i].DOC_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='width:100px;text-align: left;' title='"+rccList[i].FIRST_SN+"'>"+rccList[i].FIRST_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='width:100px;text-align: left;' title='"+rccList[i].SECOND_SN+"'>"+rccList[i].SECOND_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='width:100px;text-align: left;' title='"+rccList[i].THIRD_SN+"'>"+rccList[i].THIRD_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='width:100px;text-align: left;' title='"+rccList[i].FOURTH_SN+"'>"+rccList[i].FOURTH_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-15' style='width:110px;text-align: left;' title='"+rccList[i].WH_NAME+"'>"+rccList[i].WH_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-18' style='width:80px;text-align: center;' title='"+rccList[i].OUTSTOCK_EMP+"'>"+rccList[i].OUTSTOCK_EMP+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-19' style='width:130px;text-align: center;' title='"+rccList[i].OUTSTOCK_TIME+"'>"+rccList[i].OUTSTOCK_TIME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-20' style='width:70px;text-align: center;' title=''>"+tempFlag+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-21' style='width:150px;text-align: center;' title='"+rccList[i].UPLOAD_TIME+"'>"+rccList[i].UPLOAD_TIME+"</td>");
								}
							}
							pageFun(data.ajaxPage,"formId2");
								var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tbody tr");
								_tongLineColor(tableTrJs);
								//clickTr('itemDetail');
								defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd502');
							
						},
					error: function(msg){
							util.closeLoading();
							utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
					  }
					});
	}
	//物料信息分页
	var paginationImpl = {};
	function SearchItemInfo(paginationImpl,url){ 
		var isFirstLoad = firstLoadThisPage(paginationImpl);
	    	var currentPage = isFirstLoad? 1 : _GLO_FORM_PAGE_MAP[paginationImpl].currentPage;
	    	var pageRecord =  isFirstLoad? 20 : _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord;
	    	var itemId = $("#itemId").val();
	    	util.showLoading("处理中...");
	    	$.ajax({
				    type: "POST",
				    dataType: "json",
				    url: url,
				    data:{
				         "paraMap.type":"1",
				         "paraMap.itemId":itemId,
				         "page.currentPage":_GLO_FORM_PAGE_MAP[paginationImpl].currentPage,
				         "page.pageRecord": _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord,
				    },
				    //data: "paraMap.type=1&paraMap.itemId="+itemId+"&page.currentPage="+_GLO_FORM_PAGE_MAP[paginationImpl].currentPage+"&page.pageRecord=" + _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord,
					success: function(data){
					                 
							util.closeLoading();
							$("#addItemDetail").empty();
							if(null != data.ajaxPage.dataList){
								var rccList = eval(data.ajaxPage.dataList);
								for(var i = 0;i < rccList.length; i++){
								    if(rccList[i].DATA_AUTH==null)  rccList[i].DATA_AUTH="";
									if(rccList[i].ITEM_SN==null)  rccList[i].ITEM_SN="";
									//if(rccList[i].WRD_SPLIT_NUM==null)  rccList[i].WRD_SPLIT_NUM="";
									if(rccList[i].ITEM_CODE==null)  rccList[i].ITEM_CODE="";
									if(rccList[i].ITEM_NAME==null)  rccList[i].ITEM_NAME="";
									if(rccList[i].ITEM_SPEC==null)  rccList[i].ITEM_SPEC="";
									if(rccList[i].OUTSTOCK_NUM==null)  rccList[i].OUTSTOCK_NUM="";
									if(rccList[i].DOC_NUM==null)  rccList[i].DOC_NUM="";
									if(rccList[i].FIRST_SN==null)  rccList[i].FIRST_SN="";
									//if(rccList[i].STORAGE_NAME==null)  rccList[i].STORAGE_NAME="";
									//if(rccList[i].SUPPLIER_NAME==null)  rccList[i].SUPPLIER_NAME="";
									if(rccList[i].SECOND_SN==null)  rccList[i].SECOND_SN="";
									if(rccList[i].THIRD_SN==null)  rccList[i].THIRD_SN="";
									if(rccList[i].FOURTH_SN==null)  rccList[i].FOURTH_SN="";
									if(rccList[i].WH_NAME==null)  rccList[i].WH_NAME="";
									if(rccList[i].OUTSTOCK_EMP==null)  rccList[i].OUTSTOCK_EMP="";
									if(rccList[i].OUTSTOCK_TIME==null)  rccList[i].OUTSTOCK_TIME="";
									if(rccList[i].UPLOAD_FLAG=="Y"){
										tempFlag="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
									}else{
										tempFlag="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
									}
									if(rccList[i].UPLOAD_TIME==null)  rccList[i].UPLOAD_TIME="";
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tbody:last").append("<tr id='tr1_"+i+"' ></tr>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+((currentPage - 1) * pageRecord + (i + 1))+"</td>");
									//$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:200px;text-align: left;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='text-align: center;width:200px;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+rccList[i].ID+"' value='"+rccList[i].DATA_AUTH2+"' /></td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:210px;text-align: left;' title='"+rccList[i].ITEM_SN+"'>"+rccList[i].ITEM_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_CODE+"'>"+rccList[i].ITEM_CODE+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_NAME+"'>"+rccList[i].ITEM_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_SPEC+"'>"+rccList[i].ITEM_SPEC+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:80px;text-align: right;' title='"+rccList[i].OUTSTOCK_NUM+"'>"+rccList[i].OUTSTOCK_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='width:150px;text-align: left;' title='"+rccList[i].DOC_NUM+"'>"+rccList[i].DOC_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='width:100px;text-align: left;' title='"+rccList[i].FIRST_SN+"'>"+rccList[i].FIRST_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='width:100px;text-align: left;' title='"+rccList[i].SECOND_SN+"'>"+rccList[i].SECOND_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='width:100px;text-align: left;' title='"+rccList[i].THIRD_SN+"'>"+rccList[i].THIRD_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='width:100px;text-align: left;' title='"+rccList[i].FOURTH_SN+"'>"+rccList[i].FOURTH_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-15' style='width:110px;text-align: left;' title='"+rccList[i].WH_NAME+"'>"+rccList[i].WH_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-18' style='width:80px;text-align: center;' title='"+rccList[i].OUTSTOCK_EMP+"'>"+rccList[i].OUTSTOCK_EMP+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-19' style='width:130px;text-align: center;' title='"+rccList[i].OUTSTOCK_TIME+"'>"+rccList[i].OUTSTOCK_TIME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-20' style='width:70px;text-align: center;' title=''>"+tempFlag+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tr:last").append("<td class='datagrid-cell datagrid-cell-21' style='width:150px;text-align: center;' title='"+rccList[i].UPLOAD_TIME+"'>"+rccList[i].UPLOAD_TIME+"</td>");
								}
							}
							pageFun(data.ajaxPage,"formId2");
								var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd502 tbody tr");
								_tongLineColor(tableTrJs);
								//clickTr('itemDetail');
								defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd502');
							
						},
					error: function(msg){
							util.closeLoading();
							utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
					  }
					});
	}
	
	//根据查询条件获取详细信息
	function searchItemDetail(){
		var dataAuth = $("#DATA_AUTH").val();
		var itemCode =$.trim($("#WOI_ITEM_CODE_SHOW").val()); 
		var docNum = $.trim($("#WOI_DOC_NUM").val());
        	
		var connectDoc = $.trim($("#WOI_CONNECT_DOC_SHOW").val());
	    var dispatchSn = $(document.getElementById('T2#WOD_DISPATCH_SN')).val();
		var woiStatus = $(document.getElementById('WOI_STATUS')).val();
		var getItemDetailUrl="buss/bussModel_exeFunc.ms?funcMId=9373d092dd704f0dbdc3026faad20db4";
		util.showLoading("处理中...");
		$.ajax({
				    type: "POST",
				    dataType: "json",
				    url: getItemDetailUrl,
				    data: {
				        "itemCode":itemCode,
				        "dataAuth":dataAuth,
				        "docNum":docNum,
				        "connectDoc":connectDoc,
				        "dispatchSn":dispatchSn,
				        "docType":"DJ10",
				        "woiStatus":woiStatus
				    },
					success: function(data){
							util.closeLoading();
							$("#addSecondItemDetail").empty();
							if(null != data.ajaxPage.dataList){
								var rccList = eval(data.ajaxPage.dataList);
								$('.scroll').mCustomScrollbar("destroy");
								for(var i = 0;i < rccList.length; i++){
								    if(rccList[i].DATA_AUTH==null)  rccList[i].DATA_AUTH="";
									if(rccList[i].ITEM_SN==null)  rccList[i].ITEM_SN="";
									//if(rccList[i].WRD_SPLIT_NUM==null)  rccList[i].WRD_SPLIT_NUM="";
									if(rccList[i].ITEM_CODE==null)  rccList[i].ITEM_CODE="";
									if(rccList[i].ITEM_NAME==null)  rccList[i].ITEM_NAME="";
									if(rccList[i].ITEM_SPEC==null)  rccList[i].ITEM_SPEC="";
									if(rccList[i].OUTSTOCK_NUM==null)  rccList[i].OUTSTOCK_NUM="";
									if(rccList[i].DOC_NUM==null)  rccList[i].DOC_NUM="";
									if(rccList[i].FIRST_SN==null)  rccList[i].FIRST_SN="";
									if(rccList[i].SECOND_SN==null)  rccList[i].SECOND_SN="";
									if(rccList[i].THIRD_SN==null)  rccList[i].THIRD_SN="";
									if(rccList[i].FOURTH_SN==null)  rccList[i].FOURTH_SN="";
									if(rccList[i].WH_NAME==null)  rccList[i].WH_NAME="";
									if(rccList[i].OUTSTOCK_EMP==null)  rccList[i].OUTSTOCK_EMP="";
									if(rccList[i].OUTSTOCK_TIME==null)  rccList[i].OUTSTOCK_TIME="";
									if(rccList[i].UPLOAD_FLAG=="Y"){
										tempFlag="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
									}else{
										tempFlag="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
									}
									if(rccList[i].UPLOAD_TIME==null)  rccList[i].UPLOAD_TIME="";
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tbody:last").append("<tr id='tr1_"+i+"' ></tr>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+(i+1)+"</td>");
									//$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:200px;text-align: center;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+rccList[i].ID+"' value='"+rccList[i].DATA_AUTH2+"' /></td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:210px;text-align: left;' title='"+rccList[i].ITEM_SN+"'>"+rccList[i].ITEM_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_CODE+"'>"+rccList[i].ITEM_CODE+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_NAME+"'>"+rccList[i].ITEM_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_SPEC+"'>"+rccList[i].ITEM_SPEC+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:80px;text-align: right;' title='"+rccList[i].OUTSTOCK_NUM+"'>"+rccList[i].OUTSTOCK_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='width:150px;text-align: left;' title='"+rccList[i].DOC_NUM+"'>"+rccList[i].DOC_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='width:100px;text-align: left;' title='"+rccList[i].FIRST_SN+"'>"+rccList[i].FIRST_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='width:100px;text-align: left;' title='"+rccList[i].SECOND_SN+"'>"+rccList[i].SECOND_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='width:100px;text-align: left;' title='"+rccList[i].THIRD_SN+"'>"+rccList[i].THIRD_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='width:100px;text-align: left;' title='"+rccList[i].FOURTH_SN+"'>"+rccList[i].FOURTH_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-15' style='width:110px;text-align: left;' title='"+rccList[i].WH_NAME+"'>"+rccList[i].WH_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-18' style='width:80px;text-align: center;' title='"+rccList[i].OUTSTOCK_EMP+"'>"+rccList[i].OUTSTOCK_EMP+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-19' style='width:130px;text-align: center;' title='"+rccList[i].OUTSTOCK_TIME+"'>"+rccList[i].OUTSTOCK_TIME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-20' style='width:70px;text-align: center;' title=''>"+tempFlag+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-21' style='width:150px;text-align: center;' title='"+rccList[i].UPLOAD_TIME+"'>"+rccList[i].UPLOAD_TIME+"</td>");
								}
							}
							setPopScroll('.scroll','.head');
							pageFun(data.ajaxPage,"formId3");
								var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tbody tr");
								_tongLineColor(tableTrJs);
								//clickTr('secondItemDetail');
								defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd503');
							
						},
					error: function(msg){
							util.closeLoading();
							utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
					  }
					});
	}
	//详细信息分页  
	var paginationImpl = {};
	function searchSecondItem(paginationImpl){
		var isFirstLoad = firstLoadThisPage(paginationImpl);
    	var currentPage = isFirstLoad? 1 : _GLO_FORM_PAGE_MAP[paginationImpl].currentPage;
    	var pageRecord =  isFirstLoad? 20 : _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord;
    	var dataAuth = $("#DATA_AUTH").val();
		var itemCode = $.trim($("#WOI_ITEM_CODE_SHOW").val());
		var docNum = $.trim($("#WOI_DOC_NUM").val());
        var dispatchSn = $(document.getElementById('T2#WOD_DISPATCH_SN')).val();
		var connectDoc = $.trim($("#WOI_CONNECT_DOC_SHOW").val());
	    
		var woiStatus = $(document.getElementById('WOI_STATUS')).val();
	    	util.showLoading("处理中...");
	    	$.ajax({
				    type: "POST",
				    dataType: "json",
				    url: "buss/bussModel_exeFunc.ms?funcMId=bef7e3e81a4a400db34d65b2ebdad5e4",
				    data:{
				        "paraMap.type":"1",
				        "paraMap.itemCode":itemCode,
				        "paraMap.dataAuth":dataAuth,
				        "paraMap.docNum":docNum,
				        "paraMap.connectDoc":connectDoc,
				        "paraMap.woiStatus":woiStatus,
				        "paraMap.docType":"DJ10",
				        "page.currentPage":_GLO_FORM_PAGE_MAP[paginationImpl].currentPage,
				        "page.pageRecord" : _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord
				    },
				    //data: "paraMap.type=1&paraMap.itemCode="+itemCode+"&paraMap.dataAuth=1&paraMap.docNum="+docNum+"&paraMap.connectDoc="+connectDoc+"&paraMap.woiStatus="+woiStatus+"&paraMap.docType=DJ10"+"&page.currentPage="+_GLO_FORM_PAGE_MAP[paginationImpl].currentPage+"&page.pageRecord=" + _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord,
					success: function(data){
					                 
							util.closeLoading();
							$("#addSecondItemDetail").empty();
							if(null != data.ajaxPage.dataList){
								var rccList = eval(data.ajaxPage.dataList);
								for(var i = 0;i < rccList.length; i++){
								    if(rccList[i].DATA_AUTH==null)  rccList[i].DATA_AUTH="";
									if(rccList[i].ITEM_SN==null)  rccList[i].ITEM_SN="";
									//if(rccList[i].WRD_SPLIT_NUM==null)  rccList[i].WRD_SPLIT_NUM="";
									if(rccList[i].ITEM_CODE==null)  rccList[i].ITEM_CODE="";
									if(rccList[i].ITEM_NAME==null)  rccList[i].ITEM_NAME="";
									if(rccList[i].ITEM_SPEC==null)  rccList[i].ITEM_SPEC="";
									if(rccList[i].OUTSTOCK_NUM==null)  rccList[i].OUTSTOCK_NUM="";
									if(rccList[i].DOC_NUM==null)  rccList[i].DOC_NUM="";
									if(rccList[i].FIRST_SN==null)  rccList[i].FIRST_SN="";
									//if(rccList[i].STORAGE_NAME==null)  rccList[i].STORAGE_NAME="";
									//if(rccList[i].SUPPLIER_NAME==null)  rccList[i].SUPPLIER_NAME="";
									if(rccList[i].SECOND_SN==null)  rccList[i].SECOND_SN="";
									if(rccList[i].THIRD_SN==null)  rccList[i].THIRD_SN="";
									if(rccList[i].FOURTH_SN==null)  rccList[i].FOURTH_SN="";
									if(rccList[i].WH_NAME==null)  rccList[i].WH_NAME="";
									if(rccList[i].OUTSTOCK_EMP==null)  rccList[i].OUTSTOCK_EMP="";
									if(rccList[i].OUTSTOCK_TIME==null)  rccList[i].OUTSTOCK_TIME="";
									if(rccList[i].UPLOAD_FLAG=="Y"){
										tempFlag="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
									}else{
										tempFlag="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
									}
									if(rccList[i].UPLOAD_TIME==null)  rccList[i].UPLOAD_TIME="";
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tbody:last").append("<tr id='tr1_"+i+"' ></tr>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+((currentPage - 1) * pageRecord + (i + 1))+"</td>");
									//$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:210px;text-align: center;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='text-align: center;width:200px;' title='"+rccList[i].DATA_AUTH+"'>"+rccList[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+rccList[i].ID+"' value='"+rccList[i].DATA_AUTH2+"' /></td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:210px;text-align: left;' title='"+rccList[i].ITEM_SN+"'>"+rccList[i].ITEM_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_CODE+"'>"+rccList[i].ITEM_CODE+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_NAME+"'>"+rccList[i].ITEM_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:150px;text-align: left;' title='"+rccList[i].ITEM_SPEC+"'>"+rccList[i].ITEM_SPEC+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:80px;text-align: right;' title='"+rccList[i].OUTSTOCK_NUM+"'>"+rccList[i].OUTSTOCK_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='width:150px;text-align: left;' title='"+rccList[i].DOC_NUM+"'>"+rccList[i].DOC_NUM+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='width:100px;text-align: left;' title='"+rccList[i].FIRST_SN+"'>"+rccList[i].FIRST_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='width:100px;text-align: left;' title='"+rccList[i].SECOND_SN+"'>"+rccList[i].SECOND_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='width:100px;text-align: left;' title='"+rccList[i].THIRD_SN+"'>"+rccList[i].THIRD_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='width:100px;text-align: left;' title='"+rccList[i].FOURTH_SN+"'>"+rccList[i].FOURTH_SN+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-15' style='width:110px;text-align: left;' title='"+rccList[i].WH_NAME+"'>"+rccList[i].WH_NAME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-18' style='width:80px;text-align: center;' title='"+rccList[i].OUTSTOCK_EMP+"'>"+rccList[i].OUTSTOCK_EMP+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-19' style='width:130px;text-align: center;' title='"+rccList[i].OUTSTOCK_TIME+"'>"+rccList[i].OUTSTOCK_TIME+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-20' style='width:70px;text-align: center;' title=''>"+tempFlag+"</td>");
									$("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tr:last").append("<td class='datagrid-cell datagrid-cell-21' style='width:150px;text-align: center;' title='"+rccList[i].UPLOAD_TIME+"'>"+rccList[i].UPLOAD_TIME+"</td>");
								}
							}
							pageFun(data.ajaxPage,"formId3");
								var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd503 tbody tr");
								_tongLineColor(tableTrJs);
								//clickTr('secondItemDetail');
								defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd503');
							
						},
					error: function(msg){
							util.closeLoading();
							utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
					  }
					});
	}
	


	
	//单据亮灯
	function docLight(){
        var selCount = getNewSelectedCount2();
        if(selCount==1){
          //var formId = $("#formId1").val();
          var nowId = _selectedEditTr.attr("id");
        //  var tempId = _selectedEditTr.attr("id");
    //  var createUserId = $("#state_"+tempId).val()
          var docNum = $("#WOI_DOC_NUM"+nowId).val();
          console.log(docNum);
         // console.log("docNum:::::::"+docNum);
          var createUserId = $.trim($("#state_"+nowId).val());
          if(createUserId=='关结'){
               utilsFp.confirmIcon(3,"","","", "<dict:lang value="单据已关结"/>",0,"260","");
               return false;
          }else{
		        		//
		         $("#3e29b2e44c0f49aa8e442378fa519c72").attr("disabled",true); 
		      
               	$.ajax({
			    type: "POST",
			    dataType: "json",
			    url: "${path}buss/bussModel_exeFunc.ms?FUNC_CODE=F7555&funcMId=3e29b2e44c0f49aa8e442378fa519c72",
			    data:{
			        "docNum":docNum,
			    },
			    success: function(data){
			                $("#3e29b2e44c0f49aa8e442378fa519c72").attr("disabled",false);
						    if(null == data){return;}
						    if(null != data){
						        //console.log("1:::"+data.ajaxMap.returnMsg);
    							if(data.ajaxMap.returnMsg=="addSucc"){
    							    
    								msgPop(data.ajaxMap.alertMsg,"",data.ajaxMap.title,data.ajaxMap.width.ajaxMap,data.height,data.ajaxMap.time,"");
    								query("formId1");
    							}
    							if(data.ajaxMap.returnMsg=="addSucc1"){
    								msgPop(data.ajaxMap.alertMsg,"",data.ajaxMap.title,data.ajaxMap.width.ajaxMap,data.height,data.ajaxMap.time,"");
    								var urlDetail = "${path}buss/bussModel.ms?exeid=51a6d06bcd704474aadfc4886e93e5cb&dataId=&formId=bb156a44e6e242a885b3fde9386fd567&docNum="+docNum;
     	
	                                showPopWinFp(urlDetail , 600, 400,null,"<dict:lang value="缺料信息"/>","add_planDetail");
	                                query("formId1");
    								return;
    							}
    							if(data.ajaxMap.returnMsg=="addError"){
    								/*var urlDetail = "${path}buss/bussModel.ms?exeid=51a6d06bcd704474aadfc4886e93e5cb&dataId=&formId=bb156a44e6e242a885b3fde9386fd567&docNum="+docNum;
     	
	                                showPopWinFp(urlDetail , 600, 400,null,"<dict:lang value="缺料信息"/>","add_planDetail");
	                                query("formId1");*/
	                                utilsFp.confirmIcon(3,"","","", "<dict:lang value="亮灯失败"/>",0,"300","");
    								return;
    							}
    							if(data.ajaxMap.returnMsg=="addError2"){
    								utilsFp.confirmIcon(3,"","","", data.ajaxMap.res,0,"300","");
    								return;
    							}
						    }
					},
			    error: function(msg){
						
						utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
				  }
			    });
          }
      }else{
          return false;
      }
}
</script>
<script>
function reloadPg(msg,title,width,height,time,isCloseWin){
  	msgPop(msg,reloadPgExe,title,width,height,time,isCloseWin);
}
function reloadPgExe(isCloseWin){
  	query("formId1");
  	if ("0" == isCloseWin || undefined == isCloseWin  ) {
    		top.$(".dialog-close").click();
  	}
   	//checkboxAll("joblist");
}	
<%--生成异步表格--%>
function createTableModel(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var uiRaw = ms.uiRaw(formId)==null?[]:ms.uiRaw(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='bb156a44e6e242a885b3fde9386fd567'){<%--出库单物料信息--%>
        $('.scroll2').mCustomScrollbar("destroy");
        $.each(uiTxt,function(i,v){
            
             var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' onclick=\"showItemDetail('"+v.ID+"');\" abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
           // arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>");
           // arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
          //  arrHtml.push("</td>");
            
            
            
            
           // arrHtml.push("<td colno='DATA_AUTH' class='datagrid-cell "+ms.tdClass(formId, 'DATA_AUTH')+"' style='width:200px;text-align:center;"+ms.tdStyle(formId, 'DATA_AUTH')+"' "+ms.tdEvent(formId, 'DATA_AUTH')+">")
           // arrHtml.push("<span colno='DATA_AUTH' class='"+ms.uiClass(formId, 'DATA_AUTH')+"' style='"+ms.uiStyle(formId, 'DATA_AUTH')+"' "+ms.uiEvent(formId, 'DATA_AUTH')+" title='"+v['DATA_AUTH']+"' >"+v['DATA_AUTH']+"</span>")
           // arrHtml.push("</td>");
             arrHtml.push("<td colno='DATA_AUTH' class='datagrid-cell TD_DATA_AUTH"+ms.tdClass(formId, 'DATA_AUTH')+"' style='width:200px;text-align:center;"+ms.tdStyle(formId, 'DATA_AUTH')+"' "+ms.tdEvent(formId, 'DATA_AUTH')+">")
            arrHtml.push("<span colno='DATA_AUTH' class='"+ms.uiClass(formId, 'DATA_AUTH')+"' style='"+ms.uiStyle(formId, 'DATA_AUTH')+"' "+ms.uiEvent(formId, 'DATA_AUTH')+" title='"+ms.titleAttr(formId,'DATA_AUTH','IS_TITLE_ATTR',v)+"' >"+v['DATA_AUTH']+"</span><input type='hidden' id='DATA_AUTH_ID_"+v['ID']+"' value='"+v['DATA_AUTH_ID']+"' />")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_DOC_NUM' class='datagrid-cell "+ms.tdClass(formId, 'WOI_DOC_NUM')+"' style='width:150px;text-align:left;"+ms.tdStyle(formId, 'WOI_DOC_NUM')+"' "+ms.tdEvent(formId, 'WOI_DOC_NUM')+">")
            arrHtml.push("<span colno='WOI_DOC_NUM' class='"+ms.uiClass(formId, 'WOI_DOC_NUM')+"' style='"+ms.uiStyle(formId, 'WOI_DOC_NUM')+"' "+ms.uiEvent(formId, 'WOI_DOC_NUM')+" title='"+v['WOI_DOC_NUM']+"' >"+v['WOI_DOC_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_ITEM_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WOI_ITEM_CODE')+"' style='width:100px;text-align:left;"+ms.tdStyle(formId, 'WOI_ITEM_CODE')+"' "+ms.tdEvent(formId, 'WOI_ITEM_CODE')+">")
            arrHtml.push("<span colno='WOI_ITEM_CODE' class='"+ms.uiClass(formId, 'WOI_ITEM_CODE')+"' style='"+ms.uiStyle(formId, 'WOI_ITEM_CODE')+"' "+ms.uiEvent(formId, 'WOI_ITEM_CODE')+" title='"+v['WOI_ITEM_CODE']+"' >"+v['WOI_ITEM_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_ERP_FLAG' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_ERP_FLAG')+"' style='width:120px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_ERP_FLAG')+"' "+ms.tdEvent(formId, 'T2#WOD_ERP_FLAG')+">")
	        arrHtml.push("<span colno='T2#WOD_ERP_FLAG' class='"+ms.uiClass(formId, 'T2#WOD_ERP_FLAG')+"' style='"+ms.uiStyle(formId, 'T2#WOD_ERP_FLAG')+"' "+ms.uiEvent(formId, 'T2#WOD_ERP_FLAG')+" title='"+ms.titleAttr(formId,'T2#WOD_ERP_FLAG','IS_TITLE_ATTR',v)+"' >"+v['T2#WOD_ERP_FLAG']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_URGENT_FLAG' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_URGENT_FLAG')+"' style='width:80px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_URGENT_FLAG')+"' "+ms.tdEvent(formId, 'T2#WOD_URGENT_FLAG')+">")
            arrHtml.push("<span colno='T2#WOD_URGENT_FLAG' class='"+ms.uiClass(formId, 'T2#WOD_URGENT_FLAG')+"' style='"+ms.uiStyle(formId, 'T2#WOD_URGENT_FLAG')+"' "+ms.uiEvent(formId, 'T2#WOD_URGENT_FLAG')+" title='"+ms.titleAttr(formId,'T2#WOD_URGENT_FLAG','IS_TITLE_ATTR',v)+"' >"+v['T2#WOD_URGENT_FLAG']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T10#WDI_LIGHT_FLAG' class='datagrid-cell "+ms.tdClass(formId, 'T10#WDI_LIGHT_FLAG')+"' style='width:80px;text-align:center;"+ms.tdStyle(formId, 'T10#WDI_LIGHT_FLAG')+"' "+ms.tdEvent(formId, 'T10#WDI_LIGHT_FLAG')+">")
            arrHtml.push("<span colno='T10#WDI_LIGHT_FLAG' class='"+ms.uiClass(formId, 'T10#WDI_LIGHT_FLAG')+"' style='"+ms.uiStyle(formId, 'T10#WDI_LIGHT_FLAG')+"' "+ms.uiEvent(formId, 'T10#WDI_LIGHT_FLAG')+" title='"+ms.titleAttr(formId,'T10#WDI_LIGHT_FLAG','IS_TITLE_ATTR',v)+"' >"+v['T10#WDI_LIGHT_FLAG']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_STATUS' class='datagrid-cell "+ms.tdClass(formId, 'WOI_STATUS')+"' style='width:100px;text-align:center;"+ms.tdStyle(formId, 'WOI_STATUS')+"' "+ms.tdEvent(formId, 'WOI_STATUS')+">")
	            arrHtml.push("<span colno='WOI_STATUS' class='"+ms.uiClass(formId, 'WOI_STATUS')+"' style='"+ms.uiStyle(formId, 'WOI_STATUS')+"' "+ms.uiEvent(formId, 'WOI_STATUS')+" title='"+ms.titleAttr(formId,'WOI_STATUS','IS_TITLE_ATTR',v)+"' >"+v['WOI_STATUS']+"</span>")
	            arrHtml.push("</td>");
            
            arrHtml.push("<td colno='T2#WOD_PICK_TYPE' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_PICK_TYPE')+"' style='width:80px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_PICK_TYPE')+"' "+ms.tdEvent(formId, 'T2#WOD_PICK_TYPE')+">")
            arrHtml.push("<span colno='T2#WOD_PICK_TYPE' class='"+ms.uiClass(formId, 'T2#WOD_PICK_TYPE')+"' style='"+ms.uiStyle(formId, 'T2#WOD_PICK_TYPE')+"' "+ms.uiEvent(formId, 'T2#WOD_PICK_TYPE')+" title='"+v['T2#WOD_PICK_TYPE']+"' >"+v['T2#WOD_PICK_TYPE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_PLAN_NUM' class='datagrid-cell "+ms.tdClass(formId, 'WOI_PLAN_NUM')+"' style='width:80px;text-align:right;"+ms.tdStyle(formId, 'WOI_PLAN_NUM')+"' "+ms.tdEvent(formId, 'WOI_PLAN_NUM')+">")
            arrHtml.push("<span colno='WOI_PLAN_NUM' class='"+ms.uiClass(formId, 'WOI_PLAN_NUM')+"' style='"+ms.uiStyle(formId, 'WOI_PLAN_NUM')+"' "+ms.uiEvent(formId, 'WOI_PLAN_NUM')+" title='"+v['WOI_PLAN_NUM']+"' >"+v['WOI_PLAN_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_REQUEST_NUM' class='datagrid-cell "+ms.tdClass(formId, 'WOI_REQUEST_NUM')+"' style='width:80px;text-align:right;"+ms.tdStyle(formId, 'WOI_REQUEST_NUM')+"' "+ms.tdEvent(formId, 'WOI_REQUEST_NUM')+">")
            arrHtml.push("<span colno='WOI_REQUEST_NUM' class='"+ms.uiClass(formId, 'WOI_REQUEST_NUM')+"' style='"+ms.uiStyle(formId, 'WOI_REQUEST_NUM')+"' "+ms.uiEvent(formId, 'WOI_REQUEST_NUM')+" title='"+v['WOI_REQUEST_NUM']+"' >"+v['WOI_REQUEST_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_OUT_NUM' class='datagrid-cell "+ms.tdClass(formId, 'WOI_OUT_NUM')+"' style='width:80px;text-align:right;"+ms.tdStyle(formId, 'WOI_OUT_NUM')+"' "+ms.tdEvent(formId, 'WOI_OUT_NUM')+">")
            arrHtml.push("<span colno='WOI_OUT_NUM' class='"+ms.uiClass(formId, 'WOI_OUT_NUM')+"' style='"+ms.uiStyle(formId, 'WOI_OUT_NUM')+"' "+ms.uiEvent(formId, 'WOI_OUT_NUM')+" title='"+v['WOI_OUT_NUM']+"' >"+v['WOI_OUT_NUM']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_CONNECT_DOC' class='datagrid-cell "+ms.tdClass(formId, 'WOI_CONNECT_DOC')+"' style='width:150px;text-align:left;"+ms.tdStyle(formId, 'WOI_CONNECT_DOC')+"' "+ms.tdEvent(formId, 'WOI_CONNECT_DOC')+">")
            arrHtml.push("<span colno='WOI_CONNECT_DOC' class='"+ms.uiClass(formId, 'WOI_CONNECT_DOC')+"' style='"+ms.uiStyle(formId, 'WOI_CONNECT_DOC')+"' "+ms.uiEvent(formId, 'WOI_CONNECT_DOC')+" title='"+v['WOI_CONNECT_DOC']+"' >"+v['WOI_CONNECT_DOC']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T5#WDT_TYPE_NAME' class='datagrid-cell "+ms.tdClass(formId, 'T5#WDT_TYPE_NAME')+"' style='width:120px;text-align:center;"+ms.tdStyle(formId, 'T5#WDT_TYPE_NAME')+"' "+ms.tdEvent(formId, 'T5#WDT_TYPE_NAME')+">")
            arrHtml.push("<span colno='T5#WDT_TYPE_NAME' class='"+ms.uiClass(formId, 'T5#WDT_TYPE_NAME')+"' style='"+ms.uiStyle(formId, 'T5#WDT_TYPE_NAME')+"' "+ms.uiEvent(formId, 'T5#WDT_TYPE_NAME')+" title='"+v['T5#WDT_TYPE_NAME']+"' >"+v['T5#WDT_TYPE_NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T9#WDO_DISPATCH_NAME' class='datagrid-cell "+ms.tdClass(formId, 'T9#WDO_DISPATCH_NAME')+"' style='width:120px;text-align:center;"+ms.tdStyle(formId, 'T9#WDO_DISPATCH_NAME')+"' "+ms.tdEvent(formId, 'T9#WDO_DISPATCH_NAME')+">")
            arrHtml.push("<span colno='T9#WDO_DISPATCH_NAME' class='"+ms.uiClass(formId, 'T9#WDO_DISPATCH_NAME')+"' style='"+ms.uiStyle(formId, 'T9#WDO_DISPATCH_NAME')+"' "+ms.uiEvent(formId, 'T9#WDO_DISPATCH_NAME')+" title='"+v['T9#WDO_DISPATCH_NAME']+"' >"+v['T9#WDO_DISPATCH_NAME']+"</span>")
            arrHtml.push("</td>");
            
            arrHtml.push("<td colno='WOI_WH_CODE' class='datagrid-cell "+ms.tdClass(formId, 'WOI_WH_CODE')+"' style='width:100px;text-align:left;"+ms.tdStyle(formId, 'WOI_WH_CODE')+"' "+ms.tdEvent(formId, 'WOI_WH_CODE')+">")
            arrHtml.push("<span colno='WOI_WH_CODE' class='"+ms.uiClass(formId, 'WOI_WH_CODE')+"' style='"+ms.uiStyle(formId, 'WOI_WH_CODE')+"' "+ms.uiEvent(formId, 'WOI_WH_CODE')+" title='"+v['WOI_WH_CODE']+"' >"+v['WOI_WH_CODE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_ITEM_NAME' class='datagrid-cell "+ms.tdClass(formId, 'WOI_ITEM_NAME')+"' style='width:150px;text-align:left;"+ms.tdStyle(formId, 'WOI_ITEM_NAME')+"' "+ms.tdEvent(formId, 'WOI_ITEM_NAME')+">")
            arrHtml.push("<span colno='WOI_ITEM_NAME' class='"+ms.uiClass(formId, 'WOI_ITEM_NAME')+"' style='"+ms.uiStyle(formId, 'WOI_ITEM_NAME')+"' "+ms.uiEvent(formId, 'WOI_ITEM_NAME')+" title='"+v['WOI_ITEM_NAME']+"' >"+v['WOI_ITEM_NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_ITEM_SPEC' class='datagrid-cell "+ms.tdClass(formId, 'WOI_ITEM_SPEC')+"' style='width:150px;text-align:left;"+ms.tdStyle(formId, 'WOI_ITEM_SPEC')+"' "+ms.tdEvent(formId, 'WOI_ITEM_SPEC')+">")
            arrHtml.push("<span colno='WOI_ITEM_SPEC' class='"+ms.uiClass(formId, 'WOI_ITEM_SPEC')+"' style='"+ms.uiStyle(formId, 'WOI_ITEM_SPEC')+"' "+ms.uiEvent(formId, 'WOI_ITEM_SPEC')+" title='"+v['WOI_ITEM_SPEC']+"' >"+v['WOI_ITEM_SPEC']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T7#CUSTOMER' class='datagrid-cell "+ms.tdClass(formId, 'T7#CUSTOMER')+"' style='width:120px;text-align:left;"+ms.tdStyle(formId, 'T7#CUSTOMER')+"' "+ms.tdEvent(formId, 'T7#CUSTOMER')+">")
            arrHtml.push("<span colno='T7#CUSTOMER' class='"+ms.uiClass(formId, 'T7#CUSTOMER')+"' style='"+ms.uiStyle(formId, 'T7#CUSTOMER')+"' "+ms.uiEvent(formId, 'T7#CUSTOMER')+" title='"+v['T7#CUSTOMER']+"' >"+v['T7#CUSTOMER']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='WOI_DELIVERY_DATE' class='datagrid-cell "+ms.tdClass(formId, 'WOI_DELIVERY_DATE')+"' style='width:150px;text-align:center;"+ms.tdStyle(formId, 'WOI_DELIVERY_DATE')+"' "+ms.tdEvent(formId, 'WOI_DELIVERY_DATE')+">")
            arrHtml.push("<span colno='WOI_DELIVERY_DATE' class='"+ms.uiClass(formId, 'WOI_DELIVERY_DATE')+"' style='"+ms.uiStyle(formId, 'WOI_DELIVERY_DATE')+"' "+ms.uiEvent(formId, 'WOI_DELIVERY_DATE')+" title='"+v['WOI_DELIVERY_DATE']+"' >"+v['WOI_DELIVERY_DATE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T4#NAME' class='datagrid-cell "+ms.tdClass(formId, 'T4#NAME')+"' style='width:80px;text-align:center;"+ms.tdStyle(formId, 'T4#NAME')+"' "+ms.tdEvent(formId, 'T4#NAME')+">")
            arrHtml.push("<span colno='T4#NAME' class='"+ms.uiClass(formId, 'T4#NAME')+"' style='"+ms.uiStyle(formId, 'T4#NAME')+"' "+ms.uiEvent(formId, 'T4#NAME')+" title='"+v['T4#NAME']+"' >"+v['T4#NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_CREATE_TIME' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_CREATE_TIME')+"' style='width:150px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_CREATE_TIME')+"' "+ms.tdEvent(formId, 'T2#WOD_CREATE_TIME')+">")
            arrHtml.push("<span colno='T2#WOD_CREATE_TIME' class='"+ms.uiClass(formId, 'T2#WOD_CREATE_TIME')+"' style='"+ms.uiStyle(formId, 'T2#WOD_CREATE_TIME')+"' "+ms.uiEvent(formId, 'T2#WOD_CREATE_TIME')+" title='"+v['T2#WOD_CREATE_TIME']+"' >"+v['T2#WOD_CREATE_TIME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_DOC_TYPE' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_DOC_TYPE')+"' style='display:none;width:120px;text-align:center;padding:0;"+ms.tdStyle(formId, 'T2#WOD_DOC_TYPE')+"' "+ms.tdEvent(formId, 'T2#WOD_DOC_TYPE')+">")
            arrHtml.push("<span colno='T2#WOD_DOC_TYPE' class='"+ms.uiClass(formId, 'T2#WOD_DOC_TYPE')+"' style='"+ms.uiStyle(formId, 'T2#WOD_DOC_TYPE')+"' "+ms.uiEvent(formId, 'T2#WOD_DOC_TYPE')+" title='"+v['T2#WOD_DOC_TYPE']+"' >"+v['T2#WOD_DOC_TYPE']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_DISPATCH_SN' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_DISPATCH_SN')+"' style='display:none;width:120px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_DISPATCH_SN')+"' "+ms.tdEvent(formId, 'T2#WOD_DISPATCH_SN')+">")
            arrHtml.push("<span colno='T2#WOD_DISPATCH_SN' class='"+ms.uiClass(formId, 'T2#WOD_DISPATCH_SN')+"' style='"+ms.uiStyle(formId, 'T2#WOD_DISPATCH_SN')+"' "+ms.uiEvent(formId, 'T2#WOD_DISPATCH_SN')+" title='"+v['T2#WOD_DISPATCH_SN']+"' >"+v['T2#WOD_DISPATCH_SN']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='T2#WOD_STATUS' class='datagrid-cell "+ms.tdClass(formId, 'T2#WOD_STATUS')+"' style='display:none;width:120px;text-align:center;"+ms.tdStyle(formId, 'T2#WOD_STATUS')+"' "+ms.tdEvent(formId, 'T2#WOD_STATUS')+">")
            arrHtml.push("<span colno='T2#WOD_STATUS' class='"+ms.uiClass(formId, 'T2#WOD_STATUS')+"' style='"+ms.uiStyle(formId, 'T2#WOD_STATUS')+"' "+ms.uiEvent(formId, 'T2#WOD_STATUS')+" title='"+ms.titleAttr(formId,'T2#WOD_STATUS','IS_TITLE_ATTR',v)+"' >"+v['T2#WOD_STATUS']+"</span>")
            arrHtml.push("<input type='hidden' id='state_"+v.ID+"' value='"+v['T2#WOD_STATUS']+"'></td>");
            if(i==0){
		        arrHtml.push("<input type='hidden' id='firstItemId' value='"+v.ID+"' />");
	        }
        
            arrHtml.push("</tr>");
            
        });	
        setPopScroll('.scroll','.head');
        if($("#leftTableDiv"+formId).length>0){
            $("#left-tbody_"+formId).html(arrLeftHtml.join(""));
        }
        //setCrossWiseScroll(formId,arrHtml);
        $("#tbody_"+formId).html(arrHtml.join(""));
    }
    setNumColWidth(formId);
    clearAllSelect();
    setTableWidth(formId);
    setPopScroll('.scroll2','.head2');
    $(".head2").scrollLeft(0);
    //if(isFirstSetScroll == 0){setScroll();}
    //isFirstSetScroll++;
    //if(showItemDetail != "null"){
     showItemDetail($("#firstItemId").val());
    // var firstItemId = $("#firstItemId").val();
   // }
    // if(subRelColIds!="null"){
     //                   var formId1 = $("#formId1").val();
    //defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd567');
    showItemDetail($("#firstItemId").val());
}

function searchOutstock(){
    
    var url = "${path}buss/bussModel_exeFunc.ms?funcMId=7d9adbf273cb4a98ab0f8a4b146cb536";
    var dataAuth = $("#DATA_AUTH").val();
	var itemCode = $.trim($("#WOI_ITEM_CODE_SHOW").val());

	var docNum = $.trim($("#WOI_DOC_NUM").val());

	var connectDoc = $("#WOI_CONNECT_DOC_SHOW").val();
	


	var itemStatus = $("#WOI_STATUS").val();
	
	var beginTime = $(document.getElementById('WOI_DELIVERY_DATE_BEGIN')).val();
	
	var endTime = $(document.getElementById('WOI_DELIVERY_DATE_END')).val();
		
    $.ajax({
        type:"post",
        dataType:"json",
        url:url,
        data:{
            "connectDoc":connectDoc,
            "beginTime":beginTime,
            "endTime":endTime,
            "type":"1",
            "itemStatus":itemStatus,
            "itemCode":itemCode,
            "dataAuth":dataAuth,
            "docNum":docNum,
            "docType":"DJ10",
        },
         //data: "connectDoc="+connectDoc+"&beginTime="+beginTime+"&endTime="+endTime+"&type=1&itemStatus="+itemStatus+"&itemCode="+itemCode+"&dataAuth=1&docNum="+docNum+"&docType=DJ10",
		success:function(data){
            if(null==data){
                return;
            }
            var tempType;
            var tempCheck;
            var tempFreeze;
            $("#addOutstock").empty();
            if(null!=data.ajaxPage.dataList){
                var list = eval(data.ajaxPage.dataList);
               
                    for(var i=0; i<list.length;i++){
                        if(list[i].DATA_AUTH==null) list[i].DATA_AUTH="";
                        if(list[i].WOI_DOC_NUM==null) list[i].WOI_DOC_NUM="";
                        if(list[i].WOD_DOC_TYPE==null) list[i].WOD_DOC_TYPE="";
                        if(list[i].WOD_STATUS==null) tempType="";
                        if(list[i].WOD_STATUS==1) {tempType="<span class='state' style='background-color:#4e9d0f;color:#FFFFFF;width:60px'>开立</span>";}
						if(list[i].WOD_STATUS==2) {tempType="<span class='state' style='background-color:#00a0e9;color:#FFFFFF;width:60px'>操作中</span>";}
					    if(list[i].WOD_STATUS==3) {tempType="<span class='state' style='background-color:#aeaeae;color:#FFFFFF;width:60px'>关结</span>";}
					    if(list[i].WOD_STATUS==4) {tempType="<span class='state' style='background-color:#aace36;color:#FFFFFF;width:60px'>备料完成</span>";}
					    if(list[i].WOD_STATUS==5) {tempType="<span class='state' style='background-color:#7a60fd;color:#FFFFFF;width:60px'>清点完成</span>";}
					    if(list[i].WOD_URGENT_FLAG==null) tempCheck="";
						if(list[i].WOD_URGENT_FLAG=='Y') tempCheck="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WOD_URGENT_FLAG=='N') tempCheck="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WDI_LIGHT_FLAG==null) tempFreeze="";
						if(list[i].WDI_LIGHT_FLAG=='Y') tempFreeze="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WDI_LIGHT_FLAG=='N') tempFreeze="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WA_AREA_NAME==null) list[i].WA_AREA_NAME="";
                        if(list[i].OUTSTOCK_DATE==null) list[i].OUTSTOCK_DATE="";
                        if(list[i].CREATE_MAN==null) list[i].CREATE_MAN="";
                        if(list[i].CREATE_TIME==null) list[i].CREATE_TIME="";
                        if(list[i].CLOSE_MAN==null) list[i].CLOSE_MAN="";
                        if(list[i].CLOSE_TIME==null) list[i].CLOSE_TIME="";
                        if(list[i].WOD_MEMO==null) list[i].WOD_MEMO="";
                        if(list[i].WDT_TYPE_NAME==null) list[i].WDT_TYPE_NAME="";
                        //$("#addOutstock ").append("<tr id='trr"+(i+1)+"' ></tr>");
                        // $("#addOutstock ").append("<tr id='"+list[i].IDD+"'  ></tr>");
                        $("#addOutstock ").append("<tr id='"+list[i].WOI_DOC_NUM+"_"+list[i].WOI_WH_CODE+"' ondblclick='dblClickShowDetail(this.id)'  ></tr>");//onclick='clickTr(this.id)'
                        $("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+(i+1)+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:30px;text-align: center;'><input type='checkbox' class='_selectdata' value='"+list[i].ID+"' name='isSelect3'/></td>");
					//	$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' title='"+list[i].DATA_AUTH+"'>"+list[i].DATA_AUTH+"</td>");
					    $("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' title='"+list[i].DATA_AUTH+"'>"+list[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+list[i].ID+"' value='"+list[i].DATA_AUTH2+"' /></td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: left;width:160px;' title='"+list[i].WOI_DOC_NUM+"'>"+list[i].WOI_DOC_NUM+"<input type='hidden' id='WOI_DOC_NUM"+list[i].WOI_DOC_NUM+"_"+list[i].WOI_WH_CODE+"' value='"+list[i].WOI_DOC_NUM+"' /></td>");
                       	$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='text-align: center;width:130px;' title='"+list[i].WDT_TYPE_NAME+"'>"+list[i].WDT_TYPE_NAME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='text-align: center;width:110px;' >"+tempType+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='text-align: center;width:130px;' >"+tempCheck+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='text-align: center;width:130px;' >"+tempFreeze+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='text-align: center;width:130px;' title='"+list[i].WA_AREA_NAME+"'>"+list[i].WA_AREA_NAME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-9' style='text-align: center;width:160px;' >"+list[i].OUTSTOCK_DATE+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='text-align: center;width:130px;' >"+list[i].CREATE_MAN+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='text-align: center;width:160px;' >"+list[i].CREATE_TIME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='text-align: center;width:130px;' >"+list[i].CLOSE_MAN+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='text-align: center;width:160px;' >"+list[i].CLOSE_TIME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='text-align: left;width:130px;' >"+list[i].WOD_MEMO+"</td>");
						
                    }
            }
            pageFun(data.ajaxPage,"formId4");
							var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd504 tbody tr");
							_tongLineColor(tableTrJs);
							//clickTr('addOutstock');
							//clickTr('addOutstock');
							defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd504');
        },
        error:function(msg){
            	utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
        }
    })
	
}
var paginationImpl = {};
function SearchOutstockItem(paginationImpl,url){
    
    var isFirstLoad = firstLoadThisPage(paginationImpl);
    	var currentPage = isFirstLoad? 1 : _GLO_FORM_PAGE_MAP[paginationImpl].currentPage;
    	var pageRecord =  isFirstLoad? 20 : _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord;
    	 var dataAuth = $("#DATA_AUTH").val();
	var itemCode = $.trim($("#WOI_ITEM_CODE_SHOW").val());
	var docNum = $.trim($("#WOI_DOC_NUM").val());
	var connectDoc = $.trim($("#WOI_CONNECT_DOC_SHOW").val());
   	
	var itemStatus = $("#WOI_STATUS").val();
	var beginTime = $(document.getElementById('WOI_DELIVERY_DATE_BEGIN')).val();
	var endTime = $(document.getElementById('WOI_DELIVERY_DATE_END')).val();
	
    $.ajax({
        type:"post",
        dataType:"json",
        url:url,
        data:{
             "beginTime":beginTime,
             "endTime":endTime,
             "type":"1",
             "itemStatus":itemStatus,
             "itemCode":itemCode,
             "dataAuth":dataAuth,
             "docNum":docNum,
             "connectDoc":connectDoc,
             "docType":"DJ10",
             "page.currentPage":_GLO_FORM_PAGE_MAP[paginationImpl].currentPage,
             "page.pageRecord": _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord,
        },
        //data: "beginTime="+beginTime+"&endTime="+endTime+"&type=1&itemStatus="+itemStatus+"&itemCode="+itemCode+"&dataAuth=1&docNum="+docNum+"&connectDoc="+connectDoc+"&docType=DJ10"+"&page.currentPage="+_GLO_FORM_PAGE_MAP[paginationImpl].currentPage+"&page.pageRecord=" + _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord,
		success:function(data){
            if(null==data){
                return;
            }
            var tempType;
            var tempCheck;
            var tempFreeze;
            $("#addOutstock").empty();
            if(null!=data.ajaxPage.dataList){
                var list = eval(data.ajaxPage.dataList);
                
                    for(var i=0; i<list.length;i++){
                        if(list[i].DATA_AUTH==null) list[i].DATA_AUTH="";
                        if(list[i].WOI_DOC_NUM==null) list[i].WOI_DOC_NUM="";
                        if(list[i].WOD_DOC_TYPE==null) list[i].WOD_DOC_TYPE="";
                        if(list[i].WOD_STATUS==null) tempType="";
                        if(list[i].WOD_STATUS==1) {tempType="<span class='state' style='background-color:#4e9d0f;color:#FFFFFF;width:60px'>开立</span>";}
						if(list[i].WOD_STATUS==2) {tempType="<span class='state' style='background-color:#00a0e9;color:#FFFFFF;width:60px'>操作中</span>";}
					    if(list[i].WOD_STATUS==3) {tempType="<span class='state' style='background-color:#aeaeae;color:#FFFFFF;width:60px'>关结</span>";}
					    if(list[i].WOD_STATUS==4) {tempType="<span class='state' style='background-color:#aace36;color:#FFFFFF;width:60px'>备料完成</span>";}
					    if(list[i].WOD_STATUS==5) {tempType="<span class='state' style='background-color:#7a60fd;color:#FFFFFF;width:60px'>清点完成</span>";}
					    if(list[i].WOD_URGENT_FLAG==null) tempCheck="";
						if(list[i].WOD_URGENT_FLAG=='Y') tempCheck="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WOD_URGENT_FLAG=='N') tempCheck="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WDI_LIGHT_FLAG==null) tempFreeze="";
						if(list[i].WDI_LIGHT_FLAG=='Y') tempFreeze="<img src='${path}plf/page/fp/img/ico-state-h.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WDI_LIGHT_FLAG=='N') tempFreeze="<img src='${path}plf/page/fp/img/ico-state.png' width='35' height='15' class='mCS_img_loaded'>";
						if(list[i].WA_AREA_NAME==null) list[i].WA_AREA_NAME="";
                        if(list[i].OUTSTOCK_DATE==null) list[i].OUTSTOCK_DATE="";
                        if(list[i].CREATE_MAN==null) list[i].CREATE_MAN="";
                        if(list[i].CREATE_TIME==null) list[i].CREATE_TIME="";
                        if(list[i].CLOSE_MAN==null) list[i].CLOSE_MAN="";
                        if(list[i].CLOSE_TIME==null) list[i].CLOSE_TIME="";
                        if(list[i].WOD_MEMO==null) list[i].WOD_MEMO="";
                        if(list[i].WDT_TYPE_NAME==null) list[i].WDT_TYPE_NAME="";
                        //$("#addOutstock ").append("<tr id='trr"+(i+1)+"' ></tr>");
                        $("#addOutstock ").append("<tr id='"+list[i].WOI_DOC_NUM+"_"+list[i].WOI_WH_CODE+"' ondblclick='dblClickShowDetail(this.id)' ></tr>");
                        //$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+(i+1)+"</td>");
                        $("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+((currentPage-1)*pageRecord+(i+1))+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:30px;text-align: center;'><input type='checkbox' class='_selectdata' value='"+list[i].ID+"' name='isSelect3'/></td>");
					    //$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' title='"+list[i].DATA_AUTH+"'>"+list[i].DATA_AUTH+"</td>");
					    $("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' title='"+list[i].DATA_AUTH+"'>"+list[i].DATA_AUTH+"<input type='hidden' id='DATA_AUTH_ID_"+list[i].ID+"' value='"+list[i].DATA_AUTH2+"' /></td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: left;width:160px;' title='"+list[i].WOI_DOC_NUM+"'>"+list[i].WOI_DOC_NUM+"<input type='hidden' id='WOI_DOC_NUM"+list[i].WOI_DOC_NUM+"_"+list[i].WOI_WH_CODE+"' value='"+list[i].WOI_DOC_NUM+"' /></td>");
					   	$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='text-align: center;width:130px;' title='"+list[i].WDT_TYPE_NAME+"'>"+list[i].WDT_TYPE_NAME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='text-align: center;width:110px;' >"+tempType+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='text-align: center;width:130px;' >"+tempCheck+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='text-align: center;width:130px;' >"+tempFreeze+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='text-align: center;width:130px;' title='"+list[i].WA_AREA_NAME+"'>"+list[i].WA_AREA_NAME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-9' style='text-align: center;width:160px;' >"+list[i].OUTSTOCK_DATE+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-10' style='text-align: center;width:130px;' >"+list[i].CREATE_MAN+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-11' style='text-align: center;width:160px;' >"+list[i].CREATE_TIME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-12' style='text-align: center;width:130px;' >"+list[i].CLOSE_MAN+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-13' style='text-align: center;width:160px;' >"+list[i].CLOSE_TIME+"</td>");
						$("#addOutstock tr:last").append("<td class='datagrid-cell datagrid-cell-14' style='text-align: left;width:130px;' >"+list[i].WOD_MEMO+"</td>");
						
                    }
            }
            pageFun(data.ajaxPage,"formId4");
							var tableTrJs = $("#datagrid-btable-ajaxbb156a44e6e242a885b3fde9386fd504 tbody tr");
							_tongLineColor(tableTrJs);
						//	clickTr('addOutstock');
						//	clickTr('addOutstock');
							defTableWidthRewrite('bb156a44e6e242a885b3fde9386fd504');
							$(".head3").scrollLeft(0);
        },
        error:function(msg){
            	utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
        }
    })
	
}
function searchOutstockItem(paginationImpl){
    var url = "${path}buss/bussModel_exeFunc.ms?funcMId=7d9adbf273cb4a98ab0f8a4b146cb536";
	SearchOutstockItem(paginationImpl,url);
	//SearchItemInfo(paginationImpl,url);
}
  var  dateId;
function GetProduceNumId(docNum,type){
    
    var url = "${path}buss/bussModel_exeFunc.ms?funcMId=f5e22799fa474ff6906fd99d900b8343";
    var docNum2 = docNum.split("_");
    $.ajax({
        type:"post",
        dataType:"json",
        url:url,
        data:{
           "docNum":docNum2[0],
        },
        success:function(data){
            if(null==data){
                return;
            }
            if(null!=data.ajaxList){
                var list = eval(data.ajaxList);
                dateId= list[0].ID;
            }
            if(type==1){
                 var url = "${path}buss/bussModel_exeFunc.ms?FUNC_CODE=F6729&funcMId=037009132b8d43f4a689e437b0aa16a7&formId=bb156a44e6e242a885b3fde9386fd567&dataId="+dateId+"&iframeId="+_currentFrame;			
            
                showPopWinFp(url, 1200, 550,null,document.title+ "<dict:lang value="修改" />"); 
            }else if(type==3){
                //alert(dateId);
                var url = "${path}buss/bussModel_exeFunc.ms?FUNC_CODE=F6727&funcMId=e2c0195b73fb47da97d0098d592ea223&formId=bb156a44e6e242a885b3fde9386fd567&dataId="+dateId+"&iframeId="+_currentFrame;			
            
               // var url = "${path}buss/bussModel_exeFunc.ms?FUNC_CODE=F6727&funcMId=e2c0195b73fb47da97d0098d592ea223&formId=9a18e622bd6a46d4909c47bcc683227f&dataId="dateId+"&iframeId="+_currentFrame;
                showPopWinFp(url, 1200, 550,null,document.title+"<dict:lang value="查看" />");    

            }
           
              //  showPopWinFp(url, 900, 600,null,document.title+"%{getText("修改")}");
        },
        error:function(msg){
            	utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
        }
    })
    
}


function initHeight(){
	$('.panel-ajax').height(($(window).height() - 56 - 78 - 10 - 45  - 10)/2 - 30);
	$('.datagrid-body').css('height','calc(100% - 32px)');
	$('.panel1').height($(window).height() - 56 - 78 - 10 - 45 - 30);
}

$(function(){
	initHeight();
})

$(window).resize(function(){
	initHeight();
})
var checkedIds= [];//保存选中的id，亦适用于分页

function clickTr(tableId){
		    
			$("#"+tableId+" tr").unbind("click");
			$("#"+tableId+" tr input[type=checkbox]").unbind("click");
			$("#"+tableId+" tr").on("click",function(e){
			var trId = $(this).attr("id");
			if ($("#"+trId+" :checkbox").attr("checked")) {
				$("#"+trId+" :checkbox").prop("checked",false);
				$("#"+trId).css("background-color","");
			}else{
				$("#"+tableId+" input[type='checkbox']").each(function(){
					if ($(this).attr("checked")) {
						$(this).prop("checked",false);
						$(this).parents("tr").css("background-color","");
					}
				});
				$("#"+trId+" :checkbox").prop("checked",true);
				$("#"+trId).css("background-color","#a0c8e5");
			}
		});
		
		  $("#"+tableId+" tr input[type=checkbox]").click(function(e) {
			  e.stopPropagation();
			  var style = $(this).parents("tr").attr("style");
			  if(style && style.indexOf("background-color") > -1){
				  $(this).parents("tr").css("background-color","");
			  }else{
				  $(this).parents("tr").css("background-color","#a0c8e5");
			  }
		  });
		}
$("tr").click(function(){

});

function searchItemInfo(paginationImpl){
        var url = "${path}buss/bussModel_exeFunc.ms?funcMId=bef7e3e81a4a400db34d65b2ebdad5e4";
        //console.log(url);
	SearchItemInfo(paginationImpl,url);
	//SearchItemInfo(paginationImpl,url);
}


</script>
<script>(function($){
  $(window).on('load',function(){
    setPopScroll('.scroll','.head');
    setPopScroll('.scroll1','.head1');
     setPopScroll('.scroll3','.head3');
    
  })
})(jQuery)</script>
<script type="text/javascript" src="${path}plf/page/fp/js/paginationMultAx.js"></script>
<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
<!-- 页面结束 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="pageOver" />
 </jsp:include>

