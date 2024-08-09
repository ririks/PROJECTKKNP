using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Mahasiswa : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [INEXFOLER].[dbo].[mahasiswa]";

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
            sql = " INSERT INTO [INEXFOLER].[dbo].[mahasiswa]" +
           "([id_mahasiswa],[nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[konsentrasi],[angkatan],[sks])" +
           " VALUES(@idMhs,@Nim,@Nama,@Kelas,@Prodi,@Fakultas,@Konsen,@Angkatan,@Sks)";

            SqlCommand cmdsv = new SqlCommand(sql, koneksi);
            cmdsv.Parameters.AddWithValue("@idMhs", txtid_mahasiswa.Text);
            cmdsv.Parameters.AddWithValue("@Nim", txtNim.Text);
            cmdsv.Parameters.AddWithValue("@Nama", txtNama.Text);
            cmdsv.Parameters.AddWithValue("@Kelas", txtKelas.Text);
            cmdsv.Parameters.AddWithValue("@Prodi", txtProdi.Text);
            cmdsv.Parameters.AddWithValue("@Fakultas", txtFakultas.Text);
            cmdsv.Parameters.AddWithValue("@Konsen", txtKonsen.Text);
            cmdsv.Parameters.AddWithValue("@Angkatan", txtAngkatan.Text);
            cmdsv.Parameters.AddWithValue("@Sks", txtSKS.Text);
            koneksi.Open();
            cmdsv.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='Mahasiswa.aspx';", true);
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
            string id_mahasiswa = (sender as LinkButton).CommandArgument;

            string sql = "";
            sql = " DELETE FROM [INEXFOLER].[dbo].[mahasiswa] where id_mahasiswa=@idMhs ";

            SqlCommand cmddel = new SqlCommand(sql, koneksi);
            cmddel.Parameters.AddWithValue("@idMhs", id_mahasiswa);
            koneksi.Open();
            cmddel.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Delete Data Success " + "');window.location.href='Mahasiswa.aspx';", true);
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

            txtid_mahasiswa.Text = grc1.Cells[0].Text;
            txtNim.Text = grc1.Cells[1].Text;
            txtNama.Text = grc1.Cells[2].Text;
            txtKelas.Text = grc1.Cells[3].Text;
            txtProdi.Text = grc1.Cells[4].Text;
            txtFakultas.Text = grc1.Cells[5].Text;
            txtKonsen.Text = grc1.Cells[6].Text;
            txtAngkatan.Text = grc1.Cells[7].Text;
            txtSKS.Text = grc1.Cells[8].Text;

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
            sql = " UPDATE [INEXFOLER].[dbo].[mahasiswa] SET "
                + "[nim] = @Nim, [nama_mahasiswa] = @Nama, [kelas] = @Kelas, [prodi] = @prodi, [fakultas] = @Fakultas, [konsentrasi] = @Konsen, [angkatan] = @Angkatan, [sks] = @Sks" +
                " WHERE [id_mahasiswa] = @idMhs ";

            SqlCommand cmdupdt = new SqlCommand(sql, koneksi);
            cmdupdt.Parameters.AddWithValue("@idMhs", txtid_mahasiswa.Text);
            cmdupdt.Parameters.AddWithValue("@Nim", txtNim.Text);
            cmdupdt.Parameters.AddWithValue("@Nama", txtNama.Text);
            cmdupdt.Parameters.AddWithValue("@Kelas", txtKelas.Text);
            cmdupdt.Parameters.AddWithValue("@Prodi", txtProdi.Text);
            cmdupdt.Parameters.AddWithValue("@Fakultas", txtFakultas.Text);
            cmdupdt.Parameters.AddWithValue("@Konsen", txtKonsen.Text);
            cmdupdt.Parameters.AddWithValue("@Angkatan", txtAngkatan.Text);
            cmdupdt.Parameters.AddWithValue("@Sks", txtSKS.Text);
            koneksi.Open();
            cmdupdt.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='Mahasiswa.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}
