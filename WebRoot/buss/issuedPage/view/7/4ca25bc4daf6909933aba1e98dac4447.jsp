<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
    <title>
		<dict:lang value="工单信息" />
    </title>
    <%@ include file="/plf/common/pub_meta.jsp"%>
    <jsp:include page="/plf/common/fp/pub_head_fp.jsp">
        <jsp:param name="popDivWinFp" value="1" />
        <jsp:param name="datePicker" value="1" />
        <jsp:param name="chosen" value="1" />
        <jsp:param name="msData" value="1" />
    </jsp:include>
    <%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
    <%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="d34c8f48bead40d88c24a153c731de82"/>

</head>

<body scroll="auto" style="overflow: auto;" >
    <div class="content-in">
        <div class="dlist">
            <div class="hd">
		<bu:func viewId="53745dab58e344cdb6e278900138763f" />
            </div>
            <div class="bd">
                <div class="search-box">
                    <form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
                       <input type="hidden" name="exeid" value="${exeid}" />
                       <input type="hidden" name="searchParaShowState" id="searchParaShowState" value="${paraMap.searchParaShowState}" />
                       <s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:search viewId="53745dab58e344cdb6e278900138763f" />
                   </form>
                   <a href="javascript:void(0);" class="more"></a>
               </div>
               <form id="listForm" name="listForm" action="${path}buss/bussModel.ms" method="post">
                   <input type="hidden" name="exeid" value="${exeid}" />
                   <s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<input type="hidden" name="formPaged34c8f48bead40d88c24a153c731de82" id="formPaged34c8f48bead40d88c24a153c731de82" value="${formPaged34c8f48bead40d88c24a153c731de82}"/>
		<input type="hidden" name="formId" id="formId1" value='d34c8f48bead40d88c24a153c731de82'/>
		<input type="hidden" id="subRelColIds" name="subRelColIds" value='97c27cbea7204ba08029f339a015bd8a'/>
		<input type="hidden" id="subFormIds" name="subFormIds" value='fbe85506ea9d4a32b0cf78996898c620'/>
		<div class="panel-ajax datagrid datagrid-div1"  id="d34c8f48bead40d88c24a153c731de82">
		<div class="datagrid-div2 datagrid-div6 datagrid-view-ajax" id="datagrid-view-ajaxd34c8f48bead40d88c24a153c731de82" style="">
		<div class="datagrid-header">
		<div class="datagrid-header-inner" id="datagrid-header-innerd34c8f48bead40d88c24a153c731de82">
		<bu:table cssClass="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz" id="datagrid-htabled34c8f48bead40d88c24a153c731de82" style="min-width:1750px;">
		<s:set name="_$type" value="'view'" />
		<tbody class="isParentsTitle">
		<bu:tr cssClass="datagrid-header-row datagrid-title-ajax" id="datagrid-title-ajax">
			<td class="datagrid-cell" style="width:30px; text-align:center;" ><bu:thSeq  formId="d34c8f48bead40d88c24a153c731de82" i18n="1"/></td>
			<td class="datagrid-cell" style="width:30px; text-align:center"><span><input type="checkbox" id="selectAll_d34c8f48bead40d88c24a153c731de82" onclick="_selectAjaxTableAllData(this,'d34c8f48bead40d88c24a153c731de82')" style="cursor: pointer;"title="全选"/></span></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="PROJECT_ID" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="text-align:center;width:70px;"><bu:uitn colNo="PROJECT_STATUS" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="DESTROY_NO" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="CUST_CODE" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="PRODUCT_MATERIAL" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:110px;"><bu:uitn colNo="PRODUCT_NAME" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="PRODUCT_STANDARD" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:70px;"><bu:uitn colNo="PRODUCT_COUNT" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:70px;"><bu:uitn colNo="FQC_COUNT" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:70px;"><bu:uitn colNo="FINISH_COUNT" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:70px;"><bu:uitn colNo="SCRAPPED_QTY" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:70px;"><bu:uitn colNo="PROJECT_STEP" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:90px;"><bu:uitn colNo="CREATE_USER" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell" style="width:150px;"><bu:uitn colNo="CREATE_TIME" formId="d34c8f48bead40d88c24a153c731de82" /></td>
			<td class="datagrid-cell"><bu:uitn colNo="EDIT_TIME" formId="d34c8f48bead40d88c24a153c731de82" /></td>
		</bu:tr>
		</tbody>
		</bu:table>
		</div>
		</div>
		<div class="datagrid-body datagrid-div3 datagrid-body-ajax" id="tableDivd34c8f48bead40d88c24a153c731de82" onscroll="ajaxTableScroll(this,'d34c8f48bead40d88c24a153c731de82')">
		<table class="datagrid-btable fixedTable dblClick"  id="datagrid-btable-ajaxd34c8f48bead40d88c24a153c731de82" style="min-width:1730px;">
		<tbody id="tbody_d34c8f48bead40d88c24a153c731de82" class="isParents">
		</tbody>
		</table>		</div>
		</div>
		</div>
		<c:if test="${formPaged34c8f48bead40d88c24a153c731de82==1}">			<div class="center">
			<s:include value="/plf/page/fp/paginationPopMultAx.jsp?listDataFn=listAjaxTable&formId=d34c8f48bead40d88c24a153c731de82&showLoading=0" />
			</div>
		</c:if>
		</div>


		<input type="hidden" id="relColVals" name="relColVals" value='PROJECT_ID'/>
		<input type="hidden" name="tableCount" id="tableCount" value='1' />

               </form>
            </div>
        </div>
    </div>
		<bu:submit viewId="53745dab58e344cdb6e278900138763f" />
		<bu:script viewId="53745dab58e344cdb6e278900138763f" />
    <script type="text/javascript">
    
    // 主列表
    function listAjaxTable(formId){
        var currentPage="";
        var pageRecord="";
        var isFirstLoad;
        var url = "${path}buss/bussModel_listMsData.ms?uiRaw="+"{\""+formId+"\":\"PROJECT_STATUS\"}";
        if(isPage(formId)){
            var isFirstLoad = firstLoadThisPage(formId);
            var currentPage = isFirstLoad? 1 : _GLO_FORM_PAGE_MAP[formId].currentPage;
            var pageRecord =  isFirstLoad? 20 : _GLO_FORM_PAGE_MAP[formId].pageRecord;
        }
        //util.showLoading("处理中...");
        $.ajax({
            type: "POST",
            dataType: "json",
            url: url,
            data:$("#searchForm").serialize()+"&page.currentPage="+currentPage+"&page.pageRecord=" + pageRecord,
            success: function(data){
                if(data.RES){
                    var ms = new MSdata(data);
                    var page = ms.page(formId);
                    createTableModel(ms,formId);
                    if(isPage(formId)){
                        initPage(page,formId);
                    }
                    clearChildTable();
                }else{
                    utilsFp.confirmIcon(3,"","","", data.RES_MSG,"","260","145");
                }
            },
            error: function(msg){
                utilsFp.confirmIcon(3,"","","", msg,"","260","145");
            }
        });
    }
    
    // 判断是否分页
    function isPage(formId){
        var isPageVal =  $("#formPage"+formId).val();
        if(isPageVal =="1"){    
           return true;
        }
        return false;
    }
    
    // 查询
    function query(thisObj){
        var formId = $("#formId1").val();
        listAjaxTable(formId);
    }
    
    // 清空表格
    function clearChildTable(){
        $(".isChilds").empty();
        getFormIdInitChildPage();
    }
    
    // 当出现滚动条时动态设置表格宽度
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
        utilsFp.alert(msg);
    }
    
    // 清空全选
    function clearAllSelect(){
        $(".left-datagrid-title-ajax,.datagrid-title-ajax").find("input[type='checkbox']").prop("checked",false);
    }
    
    function reloadPg(msg,title,width,height,time){
        msgPop(msg,"",title,width,height,time);
    }
    
    // 子列表
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
        var url = "${path}buss/bussModel_listMsCasData.ms?exeid=${exeid}";
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
                utilsFp.confirmIcon(3,"","","", msg,"","260","145");
            }
        });
    }
    // 数据为空时设置横向滚动条
    function setCrossWiseScroll(formId,arrHtml){
        if(arrHtml.length==0){
            var tableWidth = $("#datagrid-btable-ajax"+formId).width();  
            var tableHeight =
            arrHtml.push("<tr  style='width: ");
            arrHtml.push(tableWidth+"px");
            arrHtml.push(";");
            arrHtml.push("height:1000px;'");
            $("#tableDiv"+formId).css({"overflow-y":"hidden","overflow-x":"auto"});
       }else{
            $("#tableDiv"+formId).css({"overflow-y":"auto","overflow-x":"auto"});	
       }
   }
    
    
    // 初始化子分页
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
    
    
    // 初始化分页插件
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
    
    // 判断是否首次异步访问
    function firstLoadThisPage(formId){
        if(typeof(_GLO_FORM_PAGE_MAP[formId].currentPage) =="undefined"){
            return true;
        }
        return false;
    }
    
    // 初始化子表单
    function getFormIdInitChildPage(){
        var tableCount = $("#tableCount").val();
        for ( var i = 2; i <= tableCount; i++) {
            var formId = $("#formId"+i).val();
            if(isPage(formId)){
               initChildPage(formId);
            }
        }
    }
    
    function init(){
        if($(".leftTable-ajax").length>0){
            $(".leftTable-ajax").show();
        };
        getFormIdInitChildPage();
        listAjaxTable($("#formId1").val());
        <s:if test='null != #parameters[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] && #request[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] == "1"'>query();</s:if>
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
                    var childVal = $("tr[abbr='"+abbr+"']").find("input[type='hidden']").val();
                    relColVals += childVal+",";
                });
                setSubData(formId1,subFormIds,subRelColIds,relColVals,"","",true);
            });
        };
    });
