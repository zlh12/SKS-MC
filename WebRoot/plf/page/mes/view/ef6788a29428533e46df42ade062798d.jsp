<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" deferredSyntaxAllowedAsLiteral="true" %>
<%@page import="com.more.fw.core.dbo.model.dao.PaginationImpl"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<head>
	<title>
		<dict:lang value="test new spline2" />
	</title>
	<%@ include file="/plf/common/pub_meta.jsp"%>
	<jsp:include page="/plf/common/fp/pub_head_fp.jsp">
		<jsp:param name="popDivWinFp" value="1" />
		<jsp:param name="datePicker" value="1" />
		<jsp:param name="chosen" value="1" />
	</jsp:include>
	<%@ include file="/plf/page/common/buss/bussCommJs.jsp"%>
	<%@ include file="/plf/page/common/buss/listCommJs.jsp"%>
		<bu:header formId ="3b1b0a53bf9144978bc1c4df1888712e"/>

</head>
<body scroll="auto" >

          <div class="content-in">
              <div class="dlist">
                  <div class="hd">
                  
		<bu:func viewId="98f266f9a3a84788a5698a4b59f7fe9b" />
                    
                  </div>
                  <div class="bd">
                      <div class="search-box">
						<form id="searchForm" name="searchForm" action="${path}buss/bussModel.ms" method="post">
							<input type="hidden" name="exeid" value="${exeid}" />
							<input type="hidden" name="searchParaShowState" id="searchParaShowState" value="${paraMap.searchParaShowState}" />
							<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:search viewId="98f266f9a3a84788a5698a4b59f7fe9b" />
						</form>
                        <a href="javascript:void(0);" class="more"></a>
                      </div>
                      
                      
		<form id="listForm" name="listForm" action="${path}buss/bussModel.ms" method="post">
			<input type="hidden" name="exeid" value="${exeid}" />
			<s:hidden name="%{@com.more.fw.core.common.method.Constants@FUNC_CODE}" />
		<bu:form viewId="98f266f9a3a84788a5698a4b59f7fe9b" formId="3b1b0a53bf9144978bc1c4df1888712e" list="dataList" formidFirstId="3b1b0a53bf9144978bc1c4df1888712e" relColIds="fa203886a14849d5b2f46ad70968db73" subFormIds="22e069ee83fc4906aa878ab72da8c908" subRelColIds="5d4b85f9235a49859912dbfd1213d415" />
  <% if(null != request.getAttribute("page")){
  PaginationImpl _pageTop = (PaginationImpl)request.getAttribute("page"); 
  if(_pageTop.isPage()){%>
  <div class="center">
    <s:include value="/plf/page/fp/pagination.jsp?formId=searchForm" />
  </div>
  <% }}%></div>

		<div style="padding:1px;"></div>

		<bu:form viewId="98f266f9a3a84788a5698a4b59f7fe9b" formId="22e069ee83fc4906aa878ab72da8c908" isSubForm="1" list="dataListSub"  formidFirstId="3b1b0a53bf9144978bc1c4df1888712e" relColIds="" subFormIds="" subRelColIds="" />
  <div class="center">
    <s:include value="/plf/page/fp/paginationAx.jsp?formId=22e069ee83fc4906aa878ab72da8c908&listDataFn=_listSubDataAx&showLoading=0" />
  </div>
</div>


		</form>
                      
                  </div>
                </div>
          </div>


		<bu:submit viewId="98f266f9a3a84788a5698a4b59f7fe9b" />
		<bu:script viewId="98f266f9a3a84788a5698a4b59f7fe9b" />
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
    		//如果有时间段的存在，则复制到搜索表单中
    		if($("#timeBucketId")){
    			$("#searchForm").append($("#timeBucketId").clone());
    		}
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
    		//document.forms.searchForm.submit();
    		query();
    		util.showTopLoading();
    		top.$(".dialog-close").click();
    	}
    	
    	function init(){
    		<s:if test='null != #parameters[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] && #request[@com.more.fw.core.common.method.Constants@SHOW_INIT_LIST_DATA] == "1"'>query();</s:if>
    	}

    </script>

<%@ include file="/plf/common/fp/pub_dom_fp.jsp"%>
</body>
<%@ include file="/plf/common/pub_end.jsp"%>
