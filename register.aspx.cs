using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    DBHelper db = new DBHelper();

    string fengmian;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (!txtPwd.Text.Equals(txtPwd2.Text))
        {
            lblTip.Text = "两次密码输入不一致！";
            txtPwd.Text = "";
            txtPwd2.Text = "";
        }
        else
        {
            lblTip.Text = "";
            string sql2 = string.Format("select * from 用户表 where 用户名='{0}'", txtUserName.Text.Trim());
            DataSet ds = db.GetDataSetBySql(sql2);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTip.Text = "用户名已被占用！";
                txtUserName.Text = "";
            }
            else
            {
                try
                {
                    string fengmian_file = FileUpload_FengMian.PostedFile.FileName.ToString();
                    string fengmian_type = fengmian_file.Substring(fengmian_file.LastIndexOf("."));
                    string fengmian_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                    fengmian = fengmian_name + fengmian_type;
                    string path = Server.MapPath("images\\touxiang\\") + fengmian;
                    FileUpload_FengMian.SaveAs(path);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message.ToString());
                }

                string fengmian_path = "images/touxiang/" + fengmian;



                lblTip.Text = "";
                string sql = string.Format("insert into 用户表(用户名,密码,性别,头像,个性签名,爱好) values('{0}','{1}','{2}','{3}','{4}','{5}')", txtUserName.Text.Trim(), txtPwd.Text.Trim(), ddl.SelectedItem.Text.Trim(), fengmian_path, txtGeXing.Text.Trim(), txtHobby.Text.Trim());
                if (db.UpdateDataBySql(sql))
                {
                    Response.Write("<script>alert('注册成功！');location.href='login.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('注册失败！')</script>");
                }
            }

        }


    }
}