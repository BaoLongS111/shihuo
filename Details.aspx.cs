using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Details : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    string ddl;
    string size;

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString.Get("id").Replace("'", "");
        Session["id"] = id;

        if (!Page.IsPostBack)
        {
            string sql = string.Format("select * from 商品 left outer Join 图片 on(商品.ID=图片.商品编号) where 商品.ID='{0}'", id);
            try
            {
                DataSet ds = db.GetDataSetBySql(sql);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    rep.DataSource = ds.Tables[0].DefaultView;
                    rep.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write(string.Format("<script>alert('{0}')</script>", ex.Message.ToString()));
            }
        }
    }


    protected void rep_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "btnOrder")
        {
            if (Session["UserName"] != null)
            {
                string id = e.CommandArgument.ToString();
                Session["shangpin_id"] = id;
                string sql = string.Format("select 价格 from 商品 where ID='{0}'", id);
                foreach (RepeaterItem item in this.rep.Items)
                {
                    ddl = ((DropDownList)item.FindControl("ddl")).SelectedItem.Text;
                    size = ((TextBox)item.FindControl("txtSize")).Text;
                }
                int price = Convert.ToInt32(db.GetStringNoneQuery(sql)) * Convert.ToInt32(ddl);
                Session["price"] = price;
                Session["count"] = ddl;
                Session["size"] = size;
                Response.Redirect("goumai.aspx");

            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        if (e.CommandName == "btnShopCar")
        {
            if (Session["UserName"] != null)
            {
                string id = e.CommandArgument.ToString();
                Session["shangpin_id"] = id;
                string sql = string.Format("select 价格 from 商品 where ID='{0}'", id);
                foreach (RepeaterItem item in this.rep.Items)
                {
                    ddl = ((DropDownList)item.FindControl("ddl")).SelectedItem.Text;
                    size = ((TextBox)item.FindControl("txtSize")).Text;
                }
                int price = Convert.ToInt32(db.GetStringNoneQuery(sql)) * Convert.ToInt32(ddl);
                Session["price"] = price;
                Session["count"] = ddl;
                Session["size"] = size;

                string sql3 = string.Format("insert into 购物车(用户名,鞋子编号,数量,尺寸) values('{0}','{1}','{2}','{3}')", Session["UserName"], Session["shangpin_id"], ddl, size);
                if (db.UpdateDataBySql(sql3))
                {
                    int max_id = Convert.ToInt32(db.GetStringNoneQuery("select max(GID) from 购物车"));
                    string sql4 = string.Format("insert into 订单表(订单编号,用户名,商品编号,数量,尺寸,是否发货) values('{0}','{1}','{2}','{3}','{4}','False')", max_id, Session["UserName"], Session["shangpin_id"], ddl,size);

                    db.UpdateDataBySql(sql4);
                    Response.Write("<script>alert('加入购物车成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('加入购物车失败！')</script>");
                }

                
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }




    }
}