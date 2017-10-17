<%-- 
    Document   : doinsert
    Created on : 2017-10-17, 18:54:10
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
if(id!=null&&!"".equals(id)){ out.println("insert into tb_article(id,title,author,keywords) values("+id+",'"+title+"','"+author+"','"+keywords+"')");
flag=new Webtest().insert("insert into tb_article(id,title,author,keywords) values("+id+",'"+title+"','"+author+"','"+keywords+"')");
} if(flag > 0){
    %> 
    <script type="text/javascript"> alert("插入成功！"); 
    location= "index.jsp";
</script> 
<% }else{ %> 
<script type="text/javascript"> alert("插入失败！"); 
    location= "index.jsp"; 
</script> 
<% } %>
