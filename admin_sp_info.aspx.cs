using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_sp_info : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    string name;
    string info;
    int price;
    string color;
    int colorNum;

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
        if (e.CommandName == "btnModify")
        {
            if (Session["AdminName"] != null)
            {
                string id = e.CommandArgument.ToString();
                Session["shangpin_id"] = id;

                foreach (RepeaterItem item in this.rep.Items)
                {
                    name = ((TextBox)item.FindControl("txtName")).Text;
                    info = ((TextBox)item.FindControl("txtInfo")).Text;
                    price = Convert.ToInt32(((TextBox)item.FindControl("txtPrice")).Text);
                    color = ((TextBox)item.FindControl("txtColor")).Text;
                    colorNum = Convert.ToInt32(((TextBox)item.FindControl("txtColorNum")).Text);
                }


                string sql = string.Format("update 商品 set 名称='{0}',介绍='{1}',价格='{2}',颜色='{3}',色值='{4}' where ID='{5}'",name,info,price,color,colorNum,id);

                if (db.UpdateDataBySql(sql))
                {
                    Response.Write("<script>alert('修改成功！');location.href='admin_index.aspx';</script>");
                }



            }
            else
            {
                Response.Redirect("admin_login.aspx");
            }

        }





    }
}