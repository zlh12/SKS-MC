<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="修改" /></title>
	<jsp:include page="/plf/common/fp/pub_head_fp.jsp">
		<jsp:param name="popDivWinFp" value="1" />
		<jsp:param name="datePicker" value="1" />
		<jsp:param name="chosen" value="1" />
	</jsp:include>
	<%@ include file="/plf/page/common/buss/addCommJs.jsp"%>
	<%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
	
	<script type = "text/javascript" src = "${path}plf/js/ui/include.js"></script>
	<script>
	//加载父ifream中的js\css文件

		var linkList = window.parent.document.getElementsByTagName("link");
		var scriptList = window.parent.document.getElementsByTagName("script");
		var head = document.getElementsByTagName("head").item(0);
		//外联样式
		for(var i=0;i<linkList.length;i++)
		{
			var l = document.createElement("link");
			l.rel = 'stylesheet';
			l.type = 'text/css';
			l.href = linkList[i].href;
			head.appendChild(l);
		}
		
		//去除重复的js引用
		var json = {};
		var scripts = new Array();
		var j = 0;
		for(var i=0;i<scriptList.length;i++)
		{
			if(scriptList[i].src != null && '' != scriptList[i].src && !json[scriptList[i].src])
			{
				json[scriptList[i].src] = 1;
				var script = document.createElement("script");
				script.type = 'text/javascript';
				script.src = scriptList[i].src;
				head.appendChild(script);
				scripts[j] = script;
				j++;
			}
		}
		
		window.scripts = scripts;
	</script>
