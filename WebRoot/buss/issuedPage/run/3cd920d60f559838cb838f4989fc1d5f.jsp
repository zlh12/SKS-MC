<%@page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%request.setAttribute("isTree","1"); %>
<%@ include file="/plf/common/pub_tag.jsp" %>
<%-- <jsp:include page="/plf/page/fp/mainFrame.jsp"/> --%>
	<head>
	    <base href="${path}" />
		<meta http-equiv="Content-Type" content="text/html; charset= UTF-8" />
	    <title><dict:lang value="卡片菜单" /></title>
	<jsp:include page="/plf/common/pub_head.jsp">
		<jsp:param name="zTree" value="1" />
		<jsp:param name="scroll" value="1" />
	</jsp:include>
	<%-- <link rel="stylesheet" href="${path}/plf/layui/css/layui.css">
    <link rel="stylesheet" href="${path}/plf/layui/css/DMPmain.css">  --%>
   <link rel="stylesheet" href="${path}/buss/css/card.css"> 
    <link rel="stylesheet" href="${path}/buss/css/style.css">
    <link rel="stylesheet" href="${path}/plf/page/fp/css/jquery.mCustomScrollbar.css?_mc_res_version=<%=PlfStaticRes.JQUERY_MCUSTOMSCROLLBAR_CSS %>" type="text/css" /> 
    
	
   <style>.bd{ width: 100% ;
   height: 100%; }
 
   #mCSB_1_scrollbar_vertical{
           display: block;
    height: 100%;
    position: relative;
    top: -100%;
    float: right;
   }</style>
  </head>
   
<body>
    <div class="bd"  onscroll="SetH(this)">
	
    	<div style="display:none;">
            <input type="text" style="display:none;" name="menuId" id="menuId"  value="${param.id}">
        </div>
    	<div class="content" id="cardlist"  >
            
        </div>
    
    </div>
   
	<!-- <div id="cardlist">
            
    </div> -->
    <script src="${path}/plf/js/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js?_mc_res_version=<%=PlfStaticRes.JQUERY_MCUSTOMSCROLLBAR_CONCAT_MIN_JS %>"></script>
