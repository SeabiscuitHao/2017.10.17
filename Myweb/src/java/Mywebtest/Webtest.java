/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mywebtest;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Kerryhao
 */
@WebService(serviceName = "Mywebtest")
public class Webtest {

    /**
     * This is a sample web service operation
     */
   @WebMethod(operationName = "getData")
    public String getData(String sql) {
       Database mydb=new Database();     
       ResultSet r=mydb.doQuery(sql);
       String result="";
       try{
       int i=0;    
       while(r.next())
       {   
           int id=r.getInt("id");
           String bookname=r.getString("title");
           String price=r.getString("author");
           String press=r.getString("keywords");
           i++;
           if(i==1)
           {
           result=result+String.valueOf(id)+","+bookname+","+String.valueOf(price)+","+press;
           }
           else
           {
                result=result+"@"+String.valueOf(id)+","+bookname+","+String.valueOf(price)+","+press; 
           }    
       }
       System.out.println(result);
       }
       catch(SQLException  e){}
       return result;
}
    @WebMethod(operationName = "del")
public int del(String id)
    {
     Database mydb=new Database();
     int result=mydb.doUpdate("delete from tb_article where id="+id);
     return result;
}
@WebMethod(operationName="update")  
        public int update(String sql) { 
            Database mydb=new Database(); 
            int result=mydb.doUpdate(sql); 
            return result;
        }
@WebMethod(operationName="insert") 
        public int insert(String sql) { 
            Database mydb=new Database(); 
            int result=mydb.doUpdate(sql); 
            return result;
        }
@WebMethod(operationName="select") 
        public int select(String sql) { 
            Database mydb=new Database(); 
            int result=mydb.doUpdate(sql); 
            return result;
        }
}