</script>
<script>
//生成异步表格
function createTableModel(ms,formId){
    var arrHtml = [];
    var arrLeftHtml = [];
    var uiTxt = ms.uiTxt(formId)==null?[]:ms.uiTxt(formId);
    var uiRaw = ms.uiRaw(formId)==null?[]:ms.uiRaw(formId);
    var trClass = ms.trClass(formId);
    var trStyle = ms.trStyle(formId);
    var trEvent = ms.trEvent(formId);
    if(formId=='d34c8f48bead40d88c24a153c731de82'){<%--工单信息--%>
        $.each(uiTxt,function(i,v){
            var backgroudColor = (i+1)%2 == 0 ? "tr-hover" : "";
            arrHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
            if($("#"+formId).find(".left-datagrid-title-ajax").length>0){
                arrLeftHtml.push("<tr class='datagrid-row "+backgroudColor+" "+trClass+"' id='"+v.ID+"' abbr='"+v.ID+"' style='cursor: pointer;"+trStyle+"' "+trEvent+">");
                arrLeftHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
                arrLeftHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
                arrLeftHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>");
                arrLeftHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                arrLeftHtml.push("</td>");
            }else{
                arrHtml.push("<input type='hidden' name='ID' value='"+v.ID+"' />");
                arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>"+v._SEQ+"</span></td>");
                arrHtml.push("<td class='datagrid-cell' style='width:30px;text-align:center;' ><span class='_noedit'>");
                arrHtml.push("<input type='checkbox' name='"+formId+"$ID' value='"+v.ID+"' class='isSubmit _selectdata' style='cursor: pointer;margin:0'>");
                arrHtml.push("</td>");
            }
                arrHtml.push("<td colno='PROJECT_ID' class='datagrid-cell "+ms.tdClass(formId, 'PROJECT_ID')+"' style='width:150px;"+ms.tdStyle(formId, 'PROJECT_ID')+"' "+ms.tdEvent(formId, 'PROJECT_ID')+">")
                arrHtml.push("<span colno='PROJECT_ID' class='"+ms.uiClass(formId, 'PROJECT_ID')+"' style='"+ms.uiStyle(formId, 'PROJECT_ID')+"' "+ms.uiEvent(formId, 'PROJECT_ID')+" >"+v['PROJECT_ID']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_STATUS' class='datagrid-cell "+ms.tdClass(formId, 'PROJECT_STATUS')+"' style='text-align:center;width:70px;"+ms.tdStyle(formId, 'PROJECT_STATUS')+"' "+ms.tdEvent(formId, 'PROJECT_STATUS')+">")
                arrHtml.push("<span colno='PROJECT_STATUS' class='"+ms.uiClass(formId, 'PROJECT_STATUS')+"' style='"+ms.uiStyle(formId, 'PROJECT_STATUS')+"' "+ms.uiEvent(formId, 'PROJECT_STATUS')+" >"+v['PROJECT_STATUS']+"</span>")
                arrHtml.push("<input type='hidden' id='PROJECT_STATUS_"+v.ID+"' value='"+uiRaw[i].PROJECT_STATUS+"' />");
                arrHtml.push("</td>");
                arrHtml.push("<td colno='DESTROY_NO' class='datagrid-cell "+ms.tdClass(formId, 'DESTROY_NO')+"' style='width:150px;"+ms.tdStyle(formId, 'DESTROY_NO')+"' "+ms.tdEvent(formId, 'DESTROY_NO')+">")
                arrHtml.push("<span colno='DESTROY_NO' class='"+ms.uiClass(formId, 'DESTROY_NO')+"' style='"+ms.uiStyle(formId, 'DESTROY_NO')+"' "+ms.uiEvent(formId, 'DESTROY_NO')+" >"+v['DESTROY_NO']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CUST_CODE' class='datagrid-cell "+ms.tdClass(formId, 'CUST_CODE')+"' style='width:150px;"+ms.tdStyle(formId, 'CUST_CODE')+"' "+ms.tdEvent(formId, 'CUST_CODE')+">")
                arrHtml.push("<span colno='CUST_CODE' class='"+ms.uiClass(formId, 'CUST_CODE')+"' style='"+ms.uiStyle(formId, 'CUST_CODE')+"' "+ms.uiEvent(formId, 'CUST_CODE')+" >"+v['CUST_CODE']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_MATERIAL' class='datagrid-cell "+ms.tdClass(formId, 'PRODUCT_MATERIAL')+"' style='width:150px;"+ms.tdStyle(formId, 'PRODUCT_MATERIAL')+"' "+ms.tdEvent(formId, 'PRODUCT_MATERIAL')+">")
                arrHtml.push("<span colno='PRODUCT_MATERIAL' class='"+ms.uiClass(formId, 'PRODUCT_MATERIAL')+"' style='"+ms.uiStyle(formId, 'PRODUCT_MATERIAL')+"' "+ms.uiEvent(formId, 'PRODUCT_MATERIAL')+" >"+v['PRODUCT_MATERIAL']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_NAME' class='datagrid-cell "+ms.tdClass(formId, 'PRODUCT_NAME')+"' style='width:110px;"+ms.tdStyle(formId, 'PRODUCT_NAME')+"' "+ms.tdEvent(formId, 'PRODUCT_NAME')+">")
                arrHtml.push("<span colno='PRODUCT_NAME' class='"+ms.uiClass(formId, 'PRODUCT_NAME')+"' style='"+ms.uiStyle(formId, 'PRODUCT_NAME')+"' "+ms.uiEvent(formId, 'PRODUCT_NAME')+" >"+v['PRODUCT_NAME']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_STANDARD' class='datagrid-cell "+ms.tdClass(formId, 'PRODUCT_STANDARD')+"' style='width:150px;"+ms.tdStyle(formId, 'PRODUCT_STANDARD')+"' "+ms.tdEvent(formId, 'PRODUCT_STANDARD')+">")
                arrHtml.push("<span colno='PRODUCT_STANDARD' class='"+ms.uiClass(formId, 'PRODUCT_STANDARD')+"' style='"+ms.uiStyle(formId, 'PRODUCT_STANDARD')+"' "+ms.uiEvent(formId, 'PRODUCT_STANDARD')+" >"+v['PRODUCT_STANDARD']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PRODUCT_COUNT' class='datagrid-cell "+ms.tdClass(formId, 'PRODUCT_COUNT')+"' style='width:70px;text-align:right;"+ms.tdStyle(formId, 'PRODUCT_COUNT')+"' "+ms.tdEvent(formId, 'PRODUCT_COUNT')+">")
                arrHtml.push("<span colno='PRODUCT_COUNT' class='"+ms.uiClass(formId, 'PRODUCT_COUNT')+"' style='"+ms.uiStyle(formId, 'PRODUCT_COUNT')+"' "+ms.uiEvent(formId, 'PRODUCT_COUNT')+" >"+v['PRODUCT_COUNT']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='FQC_COUNT' class='datagrid-cell "+ms.tdClass(formId, 'FQC_COUNT')+"' style='width:70px;text-align:right;"+ms.tdStyle(formId, 'FQC_COUNT')+"' "+ms.tdEvent(formId, 'FQC_COUNT')+">")
                arrHtml.push("<span colno='FQC_COUNT' class='"+ms.uiClass(formId, 'FQC_COUNT')+"' style='"+ms.uiStyle(formId, 'FQC_COUNT')+"' "+ms.uiEvent(formId, 'FQC_COUNT')+" >"+v['FQC_COUNT']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='FINISH_COUNT' class='datagrid-cell "+ms.tdClass(formId, 'FINISH_COUNT')+"' style='width:70px;text-align:right;"+ms.tdStyle(formId, 'FINISH_COUNT')+"' "+ms.tdEvent(formId, 'FINISH_COUNT')+">")
                arrHtml.push("<span colno='FINISH_COUNT' class='"+ms.uiClass(formId, 'FINISH_COUNT')+"' style='"+ms.uiStyle(formId, 'FINISH_COUNT')+"' "+ms.uiEvent(formId, 'FINISH_COUNT')+" >"+v['FINISH_COUNT']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='SCRAPPED_QTY' class='datagrid-cell "+ms.tdClass(formId, 'SCRAPPED_QTY')+"' style='width:70px;text-align:right;"+ms.tdStyle(formId, 'SCRAPPED_QTY')+"' "+ms.tdEvent(formId, 'SCRAPPED_QTY')+">")
                arrHtml.push("<span colno='SCRAPPED_QTY' class='"+ms.uiClass(formId, 'SCRAPPED_QTY')+"' style='"+ms.uiStyle(formId, 'SCRAPPED_QTY')+"' "+ms.uiEvent(formId, 'SCRAPPED_QTY')+" >"+v['SCRAPPED_QTY']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='PROJECT_STEP' class='datagrid-cell "+ms.tdClass(formId, 'PROJECT_STEP')+"' style='width:70px;"+ms.tdStyle(formId, 'PROJECT_STEP')+"' "+ms.tdEvent(formId, 'PROJECT_STEP')+">")
                arrHtml.push("<span colno='PROJECT_STEP' class='"+ms.uiClass(formId, 'PROJECT_STEP')+"' style='"+ms.uiStyle(formId, 'PROJECT_STEP')+"' "+ms.uiEvent(formId, 'PROJECT_STEP')+" >"+v['PROJECT_STEP']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_USER' class='datagrid-cell "+ms.tdClass(formId, 'CREATE_USER')+"' style='width:90px;text-align:center;"+ms.tdStyle(formId, 'CREATE_USER')+"' "+ms.tdEvent(formId, 'CREATE_USER')+">")
                arrHtml.push("<span colno='CREATE_USER' class='"+ms.uiClass(formId, 'CREATE_USER')+"' style='"+ms.uiStyle(formId, 'CREATE_USER')+"' "+ms.uiEvent(formId, 'CREATE_USER')+" >"+v['CREATE_USER']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='CREATE_TIME' class='datagrid-cell "+ms.tdClass(formId, 'CREATE_TIME')+"' style='width:150px;text-align:center;"+ms.tdStyle(formId, 'CREATE_TIME')+"' "+ms.tdEvent(formId, 'CREATE_TIME')+">")
                arrHtml.push("<span colno='CREATE_TIME' class='"+ms.uiClass(formId, 'CREATE_TIME')+"' style='"+ms.uiStyle(formId, 'CREATE_TIME')+"' "+ms.uiEvent(formId, 'CREATE_TIME')+" >"+v['CREATE_TIME']+"</span>")
                arrHtml.push("</td>");
                arrHtml.push("<td colno='EDIT_TIME' class='datagrid-cell "+ms.tdClass(formId, 'EDIT_TIME')+"' style='text-align:center;"+ms.tdStyle(formId, 'EDIT_TIME')+"' "+ms.tdEvent(formId, 'EDIT_TIME')+">")
                arrHtml.push("<span colno='EDIT_TIME' class='"+ms.uiClass(formId, 'EDIT_TIME')+"' style='"+ms.uiStyle(formId, 'EDIT_TIME')+"' "+ms.uiEvent(formId, 'EDIT_TIME')+" >"+v['EDIT_TIME']+"</span>")
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
}
</script>
<script type="text/javascript" src="${path}plf/page/fp/js/paginationMultAx.js"></script>
<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
