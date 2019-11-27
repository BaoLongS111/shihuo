﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class search_order : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();

    protected void Page_Load(object sender, EventArgs e)
    {

        string sql = string.Format("select * from 商品 inner join 订单表 on(商品.ID=订单表.商品编号) where 订单编号='{0}'", Session["text"].ToString());

        try
        {
            DataSet ds = db.GetDataSetBySql(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                dl.DataSource = ds.Tables[0].DefaultView;
                dl.DataBind();
            }
            else
            {
                Response.Write("<script>alert('没有搜到任何记录！')</script>");
            }
        }
        catch (SqlException sex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
        }
    }
}