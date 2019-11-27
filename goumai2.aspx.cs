using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class goumai2 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    string orders;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserName"] != null)
            {
                txtTotal.Text = "¥" + Session["price"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {

        if (txtPhone.Text.Length == 11)
        {
            try
            {
                string sql = string.Format("select GID from 购物车 where 用户名='{0}'", Session["UserName"]);

                SqlDataReader dr = db.GetDataReaderBySql(sql);
                while (dr.Read())
                {
                    orders += dr["GID"].ToString() + ",";
                }
                dr.Close();

                string sql2 = string.Format("insert into 详细订单表(用户名,姓名,日期,付款方式,总价,备注,手机号,地址,所有订单编号) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", Session["UserName"], txtUserName.Text.Trim(), DateTime.Now.ToLocalTime().ToString(), ddl.SelectedItem.Text.Trim(), Convert.ToInt32(Session["price"]), txtRemarks.Text.Trim(), txtPhone.Text.Trim(), txtAddress.Text.Trim(), orders);


                if (db.UpdateDataBySql(sql2))
                {
                    Response.Write("<script>alert('下单成功！');location.href='Default.aspx';</script>");

                    string sql3 = string.Format("delete from 购物车 where 用户名='{0}'", Session["UserName"]);

                    db.UpdateDataBySql(sql3);

                    string sql4 = string.Format("update 订单表 set 状态='未发货' where 状态='未付款' and 用户名='{0}'", Session["UserName"]);
                    db.UpdateDataBySql(sql4);

                }
                else
                {
                    Response.Write("<script>alert('订单失败！')</script>");
                }
            }
            catch (SqlException sex)
            {
                Response.Write(string.Format("<script>alert('{0}')</script>", sex.Message.ToString()));
            }

        }
        else
        {
            Response.Write("<script>alert('请输入正确的手机号!')</script>");
            txtPhone.Text = string.Empty;
        }

    }
}