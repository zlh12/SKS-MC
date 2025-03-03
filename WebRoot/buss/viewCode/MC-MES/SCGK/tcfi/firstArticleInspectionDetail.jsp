<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="审核" /></title>
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
<body style="background-color:#fff;overflow:hidden;">
	<div class="edit">
           <%-- <div class="hd">--%>
                <%--<h2 class="tit"><i class="ico-hd"></i>物料信息常规</h2>--%>
			    	<%--<div class="optn">
			    	        <button type="button" onclick="editCheck(this);"><i class="ico ico-save"></i><dict:lang value="保存" /></button>
        					<button type="button" onclick="closeWindow();" ><i class="ico ico-cancel"></i><dict:lang value="取消" /></button>
        					<button type="button" onclick="resetForm();" ><i class="ico ico-gk"></i><dict:lang value="重置" /></button>
			    </div>

			</div>--%>
			<div class="bd" style="border: none">
					<form id="editForm" name="editForm" action="${path}buss/bussModel_editAjaxComm.ms" method="post" target="submitFrame"
								<bu:formet exeid="%{exeid}" />>
								<!--<input type="hidden" name="exeid" value="${exeid}">
								<input type="hidden" name="definedMsg" value="${definedMsg}">
								<input type="hidden" name="formId" value="${formId}">
								<input type="hidden" name="dataId" value="${dataId}">
								<input type="hidden" name=iframeId value="${iframeId}">-->
								
								<input type="hidden" name="exeid" value="<c:out value='${exeid}' />">
								<input type="hidden" name="definedMsg" value="<c:out value='${definedMsg}' />">
								<input type="hidden" name="formId" value="<c:out value='${formId}' />">
								<input type="hidden" name="dataId" value="<c:out value='${dataId}' />">
								<input type="hidden" name=iframeId value="<c:out value='${iframeId}' />">
								 
								
										<!-- <table class="basic-table">
											<tr>
												<th colspan="4">
													<span class="Eng">*</span>
													<dict:lang value="为必填项" />
												</th>
											</tr>
										</table>-->
										<table class="func_table">
											<tr>
												<td width="100%" align="right">
						
												</td>
											</tr>
										</table>
		<bu:set name="paraMapObj" value="${dataId}" formId="1c6dc1908e8645b5b0104ac2031b5c41" type="edit" />
	<table class="basic-table" >
	<input type="hidden" name="formIds" value="1c6dc1908e8645b5b0104ac2031b5c41" />
	<input type="hidden" name="1c6dc1908e8645b5b0104ac2031b5c41" value="paraMap1@" />
	<input type="hidden" name="paraMap1@__LEVEL__" value="1" />
	<input type="hidden" name="paraMap1@__DATA_COUNT__" value="1" />
		<s:set name="_$viewId" value="'fed17843a0b0462ea564ee52d4dbe368'" />
		<s:set name="_$formId_1" value="'1c6dc1908e8645b5b0104ac2031b5c41'" />
		<s:set name="_$type" value="'edit'"/>
		
        <tr>
			<td>
		    <div class="mod">		
        	<div class="mod-hd">		
        	<h3 class="tit"><dict:lang value="检测信息"/></h3>	
        	</div>
        	</div>
		    </td>
		</tr>
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="CFI_PROJECT_ID" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_PROJECT_ID" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_PROJECT_ID" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<td class="name-six" /><bu:uitn colNo="CFI_MODEL_CODE" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_MODEL_CODE" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_MODEL_CODE" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		</tr>
		<tr>
			<td class="name-six" /><bu:uitn colNo="CFI_MODEL_NAME" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_MODEL_NAME" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_MODEL_NAME" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<td class="name-six" /><bu:uitn colNo="CFI_SPEC" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_SPEC" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_SPEC" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		</tr>
		
		<tr>
			<td class="name-six" /><bu:uitn colNo="CFI_PRODUCT_STEP" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_PRODUCT_STEP" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_PRODUCT_STEP" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<td class="name-six" /><bu:uitn colNo="CFI_FAI_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_FAI_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_FAI_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		</tr>
		<tr>
			<td class="name-six" /><bu:uitn colNo="CFI_CHECK_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_CHECK_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_CHECK_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
			<td>&nbsp;</td>
			<td class="name-six" /><bu:uitn colNo="CFI_CHECK_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_CHECK_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_CHECK_NUM" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		</tr>
		<tr>	
			<td class="name-six" /><bu:uitn colNo="CFI_CHECK_SN" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_CHECK_SN" formId="1c6dc1908e8645b5b0104ac2031b5c41" colspan="4"><bu:ui colNo="CFI_CHECK_SN" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" style="height:80px;width:100%;"/></bu:td>
		</tr>
		<tr>
			<td class="name-six" /><bu:uitn colNo="CFI_CHECK_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_CHECK_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" colspan="4"><bu:ui colNo="CFI_CHECK_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" style="height:80px;width:100%;"/></bu:td>
		</tr>
		<tr>
			<td>
		      <div class="mod">		
        	  <div class="mod-hd">		
        	 <h3 class="tit"><dict:lang value="审核信息"/></h3>	
        	 </div>
        	</div>
		    </td>
		</tr>
	
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="CFI_EXAMINE_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_EXAMINE_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" ><bu:ui colNo="CFI_EXAMINE_RESULT" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" /></bu:td>
		</tr>
		<tr> 
			<td class="name-six" /><bu:uitn colNo="CFI_EXAMINE_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" /></td>
			<bu:td cssClass="dec-self" colNo="CFI_EXAMINE_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" colspan="4"><bu:ui colNo="CFI_EXAMINE_CONTENT" formId="1c6dc1908e8645b5b0104ac2031b5c41" dataId="${dataId}" formIndex="1" style="height:80px;width:100%;"/></bu:td>
		</tr>
		
	</table>
			<bu:jsVal formId="1c6dc1908e8645b5b0104ac2031b5c41" formIndex="1" />
									</form>
			</div>
		
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>
<bu:submit viewId="fed17843a0b0462ea564ee52d4dbe368" />
		<bu:script viewId="fed17843a0b0462ea564ee52d4dbe368" />
	<script type="text/javascript">
			var parentWindow;
			$(function(){
				 parentWindow = top.$("#"+window.frameElement.name)[0].contentWindow;
			});
		var isQuery = false;
		function edit(thisObj){
			if(isQuery){util.alert("<dict:lang value="数据正在提交，请稍候" />...");}
			if(!val.valNullData()){
				return ;
			}
			if(!valData()){
				return ;
			}
			if(!val.valOjbsData()){
				return ;
			}
			//解决附件清空时，无法传到后台的问题;解决checkbox清空时，无法传到后台的问题	
			emptyValToHide();
			document.forms.editForm.submit();
			isQuery = true;
		}
		
		function alertInfo(msg){
			isQuery = false;
			utilsFp.alert(msg);
		}
		
		function reloadPg(msg){
			isQuery = false;
			parentWindow.reloadPg(msg);;
		}

		//重置	
		function resetForm(){
			$("#editForm")[0].reset();
		}
				
		
		
		function init(){
			if($("#leftTable-kz").length>0){
				$("#leftTable-kz").show();
			}
			
			if($("#leftTable").length>0){
				$("#leftTable").show();
			}
			
			//$("#paraMapObj_CFI_MODEL_CODE").addClass("readonly");
			$("#paraMapObj_CFI_MODEL_CODE").attr("readonly","readonly"); 
			//$("#paraMapObj_CFI_MODEL_NAME").addClass("readonly");
			$("#paraMapObj_CFI_MODEL_NAME").attr("readonly","readonly");
			//$("#paraMapObj_CFI_SPEC").addClass("readonly");
			$("#paraMapObj_CFI_SPEC").attr("readonly","readonly");
			//$("#paraMapObj_CFI_PRODUCT_STEP").addClass("readonly");
			$("#paraMapObj_CFI_PRODUCT_STEP").attr("readonly","readonly"); 
			//$("#paraMapObj_CFI_FAI_NUM").addClass("readonly");
			$("#paraMapObj_CFI_FAI_NUM").attr("readonly","readonly");
			//$("#paraMapObj_CFI_CHECK_RESULT").addClass("readonly");
			$("#paraMapObj_CFI_CHECK_RESULT").attr("readonly","readonly");
			//$("#paraMapObj_CFI_CHECK_NUM").addClass("readonly");
			$("#paraMapObj_CFI_CHECK_NUM").attr("readonly","readonly");
			//$("#paraMapObj_CFI_CHECK_SN").addClass("readonly");
			$("#paraMapObj_CFI_CHECK_SN").attr("readonly","readonly");
			//$("#paraMapObj_CFI_CHECK_CONTENT").addClass("readonly");
			$("#paraMapObj_CFI_CHECK_CONTENT").attr("readonly","readonly");
			//$("#paraMapObj_CFI_EXAMINE_RESULT").addClass("readonly");
			$("#paraMapObj_CFI_EXAMINE_RESULT").attr("readonly","readonly");
			//$("#paraMapObj_CFI_EXAMINE_CONTENT").addClass("readonly");
			$("#paraMapObj_CFI_EXAMINE_CONTENT").attr("readonly","readonly");
			$("#paraMapObj_CFI_PROJECT_ID_SHOW").removeClass("readonly");
			$("#paraMapObj_CFI_MODEL_CODE_SHOW").removeClass("readonly");
			$("#paraMapObj_CFI_MODEL_NAME").attr("disabled",false);
			$("#paraMapObj_CFI_SPEC").attr("disabled",false);
			$("#paraMapObj_CFI_CHECK_RESULT").attr("disabled","disabled");
			$("#paraMapObj_CFI_EXAMINE_RESULT").attr("disabled","disabled");			
			if($("input[type='hidden'][name='formIds']").length>1){
				initEditDataLs();<%-- 初始化编辑关联子表单数据列表 --%>
			}
			/*
			var formIds = $("input[type='hidden'][name='formIds']").val();
			var formIdLs = formIds.split(",");
			for(var i=0,j=formIdLs.length;i<j;i++){
				getEditRows(formIdLs[i],"0");
			}
			*/
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
