using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;


public partial class NilaiKKN : System.Web.UI.Page
{
    SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDropdownLists();
            LoadGridView();
        }
    }

    private void LoadDropdownLists()
    {
        string sql = "SELECT id_kkn, nama_mahasiswa, kelas, prodi FROM [INEXFOLER].[dbo].[kkn]";

        using (SqlCommand cmd = new SqlCommand(sql, koneksi))
        {
            try
            {
                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlNamaMahasiswa.Items.Clear();
                ddlKelas.Items.Clear();
                ddlProdi.Items.Clear();

                ddlNamaMahasiswa.DataSource = dt;
                ddlNamaMahasiswa.DataTextField = "nama_mahasiswa";
                ddlNamaMahasiswa.DataValueField = "id_kkn";
                ddlNamaMahasiswa.DataBind();

                ddlKelas.DataSource = dt;
                ddlKelas.DataTextField = "kelas";
                ddlKelas.DataValueField = "id_kkn";
                ddlKelas.DataBind();

                ddlProdi.DataSource = dt;
                ddlProdi.DataTextField = "prodi";
                ddlProdi.DataValueField = "id_kkn";
                ddlProdi.DataBind();
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

    private void LoadGridView()
    {
        string sql = "SELECT * FROM [INEXFOLER].[dbo].[nilaikkn]";

        using (SqlCommand cmd = new SqlCommand(sql, koneksi))
        {
            try
            {
                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                grc1.DataSource = dt;
                grc1.DataBind();
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

    protected void txtsave_Click(object sender, EventArgs e)
    {
        try
        {
            double disiplin = double.Parse(txtdisiplin.Text);
            double kerjasama = double.Parse(txtkerjasama.Text);
            double inisiatif = double.Parse(txtinisiatif.Text);
            double kerajinan = double.Parse(txtkerajinan.Text);
            double tanggung_jawab = double.Parse(txttanggungjawab.Text);
            double sikap = double.Parse(txtsikap.Text);
            double laporan = double.Parse(txtlaporan.Text);
            double total = disiplin + kerjasama + inisiatif + kerajinan + tanggung_jawab + sikap + laporan;
            double rata_rata = total / 7;
            string grade = CalculateGrade(rata_rata);

            string checkSql = "SELECT COUNT(*) FROM [INEXFOLER].[dbo].[kkn] WHERE id_kkn = @id_kkn";
            string insertKknSql = "INSERT INTO [INEXFOLER].[dbo].[kkn] (id_kkn, nama_mahasiswa, kelas, prodi) VALUES (@id_kkn, @nama_mahasiswa, @kelas, @prodi)";
            string insertNilaiKknSql = "INSERT INTO [INEXFOLER].[dbo].[nilaikkn] (id_kkn, nama_mahasiswa, kelas, prodi, disiplin, kerjasama, inisiatif, kerajinan, tanggung_jawab, sikap, laporan, total, rata_rata, grade) VALUES (@id_kkn, @nama_mahasiswa, @kelas, @prodi, @disiplin, @kerjasama, @inisiatif, @kerajinan, @tanggungjawab, @sikap, @laporan, @total, @rata_rata, @grade)";

            koneksi.Open();
            SqlTransaction transaction = koneksi.BeginTransaction();

            using (SqlCommand checkCmd = new SqlCommand(checkSql, koneksi, transaction))
            {
                checkCmd.Parameters.AddWithValue("@id_kkn", ddlNamaMahasiswa.SelectedValue);
                int count = (int)checkCmd.ExecuteScalar();

                if (count == 0)
                {
                    using (SqlCommand cmdKkn = new SqlCommand(insertKknSql, koneksi, transaction))
                    {
                        cmdKkn.Parameters.AddWithValue("@id_kkn", ddlNamaMahasiswa.SelectedValue);
                        cmdKkn.Parameters.AddWithValue("@nama_mahasiswa", ddlNamaMahasiswa.SelectedItem.Text);
                        cmdKkn.Parameters.AddWithValue("@kelas", ddlKelas.SelectedItem.Text);
                        cmdKkn.Parameters.AddWithValue("@prodi", ddlProdi.SelectedItem.Text);
                        cmdKkn.ExecuteNonQuery();
                    }
                }

                using (SqlCommand cmdNilaiKkn = new SqlCommand(insertNilaiKknSql, koneksi, transaction))
                {
                    cmdNilaiKkn.Parameters.AddWithValue("@id_kkn", ddlNamaMahasiswa.SelectedValue);
                    cmdNilaiKkn.Parameters.AddWithValue("@nama_mahasiswa", ddlNamaMahasiswa.SelectedItem.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@kelas", ddlKelas.SelectedItem.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@prodi", ddlProdi.SelectedItem.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@disiplin", txtdisiplin.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@kerjasama", txtkerjasama.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@inisiatif", txtinisiatif.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@kerajinan", txtkerajinan.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@tanggungjawab", txttanggungjawab.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@sikap", txtsikap.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@laporan", txtlaporan.Text);
                    cmdNilaiKkn.Parameters.AddWithValue("@total", total);
                    cmdNilaiKkn.Parameters.AddWithValue("@rata_rata", rata_rata);
                    cmdNilaiKkn.Parameters.AddWithValue("@grade", grade);
                    cmdNilaiKkn.ExecuteNonQuery();
                }

                transaction.Commit();
            }

            LoadGridView();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Data saved successfully');", true);
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            if (koneksi.State == ConnectionState.Open)
            {
                koneksi.Close();
            }
        }
    }

    protected void lnkCetak_Click(object sender, EventArgs e)
    {
        try
        {
            string id_kkn = (sender as LinkButton).CommandArgument;
            string sql = "SELECT * FROM [INEXFOLER].[dbo].[nilaikkn] WHERE id_kkn=@id_kkn";

            using (SqlCommand cmd = new SqlCommand(sql, koneksi))
            {
                cmd.Parameters.AddWithValue("@id_kkn", id_kkn);
                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string namaMahasiswa = reader["nama_mahasiswa"].ToString();
                    string kelas = reader["kelas"].ToString();
                    string prodi = reader["prodi"].ToString();

                    using (var memoryStream = new MemoryStream())
                    {
                        using (var document = new Document(PageSize.A4))
                        {
                            PdfWriter.GetInstance(document, memoryStream);
                            document.Open();

                            document.Add(new Paragraph("Laporan Nilai KKN", FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 16))
                            {
                                Alignment = Element.ALIGN_CENTER,
                                SpacingAfter = 20
                            });

                            var detailsTable = new PdfPTable(2)
                            {
                                WidthPercentage = 100,
                                HorizontalAlignment = Element.ALIGN_RIGHT
                            };

                            detailsTable.SetWidths(new float[] { 1f, 3f });

                            AddDetailRow(detailsTable, "Nama Mahasiswa    :", namaMahasiswa);
                            AddDetailRow(detailsTable, "Kelas                        :", kelas);
                            AddDetailRow(detailsTable, "Prodi                        :", prodi);

                            document.Add(detailsTable);

                            document.Add(new Paragraph("\n"));

                            var scoresTable = new PdfPTable(2)
                            {
                                WidthPercentage = 100,
                                HorizontalAlignment = Element.ALIGN_RIGHT
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

                            AddTableRow(scoresTable, "Disiplin", reader["disiplin"].ToString());
                            AddTableRow(scoresTable, "Kerja Sama", reader["kerjasama"].ToString());
                            AddTableRow(scoresTable, "Inisiatif", reader["inisiatif"].ToString());
                            AddTableRow(scoresTable, "Kerajinan", reader["kerajinan"].ToString());
                            AddTableRow(scoresTable, "Tanggung Jawab", reader["tanggung_jawab"].ToString());
                            AddTableRow(scoresTable, "Sikap", reader["sikap"].ToString());
                            AddTableRow(scoresTable, "Laporan", reader["laporan"].ToString());

                            document.Add(scoresTable);

                            document.Add(new Paragraph("\n"));

                            var summaryTable = new PdfPTable(2)
                            {
                                WidthPercentage = 50, // Set to 50% of the page width
                                HorizontalAlignment = Element.ALIGN_RIGHT// Align to the right
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

                            AddTableRow(summaryTable, "Total", reader["total"].ToString());
                            AddTableRow(summaryTable, "Rata-Rata", reader["rata_rata"].ToString());
                            AddTableRow(summaryTable, "Grade", reader["grade"].ToString());

                            document.Add(summaryTable);
                            document.Close();

                            Response.Clear();
                            Response.ContentType = "application/pdf";
                            Response.AddHeader("content-disposition", $"attachment;filename={namaMahasiswa}_{kelas}_NilaiKKN.pdf");
                            Response.BinaryWrite(memoryStream.ToArray());
                            Response.End();
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            if (koneksi.State == ConnectionState.Open)
            {
                koneksi.Close();
            }
        }
    }



    private void AddDetailRow(PdfPTable table, string label, string value)
    {
        var labelCell = new PdfPCell(new Phrase(label, FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12)))
        {
            Border = PdfPCell.NO_BORDER,
            PaddingRight = 10,
            HorizontalAlignment = Element.ALIGN_LEFT
        };

        var valueCell = new PdfPCell(new Phrase(value, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            Border = PdfPCell.NO_BORDER,
            HorizontalAlignment = Element.ALIGN_LEFT
        };

        table.AddCell(labelCell);
        table.AddCell(valueCell);
    }

    private void AddTableRow(PdfPTable table, string criteria, string value)
    {
        table.AddCell(new PdfPCell(new Phrase(criteria, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            HorizontalAlignment = Element.ALIGN_CENTER
        });
        table.AddCell(new PdfPCell(new Phrase(value, FontFactory.GetFont(FontFactory.HELVETICA, 12)))
        {
            HorizontalAlignment = Element.ALIGN_CENTER
        });
    }

    private string CalculateGrade(double rata_rata)
    {
        if (rata_rata >= 80)
            return "A";
        else if (rata_rata >= 60)
            return "B";
        else if (rata_rata >= 40)
            return "C";
        else if (rata_rata >= 20)
            return "D";
        else
            return "E";
    }


    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        try
        {
            string id_kkn = (sender as LinkButton).CommandArgument;
            string sql = "SELECT * FROM [INEXFOLER].[dbo].[nilaikkn] WHERE id_kkn=@id_kkn";

            using (SqlCommand cmd = new SqlCommand(sql, koneksi))
            {
                cmd.Parameters.AddWithValue("@id_kkn", id_kkn);
                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string idKkn = reader["id_kkn"].ToString();
                    string kelas = reader["kelas"].ToString();
                    string prodi = reader["prodi"].ToString();

                    if (ddlNamaMahasiswa.Items.FindByValue(idKkn) != null)
                        ddlNamaMahasiswa.SelectedValue = idKkn;
                    else
                        ddlNamaMahasiswa.SelectedIndex = -1;

                    if (ddlKelas.Items.FindByText(kelas) != null)
                        ddlKelas.SelectedIndex = ddlKelas.Items.IndexOf(ddlKelas.Items.FindByText(kelas));
                    else
                        ddlKelas.SelectedIndex = -1;

                    if (ddlProdi.Items.FindByText(prodi) != null)
                        ddlProdi.SelectedIndex = ddlProdi.Items.IndexOf(ddlProdi.Items.FindByText(prodi));
                    else
                        ddlProdi.SelectedIndex = -1;

                    txtdisiplin.Text = reader["disiplin"].ToString();
                    txtkerjasama.Text = reader["kerjasama"].ToString();
                    txtinisiatif.Text = reader["inisiatif"].ToString();
                    txtkerajinan.Text = reader["kerajinan"].ToString();
                    txttanggungjawab.Text = reader["tanggung_jawab"].ToString();
                    txtsikap.Text = reader["sikap"].ToString();
                    txtlaporan.Text = reader["laporan"].ToString();

                    txtsave.Visible = false;
                    txtupdate.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            if (koneksi.State == ConnectionState.Open)
            {
                koneksi.Close();
            }
        }
    }




    protected void txtupdate_Click(object sender, EventArgs e)
    {
        try
        {
            double disiplin = double.Parse(txtdisiplin.Text);
            double kerjasama = double.Parse(txtkerjasama.Text);
            double inisiatif = double.Parse(txtinisiatif.Text);
            double kerajinan = double.Parse(txtkerajinan.Text);
            double tanggungjawab = double.Parse(txttanggungjawab.Text);
            double sikap = double.Parse(txtsikap.Text);
            double laporan = double.Parse(txtlaporan.Text);
            double total = disiplin + kerjasama + inisiatif + kerajinan + tanggungjawab + sikap + laporan;
            double rata_rata = total / 7;
            string grade = CalculateGrade(rata_rata); // Calculate grade

            string sql = "UPDATE [INEXFOLER].[dbo].[nilaikkn] SET " +
                         "disiplin=@disiplin, kerjasama=@kerjasama, inisiatif=@inisiatif, kerajinan=@kerajinan, tanggung_jawab=@tanggungjawab, sikap=@sikap, laporan=@laporan, total=@total, rata_rata=@rata_rata, grade=@grade " +
                         "WHERE id_kkn=@id_kkn";

            using (SqlCommand cmd = new SqlCommand(sql, koneksi))
            {
                cmd.Parameters.AddWithValue("@id_kkn", ddlNamaMahasiswa.SelectedValue);
                cmd.Parameters.AddWithValue("@disiplin", txtdisiplin.Text);
                cmd.Parameters.AddWithValue("@kerjasama", txtkerjasama.Text);
                cmd.Parameters.AddWithValue("@inisiatif", txtinisiatif.Text);
                cmd.Parameters.AddWithValue("@kerajinan", txtkerajinan.Text);
                cmd.Parameters.AddWithValue("@tanggungjawab", txttanggungjawab.Text);
                cmd.Parameters.AddWithValue("@sikap", txtsikap.Text);
                cmd.Parameters.AddWithValue("@laporan", txtlaporan.Text);
                cmd.Parameters.AddWithValue("@total", total);
                cmd.Parameters.AddWithValue("@rata_rata", rata_rata);
                cmd.Parameters.AddWithValue("@grade", grade);

                if (koneksi.State == ConnectionState.Closed)
                {
                    koneksi.Open();
                }
                cmd.ExecuteNonQuery();
            }

            LoadGridView();
            txtsave.Visible = true;
            txtupdate.Visible = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "window.alert('Update Data Success');", true);
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
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