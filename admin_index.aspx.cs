using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_index : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataListBind();
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string id = btn.ToolTip;

        string sql = string.Format("delete from 商品 where ID='{0}'", id);
        if (db.UpdateDataBySql(sql))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            DataListBind();
        }
    }

    private void DataListBind()
    {
        string sql = "select * from 商品 where 种类='鞋子'";
        string sql2 = "select count(*) from 商品 where 种类='鞋子'";

        string count = db.GetStringNoneQuery(sql2);

        DataSet ds = db.GetDataSetBySql(sql);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                rep.DataSource = ds.Tables[0].DefaultView;
                rep.DataBind();
                lblCount.Text = "共有" + count + "商品";
            }
            else
            {
                lblCount.Text = "未搜到任何记录！";
            }
        }
        catch (Exception ex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", ex.Message.ToString()));
        }
    }
}