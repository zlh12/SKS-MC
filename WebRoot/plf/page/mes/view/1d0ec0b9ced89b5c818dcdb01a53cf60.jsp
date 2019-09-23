<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="新增" />
	</title>
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
				//include(scriptList[i].src);
				//alert("include "+scriptList[i].src);
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
	<script type="text/javascript">
		var addTableTrMap;
	</script>
</head>
<body onload="load()">
	<div class="edit">
            <div class="hd">
                <!-- <h2 class="tit"><i class="ico-hd"></i>物料信息常规</h2> -->
                <div style="margin-left:10px;"><input type="checkbox" checked id="isCloseWin" name="isCloseWin"  value="0"/><dict:lang value="保存并关闭窗口" /></div>
			    <div class="optn">
			        <button type="button" onclick="add(this);"><i class="ico ico-save"></i><dict:lang value="保存" /></button>
			        <button type="button" onclick="closeWindow();"><i class="ico ico-cancel"></i><dict:lang value="取消" /></button>
			    </div>

			</div>
			<div class="bd">
						    			<form id="addForm" name="addForm" action="${path}buss/bussModel_addComm.ms" method="post" <bu:formet exeid="%{exeid}" />
										target="submitFrame">
										<input type="hidden" name="exeid" value="${exeid}">
										<input type="hidden" name="definedMsg" value="${definedMsg}">
										<input type="hidden" name=iframeId value="${iframeId}">
										<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" value="%{FUNC_CODE_2}" />
										<s:token />
										<table class="func_table">
											<tr>
												<td width="100%" align="right">
						
												</td>
											</tr>
										</table>
		<bu:set name="paraMapObj" value="${dataId}" formId="482c047cf1c14bae98acf757431aab40" type="add" />
	<table class="basic-table" >
	<input type="hidden" name="formIds" value="482c047cf1c14bae98acf757431aab40" />
	<input type="hidden" name="482c047cf1c14bae98acf757431aab40" value="paraMap1@" />
	<input type="hidden" name="paraMap1@__LEVEL__" value="0" />
	<input type="hidden" name="paraMap1@__DATA_COUNT__" value="1" />
		<s:set name="_$viewId" value="'eca48391d6a74123bb705f9d751194e3'" />
		<s:set name="_$formId_1" value="'482c047cf1c14bae98acf757431aab40'" />
		<s:set name="_$type" value="'add'" />
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="ORANGIZE_NO" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="ORANGIZE_NO" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="ORANGIZE_NO" formId="482c047cf1c14bae98acf757431aab40" value="%{ORANGIZE_NO}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
		<td class="name-three" /><bu:uitn colNo="SUPPLIER_NO" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="SUPPLIER_NO" formId="482c047cf1c14bae98acf757431aab40"  colspan="4"><bu:ui colNo="SUPPLIER_NO" formId="482c047cf1c14bae98acf757431aab40" value="%{SUPPLIER_NO}" formIndex="1" /></bu:td>
		
		</tr>
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="RECEIVE_TYPE" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="RECEIVE_TYPE" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="RECEIVE_TYPE" formId="482c047cf1c14bae98acf757431aab40" value="%{RECEIVE_TYPE}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<!--
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="BATCH_NO" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self"  colNo="BATCH_NO" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="BATCH_NO" formId="482c047cf1c14bae98acf757431aab40" value="%{BATCH_NO}" formIndex="1" /></bu:td>
			-->
			<input id="RECEIVENO" name="paraMap1@0#RECEIVE_NO" type="hidden"/>
			<input id="BATCHNO" name="paraMap1@0#BATCH_NO" type="hidden"/>
		</tr>
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="EMER_FLAG" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="EMER_FLAG" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="EMER_FLAG" formId="482c047cf1c14bae98acf757431aab40" value="%{EMER_FLAG}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="MEMO" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="MEMO" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="MEMO" formId="482c047cf1c14bae98acf757431aab40" value="%{MEMO}" formIndex="1" /></bu:td>
		</tr>
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="MATER_CODE" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="MATER_CODE" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="MATER_CODE" formId="482c047cf1c14bae98acf757431aab40" value="%{MATER_CODE}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="SN" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="SN" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="SN" formId="482c047cf1c14bae98acf757431aab40" value="%{SN}" formIndex="1" /></bu:td>
		</tr>
		<tr>
			<td class="name-six" /><span class="dot">*</span><bu:uitn colNo="TYPE" formId="482c047cf1c14bae98acf757431aab40" /></td>
			<bu:td cssClass="dec-self" colNo="TYPE" formId="482c047cf1c14bae98acf757431aab40" ><bu:ui colNo="TYPE" formId="482c047cf1c14bae98acf757431aab40" value="%{TYPE}" formIndex="1" /></bu:td>
		<td>&nbsp;</td>
			
		</tr>
		
			


			<bu:jsVal formId="482c047cf1c14bae98acf757431aab40" formIndex="1" />		
			<div style="padding:1px;"></div>
			</div>
		
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>

<script type="text/javascript">
	function init(){
		if($("#leftTable-kz").length>0){
			$("#leftTable-kz").show();
		}
		
		if($("#leftTable").length>0){
			$("#leftTable").show();
		}
		
		$(".<s:property value="%{@com.more.fw.core.cont.formui.AbsBaseUi@IS_SELECT_FILTER}"/>").chosen();
	}//初始化方法
	function load(){
		var myDate = new Date();
    		var year = myDate.getYear()
    		var year = year < 2000 ? year + 1900 : year
    		var yy = year.toString().substr(2, 2);
    		var mt=myDate.getMonth();
    		var time=myDate.getTime()
    		mt=mt+1;
    		if(mt<10){
    			mt='0'+mt
    		}	
		$("#RECEIVENO").val(yy+mt+time);
		
        	$("#BATCHNO").val(${dataMap.BATCH_NO});
        	
	}
	
</script>
	
	<jsp:include page="/plf/common/fp/pub_dom_fp.jsp">
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

</body>
<%@ include file="/plf/common/pub_end.jsp"%>
