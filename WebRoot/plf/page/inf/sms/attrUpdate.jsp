<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="新增短信模板" />
	</title>
	<jsp:include page="/plf/common/pub_head.jsp">
			<jsp:param name="popDivWin" value="1" />
			<jsp:param name="layui" value="1" />
	</jsp:include>
</head>
<body>
	<div class="all">
		<div class="add_table_div">
			<form id="updateForm" class="layui-form" name="updateForm" action="${path}sys/ALIMsgAction_attrUpdate.ms" method="post" target="submitFrame">
			
				<table class="add_table">
				
					<tr>
						<td style="width: 100px;" class="tr1 mc_form_title mc_form_title">
							<span class="Eng">*</span><dict:lang value="json属性名称：" />
						</td>
						<td colspan="3">
							<s:textfield id="aliAttrTempName" maxlength="100" name="aliAttrTempDto.name"  cssClass="_VAL_NULL _VAL_DATABASE" cssStyle="width:100%;" ></s:textfield>
						</td>
					</tr>
					<tr>
						<td style="width: 100px;" class="tr1 mc_form_title mc_form_title">
							<span class="Eng">*</span><dict:lang value="json属性编号：" />
						</td>
						<td colspan="3">
							<s:textfield id="aliAttrTempNo" maxlength="100" name="aliAttrTempDto.no"  cssClass="_VAL_NULL _VAL_DATABASE" cssStyle="width:100%;" ></s:textfield>
						</td>
					</tr>
				</table>
				<div class="ptop_10 txac">
					
					<input type="button" value="<dict:lang value="提交" />" lay-submit lay-filter="go" onclick="/*update(this);*/" class="layui-btn">
					
					<input type="button" value="<dict:lang value="关闭" />" onclick="closePopWin();" class="layui-btn layui-btn-danger">
				</div>
				<s:hidden name="paraMap.msg_id" id="msgId"></s:hidden>
				<s:hidden name="paraMap.id" id="attrId"></s:hidden>
			</form>
		</div>
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>
	<jsp:include page="/plf/common/pub_dom.jsp">
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

	<script type="text/javascript">
	function cancel(){
		parent.closePopWin();
	}
	var isSubmit = false;
	function reloadPg(msg){
		isSubmit = false;
		window.parent.reloadPg(msg);
	}
	function alertInfo(msg){
		isSubmit = false;
		util.alert(msg);
	}
	$(function(){
		$("#aliAttrTempName").attr("lay-verify","required");
		$("#aliAttrTempNo").attr("lay-verify","required");
	});
	layui.use('form', function(){
	  	  var form = layui.form;
	  		
	  		form.on('submit(go)', function(data){
	  			update();
	  	 	});
	  		
		});
	function update(thisObj){
		if(!val.valNullData()){
			return ;
		}
		if(!val.valOjbsData()){
			return ;
		}
		if(!val.valDataBaseSetData()){
			return ;
		}
		document.forms.updateForm.submit();
	}
</script>

</body>
<%@ include file="/plf/common/pub_end.jsp"%>