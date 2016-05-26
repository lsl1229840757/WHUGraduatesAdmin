<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 1 none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
}
#navi{
	width:100%;
	position:relative;
	word-wrap:break-word;
	border-bottom:1px solid #065FB9;
	margin:0;
	padding:0;
	height:40px;
	line-height:40px;
	vertical-align:middle;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, 
#BFBFBF));
}
#naviDiv{
	font-size:14px;
	color:#333;
	padding-left:10px;
}
#tips{
	margin-top:10px;
	width:100%;
	height:40px;
}
#buttonGroup{
	padding-left:10px;
	float:left;
	height:35px;
}
.button{
	margin-top:20px;
	padding-left:10px;
	padding-right:10px;
	font-size:14px;
	width:70px;
	height:30px;
	line-height:30px;
	vertical-align:middle;
	text-align:center;
	cursor:pointer;
    border-color: #77D1F6;
    border-width: 1px;
    border-style: solid;
    border-radius: 6px 6px;
    -moz-box-shadow: 2px 2px 4px #282828;
    -webkit-box-shadow: 2px 2px 4px #282828;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainContainer{
	padding-left:10px;
	padding-right:10px;
	text-align:left;
	width:98%;
	font-size:16px;
}
select
{
    width: 120px;
    margin: 3px 0px;
}
form{
	margin-bottom: 8px;
}
</style>
<body>
<script type="text/javascript" src="../js/Calendar3.js"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/provinceandcity.js"></script>
<div id="navi">
	<div id='naviDiv'>
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;学生管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/students/Students_query.action">学生列表</a><span>&nbsp;
	</div>
</div>
<div id="tips">
</div>
<div id="mainContainer">
<!-- 从session中获取学生集合 -->
<strong>查找记录</strong>
<br>
<br>
<div>
	<s:fielderror/>
</div>

<form name="addForm" action="<%=path%>/students/Student_jobquery.action" method="post">
	<fieldset>
	<legend>职场生涯查询</legend>
	<table width="400" style="padding: 10px">
	  <tr>
	    <td width="30%">时间：</td>
	    <td><input type="text" name="time" /></td>
	  </tr>
	  <tr>
	    <td width="30%">状态：</td>
	    <td>
	    <!-- <input type="text" name="type" />-->
	    	<select name="type" class="input_v">
            	<option value=""></option>
            	<option value="境内升学">境内升学</option>
            	<option value="境外升学">境外升学</option>
            	<option value="协议就业">协议就业</option>
            	<option value="公务员">公务员</option>
            	<option value="选调生">选调生</option>
            	<option value="创业">创业</option>
            	<option value="待就业">待就业</option>
            	<option value="其他">其他</option>
            </select>
	    </td>
	  </tr>
	   <tr>
	    <td width="30%">单位：</td>
	    <td><input type="text" name="cname" /></td>
	  </tr>
	   <tr>
	    <td width="30%">岗位：</td>
	    <td><input type="text" name="job" /></td>
	  </tr>
	   <tr>
	    <td width="30%">备注：</td>
	    <td><input type="text" name="comment" /></td>
	  </tr>
	  <tr>
	    <td colspan="2" align="center"><input class="button" type="submit" value="查询"></td>
	  </tr>
	</table>
</fieldset>
</form>

</div>
</body>
</html>