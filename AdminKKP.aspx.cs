using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AdminKKP : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
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

    protected void txtUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            DropDownList ddlstatus = (DropDownList)row.FindControl("ddlstatus");

            if (grc1.DataKeys != null && row.RowIndex >= 0 && row.RowIndex < grc1.DataKeys.Count)
            {
                int idkkp = Convert.ToInt32(grc1.DataKeys[row.RowIndex].Value);

                if (ddlstatus.SelectedValue != null && ddlstatus.SelectedValue.Length > 0)
                {
                    string statusValue = ddlstatus.SelectedValue; // Get the selected value from the DropDownList

                    string sql = "UPDATE [INEXFOLER].[dbo].[kkp] SET [status] = @status WHERE [id_kkp] = @idkkp";

                    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString))
                    {
                        connection.Open();

                        using (SqlCommand cmdupdt = new SqlCommand(sql, connection))
                        {
                            cmdupdt.Parameters.AddWithValue("@status", statusValue); // Update the status column with the selected value
                            cmdupdt.Parameters.AddWithValue("@idkkp", idkkp);
                            int rowsAffected = cmdupdt.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Save Data Success');window.location.href='KKP.aspx';", true);
                            }
                            else
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('No rows affected');", true);
                            }
                        }
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Please select a status');", true);
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }


    public override void VerifyRenderingInServerForm(Control control)
    {
        // This method is required for GridView to work correctly
    }
}