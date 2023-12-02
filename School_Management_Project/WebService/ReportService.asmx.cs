using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using PDFReportSample.Models;
using iText.Html2pdf;
using System.IO;

namespace PDFReportSample.WebService
{
    /// <summary>
    /// Summary description for ReportService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ReportService : System.Web.Services.WebService
    {

       public int PDFReport(string baseuri,string html,string destination)
        {
            try
            {
                ConverterProperties prop = new ConverterProperties();
                prop.SetBaseUri(baseuri);
                HtmlConverter.ConvertToPdf(html, new FileStream(destination, FileMode.Create), prop);
                return 1;
            }
            catch
            {
                return 0;
            }
        }

        [WebMethod]
        public List<ReportModel> PDFReportGenerate()
        {
            List<ReportModel> _li = new List<ReportModel>();
            ReportModel rd = new ReportModel();

            try
            {
                string html = "";
                html = @"<!DOCTYPE html><html><head><meta charset='utf-8'><link href='css/style.css' rel='stylesheet'><title></title></head><body><table class='tbl'><thead><tr><th class='style0' colspan='2'><img src='img/logo.png' style='width:180px'></th><th class='style1' colspan='4'><p style='font-size:24px;padding-bottom:2px;padding-top:2px;font-weight:700;margin-bottom:1px'>INVOICE</p>ID-2021-0024<br>Issue Date:21/09/2021<br>Delivery Date: 22/09/2021<br>Due Date:30/09/2021<br><br><p style='font-size:24px;padding-bottom:2px;padding-top:2px;font-weight:700;margin-bottom:1px'>CLIENT DETAILS</p>Client 1<br>GST Number:XXXXXXXXXX</th></tr></thead><tbody><tr><td class='headstyle0' colspan='5' style='padding-top:60px'></td></tr><tr><td class='style3a'>ITEM</td><td class='style3a'>DESCRIPTION</td><td class='style3a'>QUANTITY</td><td class='style3a'>UNIT PRICE</td><td class='style3a'>TOTAL</td></tr><tr><td class='style3'>Item-1</td><td class='style3'>Description -1</td><td class='style3'>2 Pkt</td><td class='style3'>90.00</td><td class='style3b'>180.00</td></tr><tr><td class='style3'>Item-2</td><td class='style3'>Description-2</td><td class='style3'>5 Pkt</td><td class='style3'>35.00</td><td class='style3b'>175.00</td></tr><tr><td class='style3'>Item-3</td><td class='style3'>Description-3</td><td class='style3'>5 Kg</td><td class='style3'>50.00</td><td class='style3b'>250.00</td></tr><tr><td class='style3'>Item-4</td><td class='style3'>Description-4</td><td class='style3'>5 Kg</td><td class='style3'>150.00</td><td class='style3b'>750.00</td></tr><tr><td class='style3'>Item-5</td><td class='style3'>Description-5</td><td class='style3'>5 Kg</td><td class='style3'>100.00</td><td class='style3b'>500.00</td></tr><tr><td class='style0' colspan='2' rowspan='3'></td><td class='style3' colspan='2'>Total</td><td class='style3b'>1855.00</td></tr><tr><td class='style3' colspan='2'>GST@18%</td><td class='style3b'>333.90</td></tr><tr><td class='style3' colspan='2'>Net Payable Amount</td><td class='style3b'>2188.90</td></tr><tr><td class='style0' colspan='5' style='padding-top:100px'></td></tr><tr><td class='style0' colspan='5' style='background-color:#f0f8ff;border-radius:2px'><i>Note:Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</i></td></tr><tr><td class='style1' colspan='5' style='padding-top:200px'>Thank You<br><b>CodeSample</b></td></tr></tbody></table></body></html>";

                string fpath = Server.MapPath("~\\Report\\");
                string _filename = System.Guid.NewGuid().ToString();
                string file = fpath + _filename + ".pdf";

                int pdf = PDFReport("https://localhost:44359", html, file);
                if (pdf > 0)
                {
                    rd.pdfReportPath = "\\Report\\" + _filename + ".pdf";
                }
                else
                {
                    rd.pdfReportPath = "";
                }
                _li.Add(rd);
                return _li;
            }
            catch
            {
                return null;
            }
        }
    }
}
