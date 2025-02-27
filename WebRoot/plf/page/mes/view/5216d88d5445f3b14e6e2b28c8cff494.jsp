<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<title>
		<dict:lang value="新UI测试0124" />
	</title>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<jsp:include page="/plf/common/fp/pub_head_fp.jsp">
		<jsp:param name="popDivWinFp" value="1" />
		<jsp:param name="datePicker" value="1" />
	</jsp:include>
	<%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
	<%@ include file="/plf/page/common/buss/listCommJs.jsp"%>

</head>
<body scroll="yes" style="overflow: scroll;" >

          <div class="content-in">
              <div class="dlist">
                  <div class="hd">
   
			<bu:func viewId="f94ccaef63784eae8e765917b806c1d9" />
                  </div>
                  <div class="bd">
                      <div class="search-box">
		<form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
			<input type="hidden" name="exeid" value="${exeid}" />
			<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:search viewId="f94ccaef63784eae8e765917b806c1d9" />
		</form>
                        <a href="javascript:;" class="more"></a>
                        <script type="text/javascript">
                          $('.search-box .more').click(function(){
                            $('.search-box').toggleClass('show');
                          })
                        </script>
                      </div>
                      
                      
		<form id="listForm" name="listForm" action="${path}buss/bussModel.ms" method="post">
			<input type="hidden" name="exeid" value="${exeid}" />
			<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:form viewId="f94ccaef63784eae8e765917b806c1d9" formId="101f8dc9b0c345698f8b6dec38c0d03c" list="dataList" formidFirstId="101f8dc9b0c345698f8b6dec38c0d03c" relColIds="" subFormIds="" subRelColIds="" />
  <% if(null != request.getAttribute("page")){
  PaginationImpl _pageTop = (PaginationImpl)request.getAttribute("page"); 
  if(_pageTop.isPage()){%>
  <div class="center">
    <s:include value="/plf/common/pagination.jsp?formId=searchForm" />
  </div>
  <% }}%></div>


		</form>
                      <ul class="paging">
                        <li>
                          <a class="it" href="#">&laquo;首页</a>
                        </li>
                        <li>
                          <a class="it" href="#">&lt;</a>
                        </li>
                        <li class="active">
                          <a class="it" href="#">1</a>
                        </li>
                        <li>
                          <a class="it" href="#">2</a>
                        </li>
                        <li>
                          <a class="it" href="#">3</a>
                        </li>
                        <li>
                          <a class="it" href="#">…</a>
                        </li>
                        <li>
                          <a class="it" href="#">8</a>
                        </li>
                        <li>
                          <a class="it" href="#">9</a>
                        </li>
                        <li>
                          <a class="it" href="#">&gt;</a>
                        </li>
                        <li>
                          <a class="it" href="#">最后一页&raquo;</a>
                        </li>
                        <li>
                          <select name="dept" data-placeholder="每页显示15条"  id="dept" class="dept_select" >
                            <option value="-1"></option>
                            <option value="pcb">每页显示20条</option>
                            <option value="pcb">每页显示15条</option>
                            <option value="pcb">每页显示10条</option>
                          </select>共计<span class="count"></span> 968 条
                        </li>
                      </ul>
                  </div>
                </div>
          </div>


		<bu:submit viewId="f94ccaef63784eae8e765917b806c1d9" />
		<bu:script viewId="f94ccaef63784eae8e765917b806c1d9" />
    <script type="text/javascript">
         $('.js-nav').slick({
            dots: false,
            autoplay: false,
            slidesToScroll:1,
            slidesToShow:8
        });
         $('.menu-sub').mCustomScrollbar({
          scrollInertia:150
        });
        $('#mCSB_1').css('overflow','visible');
        $('.banner .item1').hover(function(){
          $('.banner').css('border-bottom-color','#20c2ff');
        },
        function(){
           $('.banner').css('border-bottom-color','#20c2ff');
        });
        $('.banner .item2').hover(function(){
          $('.banner').css('border-bottom-color','#fccd00');
        },
        function(){
           $('.banner').css('border-bottom-color','#20c2ff');
        });
        $('.banner .item3').hover(function(){
          $('.banner').css('border-bottom-color','#8fcf3e');
        },
        function(){
           $('.banner').css('border-bottom-color','#20c2ff');
        });
        $('.banner .item4').hover(function(){
          $('.banner').css('border-bottom-color','#592e2e');
        },
        function(){
           $('.banner').css('border-bottom-color','#20c2ff');
        });

        function Height(){
          var H = $(window).height();
          $('.menu').css('height',H);
          $('.content').css('height',H - 70);
          $('.content').mCustomScrollbar({
            scrollInertia:150
          });
        }
        Height();
        $(window).resize(function(){
          $('.content').mCustomScrollbar("destroy");
          Height();
        });
        $(function(){
          $('.dept_select').chosen();
      });
        

    	var isQuery = false;
    	function query(thisObj){
    		if(isQuery){utilsFp.alert("<dict:lang value="数据正在提交，请稍候" />...");}
    		document.forms.searchForm.submit();
    		util.showTopLoading();
    		isQuery=true;
    	}
    	
    	function alertInfo(msg){
    		utilsFp.alert(msg);
    	}
    	
    	function reloadPg(msg){
    		utilsFp.alert(msg,reloadPgExe);
    	}
    	
    	function reloadPgExe(){
    		document.forms.searchForm.submit();
    		util.showTopLoading();
    	}
    	
    	function init(){
    		$(".table_list").each(function(seq) {
    			var tableTrJs =$(this).find("tbody tr");
    			_toClickColorMap(tableTrJs,$(this).attr("id"));
    			_tongLineColor(tableTrJs);
    		});
    		
    		<s:if test='null != #parameters[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] && #request[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] == "1"'>query();</s:if>
    	}

    </script>

<%@ include file="/plf/common/pub_dom.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
