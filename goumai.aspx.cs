using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class goumai : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
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

        string sql3 = "select max(订单编号) from 订单表";
        int max_id = Convert.ToInt32(db.GetStringNoneQuery(sql3)) + 1;

        string sql2 = string.Format("insert into 详细订单表(用户名,姓名,日期,付款方式,总价,备注,手机号,地址,所有订单编号) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", Session["UserName"],txtUserName.Text.Trim(), DateTime.Now.ToLocalTime().ToString(), ddl.SelectedItem.Text.Trim(), Convert.ToInt32(Session["price"]), txtRemarks.Text.Trim(), txtPhone.Text.Trim(), txtAddress.Text.Trim(), max_id);

        string sql = string.Format("insert into 订单表(订单编号,用户名,商品编号,数量,尺寸,是否发货) values('{0}','{1}','{2}','{3}','{4}','{5}')", Convert.ToInt32(max_id), Session["UserName"], Session["shangpin_id"], Session["count"], Session["size"], false);

        if (db.UpdateDataBySql(sql))
        {
            if (db.UpdateDataBySql(sql2))
            {
                Response.Write("<script>alert('购买成功！');location.href='Default.aspx'</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('购买失败！');location.href='Default.aspx'</script>");
        }
    }

}