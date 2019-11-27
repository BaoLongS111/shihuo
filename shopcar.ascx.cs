using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class shopcar : System.Web.UI.UserControl
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
        string sql = "select * from 商品 inner join 购物车 on(商品.ID=购物车.鞋子编号)";
        try
        {
            DataSet ds = db.GetDataSetBySql(sql);
            if (ds.Tables[0].Rows.Count != 0)
            {
                dl.DataSource = ds.Tables[0].DefaultView;
                dl.DataBind();
                lblTip.Visible = false;
                CalcPrice();
            }
            else
            {
                dl.DataSource = ds.Tables[0].DefaultView;
                dl.DataBind();
                lblTip.Visible = true;
                lblTip.Text = "您的购物车里没有任何商品哦！";
                btnPay.Visible = false;
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
        }
    }



    private void CalcPrice()
    {
        string sql = "select * from 商品 inner join 购物车 on(商品.ID=购物车.鞋子编号)";
        DataSet ds = db.GetDataSetBySql(sql);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                double price, sum = 0;
                int count;
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    price = double.Parse(ds.Tables[0].Rows[i]["价格"].ToString());
                    count = int.Parse(ds.Tables[0].Rows[i]["数量"].ToString());
                    sum += price * count;
                }
                btnPay.Text = "¥" + sum.ToString() + " 结算";
            }
            else
            {
                btnPay.Visible = false;
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('计算价格失败！')</script>");
        }
    }


    private string CalcPriceNum()
    {
        string sql = "select * from 商品 inner join 购物车 on(商品.ID=购物车.鞋子编号)";
        DataSet ds = db.GetDataSetBySql(sql);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                double price, sum = 0;
                int count;
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    price = double.Parse(ds.Tables[0].Rows[i]["价格"].ToString());
                    count = int.Parse(ds.Tables[0].Rows[i]["数量"].ToString());
                    sum += price * count;
                }
                return sum.ToString();
            }
            else
            {
                return null;
            }
        }
        catch (Exception)
        {
            return null;
        }
    }

    protected void btnPay_Click(object sender, EventArgs e)
    {
        Session["price"] = CalcPriceNum();
        Response.Redirect("goumai2.aspx");
    }

    protected void dl_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sql = string.Format("delete from 购物车 where GID='{0}'", id);
            string sql2 = string.Format("delete from 订单表 where 订单编号='{0}'", id);

            if (db.UpdateDataBySql(sql))
            {
                db.UpdateDataBySql(sql2);
                DataListBind();
                CalcPrice();
            }
            else
            {
                Response.Write("<script>alert('未删除成功!')</script>");
                DataListBind();
                CalcPrice();
            }
        }
    }
}