using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FrontKKN : System.Web.UI.Page
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
            sql = "INSERT INTO [INEXFOLER].[dbo].[kkn_h]([nama_kelompok],[tempat],[lokasi_detail],[judul],[lama_kegiatan]) " +
                "VALUES(@kelompok, @tempat, @lokasi_d, @judul, @lama)";

            SqlCommand cmdsv = new SqlCommand(sql, koneksi);
            cmdsv.Parameters.Add("@kelompok", SqlDbType.NVarChar, 50).Value = tNamaKel.Text;
            cmdsv.Parameters.Add("@tempat", SqlDbType.NVarChar, 50).Value = tTemPen.Text;
            cmdsv.Parameters.Add("@lokasi_d", SqlDbType.NVarChar, 50).Value = tAlamat.Text;
            cmdsv.Parameters.Add("@judul", SqlDbType.NVarChar, 50).Value = tJudul.Text;
            cmdsv.Parameters.Add("@lama", SqlDbType.NVarChar, 50).Value = tDurasi.Text;

            string sql2 = "";
            sql2 = "INSERT INTO [INEXFOLER].[dbo].[kkn_d] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK)";

            SqlCommand cmdsv2 = new SqlCommand(sql2, koneksi);
            cmdsv2.Parameters.Add("@Nim", SqlDbType.NVarChar, 50).Value = tNim.Text;
            cmdsv2.Parameters.Add("@Nama", SqlDbType.NVarChar, 50).Value = tNama.Text;
            cmdsv2.Parameters.Add("@Kelas", SqlDbType.NVarChar, 50).Value = tKelas.Text;
            cmdsv2.Parameters.Add("@Prodi", SqlDbType.NVarChar, 50).Value = tProdi.Text;
            cmdsv2.Parameters.Add("@Fakultas", SqlDbType.NVarChar, 50).Value = tFakultas.Text;
            cmdsv2.Parameters.Add("@Angkatan", SqlDbType.NVarChar, 50).Value = tAngkatan.Text;
            cmdsv2.Parameters.Add("@SKS", SqlDbType.NVarChar, 50).Value = tSks.Text;
            cmdsv2.Parameters.Add("@IPK", SqlDbType.NVarChar, 50).Value = tIpk.Text;

            string sql3 = "";
            sql3 = "INSERT INTO [INEXFOLER].[dbo].[kkn_d] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK)";

            SqlCommand cmdsv3 = new SqlCommand(sql2, koneksi);
            cmdsv3.Parameters.Add("@Nim", SqlDbType.NVarChar, 50).Value = tNim2.Text;
            cmdsv3.Parameters.Add("@Nama", SqlDbType.NVarChar, 50).Value = tNama2.Text;
            cmdsv3.Parameters.Add("@Kelas", SqlDbType.NVarChar, 50).Value = tKelas2.Text;
            cmdsv3.Parameters.Add("@Prodi", SqlDbType.NVarChar, 50).Value = tProdi2.Text;
            cmdsv3.Parameters.Add("@Fakultas", SqlDbType.NVarChar, 50).Value = tFakultas2.Text;
            cmdsv3.Parameters.Add("@Angkatan", SqlDbType.NVarChar, 50).Value = tAngkatan2.Text;
            cmdsv3.Parameters.Add("@SKS", SqlDbType.NVarChar, 50).Value = tSks2.Text;
            cmdsv3.Parameters.Add("@IPK", SqlDbType.NVarChar, 50).Value = tIpk2.Text;

            string sql4 = "";
            sql4 = "INSERT INTO [INEXFOLER].[dbo].[kkn_d] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK)";

            SqlCommand cmdsv4 = new SqlCommand(sql2, koneksi);
            cmdsv4.Parameters.Add("@Nim", SqlDbType.NVarChar, 50).Value = tNim3.Text;
            cmdsv4.Parameters.Add("@Nama", SqlDbType.NVarChar, 50).Value = tNama3.Text;
            cmdsv4.Parameters.Add("@Kelas", SqlDbType.NVarChar, 50).Value = tKelas3.Text;
            cmdsv4.Parameters.Add("@Prodi", SqlDbType.NVarChar, 50).Value = tProdi3.Text;
            cmdsv4.Parameters.Add("@Fakultas", SqlDbType.NVarChar, 50).Value = tFakultas3.Text;
            cmdsv4.Parameters.Add("@Angkatan", SqlDbType.NVarChar, 50).Value = tAngkatan3.Text;
            cmdsv4.Parameters.Add("@SKS", SqlDbType.NVarChar, 50).Value = tSks3.Text;
            cmdsv4.Parameters.Add("@IPK", SqlDbType.NVarChar, 50).Value = tIpk3.Text;

            string sql5 = "";
            sql5 = "INSERT INTO [INEXFOLER].[dbo].[kkn_d] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK)";

            SqlCommand cmdsv5 = new SqlCommand(sql2, koneksi);
            cmdsv5.Parameters.Add("@Nim", SqlDbType.NVarChar, 50).Value = tNim4.Text;
            cmdsv5.Parameters.Add("@Nama", SqlDbType.NVarChar, 50).Value = tNama4.Text;
            cmdsv5.Parameters.Add("@Kelas", SqlDbType.NVarChar, 50).Value = tKelas4.Text;
            cmdsv5.Parameters.Add("@Prodi", SqlDbType.NVarChar, 50).Value = tProdi4.Text;
            cmdsv5.Parameters.Add("@Fakultas", SqlDbType.NVarChar, 50).Value = tFakultas4.Text;
            cmdsv5.Parameters.Add("@Angkatan", SqlDbType.NVarChar, 50).Value = tAngkatan4.Text;
            cmdsv5.Parameters.Add("@SKS", SqlDbType.NVarChar, 50).Value = tSks4.Text;
            cmdsv5.Parameters.Add("@IPK", SqlDbType.NVarChar, 50).Value = tIpk4.Text;

            string sql6 = "";
            sql6 = "INSERT INTO [INEXFOLER].[dbo].[kkn_d] ([nim],[nama_mahasiswa],[kelas],[prodi],[fakultas],[angkatan], " +
                "[sks],[ipk]) " +
                "VALUES (@Nim, @Nama, @Kelas, @Prodi, @Fakultas, @Angkatan, @SKS, @IPK)";

            SqlCommand cmdsv6 = new SqlCommand(sql2, koneksi);
            cmdsv6.Parameters.Add("@Nim", SqlDbType.NVarChar, 50).Value = tNim5.Text;
            cmdsv6.Parameters.Add("@Nama", SqlDbType.NVarChar, 50).Value = tNama5.Text;
            cmdsv6.Parameters.Add("@Kelas", SqlDbType.NVarChar, 50).Value = tKelas5.Text;
            cmdsv6.Parameters.Add("@Prodi", SqlDbType.NVarChar, 50).Value = tProdi5.Text;
            cmdsv6.Parameters.Add("@Fakultas", SqlDbType.NVarChar, 50).Value = tFakultas5.Text;
            cmdsv6.Parameters.Add("@Angkatan", SqlDbType.NVarChar, 50).Value = tAngkatan5.Text;
            cmdsv6.Parameters.Add("@SKS", SqlDbType.NVarChar, 50).Value = tSks5.Text;
            cmdsv6.Parameters.Add("@IPK", SqlDbType.NVarChar, 50).Value = tIpk5.Text;

            koneksi.Open();
            cmdsv.ExecuteNonQuery();
            cmdsv2.ExecuteNonQuery();
            cmdsv3.ExecuteNonQuery();
            cmdsv4.ExecuteNonQuery();
            cmdsv5.ExecuteNonQuery();
            cmdsv6.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Save Data Success');window.location.href='FrontKKN.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
        finally
        {
            if (koneksi.State == ConnectionState.Open)
            {
                koneksi.Close();
            }
        }
    }
}