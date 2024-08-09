using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class InputDosen : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [INEXFOLER].[dbo].[dosen]";

        koneksi.Open();
        SqlCommand cmdget = new SqlCommand(sql, koneksi);
        SqlDataAdapter daget = new SqlDataAdapter(cmdget);
        DataTable dtget = new DataTable();
        daget.Fill(dtget);
        koneksi.Close();
        if (dtget.Rows.Count > 0)
        {
            grc1.DataSource = dtget;
            grc1.DataBind();
        }
    }

    protected void txtsave_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "";
            sql = " INSERT INTO [INEXFOLER].[dbo].[dosen]" +
           "([id_dosen],[nama_dosen],[nidn],[no_telp],[email])" +
           " VALUES(@idDsn,@Nama,@Nidn,@Telp,@Email)";

            SqlCommand cmdsv = new SqlCommand(sql, koneksi);
            cmdsv.Parameters.AddWithValue("@idDsn", txtid_dosen.Text);
            cmdsv.Parameters.AddWithValue("@Nama", txtNama.Text);
            cmdsv.Parameters.AddWithValue("@Nidn", txtNidn.Text);
            cmdsv.Parameters.AddWithValue("@Telp", txtTelp.Text);
            cmdsv.Parameters.AddWithValue("@Email", txtEmail.Text);
            koneksi.Open();
            cmdsv.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='InputDosen.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }

    }

    protected void lnkdelete_Click(object sender, EventArgs e)
    {
        try
        {
            string id_dosen = (sender as LinkButton).CommandArgument;

            string sql = "";
            sql = " DELETE FROM [INEXFOLER].[dbo].[dosen] where id_dosen=@idDsn ";

            SqlCommand cmddel = new SqlCommand(sql, koneksi);
            cmddel.Parameters.AddWithValue("@idDsn", id_dosen);
            koneksi.Open();
            cmddel.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Delete Data Success " + "');window.location.href='InputDosen.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }

    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        try
        {
            txtsave.Visible = false;

            string userid = (sender as LinkButton).CommandArgument;

            LinkButton lnk = (LinkButton)sender;
            GridViewRow grc1 = (GridViewRow)lnk.NamingContainer;

            txtid_dosen.Text = grc1.Cells[0].Text;
            txtNama.Text = grc1.Cells[1].Text;
            txtNidn.Text = grc1.Cells[2].Text;
            txtTelp.Text = grc1.Cells[3].Text;
            txtEmail.Text = grc1.Cells[4].Text;

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void txtUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "";
            sql = " UPDATE [INEXFOLER].[dbo].[dosen] SET "
                + "[nama_dosen] = @Nama, [nidn] = @Nidn, [no_telp] = @Telp, [email] = @Email" +
                " WHERE [id_dosen] = @idDsn ";

            SqlCommand cmdupdt = new SqlCommand(sql, koneksi);
            cmdupdt.Parameters.AddWithValue("@idDsn", txtid_dosen.Text);
            cmdupdt.Parameters.AddWithValue("@Nama", txtNama.Text);
            cmdupdt.Parameters.AddWithValue("@Nidn", txtNidn.Text);
            cmdupdt.Parameters.AddWithValue("@Telp", txtTelp.Text);
            cmdupdt.Parameters.AddWithValue("@Email", txtEmail.Text);
            koneksi.Open();
            cmdupdt.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='InputDosen.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}