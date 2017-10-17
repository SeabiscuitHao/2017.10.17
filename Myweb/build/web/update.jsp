<%-- 
    Document   : update
    Created on : 2017-10-8, 19:41:47
    Author     : Kerryhao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Mywebtest.*"%> 
<form action="doupdate.jsp"method="POST"> 
    <% Mywebtest.NewClass n=new Mywebtest.NewClass();
    String id=(String)request.getParameter("id"); 
    String s=n.myId(id); 
    String[]str=s.split(","); 
    %> 
    <table border="0"cellspacing="0"cellpadding="0"width="100%" height="300px">
        <thead> 
            <tr > 
                <th width="20%"height="100px"></th> 
                <th width="20%"></th> 
                <th></th> 
                <th></th> 
                <th></th> 
                <th></th> 
            </tr> 
        </thead> 
        <tbody> 
            <tr> 
                <td></td>
                <td></td> 
                <td>ID&nbsp; 号 &nbsp; 值 :<input type="text" id="id" name="id" value=<%=id%> readonly="readonly"/></td> 
                <td></td> 
                <td></td> 
                <td></td> 
            </tr> 
            <tr> 
                <td></td>
                <td></td> 
                <td> 文 章 名 称 :<input type="text" name="title" value=<%=str[1]%> /></td>
                <td></td>
                <td></td>
                <td></td> 
            </tr>
            <tr>
                <td></td>
                <td></td> 
                <td>作&nbsp;&nbsp;&nbsp;&nbsp;者:<input type="text" name="author" value=<%=str[2]%> /></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr> 
                <td></td>
                <td></td>
                <td>关 键 字:<input type="text" name="keywords" value=<%=str[3]%> />&nbsp;<input type="submit" value="提交"/></td> 
                <td></td> 
                <td></td>
                <td></td>
            </tr>
    <tr> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td>
    </tr> 
    <tr> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td> 
        <td></td> 
    </tr> 
    </tbody> 
    </table> 
    </form>
