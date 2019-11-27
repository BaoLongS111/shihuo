using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class dingdan : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataListBind();
        }
    }


    private void DataListBind()
    {
        string sql = string.Format("select * from 商品 inner join 订单表 on(商品.ID=订单表.商品编号) where 用户名='{0}'", Session["UserName"]);
        try
        {
            DataSet ds = db.GetDataSetBySql(sql);
            if (ds.Tables[0].Rows.Count != 0)
            {
                dl.DataSource = ds.Tables[0].DefaultView;
                dl.DataBind();
                lblTip.Visible = false;
            }
            else
            {
                dl.DataSource = ds.Tables[0].DefaultView;
                dl.DataBind();
                lblTip.Visible = true;
                lblTip.Text = "您还没有任何订单哦！";
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
        }
    }
}