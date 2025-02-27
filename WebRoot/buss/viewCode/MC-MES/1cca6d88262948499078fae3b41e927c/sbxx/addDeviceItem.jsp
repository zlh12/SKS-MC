<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<!-- 页面加载前 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_10" />
     <jsp:param name="location" value="beforePageLoad" />
 </jsp:include>

<head>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<title><dict:lang value="新增" />
	</title>
	<style>
	   #deptLs_data_auth_text_chosen span{
	       text-align: left!important;
	   }
		.glxb-table td{
			padding:0;
		}
		.chosen-single span{
			text-align:center;
		}
	<%--	#addDeviceItem_1 tr{
			height:30px;
		}--%>
		.bcss{
	height:100%;
	width:100%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    height: 25px;
    line-height: 25px;
    padding-left: 5px;
    font-size: 13px;
		}
		.ccss{
		    padding-left:5px;
		}
		.chosen-container {
    margin-left: 5px!important;
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

	<!-- head里面 -->
	<script type="text/javascript">
		var loaded = 1;
	var tab_len = 4;

	var currentTag;
	var tabs = "";
	function switchTag(tag, content, url) {
		if (currentTag == tag) {
			return false;
		}
		document.getElementById("content2").style.display="";
		document.getElementById("content3").style.display="";
		document.getElementById("content4").style.display="";
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
			$("#" + tag).addClass("current").siblings().removeClass("current");
			if ("content" + i == content) {
				currentTag = tag;
				document.getElementById(content).className = "";
			} else {
				document.getElementById("content" + i).className = "hidecontent";
			}
			document.getElementById("content").className = content;
		}
	}
	
	$(function() {
		$("#tag1").addClass("current");
		/*$("#allSelect1").live("click",function(){
	    			if($("#allSelect1").attr("checked") == "checked"){
	        			$("input[name='isSelect1']").attr("checked","checked");
	    			}else{
	        			$("input[name='isSelect1']").removeAttr("checked","checked");
	    			}
				});*/
	});
	</script>
	<script type="text/javascript">
	var trCount1 = 0;
	var trCount2 = 0;
	var trCount3 = 0;
	var trCount4 = 0;
	function addRow(tableId,tempType,selectIndex){
	    if($("#paraMap1_CDI_DEVICE_TYPE").val()==""){
	        utilsFp.confirmIcon(3,"","","", "<dict:lang value="请选择设备类型" />",0,"260","");
	        return;
	    }
	    var rowNum;
		if(tempType=='1'){ 
			trCount1++;
			rowNum=$("#"+tableId+" tr").length;
			rowNum++;
			var mySelect = "<select id='sel1_"+trCount1+"' name='paraMap"+trCount1+"@1#CDI_ITEM_CLASS' onchange='changeVal(1,"+trCount1+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
						+"<option value='1'>固定值</option>"
						+"<option value='2'>状态值</option>";	
			$("#"+tableId+" tbody:last").append("<tr id='tr1_"+trCount1+"' ></tr>");
			$("#"+tableId+" tr:last").append("<td style='width:30px;text-align:center;'>"+rowNum+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr1_"+trCount1+"' name='isSelect"+selectIndex+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss'  id='deviceItemCode1_"+trCount1+"' name='deviceItemCode1_"+trCount1+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss'  id='deviceItemName1_"+trCount1+"' name='deviceItemName1_"+trCount1+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue1_"+trCount1+"'  name='deviceitemMaxvalue1_"+trCount1+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue1_"+trCount1+"' name='deviceitemMinvalue1_"+trCount1+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit1_"+trCount1+"' name='deviceItemUnit1_"+trCount1+"'/></td>");
			
		}else if(tempType=='2'){ 
			trCount2++;
			rowNum=$("#"+tableId+" tr").length;
			rowNum++;
			var mySelect = "<select id='sel2_"+trCount2+"' name='paraMap"+trCount2+"@2#CDI_ITEM_CLASS' onchange='changeVal(2,"+trCount2+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
						+"<option value='1'>固定值</option>"
						+"<option value='2'>状态值</option>";	
			$("#"+tableId+" tbody:last").append("<tr id='tr2_"+trCount2+"' ></tr>");
			$("#"+tableId+" tr:last").append("<td style='width:30px;text-align:center;'>"+rowNum+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr2_"+trCount2+"' name='isSelect"+selectIndex+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode2_"+trCount2+"' name='deviceItemCode2_"+trCount2+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName2_"+trCount2+"' name='deviceItemName2_"+trCount2+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue2_"+trCount2+"' name='deviceitemMaxvalue2_"+trCount2+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue2_"+trCount2+"' name='deviceitemMinvalue2_"+trCount2+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit2_"+trCount2+"' name='deviceItemUnit2_"+trCount2+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCycle2_"+trCount2+"' name='deviceItemCycle2_"+trCount2+"'/></td>");
		}else if(tempType=='3'){
			trCount3++;
			rowNum=$("#"+tableId+" tr").length;
			rowNum++;
			var mySelect = "<select id='sel3_"+trCount3+"' name='paraMap"+trCount3+"@3#CDI_ITEM_CLASS' onchange='changeVal(3,"+trCount3+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
						+"<option value='1'>固定值</option>"
						+"<option value='2'>状态值</option>";	
			$("#"+tableId+" tbody:last").append("<tr id='tr3_"+trCount3+"' ></tr>");
			$("#"+tableId+" tr:last").append("<td style='width:30px;text-align:center;'>"+rowNum+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr3_"+trCount3+"' name='isSelect"+selectIndex+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode3_"+trCount3+"' name='deviceItemCode3_"+trCount3+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName3_"+trCount3+"' name='deviceItemName3_"+trCount3+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue3_"+trCount3+"' name='deviceitemMaxvalue3_"+trCount3+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue3_"+trCount3+"' name='deviceitemMinvalue3_"+trCount3+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit3_"+trCount3+"' name='deviceItemUnit3_"+trCount3+"'/></td>");
			
		}else if(tempType=='4'){
			trCount4++;
			rowNum=$("#"+tableId+" tr").length;
			rowNum++;
			var mySelect = "<select id='sel4_"+trCount4+"' name='paraMap"+trCount4+"@4#CDI_ITEM_CLASS' onchange='changeVal(4,"+trCount4+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
						+"<option value='1'>固定值</option>"
						+"<option value='2'>状态值</option>";	
			$("#"+tableId+" tbody:last").append("<tr id='tr4_"+trCount4+"' ></tr>");
			$("#"+tableId+" tr:last").append("<td style='width:30px;text-align:center;'>"+rowNum+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr4_"+trCount4+"' name='isSelect"+selectIndex+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode4_"+trCount4+"' name='deviceItemCode4_"+trCount4+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName4_"+trCount4+"' name='deviceItemName4_"+trCount4+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue4_"+trCount4+"' name='deviceitemMaxvalue4_"+trCount4+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue4_"+trCount4+"' name='deviceitemMinvalue4_"+trCount4+"' style='text-align: right;'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit4_"+trCount4+"' name='deviceItemUnit4_"+trCount4+"'/></td>");
			$("#"+tableId+" tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCycle4_"+trCount4+"' name='deviceItemCycle4_"+trCount4+"'/></td>");
		
		}
		setChosen();//设置下拉框样式
			//console.log(ttt[0]);		
		$(".glxb-table .dcss").css("width","100%");
		$('#saveInfo').attr("onclick","addVal('"+trCount1+"','"+trCount2+"','"+trCount3+"','"+trCount4+"')"); 
	}
	
	$(function() {
        	$('#saveInfo').attr("onclick","addVal('"+trCount1+"','"+trCount2+"','"+trCount3+"','"+trCount4+"')");  
  	});
  		
	function changeVal(typeId,indexId){     //根据值域控制上限下限
	var tempMax = "#deviceitemMaxvalue"+typeId+"_"+indexId;
	var tempMin = "#deviceitemMinvalue"+typeId+"_"+indexId;
		if($("#sel"+typeId+"_"+indexId).val()=='2'){
			$(tempMax).attr("disabled","disabled");
			$(tempMin).attr("disabled","disabled");
			$(tempMax).val("");
			$(tempMin).val("");
		}
		if($("#sel"+typeId+"_"+indexId).val()=='1'){
			$(tempMax).removeAttr("disabled");
			$(tempMin).attr("disabled","disabled");
			$(tempMin).val("");
		}
		if($("#sel"+typeId+"_"+indexId).val()=='0'){
			$(tempMax).removeAttr("disabled");
			$(tempMin).removeAttr("disabled");
		}
	}
	
	function delRow(tableId,selectIndex){
		var falg = 0; 
		
		$("input[name='isSelect"+selectIndex+"']:checkbox").each(function () { 
			if ($(this).attr("checked")) { 
			falg =1; 
			} 
			});
			if (falg > 0) {
		$("input[name='isSelect"+selectIndex+"']:checked").each(function() { // 遍历选中的checkbox
	            var n = $(this).parents("#"+tableId+" tr").index();  // 获取checkbox所在行的顺序
	            if(n>=0){
		            var temp=$(this).val();
		            var trId=document.getElementById(temp);
		            var table1=document.getElementById(tableId);
		            table1.removeChild(trId);
		            reSort(tableId);
	            }
	             //$("#loadPoint").find("tr:eq("+temp+")").remove();
        	 });
        	 
        	 }else 
        	 utilsFp.confirmIcon(3,"","","", "<dict:lang value="请至少选择一条记录" />",0,"260","");
        	 
	}
	
	function reSort(objid){
         
         var i = 1;
         $("#"+objid+" tr").each(function(){
         
         $(this).find("td").eq(0).text(i);
         
         i++;
        });
        }
	
	function checkVal1(trCount1){
		var tempVal;
		var tempId;
		var tempNullFlag1;
		var tempNullFlag2;
		var tempNullFlag3;
		var tempFlag1;
		var tempFlag2;
		for(var i=1;i<=trCount1;i++){
			tempVal = $("#deviceItemCode1_"+i).val();
			if(tempVal==undefined) continue;
			if(tempVal==""){
				tempId = document.getElementById("deviceItemCode1_"+i);
				tempNullFlag1= checkIsNull(tempId);
				break;
			}
			tempVal = $("#deviceItemName1_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("deviceItemName1_"+i);
				tempNullFlag2= checkIsNull(tempId);
				break;
			}
			tempVal = $("#sel1_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("sel1_"+i);
				tempNullFlag3= checkIsNull(tempId);
				break;
			}else if(tempVal=="0"){
			    if($("#deviceitemMaxvalue1_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue1_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue1_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue1_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
	
	            if($("#deviceitemMinvalue1_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMinvalue1_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMinvalue1_"+i);
				    tempFlag1 = checkNum($("#deviceitemMinvalue1_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }			

                if($("#deviceitemMaxvalue1_"+i).val()!=""&&$("#deviceitemMinvalue1_"+i).val()!=""){
			        tempId = document.getElementById("deviceitemMaxvalue1_"+i);
				    tempFlag1 = checkNum1($("#deviceitemMaxvalue1_"+i).val(),$("#deviceitemMinvalue1_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}else if(tempVal=="1"){
			    if($("#deviceitemMaxvalue1_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue1_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue1_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue1_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}
			
		}
		if(tempNullFlag1=="0"||tempNullFlag2=="0"||tempNullFlag3=="0"||tempFlag1=="0"||tempFlag2=="0"){
		     switchTag('tag1','content1','');
		     return "0";
		}
	}
	function checkVal2(trCount2){
		var tempVal;
		var tempId;
		var tempNullFlag1;
		var tempNullFlag2;
		var tempNullFlag3;
		var tempFlag1;
		var tempFlag2;
		var tempFlag3;
		for(var i=1;i<=trCount2;i++){
			tempVal = $("#deviceItemCode2_"+i).val();
			if(tempVal==undefined) continue;
			if(tempVal==""){
				tempId = document.getElementById("deviceItemCode2_"+i);
				tempNullFlag1= checkIsNull(tempId);
				break;
			}
			tempVal = $("#deviceItemName2_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("deviceItemName2_"+i);
				tempNullFlag2= checkIsNull(tempId);
				break;
			}
			tempVal = $("#sel2_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("sel2_"+i);
				tempNullFlag3= checkIsNull(tempId);
				break;
			}else if(tempVal=="0"){
			    if($("#deviceitemMaxvalue2_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue2_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue2_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue2_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
	
	            if($("#deviceitemMinvalue2_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMinvalue2_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMinvalue2_"+i);
				    tempFlag1 = checkNum($("#deviceitemMinvalue2_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }			

                if($("#deviceitemMaxvalue2_"+i).val()!=""&&$("#deviceitemMinvalue2_"+i).val()!=""){
			        tempId = document.getElementById("deviceitemMaxvalue2_"+i);
				    tempFlag1 = checkNum1($("#deviceitemMaxvalue2_"+i).val(),$("#deviceitemMinvalue2_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}else if(tempVal=="1"){
			    if($("#deviceitemMaxvalue2_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue2_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue2_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue2_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}
			
			tempVal = $("#deviceItemCycle2_"+i).val();
			if(tempVal!=""){
				tempId = document.getElementById("deviceItemCycle2_"+i);
				tempFlag3 = checkNum(tempVal,tempId);
				if(tempFlag3=="0") break;
			}
		}
		if(tempNullFlag1=="0"||tempNullFlag2=="0"||tempNullFlag3=="0"||tempFlag1=="0"||tempFlag2=="0"||tempFlag3=="0"){
		     switchTag('tag2','content2','');
		     return "0";
		}
	}
	function checkVal3(trCount3){
		var tempVal;
		var tempId;
		var tempNullFlag1;
		var tempNullFlag2;
		var tempNullFlag3;
		var tempFlag1;
		var tempFlag2;
		for(var i=1;i<=trCount3;i++){
			tempVal = $("#deviceItemCode3_"+i).val();
			if(tempVal==undefined) continue;
			if(tempVal==""){
				tempId = document.getElementById("deviceItemCode3_"+i);
				tempNullFlag1= checkIsNull(tempId);
				break;
			}
			tempVal = $("#deviceItemName3_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("deviceItemName3_"+i);
				tempNullFlag2= checkIsNull(tempId);
				break;
			}
			tempVal = $("#sel3_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("sel3_"+i);
				tempNullFlag3= checkIsNull(tempId);
				break;
			}else if(tempVal=="0"){
			    if($("#deviceitemMaxvalue3_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue3_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue3_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue3_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
	
	            if($("#deviceitemMinvalue3_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMinvalue3_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMinvalue3_"+i);
				    tempFlag1 = checkNum($("#deviceitemMinvalue3_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }			

                if($("#deviceitemMaxvalue3_"+i).val()!=""&&$("#deviceitemMinvalue3_"+i).val()!=""){
			        tempId = document.getElementById("deviceitemMaxvalue3_"+i);
				    tempFlag1 = checkNum1($("#deviceitemMaxvalue1_"+i).val(),$("#deviceitemMinvalue3_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}else if(tempVal=="1"){
			    if($("#deviceitemMaxvalue3_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue3_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue3_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue3_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}
		}
		if(tempNullFlag1=="0"||tempNullFlag2=="0"||tempNullFlag3=="0"||tempFlag1=="0"||tempFlag2=="0"){
		     switchTag('tag3','content3','');
		     return "0";
		}
	}
	function checkVal4(trCount4){
		var tempVal;
		var tempId;
		var tempNullFlag1;
		var tempNullFlag2;
		var tempNullFlag3;
		var tempFlag1;
		var tempFlag2;
		var tempFlag3;
		for(var i=1;i<=trCount4;i++){
			tempVal = $("#deviceItemCode4_"+i).val();
			if(tempVal==undefined) continue;
			if(tempVal==""){
				tempId = document.getElementById("deviceItemCode4_"+i);
				tempNullFlag1= checkIsNull(tempId);
				break;
			}
			tempVal = $("#deviceItemName4_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("deviceItemName4_"+i);
				tempNullFlag2= checkIsNull(tempId);
				break;
			}
			tempVal = $("#sel4_"+i).val();
			if(tempVal==""){
				tempId = document.getElementById("sel4_"+i);
				tempNullFlag3= checkIsNull(tempId);
				break;
			}else if(tempVal=="0"){
			    if($("#deviceitemMaxvalue4_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue4_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue4_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue4_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
	
	            if($("#deviceitemMinvalue4_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMinvalue4_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMinvalue4_"+i);
				    tempFlag1 = checkNum($("#deviceitemMinvalue4_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }			

                if($("#deviceitemMaxvalue4_"+i).val()!=""&&$("#deviceitemMinvalue4_"+i).val()!=""){
			        tempId = document.getElementById("deviceitemMaxvalue4_"+i);
				    tempFlag1 = checkNum1($("#deviceitemMaxvalue4_"+i).val(),$("#deviceitemMinvalue4_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}else if(tempVal=="1"){
			    if($("#deviceitemMaxvalue4_"+i).val()==""){
			        tempId = document.getElementById("deviceitemMaxvalue4_"+i);
				    tempNullFlag3= checkIsNull(tempId);
				    break;
			    }else{
			        tempId = document.getElementById("deviceitemMaxvalue4_"+i);
				    tempFlag1 = checkNum($("#deviceitemMaxvalue4_"+i).val(),tempId);
				    if(tempFlag1=="0") break;
			    }
			}
			
			tempVal = $("#deviceItemCycle4_"+i).val();
			if(tempVal!=""){
				tempId = document.getElementById("deviceItemCycle4_"+i);
				tempFlag3 = checkNum(tempVal,tempId);
				if(tempFlag3=="0") break;
			}
		}
		if(tempNullFlag1=="0"||tempNullFlag2=="0"||tempNullFlag3=="0"||tempFlag1=="0"||tempFlag2=="0"||tempFlag3=="0"){
		     switchTag('tag4','content4','');
		     return "0";
		}
	}
	/*
	function checkNum(tempVal,tempId){
		if(!(/^(\+|-)?\d+$/.test( tempVal )) || tempVal < 0){
			    _alertValMsg(tempId,"<dict:lang value="该项必须为正整数" />");
			    return "0";  
		}else 
		return "1"; 
	}
	*/
	
	function checkNum(tempVal,tempId){
		if( ! /^([\d]+|([\d]+[.]?|[\d]+[.]?[\d]+))$/.test( tempVal ) || tempVal < 0){
			    _alertValMsg(tempId,"<dict:lang value="该项只能为正数" />");
			    return "0";  
		}else 
		return "1"; 
	}
	
	function checkIsNull(tempId){
		_alertValMsg(tempId,"<dict:lang value="该项不能为空" />");
		return "0";  
	}
	
	function checkNum1(tempVal1,tempVal2,tempId){
	    tempVal1=parseInt(tempVal1);
	    tempVal2=parseInt(tempVal2);
		if(tempVal1 < tempVal2){ 
			    _alertValMsg(tempId,"<dict:lang value="上限值不能小于下限值" />");
			    return "0";  
		}else 
		return "1"; 
	}
	</script>
	 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
       <jsp:param name="modelName" value="VIEW_TYPE_10" />
       <jsp:param name="location" value="inHead" />
    </jsp:include> 

</head>
<body scroll="no">
				
	<div class="edit">
	<form id="addForm" name="addForm" action="${path}buss/bussModel_addAjaxComm.ms?<s:property value='%{@com.more.fw.core.common.method.Constants@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post" <bu:formet exeid="%{exeid}" />
										target="submitFrame">
            <div class="hd">
                <!-- <h2 class="tit"><i class="ico-hd"></i>物料信息常规</h2> -->
                <!--<div style="margin-left:10px;"><input type="checkbox" checked id="isCloseWin" name="isCloseWin"  value="0"/><dict:lang value="保存并关闭窗口" /></div>-->
               <div style="margin-left:10px;">
                           
                           	<s:if test="${isDataAuth == '1'}">
                		<span class="dot">*</span><dict:lang value="组织机构" />
                		<s:if test="${fn:length(deptLs)==1}">
                   			<s:select list="deptLs" listKey="id" listValue="name"  name="_DATA_AUTH"
					id="deptLs_data_auth" cssStyle="width: 200px;" cssClass="_VAL_NULL dept_select"/> 
                   		</s:if>
                   		<s:else>
                		<s:select list="deptLs" headerKey="" headerValue='--%{getText("请选择")}--'
					listKey="id" listValue="name"  name="_DATA_AUTH"
					id="deptLs_data_auth" cssStyle="width: 200px;" cssClass="_VAL_NULL dept_select"/> 
		   		</s:else>
                		</s:if>	
                	</div>
			    <div class="optn">
			        <button type="button" onclick="addVal();"  id="saveInfo"><i class="ico ico-save"></i><dict:lang value="保存" /></button>
			        <button type="button" onclick="closeWindow();"><i class="ico ico-cancel"></i><dict:lang value="取消" /></button>
			    </div>

			</div>
			
						<div class="bd">
						<!--<form id="addForm" name="addForm" action="${path}buss/bussModel_addAjaxComm.ms?<s:property value='%{@com.more.fw.core.common.method.Constants@FUNC_CODE}' />=<s:property value='%{FUNC_CODE}' />" method="post" <bu:formet exeid="%{exeid}" />
										target="submitFrame">-->
						<input type="hidden" name="deviceItemIds" id="deviceItemIds"/>  <!-- 项目信息id -->
										<input type="hidden" name="exeid" value="${exeid}">
										<input type="hidden" name="definedMsg" value="${definedMsg}">
										<input type="hidden" name="formId" value="${formId}">
										<input type="hidden" name="iframeId" value="${iframeId}">
										<!--<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" value="%{FUNC_CODE_2}" />-->
										<s:token />
		<bu:set name="paraMapObj" value="${dataId}" formId="be2f4ab4973e496ab3fde3c3874c38a1" type="add" />
	<table class="basic-table" >
	<input type="hidden" name="formIds" value="be2f4ab4973e496ab3fde3c3874c38a1" />
	<input type="hidden" name="formId" id="formId2" value='831b2dbf0dfb494695b7ce66538a1234'/>
	<input type="hidden" name="formId" id="formId3" value='831b2dbf0dfb494695b7ce66538a5678'/>
	<input type="hidden" name="formId" id="formId4" value='831b2dbf0dfb494695b7ce66538a0000'/>
	<input type="hidden" name="formId" id="formId5" value='831b2dbf0dfb494695b7ce66538a1111'/>	
	<input type="hidden" name="be2f4ab4973e496ab3fde3c3874c38a1" value="paraMap1@" />
	<input type="hidden" name="paraMap1@__LEVEL__" value="1" />
	<input type="hidden" name="paraMap1@__DATA_COUNT__" value="1" />
		<s:set name="_$viewId" value="'0642981d918e448883a2ca2f8a0ec956'" />
		<s:set name="_$formId_1" value="'be2f4ab4973e496ab3fde3c3874c38a1'" />
		<s:set name="_$type" value="'add'" />
		<tr>
			<td class="name-four" /><bu:uitn colNo="CDI_DEVICE_TYPE" formId="be2f4ab4973e496ab3fde3c3874c38a1" /></td>
			<bu:td cssClass="dec-self" colNo="CDI_DEVICE_TYPE" formId="be2f4ab4973e496ab3fde3c3874c38a1" ><bu:ui colNo="CDI_DEVICE_TYPE" onchange="setVal();" formId="be2f4ab4973e496ab3fde3c3874c38a1" value="%{CDI_DEVICE_TYPE}" formIndex="1" /></bu:td>
			<td class="name-four" />&nbsp;</td>
			<bu:td cssClass="dec-self" colNo="CDI_DEVICE_TYPE" formId="be2f4ab4973e496ab3fde3c3874c38a1" >&nbsp;</bu:td>
			
		</tr>
	</table>
			<bu:jsVal formId="be2f4ab4973e496ab3fde3c3874c38a1" formIndex="1" />
			<div class="js-tab">
					<DIV id="container" style="padding:0 3px;box-sizing: border-box;">
						<DIV >
							<UL class="tab-list tab">
								<LI id="tag1"><A class="selectli1"
									onclick="switchTag('tag1','content1','');this.blur();"
									href="javascript:void(0);"> <SPAN class="selectspan1"><dict:lang value="设备参数" /></SPAN>
									<input type="hidden" name="type1" value="设备参数"/>
								</A>
								</LI>
								<LI id="tag2"><A class=""
									onclick="switchTag('tag2','content2','');this.blur();"
									href="javascript:void(0);"> <SPAN><dict:lang value="保养项目" /></SPAN> </A>
									<input type="hidden" name="type2" value="保养项目"/>
								</LI>
								<LI id="tag3"><A class=""
									onclick="switchTag('tag3','content3','');this.blur();"
									href="javascript:void(0);"> <SPAN><dict:lang value="点检项目" /></SPAN> </A>
									<input type="hidden" name="type3" value="点检项目"/>
								</LI>
								<LI id="tag4"><A class=""
									onclick="switchTag('tag4','content4','');this.blur();"
									href="javascript:void(0);"> <SPAN><dict:lang value="校验项目" /></SPAN> </A>
									<input type="hidden" name="type4" value="校验项目"/>
								</LI>

							</UL>
						</DIV>
			<DIV class="content1" id="content">
			<DIV id="content1" style="margin-top:4px;" data-tab="tag1">
			<div class="extend-btn" style="float: right;margin-top:-30px;">
						<button type="button"    onclick="addRow('datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234','1','1');"     style="padding:0;" title="<dict:lang value="添加" />">   <i class="ico ico-kl-new-add ico-small"></i>
						</button>
						<button type="button" onclick="delRow('addDeviceItem_1','1');"     style="padding:0"   title="<dict:lang value="移除" /> " >   <i class="ico ico-sc-new-add ico-small"></i> 
					</button> 
			</div>
			<div class="mod" >
					
			<div class="mod-bd" >
				<div class="panel datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"   >
						<div class="datagrid-header" >
							<div class="datagrid-header-inner head1" id="" >
								<table  class="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz  " id="datagrid-htable831b2dbf0dfb494695b7ce66538a1234">
									<tbody>
									<tr class="datagrid-header-row thcolor">
									    <td class="datagrid-cell" style="width:30px; text-align:center;"><span></span></td>
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"><input type="checkbox" id="allSelect1" name="isSelect1" class="but-select" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目代码" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目名称" /></td >
										<td class="datagrid-cell" style="width:250px;" ><dict:lang value="值域" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="上限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="下限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="单位" /></td >
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll1"   style="height:380px;">
							<table class="datagrid-btable fixedTable dblClick "  id="datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234" >
								<tbody id="addDeviceItem_1" >
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		 </div>	
			</DIV>
			<DIV id="content2" style="display:none" data-tab="tag2">
			<div class="extend-btn" style="float: right;margin-top:-30px;">
						<button type="button"    onclick="addRow('datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678','2','2');"     style="padding:0;" title="<dict:lang value="添加" />">   <i class="ico ico-kl-new-add ico-small"></i>
						</button>
						<button type="button" onclick="delRow('addDeviceItem_2','2');"     style="padding:0"   title="<dict:lang value="移除" /> " >   <i class="ico ico-sc-new-add ico-small"></i> 
						</button> 
					</div>
			<div class="mod" >
					
			<div class="mod-bd" >
				<div class="panel datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"   >
						<div class="datagrid-header" >
							<div class="datagrid-header-inner head2" id="" >
								<table  class="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz  " id="datagrid-htable831b2dbf0dfb494695b7ce66538a5678">
									<tbody>
									<tr class="datagrid-header-row thcolor">
										<td class="datagrid-cell" style="width:30px; text-align:center;"><span></span></td>
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"><input type="checkbox" id="allSelect2" name="isSelect2" class="but-select"/></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目代码" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目名称" /></td >
										<td class="datagrid-cell" style="width:250px;" ><dict:lang value="值域" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="上限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="下限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="单位" /></td >
										<td class="datagrid-cell" style="width:135px;"><dict:lang value="周期（天）" /></td >
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll2"   style="height:380px;">
							<table class="datagrid-btable fixedTable dblClick "  id="datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678" >
								<tbody id="addDeviceItem_2" >
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		 </div>	
		 				</DIV>
		 				<DIV id="content3" style="display:none" data-tab="tag3">	

		 				<div class="extend-btn" style="float: right;margin-top:-30px;">
    						<button type="button"    onclick="addRow('datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000','3','3');"     style="padding:0;" title="<dict:lang value="添加" />">   <i class="ico ico-kl-new-add ico-small"></i>
    						</button>
    						<button type="button" onclick="delRow('addDeviceItem_3','3');"     style="padding:0"   title="<dict:lang value="移除" /> " >   <i class="ico ico-sc-new-add ico-small"></i> 
    						</button> 
    					</div>
						<div class="mod" >
		
					

			<div class="mod-bd" >
				<div class="panel datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"   >
						<div class="datagrid-header">
							<div class="datagrid-header-inner head3" id="" >
								<table  class="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz  " id="datagrid-htable831b2dbf0dfb494695b7ce66538a0000">
									<tbody>
									<tr class="datagrid-header-row thcolor">
										<td class="datagrid-cell" style="width:30px; text-align:center;"><span></span></td>
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"><input type="checkbox" id="allSelect3" name="isSelect3" class="but-select"/></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目代码" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目名称" /></td >
										<td class="datagrid-cell" style="width:250px;" ><dict:lang value="值域" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="上限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="下限值" /></td >
										<td class="datagrid-cell" style="width:135px;"><dict:lang value="单位" /></td >
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll3"   style="height:380px;">
							<table class="datagrid-btable fixedTable dblClick "  id="datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000" >
								<tbody id="addDeviceItem_3" >
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		 </div>	
						</DIV>
						<DIV id="content4" style="display:none" data-tab="tag4">
						<div class="extend-btn" style="float: right;margin-top:	-30px;">
    						<button type="button"    onclick="addRow('datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111','4','4');"     style="padding:0;" title="<dict:lang value="添加" />">   <i class="ico ico-kl-new-add ico-small"></i>
    						</button>
    						<button type="button" onclick="delRow('addDeviceItem_4','4');"     style="padding:0"   title="<dict:lang value="移除" /> " >   <i class="ico ico-sc-new-add ico-small"></i> 
    						</button> 
    					</div>
						<div class="mod" >
		
			<div class="mod-bd" >
				<div class="panel datagrid datagrid-div1">
					<div class="datagrid-div2 datagrid-div6 datagrid-view"   >
						<div class="datagrid-header">
							<div class="datagrid-header-inner head4" id="" >
								<table  class="datagrid-htable fixedTable datagrid-div6 datagrid-htable-kz  " id="datagrid-htable831b2dbf0dfb494695b7ce66538a1111">
									<tbody>
									<tr class="datagrid-header-row thcolor">
										<td class="datagrid-cell" style="width:30px; text-align:center;"><span></span></td>
										<td class="datagrid-cell" align="center" style="width:30px;text-align: center"><input type="checkbox" id="allSelect4" name="isSelect4" class="but-select"/></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目代码" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="项目名称" /></td >
										<td class="datagrid-cell" style="width:250px;" ><dict:lang value="值域" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="上限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="下限值" /></td >
										<td class="datagrid-cell" style="width:135px;" ><dict:lang value="单位" /></td >
										<td class="datagrid-cell" style="width:135px;"><dict:lang value="周期（天）" /></td >
									</tr>
									</tbody>		
								</table>
							</div>
						</div>
						<div class="datagrid-body datagrid-div3 scroll4"   style="height:380px;">
							<table class="datagrid-btable fixedTable dblClick "  id="datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111" >
								<tbody id="addDeviceItem_4" >
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		 </div>	
						</DIV>

						</DIV>
									</form>
						</DIV>
						</DIV>
			</div>
		
	</div>

	<div style="display: none;">
		<iframe id="submitFrame" name="submitFrame" src="" width="0" height="0"></iframe>
	</div>
	<jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
      <jsp:param name="modelName" value="VIEW_TYPE_10" />
       <jsp:param name="location" value="jsLoading" />
    </jsp:include>
<bu:script viewId="0642981d918e448883a2ca2f8a0ec956" />
<script type="text/javascript">
	$(".but-select").click(function(){
		var tempName=$(this).attr("name");
		var tempCheck=$(this).attr("checked");
		tempChe(tempCheck,tempName);
		/*if($(this).attr("checked") == "checked"){
	        	$("input[name='isSelect1']").attr("checked","checked");
	    }else{
	        			$("input[name='isSelect1']").removeAttr("checked","checked");
	    }*/
	});
	function tempChe(tempCheck,tempName){
		$("input[type='checkbox']").each(function(){
    		if($(this).attr("name")==tempName){
    			if(tempCheck == "checked"){
    				$("input[name='"+tempName+"']").attr("checked","checked");
    			}else{
    				$("input[name='"+tempName+"']").removeAttr("checked","checked");
    			}
    		}
  		});
	}
	
	function getValue(url){
	trCount1=0;
	trCount2=0;
	trCount3=0;
	trCount4=0;
	var deviceType = $("#paraMap1_CDI_DEVICE_TYPE").val();
	$("#addDeviceItem_1").html("");
	$("#addDeviceItem_2").html("");
	$("#addDeviceItem_3").html("");
	$("#addDeviceItem_4").html("");
	var itemIds = "";
					$.ajax({
						url:url,
						type:"post",
						data:{"deviceType":deviceType},
						success:function(data){
							var itemList=data.ajaxList;
							if(itemList!=""){
								for(var i=0;i<itemList.length;i++){
									if(i!=itemList.length-1){
										itemIds = itemIds+""+itemList[i].ID+""+",";
									}else{
										itemIds = itemIds+""+itemList[i].ID+"";
									}
									if(itemList[i].CDI_ITEM_CODE=='null'||itemList[i].CDI_ITEM_CODE==null){
										itemList[i].CDI_ITEM_CODE="";
									}
									if(itemList[i].CDI_ITEM_NAME=='null'||itemList[i].CDI_ITEM_NAME==null){
										itemList[i].CDI_ITEM_NAME="";
									}
									if(itemList[i].CDI_ITEM_UNIT=='null'||itemList[i].CDI_ITEM_UNIT==null){
									
										itemList[i].CDI_ITEM_UNIT="";
									}
									
									if(itemList[i].CDI_ITEM_MAXVALUE==null||itemList[i].CDI_ITEM_MAXVALUE=='undefined'){
										itemList[i].CDI_ITEM_MAXVALUE=0;
									}
									if(itemList[i].CDI_ITEM_MINVALUE==null||itemList[i].CDI_ITEM_MINVALUE=='undefined'){
										itemList[i].CDI_ITEM_MINVALUE=0;
									}
									if(itemList[i].CDI_CYCLE==null||itemList[i].CDI_CYCLE=='undefined'){
										itemList[i].CDI_CYCLE=0;
									}
									
									if(itemList[i].CDI_ITEM_TYPE=="设备参数"){
											
										trCount1++;
										var mySelect = "<select id='sel1_"+trCount1+"' name='paraMap"+trCount1+"@1#CDI_ITEM_CLASS' onchange='changeVal(1,"+trCount1+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
													+"<option value='1'>固定值</option>"
													+"<option value='2'>状态值</option>";	
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tbody:last").append("<tr id='tr1_"+trCount1+"' ></tr>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td style='width:30px;text-align:center;'>"+trCount1+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr1_"+trCount1+"' name='isSelect1'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode1_"+trCount1+"' name='deviceItemCode1_"+trCount1+"' value='"+itemList[i].CDI_ITEM_CODE+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName1_"+trCount1+"' name='deviceItemName1_"+trCount1+"' value='"+itemList[i].CDI_ITEM_NAME+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue1_"+trCount1+"'   name='deviceitemMaxvalue1_"+trCount1+"' value='"+itemList[i].CDI_ITEM_MAXVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue1_"+trCount1+"' name='deviceitemMinvalue1_"+trCount1+"' value='"+itemList[i].CDI_ITEM_MINVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1234 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width：135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit1_"+trCount1+"' name='deviceItemUnit1_"+trCount1+"' value='"+itemList[i].CDI_ITEM_UNIT+"'/></td>");
										$("#sel1_"+trCount1).val(itemList[i].CDI_ITEM_CLASS);
										changeVal(1,trCount1);
                                      $('.scroll1').mCustomScrollbar("destroy");
                                      setPopScroll('.scroll1','.head1');
                                      $('.head1')[0].scrollLeft = 0;
									}
									if(itemList[i].CDI_ITEM_TYPE=="保养项目"){
									
										trCount2++;
										var mySelect = "<select id='sel2_"+trCount2+"' name='paraMap"+trCount2+"@2#CDI_ITEM_CLASS' onchange='changeVal(2,"+trCount2+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
													+"<option value='1'>固定值</option>"
													+"<option value='2'>状态值</option>";	
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tbody:last").append("<tr id='tr2_"+trCount2+"' ></tr>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td style='width:30px;text-align:center;'>"+trCount2+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr2_"+trCount2+"' name='isSelect2'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode2_"+trCount2+"' name='deviceItemCode2_"+trCount2+"' value='"+itemList[i].CDI_ITEM_CODE+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName2_"+trCount2+"' name='deviceItemName2_"+trCount2+"' value='"+itemList[i].CDI_ITEM_NAME+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;padding:0;'>"+mySelect+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue2_"+trCount2+"' name='deviceitemMaxvalue2_"+trCount2+"' value='"+itemList[i].CDI_ITEM_MAXVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue2_"+trCount2+"' name='deviceitemMinvalue2_"+trCount2+"' value='"+itemList[i].CDI_ITEM_MINVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit2_"+trCount2+"' name='deviceItemUnit2_"+trCount2+"' value='"+itemList[i].CDI_ITEM_UNIT+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a5678 tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCycle2_"+trCount2+"' name='deviceItemCycle2_"+trCount2+"' value='"+itemList[i].CDI_CYCLE+"'/></td>");
										$("#sel2_"+trCount2).val(itemList[i].CDI_ITEM_CLASS);
										changeVal(2,trCount2);
									}
									if(itemList[i].CDI_ITEM_TYPE=="点检项目"){
										trCount3++;
										var mySelect = "<select id='sel3_"+trCount3+"' name='paraMap"+trCount3+"@3#CDI_ITEM_CLASS' onchange='changeVal(3,"+trCount3+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
													+"<option value='1'>固定值</option>"
													+"<option value='2'>状态值</option>";	
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tbody:last").append("<tr id='tr3_"+trCount3+"' ></tr>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td style='width:30px;text-align:center;'>"+trCount3+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr3_"+trCount3+"' name='isSelect3'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode3_"+trCount3+"' name='deviceItemCode3_"+trCount3+"' value='"+itemList[i].CDI_ITEM_CODE+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName3_"+trCount3+"' name='deviceItemName3_"+trCount3+"' value='"+itemList[i].CDI_ITEM_NAME+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue3_"+trCount3+"' name='deviceitemMaxvalue3_"+trCount3+"' value='"+itemList[i].CDI_ITEM_MAXVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue3_"+trCount3+"' name='deviceitemMinvalue3_"+trCount3+"' value='"+itemList[i].CDI_ITEM_MINVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a0000 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit3_"+trCount3+"' name='deviceItemUnit3_"+trCount3+"' value='"+itemList[i].CDI_ITEM_UNIT+"'/></td>");
										$("#sel3_"+trCount3).val(itemList[i].CDI_ITEM_CLASS);
										changeVal(3,trCount3);
									}
									if(itemList[i].CDI_ITEM_TYPE=="校验项目"){
									
										trCount4++;
										var mySelect = "<select id='sel4_"+trCount4+"' name='paraMap"+trCount4+"@4#CDI_ITEM_CLASS' onchange='changeVal(4,"+trCount4+")' class='ccss input isSubmit  _VAL_OjbsData dept_select' style='display: none;'><option value=''>--请选择--</option><option value='0'>范围值</option>"
													+"<option value='1'>固定值</option>"
													+"<option value='2'>状态值</option>";	
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tbody:last").append("<tr id='tr4_"+trCount4+"' ></tr>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td style='width:30px;text-align:center;'>"+trCount4+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-1' style='width:30px;text-align: center;'><input type='checkbox' style='width: 13px;' value='tr4_"+trCount4+"' name='isSelect4'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-2' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCode4_"+trCount4+"' name='deviceItemCode4_"+trCount4+"' value='"+itemList[i].CDI_ITEM_CODE+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-3' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemName4_"+trCount4+"' name='deviceItemName4_"+trCount4+"' value='"+itemList[i].CDI_ITEM_NAME+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-4' style='width:250px;overflow: visible;padding:0;'>"+mySelect+"</td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-5' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMaxvalue4_"+trCount4+"' name='deviceitemMaxvalue4_"+trCount4+"' value='"+itemList[i].CDI_ITEM_MAXVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-6' style='width:135px;text-align: center;padding:0;'><input type='text' class='bcss' id='deviceitemMinvalue4_"+trCount4+"' name='deviceitemMinvalue4_"+trCount4+"' value='"+itemList[i].CDI_ITEM_MINVALUE+"' style='text-align: right;'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-7' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemUnit4_"+trCount4+"' name='deviceItemUnit4_"+trCount4+"' value='"+itemList[i].CDI_ITEM_UNIT+"'/></td>");
										$("#datagrid-btable-ajax831b2dbf0dfb494695b7ce66538a1111 tr:last").append("<td class='datagrid-cell datagrid-cell-8' style='width:135px;text-align: center;'><input type='text' class='bcss' id='deviceItemCycle4_"+trCount4+"' name='deviceItemCycle4_"+trCount4+"' value='"+itemList[i].CDI_CYCLE+"'/></td>");
										$("#sel4_"+trCount4).val(itemList[i].CDI_ITEM_CLASS);
										changeVal(4,trCount4);
										//$("#sel4_"+trCount4).find("option[value='"+itemList[i].CDI_ITEM_CLASS+"]'").attr("selected",true);
										//$("#sel4_"+trCount4).trigger("chosen:updated");
									}
								}
								setChosen();//设置下拉框样式
							$(".glxb-table .dcss").css("width","100%");
							$('#saveInfo').attr("onclick","addVal('"+trCount1+"','"+trCount2+"','"+trCount3+"','"+trCount4+"')"); 
							}
							//alert(itemList[0].CDI_ITEM_CODE);
							//console.log(itemIds);
							$("#deviceItemIds").val(itemIds);
						},
						error: function(msg){
							util.closeLoading();
							util.alert("error:"+msg);
		  				}
					});
	}
	
	function init(){
		setVal();
		if($("#leftTable-kz").length>0){
			$("#leftTable-kz").show();
		}
		
		if($("#leftTable").length>0){
			$("#leftTable").show();
		}

	}//初始化方法
	
	function setVal(){
      var urlDetail = "${path}buss/bussModel_exeFunc.ms?funcMId=a66c0c5a0b5c4c24be618f9b93c61838"; 
      getValue(urlDetail);
      //parent.closePopWinFp('add_itemIdpop');
}
	
	function addVal(trCount1,trCount2,trCount3,trCount4){
                    var tempFlag1 = checkVal1(trCount1);
                    if(tempFlag1=="0"){
                         return ;
                    }
                    var tempFlag2 = checkVal2(trCount2);
                    if(tempFlag2=="0"){
                         return ;
                    }
                    var tempFlag3 = checkVal3(trCount3);
                    if(tempFlag3=="0"){
                         return ;
                    }
                    var tempFlag4 = checkVal4(trCount4);
                    if(tempFlag4=="0"){
                         return ;
                    }
                        isQuery = false;
			if(!val.valNullData()){
				return ;
			}
			if(!valData()){
				return ;
			}
			if(!val.valOjbsData()){
				return ;
			}
			if(!val.valDataBaseSetData()){
                return ;
	        }
			
			$DisInput = $(":input[disabled='disabled'][class*='isaddSubmit']");
			$DisInput.attr("disabled", false);
                        			
                       if($("#isCloseWin") && $("#addForm").find("#isCloseWin").length == 0){
				$("#addForm").append($("#isCloseWin").clone());
				$("#addForm").find("#isCloseWin").wrap("<div id=\"isCloseWinDiv\" style=\"display:none;\"></div>");
			}
			$("#saveBtn").prop("disabled","disabled");

                        document.forms.addForm.action = "${path}buss/bussModel_exeFunc.ms?funcMId=a3cc3ce4138043ae904576ad2b77dee9&trCount1="+trCount1+"&trCount2="+trCount2+"&trCount3="+trCount3+"&trCount4="+trCount4;
                        document.forms.addForm.submit();
                        isQuery = true;
			$DisInput.attr("disabled", true);
}
</script>
<script>(function($){
  $(window).on('load',function(){
    setPopScroll('.scroll1','.head1');
    setPopScroll('.scroll2','.head2');
    setPopScroll('.scroll3','.head3');
    setPopScroll('.scroll4','.head4');
  })
})(jQuery)</script>
	<jsp:include page="/plf/common/fp/pub_dom_fp.jsp">
		<jsp:param name="needValidate" value="1" />
	</jsp:include>

</body>

<%@ include file="/plf/common/pub_end.jsp"%>
<!--
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_10" />
     <jsp:param name="location" value="pageOver" />
 </jsp:include>
 -->