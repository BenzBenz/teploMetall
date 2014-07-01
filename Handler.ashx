<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";

        string[] dataArray = context.Request.QueryString["data"].Split(new string[] {"^^^"},
                                                                  StringSplitOptions.None);
        
        context.Response.Write("0");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}