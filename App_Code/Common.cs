using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Common
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)] 
[System.ComponentModel.ToolboxItem(false)] 
public class Common : System.Web.Services.WebService {

    public Common () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public AjaxResult HelloWorld(string d)
    {
        //return new AjaxResult(0, "{ data:'Hello World'}");
        return new AjaxResult(0,"0");
    }
    
}
