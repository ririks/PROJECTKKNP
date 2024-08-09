using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class LihatKKP : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        string sql = "SELECT * FROM [INEXFOLER].[dbo].[kkp]";
        SqlCommand cmdget = new SqlCommand(sql, koneksi);
        SqlDataAdapter daget = new SqlDataAdapter(cmdget);
        DataTable dtget = new DataTable();
        daget.Fill(dtget);

        if (dtget.Rows.Count > 0)
        {
            grc1.DataSource = dtget;
            grc1.DataBind();
        }

        string sqlDosen = "SELECT nama_dosen FROM [INEXFOLER].[dbo].[dosen]";
        SqlCommand cmdDosen = new SqlCommand(sqlDosen, koneksi);
        SqlDataAdapter daDosen = new SqlDataAdapter(cmdDosen);
        DataTable dtDosen = new DataTable();
        daDosen.Fill(dtDosen);

        foreach (GridViewRow row in grc1.Rows)
        {
            DropDownList ddlDosen = (DropDownList)row.FindControl("ddldosen");
            ddlDosen.DataSource = dtDosen;
            ddlDosen.DataTextField = "nama_dosen";
            ddlDosen.DataBind();
        }
    }

}