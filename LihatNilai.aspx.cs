using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;

public partial class LihatNilai : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGridView();
        }
    }

    private void LoadGridView()
    {
        // Get the logged-in user's name from session
        string username = Session["username"] as string;
        if (string.IsNullOrEmpty(username))
        {
            Response.Redirect("~/Login.aspx");
        }

        string sqlKkp = "SELECT nama_mahasiswa, kelas, prodi, disiplin, kerjasama, inisiatif, kerajinan, tanggung_jawab, sikap, prestasi, total, rata_rata, grade FROM [INEXFOLER].[dbo].[nilaikkp] WHERE nama_mahasiswa = @nama_mahasiswa";
        string sqlKkn = "SELECT nama_mahasiswa, kelas, prodi, disiplin, kerjasama, inisiatif, kerajinan, tanggung_jawab, sikap, laporan, total, rata_rata, grade FROM [INEXFOLER].[dbo].[nilaikkn] WHERE nama_mahasiswa = @nama_mahasiswa";

        using (SqlCommand cmdKkp = new SqlCommand(sqlKkp, koneksi))
        using (SqlCommand cmdKkn = new SqlCommand(sqlKkn, koneksi))
        {
            cmdKkp.Parameters.Add("@nama_mahasiswa", SqlDbType.NVarChar).Value = username;
            cmdKkn.Parameters.Add("@nama_mahasiswa", SqlDbType.NVarChar).Value = username;

            DataTable dtKkp = new DataTable();
            DataTable dtKkn = new DataTable();

            try
            {
                System.Diagnostics.Debug.WriteLine("Opening connection to the database...");
                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }

                SqlDataAdapter daKkp = new SqlDataAdapter(cmdKkp);
                SqlDataAdapter daKkn = new SqlDataAdapter(cmdKkn);

                daKkp.Fill(dtKkp);

                if (dtKkp.Rows.Count > 0)
                {
                    GridViewKkp.DataSource = dtKkp;
                    GridViewKkp.DataBind();
                    GridViewKkp.Visible = true;
                    GridViewKkn.Visible = false;
                }
                else
                {
                    daKkn.Fill(dtKkn);
                    if (dtKkn.Rows.Count > 0)
                    {
                        GridViewKkn.DataSource = dtKkn;
                        GridViewKkn.DataBind();
                        GridViewKkn.Visible = true;
                        GridViewKkp.Visible = false;
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine("No data found for the user: " + username);
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception with more details
                System.Diagnostics.Debug.WriteLine("Exception: " + ex.Message);
                System.Diagnostics.Debug.WriteLine("Stack Trace: " + ex.StackTrace);
                // Show user-friendly message
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Terjadi kesalahan saat memuat data.');", true);
            }
            finally
            {
                System.Diagnostics.Debug.WriteLine("Closing connection to the database...");
                if (koneksi.State == ConnectionState.Open)
                {
                    koneksi.Close();
                }
            }
        }
    }

    protected void lnkCetak_Click(object sender, EventArgs e)
    {
        string username = Session["username"] as string;
        if (string.IsNullOrEmpty(username))
        {
            Response.Redirect("~/Login.aspx");
        }

        string sql = "SELECT * FROM [INEXFOLER].[dbo].[nilaikkp] WHERE nama_mahasiswa=@nama_mahasiswa";
        string sqlKkn = "SELECT * FROM [INEXFOLER].[dbo].[nilaikkn] WHERE nama_mahasiswa=@nama_mahasiswa";

        DataTable dt = new DataTable();
        using (SqlCommand cmd = new SqlCommand(sql, koneksi))
        {
            cmd.Parameters.AddWithValue("@nama_mahasiswa", username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
        }

        if (dt.Rows.Count == 0)
        {
            using (SqlCommand cmdKkn = new SqlCommand(sqlKkn, koneksi))
            {
                cmdKkn.Parameters.AddWithValue("@nama_mahasiswa", username);
                SqlDataAdapter daKkn = new SqlDataAdapter(cmdKkn);
                daKkn.Fill(dt);
            }
        }

        if (dt.Rows.Count > 0)
        {
            GeneratePdf(dt);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Tidak ada data yang tersedia untuk dicetak.');", true);
        }
    }

    private void GeneratePdf(DataTable dt)
    {
        using (var memoryStream = new MemoryStream())
        {
            using (var document = new Document(PageSize.A4))
            {
                PdfWriter.GetInstance(document, memoryStream);
                document.Open();

                DataRow row = dt.Rows[0];

                document.Add(new Paragraph("Laporan Nilai", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 16))
                {
                    Alignment = Element.ALIGN_CENTER,
                    SpacingAfter = 20
                });

                var detailsTable = new PdfPTable(2)
                {
                    WidthPercentage = 100,
                    HorizontalAlignment = Element.ALIGN_LEFT
                };

                detailsTable.SetWidths(new float[] { 1f, 3f });

                AddDetailRow(detailsTable, "Nama Mahasiswa    :", row["nama_mahasiswa"].ToString());
                AddDetailRow(detailsTable, "Kelas                        :", row["kelas"].ToString());
                AddDetailRow(detailsTable, "Prodi                        :", row["prodi"].ToString());

                document.Add(detailsTable);

                document.Add(new Paragraph("\n"));

                var scoresTable = new PdfPTable(2)
                {
                    WidthPercentage = 100,
                    HorizontalAlignment = Element.ALIGN_LEFT
                };

                float[] widths = new float[] { 2f, 2f };
                scoresTable.SetWidths(widths);

                scoresTable.AddCell(new PdfPCell(new Phrase("Kriteria", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12)))
                {
                    HorizontalAlignment = Element.ALIGN_CENTER,
                    BackgroundColor = BaseColor.LIGHT_GRAY
                });
                scoresTable.AddCell(new PdfPCell(new Phrase("Nilai", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12)))
                {
                    HorizontalAlignment = Element.ALIGN_CENTER,
                    BackgroundColor = BaseColor.LIGHT_GRAY
                });

                AddTableRow(scoresTable, "Disiplin", row["disiplin"].ToString());
                AddTableRow(scoresTable, "Kerja Sama", row["kerjasama"].ToString());
                AddTableRow(scoresTable, "Inisiatif", row["inisiatif"].ToString());
                AddTableRow(scoresTable, "Kerajinan", row["kerajinan"].ToString());
                AddTableRow(scoresTable, "Tanggung Jawab", row["tanggung_jawab"].ToString());
                AddTableRow(scoresTable, "Sikap", row["sikap"].ToString());

                if (dt.Columns.Contains("prestasi"))
                {
                    AddTableRow(scoresTable, "Prestasi", row["prestasi"].ToString());
                }
                if (dt.Columns.Contains("laporan"))
                {
                    AddTableRow(scoresTable, "Laporan", row["laporan"].ToString());
                }

                document.Add(scoresTable);

                document.Add(new Paragraph("\n"));

                var summaryTable = new PdfPTable(2)
                {
                    WidthPercentage = 50, // Set to 50% of the page width
                    HorizontalAlignment = Element.ALIGN_LEFT // Align to the right
                };

                float[] summaryWidths = new float[] { 1f, 1f };
                summaryTable.SetWidths(summaryWidths);

                summaryTable.AddCell(new PdfPCell(new Phrase("Kriteria", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12)))
                {
                    HorizontalAlignment = Element.ALIGN_CENTER,
                    BackgroundColor = BaseColor.LIGHT_GRAY
                });
                summaryTable.AddCell(new PdfPCell(new Phrase("Nilai", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12)))
                {
                    HorizontalAlignment = Element.ALIGN_CENTER,
                    BackgroundColor = BaseColor.LIGHT_GRAY
                });

                AddTableRow(summaryTable, "Total", row["total"].ToString());
                AddTableRow(summaryTable, "Rata-Rata", row["rata_rata"].ToString());
                AddTableRow(summaryTable, "Grade", row["grade"].ToString());

                document.Add(summaryTable);
                document.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", $"attachment;filename={row["nama_mahasiswa"]}_{row["kelas"]}_Nilai.pdf");
                Response.BinaryWrite(memoryStream.ToArray());
                Response.End();
            }
        }
    }

    private void AddDetailRow(PdfPTable table, string label, string value)
    {
        table.AddCell(new PdfPCell(new Phrase(label, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            Border = Rectangle.NO_BORDER
        });
        table.AddCell(new PdfPCell(new Phrase(value, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            Border = Rectangle.NO_BORDER
        });
    }

    private void AddTableRow(PdfPTable table, string label, string value)
    {
        table.AddCell(new PdfPCell(new Phrase(label, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            HorizontalAlignment = Element.ALIGN_LEFT
        });
        table.AddCell(new PdfPCell(new Phrase(value, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            HorizontalAlignment = Element.ALIGN_CENTER
        });
    }
}
