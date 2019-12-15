using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class addNew : System.Web.UI.UserControl
{
    DBHelper db = new DBHelper();

    string fengmian;
    string xiang1;
    string xiang2;
    string xiang3;
    string xiang4;


    string xiang1_path;
    string xiang2_path;
    string xiang3_path;
    string xiang4_path;



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }

    protected void btnJieSuan_Click(object sender, EventArgs e)
    {

        try
        {
            string fengmian_file = FileUpload_FengMian.PostedFile.FileName.ToString();
            string fengmian_type = fengmian_file.Substring(fengmian_file.LastIndexOf("."));
            string fengmian_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            fengmian = fengmian_name + fengmian_type;
            string path = Server.MapPath("images\\shoe\\") + fengmian;
            FileUpload_FengMian.SaveAs(path);


            string xiang1_file = FileUpload_XiangQing1.PostedFile.FileName.ToString();
            string xiang1_type = xiang1_file.Substring(xiang1_file.LastIndexOf("."));
            string xiang1_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            xiang1 = xiang1_name + "1" + xiang1_type;
            string path1 = Server.MapPath("images\\shoe\\") + xiang1;
            FileUpload_XiangQing1.SaveAs(path1);

            string xiang2_file = FileUpload_XiangQing2.PostedFile.FileName.ToString();
            string xiang2_type = xiang2_file.Substring(xiang2_file.LastIndexOf("."));
            string xiang2_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            xiang2 = xiang2_name + "2" + xiang2_type;
            string path2 = Server.MapPath("images\\shoe\\") + xiang2;
            FileUpload_XiangQing2.SaveAs(path2);

            string xiang3_file = FileUpload_XiangQing3.PostedFile.FileName.ToString();
            string xiang3_type = xiang3_file.Substring(xiang3_file.LastIndexOf("."));
            string xiang3_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            xiang3 = xiang3_name + "3" + xiang3_type;
            string path3 = Server.MapPath("images\\shoe\\") + xiang3;
            FileUpload_XiangQing3.SaveAs(path3);


            string xiang4_file = FileUpload_XiangQing4.PostedFile.FileName.ToString();
            string xiang4_type = xiang4_file.Substring(xiang4_file.LastIndexOf("."));
            string xiang4_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            xiang4 = xiang4_name + "4" + xiang4_type;
            string path4 = Server.MapPath("images\\shoe\\") + xiang4;
            FileUpload_XiangQing4.SaveAs(path4);


        }
        catch (SqlException SEX)
        {
            Response.Write(string.Format("<script>alert('{0}！')</script>", SEX.Message.ToString()));
        }

        string fengmian_path = "images/shoe/" + fengmian;
        xiang1_path = "images/shoe/" + xiang1;
        xiang2_path = "images/shoe/" + xiang2;
        xiang3_path = "images/shoe/" + xiang3;
        xiang4_path = "images/shoe/" + xiang4;


        string sql = string.Format("insert into 商品 (名称,介绍,种类,类型,价格,颜色,色值,代码编号,图片,时间) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", txtShoeName.Text, txtShoeInfo.Text,ddl.SelectedItem.Text,txtShoeType.Text, Convert.ToInt32(txtShoePrice.Text), txtShoeColor.Text, Convert.ToInt32(txtShoeColorNum.Text), txtShoeStyle.Text, fengmian_path
            ,DateTime.Now.ToString("yyyy-MM-dd"));

        try
        {
            if (db.UpdateDataBySql(sql))
            {

                string sql2 = "select max(ID) from 商品";
                string id = db.GetStringNoneQuery(sql2);

                string sql3 = string.Format("insert into 图片 values('{0}','{1}','{2}','{3}','{4}')", id, xiang1_path, xiang2_path, xiang3_path, xiang4_path);
                if (db.UpdateDataBySql(sql3))
                {
                    Response.Write("<script>alert('新增成功！')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('新增失败！')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('新增失败！')</script>");
        }

    }
}