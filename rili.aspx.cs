using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class rili : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select top 6 * from 商品 where 种类='鞋子' order by 时间 desc";
        DataSet ds = db.GetDataSetBySql(sql);
        rep.DataSource = ds.Tables[0].DefaultView;
        rep.DataBind();
    }
}