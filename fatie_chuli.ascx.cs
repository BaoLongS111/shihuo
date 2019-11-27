using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class fatie_chuli : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["AdminName"] != null)
            {
                DataListBind();
            }
            else
            {
                Response.Redirect("admin_login.aspx");
            }
        }
    }


    private void DataListBind()
    {

        string sql = "select * from 发帖";
        DataSet ds = db.GetDataSetBySql(sql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            rep.DataSource = ds.Tables[0].DefaultView;
            rep.DataBind();
        }
        else
        {
            rep.DataSource = ds.Tables[0].DefaultView;
            rep.DataBind();
        }
    }

    protected void rep_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sql = string.Format("delete from 发帖 where ID='{0}'", id);

            if (db.UpdateDataBySql(sql))
            {
                db.UpdateDataBySql(sql);
                Response.Write("<script>alert('删除成功!')</script>");
                DataListBind();
            }
            else
            {
                Response.Write("<script>alert('未删除成功!')</script>");
                DataListBind();
            }
        }
    }
}