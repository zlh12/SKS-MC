<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
<%@ include file="/plf/common/pub_meta.jsp"%>
<title>${title}</title>
<jsp:include page="/plf/common/fp/pub_head_fp.jsp">
	<jsp:param name="popDivWinFp" value="1" />
	<jsp:param name="datePicker" value="1" />
</jsp:include>
<link href="${path}plf/page/common/msui/css/css_tab.css"
	rel="stylesheet" type="text/css" />
<%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
<script type="text/javascript">
	var loaded = 1;
	var tab_len = 3;

	var currentTag;
	var tabs = "";
	function switchTag(tag, content, url) {
		if (currentTag == tag) {
			return false;
		}
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
			
			$("#"+tag).addClass("current").siblings().removeClass("current");
			
			if ("content" + i == content) {
				currentTag = tag;
				document.getElementById(content).className = "";
				if ("" == document.getElementById("iframe" + i).src
						|| "" != url) {
					currentIframe = document.getElementById("iframe" + i).contentWindow;
					if (typeof (currentIframe.loadedState) == "undefined"
							&& currentIframe.loadedState != false
							&& tabs.indexOf(tag) == -1) {//第一次点击才加载
						//document.getElementById("iframe" + i).src = url;
						tabs += tag + ";";
						if (document.getElementById("iframe" + i).contentWindow.query) {
							document.getElementById("iframe" + i).contentWindow.query(this);
						} else {
							document.getElementById("iframe" + i).src = url;
						}
					}
				}
				dynIframesize("iframe" + i);
			} else {
				document.getElementById("content" + i).className = "hidecontent";
			}
			document.getElementById("content").className = content;
		}
	}

	var iframehide = "yes";
	function dynIframesize(frameId) {
		if (document.getElementById) {
			dyniframe = document.getElementById(frameId);
			if (dyniframe && !window.opera) {
				dyniframe.style.display = "block";
				if (dyniframe.contentDocument
						&& dyniframe.contentDocument.body.offsetHeight) {
					//dyniframe.height = dyniframe.contentDocument.body.offsetHeight+10;//全显示
					dyniframe.height = getViewportHeight() - 38;
				} else {
					if (dyniframe.Document
							&& dyniframe.Document.body.scrollHeight) {
						//dyniframe.height = dyniframe.Document.body.scrollHeight;//全显示
						dyniframe.height = getViewportHeight() - 38;
					}
				}
			}
		}
		if ((document.all || document.getElementById) && iframehide == "no") {
			var tempobj = document.all ? document.all[iframeids[i]] : document
					.getElementById(iframeids[i]);
			tempobj.style.display = "block";
		}

	}

	function _dynIframesize() {
		var tabIndex = 1;
		if (null != currentTag && "" != currentTag) {
			tabIndex = currentTag.substr(3, currentTag.length);
		}
		dynIframesize("iframe" + tabIndex);
	}

	if (window.addEventListener) {
		window.addEventListener("resize", _dynIframesize, false);
	} else {
		if (window.attachEvent) {
			window.attachEvent("onresize", _dynIframesize);
		} else {
			window.onresize = _dynIframesize;
		}
	}

	function query() {
		if (iframe1.window.query != undefined) {
			iframe1.window.query(this);
		}
		if (iframe2.window.query != undefined) {
			iframe2.window.query(this);
		}
		if (iframe3.window.query != undefined) {
			iframe3.window.query(this);
		}

	}

	//初始化iframe
	function intIframe() {
		switchTag('tag3', 'content3',
				'/mes/buss/bussModel.ms?exeid=bd8027e3391c4023a284bfb97abb317d');
		switchTag('tag2', 'content2',
				'/mes/buss/bussModel.ms?exeid=dcd57fa2e3444362a6f970ddef57c0ee');
		switchTag('tag1', 'content1',
				'/mes/buss/bussModel.ms?exeid=0264dbb5a2f0401fb6e36979244c9d8b');

		//switchTag('tag2','content2','/mes/buss/bussModel.ms?exeid=9fc70d048ebe4f8ba02f14ddb15e1b7e');
		//switchTag('tag3','content3','/mes/buss/bussModel.ms?exeid=6ae981f24cc34098a8bb4dbb0245b1b6');
		//switchTag('tag1','content1','/mes/buss/bussModel.ms?exeid=b52920ddd4c0412c8a7f7088e9e64e9a');
	}

	$(function() {
		intIframe();
	});
