<%@ page language="java" errorPage="/plf/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/plf/common/pub_tag.jsp"%>
<% request.setAttribute("_login_rd_time",System.currentTimeMillis()); %>
<head> 
<title>LIGHTBOX EXAMPLE</title> 
<style> 
  .black_overlay{  display: none;  position: absolute;  top: 0%;  left: 0%;  width: 100%;  height: 100%;  background-color: black;  z-index:1001;  -moz-opacity: 0.8;  opacity:.80;  filter: alpha(opacity=80);  }  .white_content {  display: none;  position: absolute;  top: 25%;  left: 25%;  width: 50%;  height: 50%;  padding: 16px;  border: 16px solid orange;  background-color: white;  z-index:1002;  overflow: auto;  }  </style> 
</head> 
<body> 
<p>可以根据自己要求修改css样式<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">点击这里打开窗口</a></p> 
<div id="light" class="white_content"> 
    This is the lightbox content. 
    <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"> 
    Close</a></div> 
<div id="fade" class="black_overlay"> 
</div> 
</body> 
  </html>