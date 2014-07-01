<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";

        var dataArray = context.Request.QueryString["data"].Split(new string[] {"^^^"},
                                                                  StringSplitOptions.RemoveEmptyEntries);
        
        context.Response.Write("0");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}