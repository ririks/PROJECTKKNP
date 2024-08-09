using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class FrontKKP : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
            string sql = "";
            sql = "INSERT INTO [INEXFOLER].[dbo].[kkp] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk],[penempatan],[alamat],[judul],[lama_kegiatan]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK, @NamaPerusahaan, " +
                "@AlamatPerusahaan, @Judul, @Durasi)";

            SqlCommand cmdsv = new SqlCommand(sql, koneksi);
                cmdsv.Parameters.AddWithValue("@Nim", tNim.Text);
                cmdsv.Parameters.AddWithValue("@Nama", tNama.Text);
                cmdsv.Parameters.AddWithValue("@Kelas", tKelas.Text);
                cmdsv.Parameters.AddWithValue("@Prodi", tProdi.Text);
                cmdsv.Parameters.AddWithValue("@Fakultas", tFakultas.Text);
                cmdsv.Parameters.AddWithValue("@Angkatan", tAngkatan.Text);
                cmdsv.Parameters.AddWithValue("@SKS", tSks.Text);
                cmdsv.Parameters.AddWithValue("@IPK", tIpk.Text);
                cmdsv.Parameters.AddWithValue("@NamaPerusahaan", tNP.Text);
                cmdsv.Parameters.AddWithValue("@AlamatPerusahaan", tAlamat.Text);
                cmdsv.Parameters.AddWithValue("@Judul", tJudul.Text);
                cmdsv.Parameters.AddWithValue("@Durasi", tDurasi.Text);
            koneksi.Open();
            cmdsv.ExecuteNonQuery();
            koneksi.Close();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Save Data Success');window.location.href='FrontKKP.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }
    
}