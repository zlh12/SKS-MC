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
		<dict:lang value="APP功能模块" />
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
		<bu:header formId ="1ffd63f684da4934aec487d50c796c67"/>

    
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
		<bu:func viewId="93b6e46f61024063b0c5e85719a8b740" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="searchForm" />
                       </jsp:include>
                     
		<bu:search viewId="93b6e46f61024063b0c5e85719a8b740" />
                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms?<s:property value='%{@com.more.fw.core.common.method.Constants@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post">
                     <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
                         <jsp:param name="modelName" value="VIEW_TYPE_17" />
                         <jsp:param name="location" value="listForm" />
                     </jsp:include>
		<input type="hidden" name="formPage1ffd63f684da4934aec487d50c796c67" id="formPage1ffd63f684da4934aec487d50c796c67" value="${formPage1ffd63f684da4934aec487d50c796c67}"/>
		<input type="hidden" name="formId" id="formId1" value='1ffd63f684da4934aec487d50c796c67'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='null'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='null'/>
		<div class="panel-ajax datagrid datagrid-div1"  id="1ffd63f684da4934aec487d50c796c67">
		<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajax1ffd63f684da4934aec487d50c796c67" style="">
		<div class="datagrid-header">
		<div class="datagrid-header-inner" id="datagrid-header-inner1ffd63f684da4934aec487d50c796c67">
		<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htable1ffd63f684da4934aec487d50c796c67">
		<s:set name="_$type" value="'view'" />
		<tbody class="isParentsTitle">
		<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
			<td class="datagrid-cell" name="noprintset_SEQ" style="width:30px; text-align:center;" ><bu:thSeq  formId="1ffd63f684da4934aec487d50c796c67" i18n="1"/></td>
			<td class="datagrid-cell no-print" style="width:30px; text-align:center"><span><input type="checkbox" id="selectAll_1ffd63f684da4934aec487d50c796c67" onclick="_selectAjaxTableAllData(this,'1ffd63f684da4934aec487d50c796c67')" style="cursor: pointer;"title="全选"/></span></td>
		   <!-- <td name="noprintset_DATA_AUTH"  style="width:200px;" class="datagrid-cell"><bu:uitn colNo="DATA_AUTH" formId="1ffd63f684da4934aec487d50c796c67" /></td> -->
			<td name="noprintset_TAM_MENU_ID"  style="width:300px;" class="datagrid-cell"><bu:uitn colNo="TAM_MENU_ID" formId="1ffd63f684da4934aec487d50c796c67" /></td>
			<td name="noprintset_TAM_MOUDLE_NAME" style="width:300px;" class="datagrid-cell"><bu:uitn colNo="TAM_MOUDLE_NAME" formId="1ffd63f684da4934aec487d50c796c67" /></td>
			<td name="noprintset_TAM_SEQ"  style="width:300px;" class="datagrid-cell"><bu:uitn colNo="TAM_SEQ" formId="1ffd63f684da4934aec487d50c796c67" /></td>
		</bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDiv1ffd63f684da4934aec487d50c796c67" onscroll="ajaxTableScroll(this,'1ffd63f684da4934aec487d50c796c67')">
		<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajax1ffd63f684da4934aec487d50c796c67">
		<tbody id="tbody_1ffd63f684da4934aec487d50c796c67" class="isParents">
		</tbody>
		</table>		</div>
		</div>
		</div>
		<c:if test="${formPage1ffd63f684da4934aec487d50c796c67==1}">			<div class="center">
			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=getInfoList&formId=1ffd63f684da4934aec487d50c796c67&showLoading=0" />
			</div>
		</c:if>

 <div id="printset_div" style="background-color: white;margin-top: 50px;display:none;">
 <div class="hd" style="background-color: #f6f5f7;height: 35px;">
 <div class="optn" style="top:45px;right:30px;">
 <button type="button" onclick="printset_17('1ffd63f684da4934aec487d50c796c67','1');">打印</button>
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
 <td style="width: 100px;text-align: right;"><span>?导航菜单</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="TAM_MENU_ID" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="TAM_MENU_ID" value="" title_name="?导航菜单" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>功能模块</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="TAM_MOUDLE_NAME" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="TAM_MOUDLE_NAME" value="" title_name="功能模块" />px
 </td>
 </tr>
 <tr>
 <td style="width: 100px;text-align: right;"><span>显示顺序</span></td>
 <td style="padding-left: 5px;">
 <input type="checkbox" name="TAM_SEQ" value="1" checked="checked" />
 </td>
 <td style="padding-left: 5px;">
 <input type="text" name="TAM_SEQ" value="" title_name="显示顺序" />px
 </td>
 </tr>
 </table>
 </div>
 </div>
		<input type="hidden" name="tableCount" id="tableCount" value='1' />

               </form>
               <form id="submit_Form" name="submitForm" action="" target="submitFrame" method="post">
                <table id="submitTable" style="display: none;" >
        		</table>
        	  </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="93b6e46f61024063b0c5e85719a8b740" />
      <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
           <jsp:param name="modelName" value="VIEW_TYPE_17" />
           <jsp:param name="location" value="beforeJsLoad" />
      </jsp:include>
		<bu:script viewId="93b6e46f61024063b0c5e85719a8b740" />
    
    <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
        <jsp:param name="modelName" value="VIEW_TYPE_17" />
        <jsp:param name="location" value="jsLoading" />
      </jsp:include>
    
