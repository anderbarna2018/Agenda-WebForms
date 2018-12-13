using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cursos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

}