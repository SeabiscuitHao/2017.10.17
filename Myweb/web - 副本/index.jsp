<%-- 
    Document   : index
    Created on : 2017-10-8, 19:19:14
    Author     : Kerryhao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
		function del(id){
			if(confirm("是否确认删除?")){
				location="doDeleteUserinfo.jsp?id="+id;
			}else{
				alert("取消删除!");
				location="index.jsp";
			}
		}
        </script>
    </head>
    <body>
       <%@page import="Mywebtest.*"  %>
  <table width="60%" align="center" style=" margin-top: 5%; color: black; background: rgb( 200, 200, 169)" border="1">
            <tr>  
                <td>ID</td>
                <td>文章名称</td>
                <td>作者</td>
                <td>关键字</td>
                <td>操作</td>
            </tr>
              <%
        Mywebtest.NewClass n=new Mywebtest.NewClass();
        String s=n.myResponse();
        String[] t=s.split("@");
        for(int i=0;i<t.length;i++)
        {   
           String[] h=t[i].split(","); %>
           <tr>
            <%
            String id="";
           for(int k=0;k<h.length;k++)
            {  if(k==0)
               id=h[k];
           %>
           
               <td><%=h[k] %></td>
               <%} %>
               <td><a href="javascript:del(<%=id%>) ">删除</a><a href="update.jsp?id=<%=id%>">修改</a></td>
           </tr>
           <%  }           
        
         %>  
        </table>
    </body>
</html>
