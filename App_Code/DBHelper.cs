using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// DBHelper 的摘要说明
/// </summary>
public class DBHelper
{

    public DBHelper()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public SqlConnection con = new SqlConnection();
    public SqlCommand com = new SqlCommand();
    public SqlDataAdapter da = new SqlDataAdapter();
    public DataSet ds = new DataSet();
    public SqlDataReader dr = null;


    /// <summary>
    /// 得到连接字符串
    /// </summary>
    /// <returns></returns>
    public static string GetConnStr()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["ConStr"].ToString();
    }

    /// <summary>
    /// 通过sql语句得到DataSet
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public DataSet GetDataSetBySql(string sql)
    {
        con.ConnectionString = GetConnStr();
        com.Connection = con;
        com.CommandText = sql;
        da.SelectCommand = com;
        try
        {
            ds.Clear();
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message.ToString());
        }
        return ds;
    }

    /// <summary>
    /// 通过sql语句得到DataReader
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public SqlDataReader GetDataReaderBySql(string sql)
    {
        con.ConnectionString = GetConnStr();
        com.CommandText = sql;
        com.Connection = con;
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return com.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public string GetStringNoneQuery(string sql)
    {
        con.ConnectionString = GetConnStr();
        com.CommandText = sql;
        com.Connection = con;
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return com.ExecuteScalar().ToString();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }





    /// <summary>
    /// 通过sql语句获取更新结果
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public Boolean UpdateDataBySql(string sql)
    {
        con.ConnectionString = GetConnStr();
        com.CommandText = sql;
        com.Connection = con;
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            object obj = com.ExecuteNonQuery();
            if (Convert.ToInt32(obj) != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

}