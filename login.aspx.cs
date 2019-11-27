using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sql = string.Format("select * from 用户表 where 用户名='{0}' and 密码='{1}'", txtUserName.Text.Trim(), txtPwd.Text.Trim());
        try
        {
            DataSet ds = db.GetDataSetBySql(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["UserName"] = txtUserName.Text.Trim();
                Response.Write("<script>alert('登录成功!');location.href='Default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误!')</script>");
                txtUserName.Text = string.Empty;
                txtPwd.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            Response.Write(string.Format("<script>alert('{0}')</script>", ex.Message.ToString()));
        }
    }
}