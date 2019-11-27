using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class message : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserName"] != null)
            {
                DataListBind();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sql = string.Format("insert into 发帖(用户名,内容,时间) values('{0}','{1}','{2}')", Session["UserName"], txtMessage.Text.Trim(), DateTime.Now.ToLocalTime().ToString());
        try
        {
            if (db.UpdateDataBySql(sql))
            {
                Response.Write("<script>alert('发帖成功！')</script>");
                DataListBind();
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
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
}