<script>

function init(){
                    if($(".leftTable-ajax").length>0){
                        $(".leftTable-ajax").show();
                    };
                    getFormIdInitChildPage();
                    initTableWidth();      
                  getInfoList();
                    //listAjaxTable_print($("#formId1").val());
                    
                 }
                 
function query(){
    getInfoList();
}

function addProject(){
  var formId = $("#formId1").val();
  // var url = "${path}buss/bussModel.ms?exeid=97fc6a2a9b084def89e728fd212e62e7&formId="+formId+"&iframeId="+_currentFrame;
  var url = "${path}buss/bussModel.ms?exeid=20c8a02f7b1c47b6bc0ddf9021dfac20&FUNC_CODE=F13099&formId="+formId+"&iframeId="+_currentFrame;
  showPopWinFp(url, 800, 500,null,"<dict:lang value="导航配置" />","");
}




function getInfoList(paginationImpl){ 
    	var currentPage = paginationImpl==undefined? 1 : _GLO_FORM_PAGE_MAP[paginationImpl].currentPage;
    	var pageRecord =  paginationImpl==undefined? 20 : _GLO_FORM_PAGE_MAP[paginationImpl].pageRecord;
    	var menuName = $("#TAM_MENU_ID").val();
    	var mouldeName = $("#TAM_MOUDLE_NAME").val();
    	var itemId = $("#itemId").val();
    	util.showLoading("处理中...");
    	$.ajax({
			    type: "POST",
			    dataType: "json",
			    url: "buss/bussModel_exeFunc.ms?funcMId=05b82c4be2e94162a986f98bca42c2d4",
			    data:{
                        "page.currentPage":currentPage,
                        "page.pageRecord": pageRecord,
                        "menuCode":menuName,
                        "mouldeName":mouldeName
                    },
				success: function(data){
						util.closeLoading();
						$("#tbody_1ffd63f684da4934aec487d50c796c67").empty();
						if(null != data.ajaxPage.dataList){
							var list = eval(data.ajaxPage.dataList);
							for(var i = 0;i < list.length; i++){
							    if(list[i].MENU_NAME==null)  list[i].MENU_NAME="";
								if(list[i].TAM_MOUDLE_NAME==null)  list[i].TAM_MOUDLE_NAME="";
								if(list[i].TAM_SEQ==null)  list[i].TAM_SEQ="";
								$("#datagrid-btable-ajax1ffd63f684da4934aec487d50c796c67 tbody").append("<tr class='datagrid-row' id='"+list[i].ID+"'  style='cursor: pointer;'></tr>");
                        $("#tbody_1ffd63f684da4934aec487d50c796c67 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'>"+((currentPage-1)*pageRecord+(i+1))+"</td>");
						$("#tbody_1ffd63f684da4934aec487d50c796c67 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:30px;text-align: center;'><input type='checkbox' class='_selectdata' value='"+list[i].ID+"' name='isSelect'/></td>");
						$("#tbody_1ffd63f684da4934aec487d50c796c67 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='text-align: center;width:200px;' >"+list[i].MENU_NAME+"</td>");
						$("#tbody_1ffd63f684da4934aec487d50c796c67 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='text-align: left;width:140px;' >"+list[i].TAM_MOUDLE_NAME+"</td>");
                        $("#tbody_1ffd63f684da4934aec487d50c796c67 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='text-align: left;width:110px;' >"+list[i].TAM_SEQ+"</td>");
							    
							}
						}
						pageFun(data.ajaxPage,"1ffd63f684da4934aec487d50c796c67");
						var tableTrJs = $("#datagrid-btable-ajax1ffd63f684da4934aec487d50c796c67 tbody tr");
						_tongLineColor(tableTrJs);
						clickTr('1ffd63f684da4934aec487d50c796c67');
						defTableWidthRewrite("1ffd63f684da4934aec487d50c796c67");
					},
				error: function(msg){
						util.closeLoading();
						utilsFp.confirmIcon(3,"","","", "error:"+msg,0,"300","");
				  }
				});
}

