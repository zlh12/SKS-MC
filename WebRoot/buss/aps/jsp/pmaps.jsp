<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<%@page import="com.more.fw.core.staticresource.PlfStaticRes"%>
<!-- 页面加载前 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="beforePageLoad" />
 </jsp:include>
<head>
    <title>
		<dict:lang value="生产排程" />
    </title>
    
    <%@ include file="/plf/common/pub_meta.jsp"%>
    <jsp:include page="/plf/common/fp/pub_head_fp.jsp">
        <jsp:param name="popDivWinFp" value="1" />
        <jsp:param name="datePicker" value="1" />
        <jsp:param name="chosen" value="1" />
        <jsp:param name="msData" value="1" />
        <jsp:param name="scroll" value="1" />
    </jsp:include>
    <%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
    <%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="49c0aef6dec848b09c97223fac2d5865"/>

    
	
    <!-- head里面 -->
    <!-- 产品静态资源 -->
    
    <!-- styles -->
	<link rel="stylesheet" href="${path}buss/aps/gantt_css/platform.css" type="text/css">
	<link rel="stylesheet" href="${path}buss/aps/gantt_libs/dateField/jquery.dateField.css" type="text/css">
	<link rel="stylesheet" href="${path}buss/aps/gantt_css/gantt.css" type="text/css">
    <link rel="stylesheet" href="${path}buss/aps/gantt_css/print.css" type="text/css" media="print">
    <link rel="stylesheet" type="text/css" href="${path}buss/aps/gantt_libs/jquery.svg.css">
	<style>
	  .resEdit {
	    padding: 15px;
	  }
	  .resLine {
	    width: 95%;
	    padding: 3px;
	    margin: 5px;
	    border: 1px solid #d0d0d0;
	  }
	  body {
	    overflow: hidden;
	  }
	  .ganttButtonBar h1{
	    color: #000000;
	    font-weight: bold;
	    font-size: 28px;
	    margin-left: 10px;
	  }
	  
	  .explain{
	  	height:38px;
	  	line-height:38px;
	  	color:#999;
	  	font-size:12px;
	  	margin-left:20px;
	  }
	  
	  .explain .item{
	  	margin-right:20px;
	  }
	  
	  .explain .item img{
	  	margin-right:8px;
	  	vertical-align: middle;
	  }
	  
	</style>
    <!-- script -->
    <script src="http://www.jq22.com/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://libs.baidu.com/jqueryui/1.8.22/jquery-ui.min.js "></script>
    <script src="${path}buss/aps/gantt_libs/jquery.livequery.min.js"></script>
    <script src="${path}buss/aps/gantt_libs/jquery.timers.js"></script>
    <script src="${path}buss/aps/gantt_libs/platform.js"></script>
    <script src="${path}buss/aps/gantt_libs/date.js"></script>
    <script src="${path}buss/aps/gantt_libs/i18nJs.js"></script>
    <script src="${path}buss/aps/gantt_libs/dateField/jquery.dateField.js"></script>
    <script src="${path}buss/aps/gantt_libs/JST/jquery.JST.js"></script>
    <script type="text/javascript" src="${path}buss/aps/gantt_libs/jquery.svg.min.js"></script>
    <script type="text/javascript" src="${path}buss/aps/gantt_libs/jquery.svgdom.1.8.js"></script>
    <script src="${path}buss/aps/gantt_js/ganttUtilities.js"></script>
    <script src="${path}buss/aps/gantt_js/ganttTask.js"></script>
    <script src="${path}buss/aps/gantt_js/ganttDrawerSVG.js"></script>
    <script src="${path}buss/aps/gantt_js/ganttGridEditor.js"></script>
    <script src="${path}buss/aps/gantt_js/ganttMaster.js"></script>  
    <script src="${path}buss/aps/gantt_js/ganttCommon.js"></script>  
