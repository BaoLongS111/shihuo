using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class userInfo : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string sql = string.Format("select * from 用户表 where 用户名='{0}'", Session["UserName"]);
                DataSet ds = db.GetDataSetBySql(sql);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    rep.DataSource = ds.Tables[0].DefaultView;
                    rep.DataBind();
                }
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message.ToString());
            }

        }
    }
}