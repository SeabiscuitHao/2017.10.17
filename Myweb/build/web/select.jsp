<%-- 
    Document   : select
    Created on : 2017-10-17, 18:05:54
    Author     : Kerryhao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<form action="doselect.jsp"method="POST"> 
    <% Mywebtest.NewClass n=new Mywebtest.NewClass();
    String id=(String)request.getParameter("id"); 
String s=n.myId(id); 
String[]str=s.split(","); 
    %> 
    <select style="margin-left:20%;margin-top:10%;width:160px;">
        <option name="id">ID号</option>
        <option name="title">文章标题</option>
        <option name="author">作者</option>
        <option name="keywords">关键词</option>
    </select>
    <select style="margin-top:10%;width:60px;">
        <option name=">">></option>
        <option name="=">=</option>
        <option name="<"><</option>
    </select>
        <input type="text" style="margin-top:10%;width:60px;" name="input">
        <input type="submit" style="margin-top:10%;width:100px;" value="查询">
    
    </form>
