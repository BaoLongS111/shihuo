using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string sql = "select * from 商品 where 种类='鞋子' order by 代码编号 desc";
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


}