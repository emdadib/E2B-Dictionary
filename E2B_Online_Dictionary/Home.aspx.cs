using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace E2B_Online_Dictionary
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        // ADO.NET code to retrieve data from database
        private void BindGridViewData()
        {
           
        }

        protected void btnPDF_Click(object sender, EventArgs e)
        {
            int columnsCount = GridView1.HeaderRow.Cells.Count;
            PdfPTable pdfTable = new PdfPTable(columnsCount);
            foreach (TableCell gridViewHeaderCell in GridView1.HeaderRow.Cells)
            {
                Font font = new Font();
                //font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);
                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));
                //pdfCell.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);
                pdfTable.AddCell(pdfCell);
            }
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                if (gridViewRow.RowType == DataControlRowType.DataRow)
                {
                    foreach (TableCell gridViewCell in gridViewRow.Cells)
                    {
                        Font font = new Font();
                        //font.Color = new BaseColor(GridView1.RowStyle.ForeColor);
                        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));
                        //pdfCell.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);
                        pdfTable.AddCell(pdfCell);
                    }
                }
            }

             Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
             PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition",
                "attachment;filename=Words.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}