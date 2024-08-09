using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "SELECT username, status FROM [user] WITH(NOLOCK) " +
                         "WHERE username = @USERNAME AND password = @PASSWORD;";
            koneksi.Open();

            SqlCommand cmdcek = new SqlCommand(sql, koneksi);
            cmdcek.Parameters.AddWithValue("@USERNAME", tUser.Text);
            cmdcek.Parameters.AddWithValue("@PASSWORD", tPass.Text);

            SqlDataAdapter dacek = new SqlDataAdapter(cmdcek);
            DataTable dtcek = new DataTable();
            dacek.Fill(dtcek);
            koneksi.Close();

            if (dtcek.Rows.Count == 1)
            {
                Session["username"] = dtcek.Rows[0]["username"].ToString();
                string status = dtcek.Rows[0]["status"].ToString();

                if (status.Equals("mahasiswa", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("~/Home.aspx");
                }
                else if (status.Equals("admin", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("~/Mahasiswa.aspx");
                }
                else if (status.Equals("dosen", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("~/Dosen.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Akun anda belum terdaftar, silakan hubungi Admin.'); window.location.href='Login.aspx';", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Username atau password salah.'); window.location.href='Login.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}


