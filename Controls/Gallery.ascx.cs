using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class Controls_Gallery : System.Web.UI.UserControl
{
    public short GallerySize;
    public string HtmlId;
    public string Path;
    public bool Show = true;
    private readonly short gWith = 4;



    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder(512);
        if (!Show)
            sb.AppendFormat(@"<div  id = ""{0}"" style=""display:none;"">", HtmlId);
        else
            sb.AppendFormat(@"<div  id = ""{0}"">", HtmlId);
        

        sb.AppendFormat(
            @"<ul class=""thumbnails"" id = ""hover-cap-4col"">", HtmlId);

        for (int i = 0; i < GallerySize; i++)
        {
            sb.Append(getItem(Path, i + 1));
            if ((i + 1 )% gWith == 0 && i + 1 != GallerySize)
                sb.Append(@"</ul>
                            <ul class=""thumbnails"" id=""hover-cap-4col"">");
        }

        sb.Append(@"</ul>
                </div>");
        galleryLt.Text = sb.ToString();
    }


    private string getItemTempl = 
                @"<li class=""span3"">
                    <div class=""thumbnail"">
                        <div class=""caption"" style=""display: none; text-align: center;"">
                            <img src=""icons/zoom_in.png"" alt="""" onclick=""bigProductDlg.show('{0}.jpg')"" />
                            <div class=""controls"">
                                <input type=""submit"" name=""add"" value=""Хочу такую!"" class=""btn btn-success header-button""
                                    onclick=""galleryCntr.showIWant('{1}.jpg')"" />
                            </div>
                        </div>
                        <br />
                        <img src=""{2}.jpg"" alt=""теплица"">
                        <br />
                    </div>
                </li>";
    private string getItem(string path, int num) 
    {
        return string.Format(getItemTempl, path + @"/" + num, path + @"/thumbnail/" + num, path + @"/thumbnail/" + num);
    }
}