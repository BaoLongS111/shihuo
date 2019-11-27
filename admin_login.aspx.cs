using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sql = string.Format("select * from 管理员表 where 管理员名='{0}' and 密码='{1}'", txtAdminName.Text.Trim(), txtPwd.Text.Trim());
        try
        {
            DataSet ds = db.GetDataSetBySql(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["AdminName"] = txtAdminName.Text.Trim();
                Response.Write("<script>alert('登录成功!');location.href='admin_index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('账号或密码错误!')</script>");
                txtAdminName.Text = string.Empty;
                txtPwd.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", ex.Message.ToString()));
        }
    }
}