</script>

</head>
<body scroll="no">

	<DIV class="multilist comwrap">
			<div class="hd">
						<bu:func viewId="d20d05f028f943528235d538ac27fb5e" />
				<form id="searchForm" name="searchForm"
					action="${path}buss/bussModel.ms" method="post">
					<input type="hidden" name="exeid" value="${exeid}" />
					<s:hidden
						name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
					<bu:search viewId="d20d05f028f943528235d538ac27fb5e" />
				</form>
		</div>
		<div class="js-tab">
			<DIV class="hd">
				<UL class="tab-list tab">
					<LI id="tag1" class="current"><A class="selectli1"
						onclick="switchTag('tag1','content1','${path}buss/bussModel.ms?exeid=0264dbb5a2f0401fb6e36979244c9d8b');this.blur();"
						href="javascript:void(0);"> <SPAN class="selectspan1">省市</SPAN>
					</A>
					</LI>
					<LI id="tag2"><A class=""
						onclick="switchTag('tag2','content2','${path}buss/bussModel.ms?exeid=dcd57fa2e3444362a6f970ddef57c0ee');this.blur();"
						href="javascript:void(0);"> <SPAN>虚拟测试模型3</SPAN> </A>
					</LI>
					<LI id="tag3"><A class=""
						onclick="switchTag('tag3','content3','${path}buss/bussModel.ms?exeid=bd8027e3391c4023a284bfb97abb317d');this.blur();"
						href="javascript:void(0);"> <SPAN>请购单</SPAN> </A>
					</LI>

				</UL>
			</DIV>
			<DIV class="content1" id="content">
				<DIV id="content1">
					<table width="100%">
						<tr>
							<td><iframe id="iframe1" name="iframe1" frameBorder="0"
									src='${path}buss/bussModel.ms?exeid=0264dbb5a2f0401fb6e36979244c9d8b'
									width="100%" scrolling="auto" height="400"
									onload="dynIframesize('iframe1');"></iframe>
								<form id="listForm" name="listForm"
									action="${path}buss/bussModel.ms" method="post">
									<input type="hidden" name="exeid"
										value="0264dbb5a2f0401fb6e36979244c9d8b" />
									<s:hidden
										name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
								</form>
							</td>
						</tr>
					</table>
				</DIV>
				<DIV id="content2">
					<table width="100%">
						<tr>
							<td><iframe id="iframe2" name="iframe2" frameBorder="0"
									src='' width="100%" scrolling="auto" height="400"
									onload="dynIframesize('iframe2');"></iframe>
								<form id="listForm" name="listForm"
									action="${path}buss/bussModel.ms" method="post">
									<input type="hidden" name="exeid"
										value="dcd57fa2e3444362a6f970ddef57c0ee" />
									<s:hidden
										name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
								</form>
							</td>
						</tr>
					</table>
				</DIV>
				<DIV id="content3">
					<table width="100%">
						<tr>
							<td><iframe id="iframe3" name="iframe3" frameBorder="0"
									src='' width="100%" scrolling="auto" height="400"
									onload="dynIframesize('iframe3');"></iframe>
								<form id="listForm" name="listForm"
									action="${path}buss/bussModel.ms" method="post">
									<input type="hidden" name="exeid"
										value="bd8027e3391c4023a284bfb97abb317d" />
									<s:hidden
										name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
								</form>
							</td>
						</tr>
					</table>
				</DIV>

			</DIV>
		</div>
	</DIV>
	<bu:submit viewId="d20d05f028f943528235d538ac27fb5e" />
	<bu:script viewId="d20d05f028f943528235d538ac27fb5e" />
</body>


<%@ include file="/plf/common/pub_end.jsp"%>
