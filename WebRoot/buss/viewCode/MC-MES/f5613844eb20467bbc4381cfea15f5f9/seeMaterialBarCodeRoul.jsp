<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="修改" /></title>
	<style>
	.dlist-table td{
			padding:0 !important;
		}
		
		._edit input{
			width: 100%;
			height: 28px;
			border: none;
			padding: 0 5px;
			box-sizing: border-box;
		}
		._edit textarea{
			border: none !important;
			padding: 5px !important;
			height:28px;
		}
		.desc select{
			border: none;
			height:100%;
			width:100% ;
		}
</style>
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
		var addTableTrMap;
		
		$(function (){
			var type = $("#paraMapObj_TBR_ANALYTIC_TYPE").val();
			if (type==2) {
			   document.getElementById("div1").style.display="none";
			   document.getElementById("div2").style.display="none";
			   return ;
			}else if (type==0) {
			   document.getElementById("div1").style.display="none";
			   document.getElementById("div2").style.display="block";
			}
		});
	</script>
</head>
<body style="background-color:#fff;">
	<div class="edit">
			<div class="bd" style="border: none">
								<input type="hidden" name="exeid" value="${exeid}">
								<input type="hidden" name="definedMsg" value="${definedMsg}">
								<input type="hidden" name="formId" value="${formId}">
								<input type="hidden" name="dataId" value="${dataId}">
								<input type="hidden" name=iframeId value="${iframeId}">
										<table class="func_table">
											<tr>
												<td width="100%" align="right">
						
												</td>
											</tr>
										</table>
		<bu:set name="paraMapObj" value="${dataId}" formId="05b39a22c63b4544be3294a59d5dd767" type="edit" />
	<table class="basic-table" >
	<input type="hidden" name="formIds"
						value="05b39a22c63b4544be3294a59d5dd767" />
					<input type="hidden" name="05b39a22c63b4544be3294a59d5dd767"
						value="paraMap1@" />
					<input type="hidden" name="paraMap1@__LEVEL__" value="0" />
					<input type="hidden" name="paraMap1@__DATA_COUNT__" value="1" />
					<s:set name="_$viewId" value="'a05ef37c30cf4e158d2477bf4e98a246'" />
					<s:set name="_$formId_1" value="'05b39a22c63b4544be3294a59d5dd767'" />
					<s:set name="_$type" value="'edit'" />
					<tr>
						<td class="name" style="width:63px;">
						<span class="dot">*</span><bu:uitn colNo="TBR_NAME"
							formId="05b39a22c63b4544be3294a59d5dd767" disabled="disabled"/>
						</td>
						<td class="dec" style="width:250px;"><bu:ui colNo="TBR_NAME"
								formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}"
								formIndex="1" disabled="disabled"/>
						</td>
						<td class="name" style="width:63px;">
						<span class="dot">*</span><bu:uitn colNo="TBR_TYPE"
							formId="05b39a22c63b4544be3294a59d5dd767" disabled="disabled"/>
						</td>
						<td class="dec"  style="width:250px;"><bu:ui colNo="TBR_TYPE"
								formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}"
								formIndex="1" disabled="disabled"/>
						<td class="name"  style="width:63px;">
						<span class="dot">*</span><bu:uitn colNo="TBR_ANALYTIC_TYPE"
							formId="05b39a22c63b4544be3294a59d5dd767" disabled="disabled"/>
						</td>
						<td class="dec"  style="width:230px;"><bu:ui colNo="TBR_ANALYTIC_TYPE"
								formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}"
								formIndex="1" onchange="showTable(this);" disabled="disabled"/>
						</td>

					</tr>
					<tr>
						<td class="name" ><bu:uitn colNo="TBR_CHCEK_CHAR" formId="05b39a22c63b4544be3294a59d5dd767" /></td>
						<td class="dec">
							<bu:ui colNo="TBR_CHCEK_CHAR" formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}" formIndex="1" disabled="disabled"/>
						</td>
						<td class="name" ><bu:uitn colNo="TBR_START_NUM" formId="05b39a22c63b4544be3294a59d5dd767" /></td>
						<td class="dec">
							<bu:ui colNo="TBR_START_NUM" formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}" formIndex="1" disabled="disabled"/>
						</td>
						<td class="name" ><bu:uitn colNo="TBR_LENGTH" formId="05b39a22c63b4544be3294a59d5dd767" /></td>
						<td class="dec" >
				        	<bu:ui colNo="TBR_LENGTH" formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}" formIndex="1" disabled="disabled"/>
			          </td>
					</tr>
					<tr>
						<td class="name" ><bu:uitn colNo="TBR_SEPARATOR" formId="05b39a22c63b4544be3294a59d5dd767" /></td>
						<td class="dec" >
				        	<bu:ui colNo="TBR_SEPARATOR" formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}" formIndex="1" disabled="disabled"/>
			          	</td>
						<td class="name" ><bu:uitn colNo="TBR_DEFAULT" formId="05b39a22c63b4544be3294a59d5dd767" /></td>
						<td class="dec" >
				        	<bu:ui colNo="TBR_DEFAULT" formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}" formIndex="1" disabled="disabled"/>
			          	</td>
					</tr>

					<tr>
						<td class="name" >
						<bu:uitn colNo="TBR_MEMO"
							formId="05b39a22c63b4544be3294a59d5dd767" />
						</td>
						<td class="dec" colspan="5"><bu:ui colNo="TBR_MEMO"
								formId="05b39a22c63b4544be3294a59d5dd767" dataId="${dataId}"
								formIndex="1" style="height:80px;width:100%;" disabled="disabled"/>
						</td>
					</tr>
	</table>
	
	<bu:jsVal formId="05b39a22c63b4544be3294a59d5dd767" formIndex="1" />

				<div id="div1" style="display:none" >
					<table id="editTable1" class="dlist-table table-line" style="width:100%;">
						<thead>
				   <tr>
					    						
						<th style="width:100px;table-layout: fixed;">
							<dict:lang value="内容" />
						</th>
						<th style="width:150px" >
							<dict:lang value="数据源对象" />
						</th>
						<th style="width:100px" >
							<dict:lang value="对应列名" />
						</th>
						<th style="width:100px" >
							<dict:lang value="过滤字段" />
						</th>
						
						<th style="width:150px" >
							<dict:lang value="解析方法名" />
						</th>
						<th>
							<dict:lang value="备注" />
						</th>
					</tr>
						</thead>
						<tbody>

							<tr>
								<td class="name"  align="center"><span class="_show">${paramList[0].BE_CONTENT2}&nbsp;<input
										type="hidden" id="DB_BE_CONTENT_LH" name="paramList[0].BE_CONTENT" value="${paramList[0].BE_CONTENT}" /> </span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_SOURCE"
										value="${paramList[0].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_VALUE"
										value="${paramList[0].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_SELECT"
										value="${paramList[0].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_PRO"
										value="${paramList[0].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[0].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[0].BE_MEMO }</textarea>
								</span></td>

							</tr>

							<tr>
								<td class="name" align="center"><span class="_show">${paramList[1].BE_CONTENT2}&nbsp; <input
										type="hidden" id="DB_BE_CONTENT_SL" name="paramList[1].BE_CONTENT" value="${paramList[1].BE_CONTENT}" />
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_SOURCE"
										value="${paramList[1].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_VALUE"
										value="${paramList[1].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_SELECT"
										value="${paramList[1].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_PRO"
										value="${paramList[1].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[1].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[1].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[2].BE_CONTENT2}&nbsp;<input
										type="hidden" id="DB_BE_CONTENT_PH" name="paramList[2].BE_CONTENT" value="${paramList[2].BE_CONTENT}" /> </span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_SOURCE"
										value="${paramList[2].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_VALUE"
										value="${paramList[2].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_SELECT"
										value="${paramList[2].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_PRO"
										value="${paramList[2].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[2].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[2].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[3].BE_CONTENT2}&nbsp;<input
										type="hidden" id="DB_BE_CONTENT_GYS" name="paramList[3].BE_CONTENT" value="${paramList[3].BE_CONTENT}" /> </span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_SOURCE"
										value="${paramList[3].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_VALUE"
										value="${paramList[3].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_SELECT"
										value="${paramList[3].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_PRO"
										value="${paramList[3].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[3].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[3].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[4].BE_CONTENT2}&nbsp;<input
										type="hidden" id="DB_BE_CONTENT_ZSM" name="paramList[4].BE_CONTENT" value="${paramList[4].BE_CONTENT2}" /> </span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_SOURCE"
										value="${paramList[4].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_VALUE"
										value="${paramList[4].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_SELECT"
										value="${paramList[4].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_PRO"
										value="${paramList[4].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[4].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[4].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[5].BE_CONTENT2}&nbsp;<input
										type="hidden" id="DB_BE_CONTENT_SCRQ" name="paramList[5].BE_CONTENT" value="${paramList[5].BE_CONTENT}" /> </span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_SOURCE"
										value="${paramList[5].BE_SOURCE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_VALUE"
										value="${paramList[5].BE_VALUE }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_SELECT"
										value="${paramList[5].BE_SELECT }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_PRO"
										value="${paramList[5].BE_PRO }" onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[5].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[5].BE_MEMO }</textarea>
								</span></td>
							</tr>

						</tbody>
					</table>
				</div>



				<div id="div2" style="display:none">
					<table id="editTable2" class="dlist-table table-line" style="width:100%;">
						<thead>
					<tr>
						<th style="width:140px;table-layout: fixed;">
							<dict:lang value="内容" />
						</th>
						<th style="width:130px">
							<dict:lang value="字符类型" />
						</th>
						<%-- <th style="width:60px">
							<dict:lang value="前分隔符" />
						</th> --%>
						<th style="width:130px" >
							<dict:lang value="位置" />
						</th>
						
						<%-- <th style="width:60px">
							<dict:lang value="后分隔符" />
						</th> --%>
						<th style="width:130px" >
							<dict:lang value="长度" />
						</th>
						<%-- <th width="10%">
							<dict:lang value="是否包含前分隔符" />
						</th> --%>
						<th style="width:190px">
							<dict:lang value="解析方法名" />
						</th>
						<th>
							<dict:lang value="备注" />
						</th>
					</tr>
						</thead>
						<tbody id="table_tbody">

							<tr>
								<td class="name" align="center"><span class="_show">${paramList[0].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_LH" name="paramList[0].BE_CONTENT" value="${paramList[0].BE_CONTENT}"  disabled="disabled"/> </span></td>
								<td class="desc"> 
								<select name="paramList[0].BE_SOURCE"  class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[0].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[0].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td class="desc"> <span class="_edit"><input
										type="text" name="paramList[0].BE_REFERENCE_BEG"
										value="${paramList[0].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[0].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[0].BE_BEG }"  disabled="disabled"/></span>
								<%-- <input
										type="text" name="paramList[0].BE_BEG"
										value="${paramList[0].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  />
								</span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[0].BE_REFERENCE_END"
										value="${paramList[0].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_LEN"
										value="${paramList[0].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  disabled="disabled"/>
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[0].BE_PRO"
										value="${paramList[0].BE_PRO }"
										onchange="setModify(this);" disabled="disabled" />
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[0].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[0].BE_MEMO }</textarea>
								</span></td>

							</tr>

							<tr>
								<td class="name" align="center"><span class="_show">${paramList[1].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_SL" name="paramList[1].BE_CONTENT" value="${paramList[1].BE_CONTENT}"  disabled="disabled"/>
								</span></td>
								<td class="desc"> 
								<select name="paramList[1].BE_SOURCE"  class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[1].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[1].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[1].BE_REFERENCE_BEG"
										value="${paramList[1].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[1].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[1].BE_BEG }"  disabled="disabled"/></span>
								<%-- <input
										type="text" name="paramList[1].BE_BEG"
										value="${paramList[1].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  />
								</span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[1].BE_REFERENCE_END"
										value="${paramList[1].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_LEN"
										value="${paramList[1].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  disabled="disabled"/>
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[1].BE_PRO"
										value="${paramList[1].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[1].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[1].BE_MEMO }</textarea>
								</span></td>
							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[2].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_PH" name="paramList[2].BE_CONTENT" value="${paramList[2].BE_CONTENT}"  disabled="disabled"/> </span></td>
								<td class="desc"> 
								<select name="paramList[2].BE_SOURCE"  class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[2].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[2].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[2].BE_REFERENCE_BEG"
										value="${paramList[2].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[2].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[2].BE_BEG }"  disabled="disabled"/></span>
								<%-- <input
										type="text" name="paramList[2].BE_BEG"
										value="${paramList[2].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  />
								</span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[2].BE_REFERENCE_END"
										value="${paramList[2].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_LEN"
										value="${paramList[2].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')" disabled="disabled" />
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[2].BE_PRO"
										value="${paramList[2].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[2].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[2].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[3].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_GYS" name="paramList[3].BE_CONTENT" value="${paramList[3].BE_CONTENT}"  disabled="disabled"/> </span></td>
								<td class="desc"> 
								<select name="paramList[3].BE_SOURCE"  class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[3].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[3].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[3].BE_REFERENCE_BEG"
										value="${paramList[3].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[3].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[3].BE_BEG }"  disabled="disabled"/></span>
								<%-- <input
										type="text" name="paramList[3].BE_BEG"
										value="${paramList[3].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  />
								</span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[3].BE_REFERENCE_END"
										value="${paramList[3].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_LEN"
										value="${paramList[3].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')" disabled="disabled" />
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[3].BE_PRO"
										value="${paramList[3].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[3].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[3].BE_MEMO }</textarea>
								</span></td>
							</tr>
							<tr>
								<td class="name" nowrap="nowrap" align="center"><span class="_show">${paramList[4].BE_CONTENT2}
										<input type="hidden" id="TPF_BE_CONTENT_ZSM" name="paramList[4].BE_CONTENT" value="${paramList[4].BE_CONTENT}"  disabled="disabled"/>
								</span></td>
								<td class="desc"> 
								<select name="paramList[4].BE_SOURCE"  class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[4].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[4].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[4].BE_REFERENCE_BEG"
										value="${paramList[4].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[4].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[4].BE_BEG }" disabled="disabled" /></span>
								<%-- <input
										type="text" name="paramList[4].BE_BEG"
										value="${paramList[4].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  />
								</span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[4].BE_REFERENCE_END"
										value="${paramList[4].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_LEN"
										value="${paramList[4].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')" disabled="disabled" />
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[4].BE_PRO"
										value="${paramList[4].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[4].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[4].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[5].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_SCRQ" name="paramList[5].BE_CONTENT" value="${paramList[5].BE_CONTENT}"  disabled="disabled"/> </span></td>
								<td class="desc"> 
								<select name="paramList[5].BE_SOURCE" class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[5].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[5].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[5].BE_REFERENCE_BEG"
										value="${paramList[5].BE_REFERENCE_BEG }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[5].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[5].BE_BEG }" disabled="disabled"/></span>
								<%-- <input
										type="text" name="paramList[5].BE_BEG"
										value="${paramList[5].BE_BEG }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  /></span> --%>
								</td>
								<%-- <td> <span class="_edit"><input
										type="text" name="paramList[5].BE_REFERENCE_END"
										value="${paramList[5].BE_REFERENCE_END }"
										onchange="setModify(this);" />
								</span></td> --%>
								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_LEN"
										value="${paramList[5].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"   disabled="disabled"/>
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[5].BE_PRO"
										value="${paramList[5].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[5].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[5].BE_MEMO }</textarea>
								</span></td>

							</tr>
							<tr>
								<td class="name" align="center"><span class="_show">${paramList[6].BE_CONTENT2}<input
										type="hidden" id="TPF_BE_CONTENT_LSH" name="paramList[6].BE_CONTENT" value="${paramList[6].BE_CONTENT}"  disabled="disabled"/> </span></td>
								<td class="desc"> 
								<select name="paramList[6].BE_SOURCE" class=""   onchange="setModify(this);" disabled="disabled">
                                      <option value=""></option>
                                      <option value="1" <s:if test="${paramList[6].BE_SOURCE=='1' }">selected</s:if> ><dict:lang value="分隔符" /></option>
                                      <option value="2" <s:if test="${paramList[6].BE_SOURCE=='2' }">selected</s:if> ><dict:lang value="定长" /></option>
                                 </select>
								</td>
								<td class="desc"> <span class="_edit">
								<dict:selectDict name="paramList[6].BE_BEG" dictCode="LOCATION" style="width:100%" dictValue="${paramList[6].BE_BEG }"  disabled="disabled"/></span>
								</td>
								<td> <span class="_edit"><input
										type="text" name="paramList[6].BE_LEN"
										value="${paramList[6].BE_LEN }"
										onkeyup="this.value=this.value.replace(/\D/g,'')"  onblur="this.value=this.value.replace(/\D/g,'')"  disabled="disabled" />
								</span></td>

								<td> <span class="_edit"><input
										type="text" name="paramList[6].BE_PRO"
										value="${paramList[6].BE_PRO }"
										onchange="setModify(this);" disabled="disabled"/>
								</span></td>
								<td> <span class="_edit"><textarea
											name="paramList[6].BE_MEMO" rows="1"
											onchange="setModify(this);" disabled="disabled">${paramList[6].BE_MEMO }</textarea>
								</span></td>

							</tr>

						</tbody>
					</table>
				</div>





			</form>

		</div>

	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0"
			height="0"></iframe>
	</div>
	
			
			</div>
		
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>

	<script type="text/javascript">
			var parentWindow;
			$(function(){
				 parentWindow = top.$("#"+window.frameElement.name)[0].contentWindow;
				 $('.dialog-bd',parent.document).css('background-color','#fff');
			});
		
		function init(){
			if($("#leftTable-kz").length>0){
				$("#leftTable-kz").show();
			}
			
			if($("#leftTable").length>0){
				$("#leftTable").show();
			}
			if($("input[type='hidden'][name='formIds']").length>1){
				initEditDataLs();<%-- 初始化编辑关联子表单数据列表 --%>
			}
		}
		var div1Temp='';
	var div2Temp='';
	function saveTemp(){
	 div1Temp=$("#editTable1");
	 div2Temp=$("#editTable2");
	}
	
	function showTable(thisObj){
		var type=$("#paraMapObj_TBR_ANALYTIC_TYPE").val();
		if(type==0){
		document.getElementById("div1").style.display="none";
		//$("#paraMapObj_TBR_SEPARATOR").attr("disabled",false);
		if(div2Temp!=''){
		$("#div2").html(div2Temp);
		 div2Temp="";
		}
		
		document.getElementById("div2").style.display="block";
		}
		else if(type==1){
		document.getElementById("div2").style.display="none";
		if(div1Temp!=''){
		$("#div1").html(div1Temp);
		 div1Temp="";
		}
		document.getElementById("div1").style.display="block";
		}
		else if(type==2){
		   document.getElementById("div1").style.display="none";
		   document.getElementById("div2").style.display="none";
		}
		
	}
	    var type='${dataMap.TBR_ANALYTIC_TYPE}';
		if(type==2){
		  document.getElementById("div1").style.display="none";
		  clearInput("div1");
		  document.getElementById("div2").style.display="block";
		  $("#DB_BE_CONTENT_LH").val("A");
		  $("#DB_BE_CONTENT_SL").val("B");
		  $("#DB_BE_CONTENT_PH").val("C");
		  $("#DB_BE_CONTENT_GYS").val("D");
		  $("#DB_BE_CONTENT_ZSM").val("E");
		  $("#DB_BE_CONTENT_SCRQ").val("G");
		  $("#TPF_BE_CONTENT_LH").val("A");
		  $("#TPF_BE_CONTENT_SL").val("B");
		  $("#TPF_BE_CONTENT_PH").val("C");
		  $("#TPF_BE_CONTENT_GYS").val("D");
		  $("#TPF_BE_CONTENT_ZSM").val("E");
		  $("#TPF_BE_CONTENT_LSH").val("E");
		  $("#TPF_BE_CONTENT_SCRQ").val("G");
		}
		else if(type==1){
		  document.getElementById("div2").style.display="none";
		  clearInput("div2");;
		  document.getElementById("div1").style.display="block";
		}
		
	function clearInput(obj){
		 var div=document.getElementById(obj);
		 for(var i=0;i<div.getElementsByTagName("input").length;i++){
		     div.getElementsByTagName("input")[i].value="";
		 }
		 for(var i=0;i<div.getElementsByTagName("textarea").length;i++){
		     div.getElementsByTagName("textarea")[i].innerText="";
		 }
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