function clickTr(formId){
		    var tableId = "tbody_"+formId;
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
<%--生成异步表格--%>
function createTableModel(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    var colNo = $("#relColVals").val();
    if(formId=='1ffd63f684da4934aec487d50c796c67'){<%--APP功能模块--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
            arrHtml.push("<td class='datagrid-cell no-print' style='width:30px;text-align:center;' ><span class='_noedit'>");
            arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
            arrHtml.push("</td>");
             //arrHtml.push("<td colno='TAM_MENU_ID' style='width:200px;text-align:center;' name='noprintset_DATA_AUTH' class='datagrid-cell "+ms.tdClass(formId, 'DATA_AUTH')+"' style='"+ms.tdStyle(formId, 'DATA_AUTH')+"' "+ms.tdEvent(formId, 'DATA_AUTH')+">")
            //arrHtml.push("<span colno='DATA_AUTH' class='"+ms.uiClass(formId, 'DATA_AUTH')+"' style='"+ms.uiStyle(formId, 'DATA_AUTH')+"' "+ms.uiEvent(formId, 'DATA_AUTH')+" title='"+ms.titleAttr(formId,'DATA_AUTH','IS_TITLE_ATTR',v)+"' >"+v['DATA_AUTH']+"</span>")
            //arrHtml.push("</td>");
           /** arrHtml.push("<td colno='DATA_AUTH' class='datagrid-cell TD_DATA_AUTH"+ms.tdClass(formId, 'DATA_AUTH')+"' style='width:200px;text-align:center;"+ms.tdStyle(formId, 'DATA_AUTH')+"' "+ms.tdEvent(formId, 'DATA_AUTH')+">")
            arrHtml.push("<span colno='DATA_AUTH' class='"+ms.uiClass(formId, 'DATA_AUTH')+"' style='"+ms.uiStyle(formId, 'DATA_AUTH')+"' "+ms.uiEvent(formId, 'DATA_AUTH')+" title='"+ms.titleAttr(formId,'DATA_AUTH','IS_TITLE_ATTR',v)+"' >"+v['DATA_AUTH']+"</span><input type='hidden' id='DATA_AUTH_ID_"+v.ID+"' value='"+v['DATA_AUTH_ID']+"' />")
            arrHtml.push("</td>");**/
            arrHtml.push("<td colno='TAM_MENU_ID' style='width:300px;text-align:center;' name='noprintset_TAM_MENU_ID' class='datagrid-cell "+ms.tdClass(formId, 'TAM_MENU_ID')+"' style='"+ms.tdStyle(formId, 'TAM_MENU_ID')+"' "+ms.tdEvent(formId, 'TAM_MENU_ID')+">")
            arrHtml.push("<span colno='TAM_MENU_ID' class='"+ms.uiClass(formId, 'TAM_MENU_ID')+"' style='"+ms.uiStyle(formId, 'TAM_MENU_ID')+"' "+ms.uiEvent(formId, 'TAM_MENU_ID')+" title='"+ms.titleAttr(formId,'TAM_MENU_ID','IS_TITLE_ATTR',v)+"' >"+v['TAM_MENU_ID']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='TAM_MOUDLE_NAME' style='width:300px;text-align:center;' name='noprintset_TAM_MOUDLE_NAME' class='datagrid-cell "+ms.tdClass(formId, 'TAM_MOUDLE_NAME')+"' style='"+ms.tdStyle(formId, 'TAM_MOUDLE_NAME')+"' "+ms.tdEvent(formId, 'TAM_MOUDLE_NAME')+">")
            arrHtml.push("<span colno='TAM_MOUDLE_NAME' class='"+ms.uiClass(formId, 'TAM_MOUDLE_NAME')+"' style='"+ms.uiStyle(formId, 'TAM_MOUDLE_NAME')+"' "+ms.uiEvent(formId, 'TAM_MOUDLE_NAME')+" title='"+ms.titleAttr(formId,'TAM_MOUDLE_NAME','IS_TITLE_ATTR',v)+"' >"+v['TAM_MOUDLE_NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='TAM_SEQ' style='width:300px;text-align:center;' name='noprintset_TAM_SEQ' class='datagrid-cell "+ms.tdClass(formId, 'TAM_SEQ')+"' style='"+ms.tdStyle(formId, 'TAM_SEQ')+"' "+ms.tdEvent(formId, 'TAM_SEQ')+">")
            arrHtml.push("<span colno='TAM_SEQ' class='"+ms.uiClass(formId, 'TAM_SEQ')+"' style='"+ms.uiStyle(formId, 'TAM_SEQ')+"' "+ms.uiEvent(formId, 'TAM_SEQ')+" title='"+ms.titleAttr(formId,'TAM_SEQ','IS_TITLE_ATTR',v)+"' >"+v['TAM_SEQ']+"</span>")
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
    if(formId=='1ffd63f684da4934aec487d50c796c67'){<%--APP功能模块--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
            getRelColVal(arrHtml,v,colNo);            arrHtml.push("<td class='datagrid-cell' name='noprintset_SEQ' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
            arrHtml.push("<td colno='TAM_MENU_ID'  style='width:300px;text-align:center;' name='noprintset_TAM_MENU_ID' class='datagrid-cell "+ms.tdClass(formId, 'TAM_MENU_ID')+"' style='"+ms.tdStyle(formId, 'TAM_MENU_ID')+"' "+ms.tdEvent(formId, 'TAM_MENU_ID')+">")
            arrHtml.push("<span colno='TAM_MENU_ID' class='"+ms.uiClass(formId, 'TAM_MENU_ID')+"' style='"+ms.uiStyle(formId, 'TAM_MENU_ID')+"' "+ms.uiEvent(formId, 'TAM_MENU_ID')+" title='"+ms.titleAttr(formId,'TAM_MENU_ID','IS_TITLE_ATTR',v)+"' >"+v['TAM_MENU_ID']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='TAM_MOUDLE_NAME' style='width:300px;text-align:center;' name='noprintset_TAM_MOUDLE_NAME' class='datagrid-cell "+ms.tdClass(formId, 'TAM_MOUDLE_NAME')+"' style='"+ms.tdStyle(formId, 'TAM_MOUDLE_NAME')+"' "+ms.tdEvent(formId, 'TAM_MOUDLE_NAME')+">")
            arrHtml.push("<span colno='TAM_MOUDLE_NAME' class='"+ms.uiClass(formId, 'TAM_MOUDLE_NAME')+"' style='"+ms.uiStyle(formId, 'TAM_MOUDLE_NAME')+"' "+ms.uiEvent(formId, 'TAM_MOUDLE_NAME')+" title='"+ms.titleAttr(formId,'TAM_MOUDLE_NAME','IS_TITLE_ATTR',v)+"' >"+v['TAM_MOUDLE_NAME']+"</span>")
            arrHtml.push("</td>");
            arrHtml.push("<td colno='TAM_SEQ'  style='width:300px;text-align:center;' name='noprintset_TAM_SEQ' class='datagrid-cell "+ms.tdClass(formId, 'TAM_SEQ')+"' style='"+ms.tdStyle(formId, 'TAM_SEQ')+"' "+ms.tdEvent(formId, 'TAM_SEQ')+">")
            arrHtml.push("<span colno='TAM_SEQ' class='"+ms.uiClass(formId, 'TAM_SEQ')+"' style='"+ms.uiStyle(formId, 'TAM_SEQ')+"' "+ms.uiEvent(formId, 'TAM_SEQ')+" title='"+ms.titleAttr(formId,'TAM_SEQ','IS_TITLE_ATTR',v)+"' >"+v['TAM_SEQ']+"</span>")
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


function getSubmitTable(){
		var submitTable = $("#submitTable");
		submitTable.empty();
    	$("#datagrid-btable-ajax1ffd63f684da4934aec487d50c796c67").find("tbody tr").each(function (seq){
    	if($(this).find("td").find("input[type='checkbox']").prop("checked")){
    		var rowClone = $(this).clone(true);
				submitTable.append(rowClone);
			}
    	});
}
//删除
function delMoudle(){
    var falg = 0;
    var delId = "";
    $("#datagrid-btable-ajax1ffd63f684da4934aec487d50c796c67 input[name='isSelect']:checkbox").each(function(){
         if ($(this).attr("checked")) { 
			falg =1;
			return false;
		 } 
    });
    if(falg==1){
    	getSubmitTable();
    	utilsFp.confirmIcon(1,"","delReal","", "是否确认删除？","1","260","");
    }else{
        utilsFp.confirmIcon(3,"","","", "<dict:lang value="请至少选择一条记录" />",0,"260","");
        return;
    }
}
function delReal(){
	document.forms.submit_Form.action="${path}buss/bussModel_exeFunc.ms?funcMId=2b0912fbcb3946e5a559609260621ed8&iframeId="+_currentFrame;
	document.forms.submit_Form.submit();
	$("#submitTable").empty();
}
function reloadPg(msg,title,width,height,time,isCloseWin){
		msgPop(msg,reloadPgExe,title,width,height,time,isCloseWin);
	}
	function reloadPgExe(isCloseWin){
	//	location.reload();
	    query("formId1");
		util.showTopLoading();	
		console.log(1);
		if ("0" == isCloseWin || undefined == isCloseWin) {
      		top.$(".dialog-close").click();
    	}
		
	}
	function reloadPgAx(msg,title,width,height,time,isCloseWin){
      //  console.log("555");
		msgPop(msg,reloadPgExeAx,title,width,height,time,isCloseWin);
	}
					
	function reloadPgExeAx(isCloseWin){
	 //console.log("666");
	    console.log(isCloseWin);
	    query("formId1");
	 //  qtree();
	//	util.showTopLoading();
		if(isCloseWin == "0" || undefined == isCloseWin){
			top.$(".dialog-close").click();
		}
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