</head>
<body>
	<div class="edit">
            		<div class="hd">
			    <div class="optn">
			        <button type="button" onclick="edit(this);"><i class="ico ico-save"></i><dict:lang value="提交" /></button>
				<button type="button" onclick="resetForm();"><i class="ico ico-gk"></i>重置</button>
			        <button type="button" onclick="closeWindow();"><i class="ico ico-cancel"></i><dict:lang value="关闭" /></button>
			    </div>
			</div>
			<div class="bd">
			<form id="editForm" name="editForm" action="${path}buss/bussModel_editComm.ms" method="post" target="submitFrame"
				<bu:formet exeid="%{exeid}" />>
				<input type="hidden" name="exeid" value="${exeid}">
				<input type="hidden" name="formId" value="b3b00ad970894885bd60a59ca296580c">
				<input type="hidden" name="dataId" value="${dataId}">
				
	<table class="basic-table"  width="90%">
	<input type="hidden" name="formIds" value="b3b00ad970894885bd60a59ca296580c" />
	<input type="hidden" name="b3b00ad970894885bd60a59ca296580c" value="paraMap1@" />
	<input type="hidden" name="paraMap1@__LEVEL__" value="0" />
	<input type="hidden" name="paraMap1@__DATA_COUNT__" value="1" />
		<s:set name="_$viewId" value="'520aed7d2e8343c79c971a53bcf57a7f'" />
		<s:set name="_$formId_1" value="'b3b00ad970894885bd60a59ca296580c'" />
		<s:set name="_$type" value="'edit'" />
		<tr>
			<td style="width: 30%;text-align: right;"><bu:uitn colNo="STAFF_NAME" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="STAFF_NAME" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
			<td style="width: 30%;text-align: right;"><span class="dot"></span><bu:uitn colNo="WORK_TYPE" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="WORK_TYPE" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
		</tr>
		<tr>
			<td style="width: 30%;text-align: right;"><bu:uitn colNo="CUSTOMER_ID" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="CUSTOMER_ID" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
			<td style="width: 30%;text-align: right;"><span class="dot"></span><bu:uitn colNo="PROJECT_ID" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="PROJECT_ID" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
		</tr>
		<tr>
			<td style="width: 30%;text-align: right;"><span class="dot"></span><bu:uitn colNo="TASK_ARRANGE_PEOPLE" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="TASK_ARRANGE_PEOPLE" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
			<td style="width: 30%;text-align: right;"><span class="dot"></span><bu:uitn colNo="WORK_TIME" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="WORK_TIME" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
		</tr>
		<tr>
			<td style="width: 30%;text-align: right;"><span class="dot"></span><bu:uitn colNo="WORK_HOURS" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="WORK_HOURS" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
			<td style="width: 30%;text-align: right;"><bu:uitn colNo="WORK_EXTRA_HOURS" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td class="dec"><bu:ui colNo="WORK_EXTRA_HOURS" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
		</tr>
		<tr>
			<td style="width: 30%;text-align: right;"><bu:uitn colNo="REMARK" formId="b3b00ad970894885bd60a59ca296580c" /></td>
			<td colspan="3" height="80px" class="dec"><bu:ui colNo="REMARK" formId="b3b00ad970894885bd60a59ca296580c" dataId="${dataId}" formIndex="1" /></td>
		</tr>
		<tr>
			<td align="right">注：</td>
			<td colspan="3">1、工作时长为扣除中午休息的实际工作时长 <br />
					2、一天工作时长超过7.5小时即为加班时长 <br />
					3、工作时长和加班时长允许保留一位小数</td>
		</tr>
	</table>
			<bu:jsVal formId="b3b00ad970894885bd60a59ca296580c" formIndex="1" />
			</form>

		</div>
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>

	<script type="text/javascript">
		var isQuery = false;
		function edit(thisObj){
			if(isQuery){util.alert("<dict:lang value="数据正在提交，请稍候" />...");}
			if(!val.valNullData()){
				return ;
			}
			if(!valData()){
				return ;
			}
			document.forms.editForm.submit();
			isQuery = true;
		}
		
		function alertInfo(msg){
			isQuery = false;
			util.alert(msg);
		}

		var FORM_COL_ID_D=null;
		function getEditRows(tableId,formIndex,formidFirstId,subFormId,subRelColId,relColVal){
			util.showLoading();
			var url ="${path}buss/bussModel_editSubDataAx.ms";
			var addTtable = $('#addTable_'+tableId);
			var tableTrJq = addTtable.find("tbody tr");
			var row_count = tableTrJq.length;
			if(row_count == 0){
				curRowSeq=0;
			}
			var FORM_COL_ID_D = $('#addTable_FORM_COL_ID_D'+tableId).val();// <%-- 该值应该等于subRelColId --%>
		  jQuery.ajax({
				type: "POST",
		    dataType: "json",
		    url: url,
		    data:{'paraMap.FORMID':tableId,'paraMap.formIndex':formIndex,'paraMap.FORM_COL_ID_D':FORM_COL_ID_D,'paraMap.trIndex':curRowSeq,'paraMap.formidFirstId':formidFirstId,'paraMap.subFormId':subFormId,'paraMap.subRelColId':subRelColId,'paraMap.relColVal':relColVal},
				success: function(data){
					util.closeLoading();
					if("" == $("#aaaa").val()){
					$("#aaaa").val(data.ajaxPage.tableData);
					}else{
					$("#bbbb").val(data.ajaxPage.tableData);
					}
					var row = $(data.ajaxPage.tableData);
					_toClickColor(row);// <%-- 行点击着色 --%>
					addTtable.append(row);
					var dataCountObj = $("input[name='paraMap"+formIndex+formSplit+FORM_PAGE_DATA_COUNT_FLAG+"']");
					dataCountObj.val(row_count+ 1);
					curRowSeq=curRowSeq+row.length;
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					util.closeLoading();
					var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
					if (null != sessionstatus && sessionstatus == "noAuthority") {
					}else{
						util.alert("error:"+errorThrown);
					}
			   }
			});
		}
		
		function init(){
			initEditDataLs();<%-- 初始化编辑关联子表单数据列表 --%>
			/*
			var formIds = $("input[type='hidden'][name='formIds']").val();
			var formIdLs = formIds.split(",");
			for(var i=0,j=formIdLs.length;i<j;i++){
				getEditRows(formIdLs[i],"0");
			}
			*/
		}
		
	//重置	
	function resetForm(){
		$("#editForm")[0].reset();
	}
	<%-- //自定义每个字段的有效性验证方法体(默认入参thisObj为字段的DOM表单对象，title为该字段的名称)
	var maxLen =5;
	if(thisObj.value.length < maxLen ){
		_alertValMsg(thisObj,title + " %{getText("字段长度不能小于")}" + maxLen);
		return false;
	}else{
		return true;
	}
	 --%>

</script>

	<jsp:include page="/plf/common/fp/pub_dom_fp.jsp">
		<jsp:param name="popConfirm" value="1" />
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

</body>
<%@ include file="/plf/common/pub_end.jsp"%>
