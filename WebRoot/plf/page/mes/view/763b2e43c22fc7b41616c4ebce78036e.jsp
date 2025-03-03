<%@page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/pub_tag.jsp"%>
<head>
	<%@ include file="/common/pub_meta.jsp"%>
	<title><dict:lang value="新增" />
	</title>
	<jsp:include page="/common/pub_head.jsp">
		<jsp:param name="popDivWin" value="1" />
		<jsp:param name="datePicker" value="1" />
	</jsp:include>
	<%@ include file="/page/common/buss/addCommJs.jsp"%>
	<%@ include file="/page/common/buss/bussCommJs.jsp"%>
	<script type="text/javascript">
		var addTableTrMap;
	</script>
</head>
<body>
	<div class="all">
		<div>
			<form id="addForm" name="addForm" action="${path}buss/bussModel_addComm.ms" method="post" <bu:formet exeid="%{exeid}" />
				target="submitFrame">
				<input type="hidden" name="exeid" value="${exeid}">
				<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" value="%{FUNC_CODE_2}" />
				<s:token />
				<table class="func_table">
					<tr>
						<td width="100%" align="right">
							<input type="button" value="<dict:lang value="提交" />" onclick="add(this);" class="botton_img_add">
							<input type="button" value="<dict:lang value="关闭" />" onclick="parent.closePopWin();" class="botton_img_search">
						</td>
					</tr>
				</table>
				<bu:addcp exeid="%{exeid}" />
			</form>
		</div>
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>

<script type="text/javascript">

</script>

	<jsp:include page="/common/pub_dom.jsp">
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

</body>
<%@ include file="/common/pub_end.jsp"%>