<script>

 
    $(function(){
    	//initHeight();
    	setPopScroll("#scroll1");
    	//setScroll();
    	//var widthValue=$('#mCSB_1_container').width();
        //$("#canvas").attr("width",widthValue);
    })
	listCardAx();
	function listCardAx2(){
		var url = "${path}sys/FuncAction_getStrongFpMenu.ms";
		util.showLoading("<dict:lang value="加载中" />...");
		$.ajax({
			type: "POST",
		    dataType: "json",
		    url: url,
		    //data: "paraMap.sql="+val2,//+upColId,
			success: function(data){
					util.closeLoading();
					console.log(data);
			},
			error: function(msg){
					util.closeLoading();
					util.alert("error:"+msg);
			  }
			});				
	}
	function listCardAx(){
		$("#cardlist").html("");
		var menuId=$("#menuId").val();
		//console.log($("#menuId").val());
		var url = "${path}sys/FuncAction_getStrongFpMenu.ms";
		util.showLoading("<dict:lang value="加载中" />...");
		//var formData = form.serialize($("#searchForm"));
	    jQuery.ajax({
		type: "POST",
	    dataType: "json",
	    url: url,
	    //data: formData,
	     beforeSend: function() {
                    $("#cardlist").mCustomScrollbar("destroy"); //Destroy
                },
			success: function(data){
				util.closeLoading();
				var operHtml = "";
				try{
					if(null !=data.ajaxMap){	
						$.each(data.ajaxMap,function(key,values){
							
					    }); 
					}
					if(null !=data.ajaxList){	
						var operHtml="";
						$.each(data.ajaxList,function(key,values){
							//console.log(key);
							var upId=values.upId;
							//console.log(values);
							if(upId==menuId){//"9c7ba6626bec46ab8c994ffcb461a980"
								var len=0;
								var tempOperHtml="";
								var tempId=values.id;
								//console.log(tempId);
								//console.log(values);
								if(values.chilsTreeViews.len==0||values.openType=="0"){
									len++;
									//console.log(values);
									tempOperHtml =tempOperHtml +"	<li onclick=\"gotoPage('"+values.id+"','"+values.funcCode+"','"+values.name+"','"+values.openType+"');\">";
									if(values.img==null){
										tempOperHtml =tempOperHtml +"	<p class='syslogo logo'></p>";
									}else{
										tempOperHtml =tempOperHtml +"	<p class='logo' style=\"background: url('./"+values.img+"') no-repeat;\"></p>";
									}
									tempOperHtml =tempOperHtml +"	<span>"+values.name+"</span>";
									tempOperHtml =tempOperHtml +"	</li>";
								}else{
									$.each(data.ajaxList,function(key2,values2){
										if(tempId==values2.upId){
											len++;
											//console.log(values);
											tempOperHtml =tempOperHtml +"	<li onclick=\"gotoPage('"+values2.id+"','"+values2.funcCode+"','"+values2.name+"','"+values2.openType+"');\">";
											if(values2.img==null){
												if(values.img==null){
													tempOperHtml =tempOperHtml +"	<p class='syslogo logo'></p>";
												}else{
													tempOperHtml =tempOperHtml +"	<p class='logo' style=\"background: url('./"+values.img+"') no-repeat;\"></p>";
												}
											}else{
												tempOperHtml =tempOperHtml +"	<p class='logo' style=\"background: url('./"+values2.img+"') no-repeat;\"></p>";
											}
											tempOperHtml =tempOperHtml +"	<span>"+values2.name+"</span>";
											tempOperHtml =tempOperHtml +"	</li>";
										}
									}); 
								}
								
								operHtml =operHtml +"<div>";
							    operHtml =operHtml +"	<div class='top '>";
							    operHtml =operHtml +"		<div class='topLeft'>";
							    operHtml =operHtml +"			<div class='niddle'></div>";
							    operHtml =operHtml +"			<span>"+values.name+"("+len+")</span>";
							    operHtml =operHtml +"		</div>";
							    operHtml =operHtml +"		<div class='topRight'>";
							    operHtml =operHtml +"			<p>收起</p>";
							    operHtml =operHtml +"			<div class='open'></div>";
							    operHtml =operHtml +"			<div class='close'></div>";
							    operHtml =operHtml +"		</div>";
							    operHtml =operHtml +"	</div>";
							    
            					operHtml =operHtml +"	<div class='list'>";
            					operHtml =operHtml +"		<ul>";
	            				operHtml =operHtml+tempOperHtml;
	            				operHtml =operHtml +"		</ul>";
	            				operHtml =operHtml +"	</div>";
	            				operHtml =operHtml +"</div>";
							}
						   
					    }); 
						//console.log(operHtml);
						$(".bd").html(operHtml);	
		              
					}
				  
				}catch(e){
					console.log(e);			
				}
				
			},
			error: function(msg){
				util.closeLoading();
				util.alert("error:"+msg);
			},
			complete:function(){
			    $(".bd").mCustomScrollbar({
            		    axis:"yx",
            			snapAmount:40,
            			theme:"minimal-dark",
            			keyboard:{scrollAmount:40},
            			mouseWheel:{deltaFactor:40,preventDefault:true},
                        scrollInertia:100,
                        
            	})
			}
		
		});
	}
   


	function gotoPage(id,funcCode,name,openType){
		//console.log(id+","+funcCode+","+name+","+openType);
		var funcUrl = "${path}sys/FuncAction_shoUserFunc.ms?funcDtoSh.id="+id+"&MENU_FC="+funcCode;
		var connStr = "?";
		if(null!=funcUrl && funcUrl.indexOf("?")>0){
			connStr = "&";
		}
		//menuUrl = " onclick=\"addTab('"+funcUrl+connStr+"FUNC_CODE="+object.funcCode+"','"+object.name+"','"+object.id+"',"+object.openType+")\" ";
		//console.log(funcUrl+connStr+"FUNC_CODE="+funcCode);
		top.addTab(funcUrl+connStr+"FUNC_CODE="+funcCode,name,id,openType);
	}
	var _h = 0;
    function SetH(o) {
    console.log(3)
   _h = o.scrollTop
    $("#mCSB_1_scrollbar_vertical").find('.mCSB_dragger_bar').css('background',"rgba(0,0,0,.5)")
   SetCookie("a", _h)
  
 }
  window.onload = function () {
document.getElementById("cardlist").scrollTop = GetCookie("a");//页面加载时设置scrolltop高度
  }
  window.unload=function(){
      localStorage.removeItem("a")
  }
 function SetCookie(sName, sValue) {
  localStorage.setItem(sName,sValue) ;
 }
 function GetCookie(sName) {
   return localStorage.getItem(sName);
  }
  
	
</script>
<script>


window.onload=setTimeout(myfun,2000);
function myfun(){

	$('.topRight').click(function () {
    if ($(this).children('p').html() == "收起") {
        $(this).children('p').html('展开');
        $(this).children('.open').hide()
        $(this).children('.close').show()
        $(this).parent().siblings().hide();
        $(this).parent().addClass("underline")
    } else {
        $(this).children('p').html('收起');
        $(this).children('.open').show()
        $(this).children('.close').hide()
        $(this).parent().siblings().show();
        $(this).parent().removeClass("underline")
    }})
   
    $('.topLeft').click(function () {
        if ($(this).parent().find('p').html() == "收起") {
            $(this).parent().find('p').html('展开');
            $(this).parent().find('.open').hide()
            $(this).parent().find('.close').show()
            $(this).parent().siblings().hide();
            $(this).parent().addClass("underline")
        } else {
            $(this).parent().find('p').html('收起');
            $(this).parent().find('.open').show()
            $(this).parent().find('.close').hide()
            $(this).parent().siblings().show();
            $(this).parent().removeClass("underline")
        }
    })
  
}
</script>
<!-- <script src="./buss/js/card.js"></script> -->
</body>
</html>