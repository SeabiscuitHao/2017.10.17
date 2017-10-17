/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mywebtest;

/**
 *
 * @author Kerryhao
 */
public class NewClass {
    public String myResponse()
    {  
//       NewWebService_Service p=new NewWebService_Service();
       Webtest a=new Webtest(); 
       return a.getData("select * from tb_article");
    }
    
    public String myId(String id)
    {  
//       NewWebService_Service p=new NewWebService_Service();
       Webtest a=new Webtest(); 
       return a.getData("select * from tb_article where id = "+id);
    }
    
    public Boolean del(String id)
    {  
//        NewWebService_Service p=new NewWebService_Service();
       Webtest a=new Webtest(); 
       if(a.del(id)>0)
       return true;
       else
       return false;        
    }
    public Boolean add(String id)
    {  
//        NewWebService_Service p=new NewWebService_Service();
       Webtest a=new Webtest(); 
       if(a.del(id)>0)
       return true;
       else
       return false;        
    }
    public String select(String id)
    {  
       Webtest a=new Webtest(); 
       return a.getData("select * from tb_article where id=" +id);
    }
}