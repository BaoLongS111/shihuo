using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["AdminName"] != null)
            {
                lblTip.Visible = true;
                lblTip.Text = Session["AdminName"].ToString();
            }
            else
            {
                Response.Redirect("admin_login.aspx");
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["text"] = txtSearch.Text.Trim();
        Response.Redirect("search_order_container.aspx");
    }
}