<%-- 
    Document   : doselect
    Created on : 2017-10-17, 21:39:45
    Author     : Kerryhao
--%>

  <%@page import="Mywebtest.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("utf-8");
int  flag= 0; 
String id= request.getParameter("id"); 
String title=request.getParameter("title"); 
String author= request.getParameter("author");
String keywords=request.getParameter("keywords");
String input=request.getParameter("input");
if(id!=null&&!"".equals(id)){ out.println("select * from tb_article where id='"+id+"'||title='"+title+"'||keywords='"+keywords+"'");
flag=new Webtest().select("select * from tb_article where input='id'||input='title'||input='keywords'");
} if(flag > 0){
    %> 
    <script type="text/javascript"> alert("搜索成功！"); 
    location= "index.jsp";
</script> 
<% }else{ %> 
<script type="text/javascript"> alert("搜索失败！"); 
    location= "index.jsp"; 
</script> 
<% } %>
