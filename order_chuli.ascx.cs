using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class order_chuli : System.Web.UI.UserControl
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
        string sql = "select * from 商品 inner join 订单表 on(商品.ID=订单表.商品编号)";
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
                lblTip.Text = "没有任何订单！";
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
        }
    }

    protected void dl_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        try
        {
            string sql2 = string.Format("update 订单表 set 是否发货='False',状态='已发货' where 订单编号='{0}'", id);
            if (db.UpdateDataBySql(sql2))
            {
                Response.Write("<script>alert('更新成功!')</script>");
                DataListBind();
            }
            else
            {
                Response.Write("<script>alert('更新失败!')</script>");
                DataListBind();
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
        }
    }
}