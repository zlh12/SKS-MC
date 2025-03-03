<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
<%@ include file="/plf/common/pub_meta.jsp"%>
<title><dict:lang value="类源码" /></title>
<jsp:include page="/plf/common/pub_head.jsp">
	<jsp:param name="HotKey" value="1" />
	<jsp:param name="ace" value="1" />
	<jsp:param name="ckeditor" value="0" />
	<jsp:param name="tabIndent" value="0" />
	
	<jsp:param name="popDivWin" value="1" />
	<jsp:param name="layui" value="1" />
	
</jsp:include>
</head>
<body>
	<div class="all">
		<form id="editForm" name="editForm" method="post" class="layui-form" target="submitFrame">
		
		<input type="hidden" name="mcIframeName" value="${mcIframeName}">
		
			<div id="div_head">
				<table class="add_table">
					<tr>
						<td style="width:50px;">
							<dict:lang value="类适配" />
						</td>
						<td colspan="3" class="widget" style="width:450px;">
							<label for="codeType_0" class="cursor_hand"><input
											type="radio" id="codeType_0" name="paraMap.CODE_TYPE"
											value="CODE_BASE" onclick="loadClsCode(this.value)" title="BASE"/></label>
											
										<label for="codeType_1" class="cursor_hand"><input
											type="radio" id="codeType_1" name="paraMap.CODE_TYPE"
											value="CODE_ORACLE" onclick="loadClsCode(this.value)" title="ORACLE"/></label>
											
										<label for="codeType_2" class="cursor_hand"><input
											type="radio" id="codeType_2" name="paraMap.CODE_TYPE"
											value="CODE_SQLSERVER" onclick="loadClsCode(this.value)" title="SQLSERVER"/></label>
											
										<label for="codeType_3" class="cursor_hand"><input
											type="radio" id="codeType_3" name="paraMap.CODE_TYPE"
											value="CODE_MYSQL" onclick="loadClsCode(this.value)" title="MYSQL"/></label>
											
										<label for="codeType_4" class="cursor_hand"><input
											type="radio" id="codeType_4" name="paraMap.CODE_TYPE"
											value="CODE_PG" onclick="loadClsCode(this.value)" title="PG"/></label>
						</td>
						
									<td style="width:50px;">类全名</td>
									<td colspan="3" class="widget">
									<input type="text" id="className"
										name="paraMap.CLASS_NAME"
										value="<s:property value="dataMap.CLASS_NAME"/>"
										style="width:485px;" />
									</td>

					</tr> 
					
				</table></br>
			</div>

			<div>
				<div id="div_code">
					<pre id="ace_code" class="ace_editor" style="max-height:415px"></pre>
					<!-- <textarea id="serviceCode" name="paraMap.serviceCode" class="tabIndent" wrap="off" style="word-wrap: normal; width: 600px;height: 500px;"></textarea> -->
				</div>
				<div id="div_code_preview"></div>
			</div>
			<div>
				<input type="hidden" name="paraMap.MC_ID_MYSQL"
					value="<s:property value="dataMap.MC_ID_MYSQL" />" /><input
					type="hidden" name="paraMap.MC_ID_SQLSERVER"
					value="<s:property value="dataMap.MC_ID_SQLSERVER" />" /><input
					type="hidden" name="paraMap.MC_ID_ORACLE"
					value="<s:property value="dataMap.MC_ID_ORACLE" />" /><input
					type="hidden" name="paraMap.MC_ID_BASE"
					value="<s:property value="dataMap.MC_ID_BASE" />" /><input
					type="hidden" id="DATABASETYPE" name="paraMap.DATABASETYPE" /><input
					type="hidden" name="paraMap.MC_ID_PG"
					value="<s:property value="dataMap.MC_ID_PG" />" />
			</div>
			<s:hidden id="type" name="paraMap.type"></s:hidden>
			
			<div class="ptop_10 txac">			
					<!--  
					<input type="reset"
										value="<dict:lang value='取消' />"
										onclick="parent.closePopWin();" class="botton_img_search" />
										<input type="button" id="submitBut"
										value="<dict:lang value='保存' />" onclick="edit(this);"
										class="botton_img_add" />		
					-->
					 <button class="layui-btn" lay-filter="filterSubmit" id="submitBut" lay-submit="formSubmit">保存</button>
					
					<input type="button" value="<dict:lang value="取消" />"  onclick="closePopWin();" class="layui-btn layui-btn-danger">
					
				</div>
				
		</form>
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0"
			height="0"></iframe>
	</div>
	<script>
		//初始化ace对象
		editor = ace.edit("ace_code");
		//设置风格和语言（更多风格和语言，请到github上相应目录查看）
		theme = "idle_fingers"//clouds
		language = "java"
		editor.setTheme("ace/theme/" + theme);
		editor.session.setMode("ace/mode/" + language);
		//字体大小
		editor.setFontSize(14);
		//设置只读（true时只读，用于展示代码）
		editor.setReadOnly(false);
		//自动换行,设置为off关闭
		editor.setOption("wrap", "off")
		//启用提示菜单
		ace.require("ace/ext/language_tools");
		editor.setOptions({
			enableBasicAutocompletion : true,
			enableSnippets : true,
			enableLiveAutocompletion : true
		});
	</script>
	<script type="text/javascript">
		var otherClassType = $("#type").val();
		var isSubmit=false;
		function analyClsCode(){
			var className = $("#className").val();
			var classCode = editor.getValue();
			$.ajax({
				type: "POST",
			    dataType: "json",
			    async:false,
			    url: "${path}sys/moduleMagAction_analyClsCode.ms",
			    data:{'paraMap.clsCode':classCode,'paraMap.CLASS_NAME':className},
				success: function(data){
					if(data.ajaxMap.status=="false"){
						isSubmit=false;
						util.alert(data.ajaxMap.info);
					}else{
						isSubmit=true;
					}
				},
				error: function(msg){
					if(msg!=null && msg!=''){
			                top.util.alert("error:"+msg);
			              }
					
				}
					
				});
		}
		function edit(thisObj) {
			var className = document.getElementById("className");
			if (val.isBlank(className)) {
				_alertValMsg(className, "类全名 -- 不能为空");
				return false;
			}
			var checkRadioVal = $("input:checked").val();
			var classCode = editor.getValue();
			if (val.isBlank(classCode)) {
				util.alert("类的内容 -- 不能为空");
				return false;
			}
			analyClsCode()
			if(!isSubmit){
				return false;
			}
			
			var obj={"isFramesetMethod":false,"type":"window"};
			var par_dom=getSrcDom(obj);
			
			par_dom.updateCodeData(checkRadioVal, className.value, classCode);//单个页面只有一个类源码
			closePopWin();
			
		}
		function init() {
			util.reloadTabKey($("#ace_code"));
			var divHeadH = $("#div_head").height();
			var docWh = $(document).height();
			var winWh = $(window).height();
			$("#ace_code").css({
				height : winWh - divHeadH - 15
			});
			//类名称文本框长度
			if ($("#className").width() < 100) {
				$("#className").css({
					width : 100
				});
			}
			//------处理一个页面多个类源码的情况。 通过type不同获取不同的类源码。如果一个页面只有一个类源码则在父页面存类源码用classCode
			
			var autoWrite='';
		
			if(otherClassType=="lis"){
				autoWrite = parent_obj.document.getElementById("lisClsCode").value;
			}else if(otherClassType=="trig"){
				autoWrite=parent_obj.document.getElementById("trigClsCode").value;
			}else{
				if(parent_obj.document.getElementById("classCode")!=null){
					autoWrite = parent_obj.document.getElementById("classCode").value;
				}
			}
			
			if(autoWrite==""){
				loadClsCode(null);
			}else{
				editor.setValue(autoWrite);		
			}
		
		}
	<%-- 设置textarea 自适应高度 --%>
		if (window.navigator.userAgent.indexOf("MSIE") > -1) {
			util.setTextAreaWidth("div_code", "serviceCode");
			util.setTextAreaHeight("serviceCode", $("#div_head").height());
			$(window).resize(function() {
				util.setTextAreaWidth("div_code", "serviceCode");
				util.setTextAreaHeight("serviceCode", $("#div_head").height());
			});
		} else {
			$("#serviceCode").css({
				width : "100%"
			});
		}
		
		var mcIframeName="${mcIframeName}";
		var obj={"mcIframeName":mcIframeName,"type":"window"};
		var parent_obj=getSrcByIframeName(obj);

		$(function() {
			var className = null;
			var clsCode = null;
			var trigCodeType = null;
			var codeType = parent_obj.document.getElementById("codeType").value;
			if (codeType == "") {
				codeType = "CODE_BASE";
			}
			$("input[type=radio][value=" + codeType + "]").attr("checked",
					'checked');
			var classCode = parent_obj.document.getElementById("classCode").value;
			className = parent_obj.document.getElementById("className").value;
			$("#serviceCode").text(classCode);
			$("#className").val(className);
		});
		var isNoInit = false;
		function loadClsCode(type) {
			_codeType = type;
			var codeId = null;
			var dataJson = null;
			dataJson = {
				"paraMap.codeType" : type,
				"paraMap.CODE_ID" : '<s:property value="paraMap.CODE_ID"/>',
				"paraMap.tpl" : '<s:property value="paraMap.tpl"/>',
				"paraMap.tableName" : '<s:property value="paraMap.tableName"/>',
				"paraMap.relCol" : '<s:property value="paraMap.colName"/>',
				"paraMap.xmlForPackge" : '<s:property value="paraMap.xmlForPackge"/>',
				"paraMap.xmlForClassName" : '<s:property value="paraMap.xmlForClassName"/>'
			}
			if (isNoInit) {
				util.showLoading("处理中...");
			}
			jQuery.ajax({
				type : "POST",
				dataType : "text",
				url : "${path}sys/BussModelAction_loadClsCode.ms?",
				data : dataJson,
				success : function(data) {
					editor.setValue(data);
					isNoInit = true;
					if (isNoInit) {
						util.closeLoading();
					}
					form.render();
				},
				error : function(msg) {
					isNoInit = true;
					if (isNoInit) {
						util.closeLoading();
					}
					util.alert("error:无权限访问");
					//thisObj.disabled = false;
					thisObj.value = oldValue;
				}
			});
		}
		var form;
		$(function(){
		layui.use('form', function(){
	    	  form = layui.form;
	    	  
	    	  form.on('submit(filterSubmit)', function (data) {
			       var flag=edit(data.elem);
			       if(!flag){
			       		return false;
			       }else{
			       		return true;
			       }
			  }) 
           
	    });
	    
	    
	    
	})
	
	</script>

	<jsp:include page="/plf/common/pub_dom.jsp">
		<jsp:param name="popConfirm" value="1" />
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

</body>
<%@ include file="/plf/common/pub_end.jsp"%>