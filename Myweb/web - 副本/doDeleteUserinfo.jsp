<%-- 
    Document   : doDeleteUserinfo
    Created on : 2017-10-8, 19:37:59
    Author     : Kerryhao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Mywebtest.*"%>
<%
Boolean flag=false;
String s = request.getParameter("id");
if(s!=null&&!"".equals(s)){
     flag=new NewClass().del(s);
}
if(flag){
	%>
	<script type="text/javascript">
		alert("删除成功！");
		location = "index.jsp";
	</script>
<%
}else{
	%>
	<script type="text/javascript">
		alert("删除失败！");
		location = "index.jsp";
	</script>
<%
}
%>
