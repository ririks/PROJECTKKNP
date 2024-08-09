using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class CreateUser : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [INEXFOLER].[dbo].[user]";

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
            sql = " INSERT INTO [INEXFOLER].[dbo].[user]" +
           "([id_user],[username],[nim],[nama_mahasiswa],[password],[confirm_password],[status])" +
           " VALUES(@Userid,@Username,@Nim,@Nama,@password,@ConfirmPassword,@Status)";

            SqlCommand cmdsv = new SqlCommand(sql, koneksi);
            cmdsv.Parameters.AddWithValue("@Userid", txtuserid.Text);
            cmdsv.Parameters.AddWithValue("@Username", txtusername.Text);
            cmdsv.Parameters.AddWithValue("@Nim", txtnim.Text);
            cmdsv.Parameters.AddWithValue("@Nama", txtnama.Text);
            cmdsv.Parameters.AddWithValue("@password", txtpassword.Text);
            cmdsv.Parameters.AddWithValue("@ConfirmPassword", txtconfirm.Text);
            cmdsv.Parameters.AddWithValue("@Status", ddlstatus.SelectedValue);
            koneksi.Open();
            cmdsv.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='CreateUser.aspx';", true);
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
            string userid = (sender as LinkButton).CommandArgument;

            string sql = "";
            sql = " DELETE FROM [INEXFOLER].[dbo].[user] where id_user=@userid ";

            SqlCommand cmddel = new SqlCommand(sql, koneksi);
            cmddel.Parameters.AddWithValue("@userid", userid);
            koneksi.Open();
            cmddel.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Delete Data Success " + "');window.location.href='CreateUser.aspx';", true);
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

            txtuserid.Text = grc1.Cells[0].Text;
            txtusername.Text = grc1.Cells[1].Text;
            txtnim.Text = grc1.Cells[2].Text;
            txtnama.Text = grc1.Cells[3].Text;
            txtpassword.Text = grc1.Cells[4].Text;
            txtconfirm.Text = grc1.Cells[5].Text;
            ddlstatus.SelectedValue = grc1.Cells[6].Text;

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
            sql = " UPDATE [INEXFOLER].[dbo].[user] SET "
                + "[username] = @Username, [nim] = @Nim, [nama_mahasiswa] = @Nama, [password] = @password, [confirm_password] = @ConfirmPassword, [status] = @Status" +
                " WHERE [id_user] = @Userid ";

            SqlCommand cmdupdt = new SqlCommand(sql, koneksi);
            cmdupdt.Parameters.AddWithValue("@Userid", txtuserid.Text);
            cmdupdt.Parameters.AddWithValue("@Username", txtusername.Text);
            cmdupdt.Parameters.AddWithValue("@Nim", txtnim.Text);
            cmdupdt.Parameters.AddWithValue("@Nama", txtnama.Text);
            cmdupdt.Parameters.AddWithValue("@password", txtpassword.Text);
            cmdupdt.Parameters.AddWithValue("@ConfirmPassword", txtconfirm.Text);
            cmdupdt.Parameters.AddWithValue("@Status", ddlstatus.SelectedValue);
            koneksi.Open();
            cmdupdt.ExecuteNonQuery();
            koneksi.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('" + "Save Data Success " + "');window.location.href='CreateUser.aspx';", true);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}
