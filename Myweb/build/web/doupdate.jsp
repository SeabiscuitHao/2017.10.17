<%-- 
    Document   : douodate
    Created on : 2017-10-8, 19:45:33
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
if(id!=null&&!"".equals(id)){ out.println("update tb_article set title='"+title+"',author="+author+",keywords='"+keywords+"' where id="+id);
flag=new Webtest().update("update tb_article set title='"+title+"',author='"+author+"',keywords='"+keywords+"'where id="+id);
} if(flag > 0){
    %> 
    <script type="text/javascript"> alert("修改成功！"); 
    location= "index.jsp";
</script> 
<% }else{ %> 
<script type="text/javascript"> alert("修改失败！"); 
    location= "index.jsp"; 
</script> 
<% } %>