</head>

 <body>
    
    <div class="optn">
    	<button onclick="$('#workSpace').trigger('undo.gantt');" class="textual" title="撤销"><span class="ico ico-cx"></span>撤销</button>
    	<button onclick="$('#workSpace').trigger('redo.gantt');" class="textual" title="恢复"><span class="ico ico-hf"></span>恢复</button>
    	<button onclick="$('#workSpace').trigger('zoomMinus.gantt');" class="textual" title="日期放大"><span class="ico ico-dataToBig"></span>日期放大</button>
    	<button onclick="$('#workSpace').trigger('zoomPlus.gantt');" class="textual" title="日期缩小"><span class="ico ico-dataToSmall"></span>日期缩小</button>
		<button onclick="saveGanttOnServer();" class="textual" title="保存"><span class="ico ico-save"></span>保存</button>
    </div>
    
    <% /*该 div为甘特图*/ %>
    <div style="height:calc(100% - 52px);background-color:#fff;margin-top:40px;">
    	<div id="workSpace" style="padding:0px; overflow-y:auto; overflow-x:hidden;border:1px solid #e5e5e5;position:relative;height:calc(100% - 38px);"></div>
    </div>
	<div class="explain">
		*状态说明：
		<span class="item"><img src="${path}buss/aps/gantt_img/start.png">开始</span>
		<span class="item"><img src="${path}buss/aps/gantt_img/end.png">结束</span>
	</div>	
<script type="text/javascript">

var ge;  //this is the hugly but very friendly global var for the gantt editor

