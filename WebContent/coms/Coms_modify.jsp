<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
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
.list input{
	display: inline-block;
	width: 100%;
	height:100%;
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
<strong>修改单位资料</strong>
<br>
<br>
<form name="modifyForm" action="<%=path%>/coms/Com_update.action" method="post" style="margin-bottom: 20px">
<h3>基本信息</h3>
<table width="400" style="padding: 10px">
  <tr>
    <td width="30%">单位名称：</td>
    <td><input type="text" name="sname" value='<s:property value="#request.modify_students.sname"/>'/></td>
  </tr>
   <tr>
    <td width="30%">单位名称：</td>
    <td><input type="text" name="sname" value='<s:property value="#request.modify_students.sname"/>'/></td>
  </tr>
  <tr>
  	<td width="30%">单位性质:</td>
  	<td>
  		<select name="political">
  			<option value='<s:property value="#request.modify_students.political"/>' selected><s:property value="#request.modify_students.political"/></option>
  			<option value="无">无</option>
  			<option value="共青团员">共青团员</option>
  			<option value="共产党员">共产党员</option>
  		</select>
  	</td>
  </tr>
  <tr>
    <!--<input type="text" name="address" /> -->
    <td>所在省：</td>
    <td>
    	<select id="selProvince" name="sprov">
    		<option value='<s:property value="#request.modify_students.sprov"/>' selected><s:property value="#request.modify_students.sprov"/></option>
    	</select>
    </td>
  </tr>
  <tr>
  	<td>所在市：</td>
  	<td>
  		<select id="selCity" name="scity" onclick="provinceChange();">
  			<option value='<s:property value="#request.modify_students.scity"/>' selected><s:property value="#request.modify_students.scity"/></option>
  		</select>
  	</td>
  </tr>
  <tr>
  	<td><input class="button" type="button" value="返回" onclick="window.location.href='Com_comquery.action'"></td>
    <td><input class="button" type="submit" value="修改"></td>
  </tr>
</table>
</form>

</div>
<script type="text/javascript" src="../js/addschool.js"></script>
</body>
</html>