$(function() {
  //load templates
  $("#ganttemplates").loadTemplates();
  // here starts gantt initialization
  ge = new GanttMaster();
  var workSpace = $("#workSpace");
  ge.init(workSpace);
  //inject some buttons (for this demo only)
  $(".ganttButtonBar div").addClass('buttons');
  //overwrite with localized ones
  loadI18n();
  //simulate a data load from a server.
  //loadGanttFromServer();
  
  var _vardata={"tasks":[
     {"id":-1,"name":"SMT","code":"","level":0,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":true,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-2,"name":"MO20180305003","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-3,"name":"MO180302002","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-4,"name":"DIP","code":"","level":0,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-5,"name":"MO1802285","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-6,"name":"MO1802275","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-7,"name":"MO1802274","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-8,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-9,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-10,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-11,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-12,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-13,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-14,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-15,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-16,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-17,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-18,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     ,{"id":-19,"name":"MO1802273","code":"","level":1,"status":"STATUS_ACTIVE","canWrite":true,"start":1519351200000,"duration":1440,"end":1519437600000,"startIsMilestone":false,"endIsMilestone":false,"collapsed":false,"assigs":[],"hasChild":true}
     
     
     ],"selectedRow":0,"canWrite":true,"canWriteOnParent":true} ;
  toLoadGanttData(_vardata);
  //fill default Teamwork roles if any
  if (!ge.roles || ge.roles.length == 0) {
    setRoles();
  }
  //fill default Resources roles if any
  if (!ge.resources || ge.resources.length == 0) {
    setResource();
  }
  /*/debug time scale
  $(".splitBox2").mousemove(function(e){

    var x=e.clientX-$(this).offset().left;

    var mill=Math.round(x/(ge.gantt.fx) + ge.gantt.startMillis)

    $("#ndo").html(x+" "+new Date(mill))

  });*/
  $(window).resize(function(){
    workSpace.css({width:$(window).width() - 20,height:$(window).height() - 100});
    workSpace.trigger("resize.gantt");
  });
  
  

  
});
function loadGanttFromServer(taskId, callback) {
  //this is a simulation: load data from the local storage if you have already played with the demo or a textarea with starting demo data
  loadFromLocalStorage();
  //this is the real implementation
}
function saveGanttOnServer() {
  if(!ge.canWrite)
    return;
  //this is a simulation: save data to the local storage or to the textarea
  saveInLocalStorage();
}
//-------------------------------------------  Create some demo data ------------------------------------------------------
function setRoles() {
  ge.roles = [
    {
      id:"tmp_1",
      name:"Project Manager"
    },
    {
      id:"tmp_2",
      name:"Worker"
    },
    {
      id:"tmp_3",
      name:"Stakeholder/Customer"
    }
  ];
}
function setResource() {
  var res = [];
  for (var i = 1; i <= 10; i++) {
    res.push({id:"tmp_" + i,name:"Resource " + i});
  }
  ge.resources = res;
}
function editResources(){
}
function clearGantt() {
  ge.reset();
}
function loadI18n() {
  GanttMaster.messages = {
    "CANNOT_WRITE":"CANNOT_WRITE",
    "CHANGE_OUT_OF_SCOPE":"NO_RIGHTS_FOR_UPDATE_PARENTS_OUT_OF_EDITOR_SCOPE",
    "START_IS_MILESTONE":"START_IS_MILESTONE",
    "END_IS_MILESTONE":"END_IS_MILESTONE",
    "TASK_HAS_CONSTRAINTS":"TASK_HAS_CONSTRAINTS",
    "GANTT_ERROR_DEPENDS_ON_OPEN_TASK":"GANTT_ERROR_DEPENDS_ON_OPEN_TASK",
    "GANTT_ERROR_DESCENDANT_OF_CLOSED_TASK":"GANTT_ERROR_DESCENDANT_OF_CLOSED_TASK",
    "TASK_HAS_EXTERNAL_DEPS":"TASK_HAS_EXTERNAL_DEPS",
    "GANTT_ERROR_LOADING_DATA_TASK_REMOVED":"GANTT_ERROR_LOADING_DATA_TASK_REMOVED",
    "ERROR_SETTING_DATES":"ERROR_SETTING_DATES",
    "CIRCULAR_REFERENCE":"CIRCULAR_REFERENCE",
    "CANNOT_DEPENDS_ON_ANCESTORS":"CANNOT_DEPENDS_ON_ANCESTORS",
    "CANNOT_DEPENDS_ON_DESCENDANTS":"CANNOT_DEPENDS_ON_DESCENDANTS",
    "INVALID_DATE_FORMAT":"INVALID_DATE_FORMAT",
    "TASK_MOVE_INCONSISTENT_LEVEL":"TASK_MOVE_INCONSISTENT_LEVEL",
    "GANTT_QUARTER_SHORT":"trim.",
    "GANTT_SEMESTER_SHORT":"sem."
  };
}
//-------------------------------------------  Get project file as JSON (used for migrate project from gantt to Teamwork) ------------------------------------------------------
function getFile() {
  $("#gimBaPrj").val(JSON.stringify(ge.saveProject()));
  $("#gimmeBack").submit();
  $("#gimBaPrj").val("");
}
//-------------------------------------------  LOCAL STORAGE MANAGEMENT (for this demo only) ------------------------------------------------------
Storage.prototype.setObject = function(key, value) {
  this.setItem(key, JSON.stringify(value));
};
Storage.prototype.getObject = function(key) {
  return this.getItem(key) && JSON.parse(this.getItem(key));
};
//加载数据
function toLoadGanttData(data)
{
    //var ret=JSON.parse(data);
    ge.loadProject(data);
    ge.checkpoint();
}
function loadFromLocalStorage() {
  var ret;
  if (localStorage) {
    if (localStorage.getObject("teamworkGantDemo")) {
      ret = localStorage.getObject("teamworkGantDemo");
    }
  } 
  else {
    $("#taZone").show();
  }
  if (!ret || !ret.tasks || ret.tasks.length == 0){
    ret = JSON.parse($("#ta").val());
    //actualiza data
    var offset=new Date().getTime()-ret.tasks[0].start;
    for (var i=0;i<ret.tasks.length;i++)
      ret.tasks[i].start=ret.tasks[i].start+offset;
  }
  ge.loadProject(ret);
  ge.checkpoint(); //empty the undo stack
}
function saveInLocalStorage() {
  var prj = ge.saveProject();
  if (localStorage) {
    localStorage.setObject("teamworkGantDemo", prj);
  } 
  else {
    $("#ta").val(JSON.stringify(prj));
  }
}
//-------------------------------------------  Open a black popup for managing resources. This is only an axample of implementation (usually resources come from server) ------------------------------------------------------
function editResources(){
  //make resource editor
  var resourceEditor = $.JST.createFromTemplate({}, "RESOURCE_EDITOR");
  var resTbl=resourceEditor.find("#resourcesTable");
  for (var i=0;i<ge.resources.length;i++){
    var res=ge.resources[i];
    resTbl.append($.JST.createFromTemplate(res, "RESOURCE_ROW"))
  }
  //bind add resource
  resourceEditor.find("#addResource").click(function(){
    resTbl.append($.JST.createFromTemplate({id:"new",name:"resource"}, "RESOURCE_ROW"))
  });
  //bind save event
  resourceEditor.find("#resSaveButton").click(function(){
    var newRes=[];
    //find for deleted res
    for (var i=0;i<ge.resources.length;i++){
      var res=ge.resources[i];
      var row = resourceEditor.find("[resId="+res.id+"]");
      if (row.size()>0){
        //if still there save it
        var name = row.find("input[name]").val();
        if (name && name!="")
          res.name=name;
        newRes.push(res);
      } 
      else {
        //remove assignments
        for (var j=0;j<ge.tasks.length;j++){
          var task=ge.tasks[j];
          var newAss=[];
          for (var k=0;k<task.assigs.length;k++){
            var ass=task.assigs[k];
            if (ass.resourceId!=res.id)
              newAss.push(ass);
          }
          task.assigs=newAss;
        }
      }
    }
    //loop on new rows
    resourceEditor.find("[resId=new]").each(function(){
      var row = $(this);
      var name = row.find("input[name]").val();
      if (name && name!="")
        newRes.push (new Resource("tmp_"+new Date().getTime(),name));
    });
    ge.resources=newRes;
    closeBlackPopup();
    ge.redraw();
  });
  var ndo = createBlackPage(400, 500).append(resourceEditor);
}
</script>

<% /*内容展示区域*/ %>
<div id="gantEditorTemplates" style="display:none;">
  
  <% /*任务栏菜单列*/ %>
  <div class="__template__" type="TASKSEDITHEAD">  
  <table class="gdfTable" cellspacing="0" cellpadding="0">
    <thead>
    <tr style="height:50px">
      <th class="gdfColHeader" style="width:35px;"></th>
      <th class="gdfColHeader" style="width:50px;" >状态</th>
      <th class="gdfColHeader gdfResizable" style="width:300px;" >任务</th>
      <th class="gdfColHeader gdfResizable" style="width:120px;">开始时间</th>
      <th class="gdfColHeader gdfResizable" style="width:120px;">结束时间</th>
      <th class="gdfColHeader gdfResizable" style="width:100px;">持续时间(m)</th>
      <th class="gdfColHeader gdfResizable" style="width:70px;">前置任务</th>
    </tr>
    </thead>
  </table>
 </div>
 
  <% /*任务列表*/  /*修改为不可输入 */%>
  <div class="__template__" type="TASKROW"><!--
  <tr taskId="(#=obj.id#)" class="taskEditRow" level="(#=level#)">
    <td class="gdfCell edit" align="center" style="cursor:pointer;">
      <span class="taskRowIndex">(#=obj.getRow()+1#)</span> 
    </td>
    <td class="gdfCell noClip" align="center">
      <div class="taskStatus cvcColorSquare" status="(#=obj.status#)"></div>
    </td>
    <td class="gdfCell indentCell" style="padding-left:(#=obj.level*10#)px;">
      <div class="(#=obj.isParent()?'exp-controller expcoll exp':'exp-controller'#)" align="center"></div>
      <input type="text" name="name" value="(#=obj.name#)" disabled="false">
    </td>
    <td class="gdfCell">
     <input type="text" name="start"  value="" class="date" disabled="false">
    </td>
    <td class="gdfCell">
     <input type="text" name="end" value="" class="date" disabled="false">
    </td>
    <td class="gdfCell">
     <input type="text" name="duration" value="(#=obj.duration#)" disabled="false">
    </td>
    <td class="gdfCell">
     <input type="text" name="depends" value="(#=obj.depends#)" (#=obj.hasExternalDep?"readonly":""#) disabled="false">
    </td>
  </tr>-->
 </div>
 
 <% /*空任务列表
 
 <div class="__template__" type="TASKEMPTYROW">
	<tr class="taskEditRow emptyRow" >
	  <td class="gdfCell" align="right"></td>
	  <td class="gdfCell noClip" align="center"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
	  <td class="gdfCell"></td>
    </tr>
  </div> */%>
  
 <% /*任务进度*/ %> 
 <div class="__template__" type="TASKBAR"><!--
  <div class="taskBox taskBoxDiv" taskId="(#=obj.id#)" >
    <div class="layout (#=obj.hasExternalDep?'extDep':''#)">
      <div class="taskStatus" status="(#=obj.status#)"></div>
      <div class="taskProgress" style="width:(#=obj.progress>100?100:obj.progress#)%; background-color:(#=obj.progress>100?'#b32210':'#aace36'#);"></div>
      <div class="milestone (#=obj.startIsMilestone?'active':''#)" ></div>
      <div class="taskLabel"></div>
      <div class="milestone end (#=obj.endIsMilestone?'active':''#)" ></div>
    </div>
  </div>-->
 </div>

  <% /*任务状态标示容器*/ %>
  <div class="__template__" type="CHANGE_STATUS"><!--
    <div class="taskStatusBox">
      <div class="taskStatus cvcColorSquare" status="STATUS_ACTIVE" title="active"></div>
      <div class="taskStatus cvcColorSquare" status="STATUS_DONE" title="completed"></div>
      <div class="taskStatus cvcColorSquare" status="STATUS_FAILED" title="failed"></div>
      <div class="taskStatus cvcColorSquare" status="STATUS_SUSPENDED" title="suspended"></div>
      <div class="taskStatus cvcColorSquare" status="STATUS_UNDEFINED" title="undefined"></div>
    </div>-->
  </div>

  <% /*任务编辑界面元素容器*/ %>
  <div class="__template__" type="TASK_EDITOR"><!--
  <div class="ganttTaskEditor">
  <table width="100%">
    <tr>
      <td>
        <table cellpadding="5">
          <tr>
            <td>
             <label for="code">code/short name</label><br>
             <input type="text" name="code" id="code" value="" class="formElements">
            </td>
          </tr>
          <tr>
            <td>
             <label for="name">name</label><br>
             <input type="text" name="name" id="name" value=""  size="35" class="formElements">
            </td>
          </tr>
          <tr>
            <td>
              <label for="description">description</label><br>
              <textarea rows="5" cols="30" id="description" name="description" class="formElements"></textarea>
            </td>
          </tr>
        </table>
      </td>
      <td valign="top">
        <table cellpadding="5">
          <tr>
           <td colspan="2">
            <label for="status">status</label><br>
            <div id="status" class="taskStatus" status=""></div>
           </td>
          <tr>
           <td colspan="2"><label for="progress">progress</label><br><input type="text" name="progress" id="progress" value="" size="3" class="formElements"></td>
          </tr>
          <tr>
           <td>
            <label for="start">start</label><br>
             <input type="text" name="start" id="start"  value="" class="date" size="10" class="formElements">
             <input type="checkbox" id="startIsMilestone"> 
           </td>
           <td rowspan="2" class="graph" style="padding-left:50px">
            <label for="duration">dur.</label><br>
            <input type="text" name="duration" id="duration" value=""  size="5" class="formElements">
           </td>
        </tr>
        <tr>
          <td>
           <label for="end">end</label><br>
           <input type="text" name="end" id="end" value="" class="date"  size="10" class="formElements">
           <input type="checkbox" id="endIsMilestone">
          </td>
        </table>
      </td>
    </tr>
    </table>
    
  <% /* 编辑 明细列表 列名  
  <h2>assignments</h2>
  <table  cellspacing="1" cellpadding="0" width="100%" id="assigsTable">
    <tr>
      <th style="width:100px;">name</th>
      <th style="width:70px;">role</th>
      <th style="width:30px;">est.wklg.</th>
      <th style="width:30px;" id="addAssig">
      <span class="teamworkIcon" style="cursor: pointer">+</span>
      </th>
    </tr>
  </table> */ %>
  
  <% /* 保存按钮 */ %>
  <div style="text-align: right; padding-top: 20px">
   <button id="saveButton" class="button big">保存</button>
  </div> 
  
 </div>-->
 </div>
 
 <% /*编辑界面 明细编辑 列表
 <div class="__template__" type="ASSIGNMENT_ROW"><!--
  <tr taskId="(#=obj.task.id#)" assigId="(#=obj.assig.id#)" class="assigEditRow" >
    <td >
     <select name="resourceId"  class="formElements" (#=obj.assig.id.indexOf("tmp_")==0?"":"disabled"#) ></select>
    </td>
    <td >
     <select type="select" name="roleId"  class="formElements"></select>
    </td>
    <td >
     <input type="text" name="effort" value="(#=getMillisInHoursMinutes(obj.assig.effort)#)" size="5" class="formElements">
    </td>
    <td align="center">
     <span class="teamworkIcon delAssig" style="cursor: pointer">d</span>
    </td>
  </tr>-->
 </div> */ %> 

 <% /*是什么？
 <div class="__template__" type="RESOURCE_EDITOR"><!--
  <div class="resourceEditor" style="padding: 5px;">
    <h2>Project team</h2>
    <table  cellspacing="1" cellpadding="0" width="100%" id="resourcesTable">
      <tr>
        <th style="width:100px;">name</th>
        <th style="width:30px;" id="addResource">
         <span class="teamworkIcon" style="cursor: pointer">+</span>
        </th>
      </tr>
    </table>
    <div style="text-align: right; padding-top: 20px">
     <button id="resSaveButton" class="button big">save</button>
    </div>
  </div>-->
 </div> */ %>

 <% /*是什么？
 <div class="__template__" type="RESOURCE_ROW"><!--
  <tr resId="(#=obj.id#)" class="resRow" >
    <td >
     <input type="text" name="name" value="(#=obj.name#)" style="width:100%;" class="formElements">
    </td>
    <td align="center">
     <span class="teamworkIcon delRes" style="cursor: pointer">d</span>
    </td>
  </tr>
  -->
 </div>
</div> */ %>

<script type="text/javascript">

  $.JST.loadDecorator("ASSIGNMENT_ROW", function(assigTr, taskAssig) {
    var resEl = assigTr.find("[name=resourceId]");
    for (var i in taskAssig.task.master.resources) {
      var res = taskAssig.task.master.resources[i];
      var opt = $("<option>");
      opt.val(res.id).html(res.name);
      if (taskAssig.assig.resourceId == res.id)
        opt.attr("selected", "true");
      resEl.append(opt);
    }
    var roleEl = assigTr.find("[name=roleId]");
    for (var i in taskAssig.task.master.roles) {
      var role = taskAssig.task.master.roles[i];
      var optr = $("<option>");
      optr.val(role.id).html(role.name);
      if (taskAssig.assig.roleId == role.id)
        optr.attr("selected", "true");
      roleEl.append(optr);
    }
    if(taskAssig.task.master.canWrite && taskAssig.task.canWrite){
      assigTr.find(".delAssig").click(function() {
        var tr = $(this).closest("[assigId]").fadeOut(200, function() {
          $(this).remove();
        });
      });
    }
  });
</script>
</div>
  </body>
<%@ include file="/plf/common/pub_end.jsp"%>
<!-- 页面结束 -->
 <jsp:include page="/plf/page/mesdemo/commCode/commCode.jsp">
     <jsp:param name="modelName" value="VIEW_TYPE_17" />
     <jsp:param name="location" value="pageOver" />
 </jsp:include>
