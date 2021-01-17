using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacionWebSapis
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            this.data.SelectParameters["correo_est"].DefaultValue = TextBoxEst.Text.Trim();
            this.ObjectDataSourceEst.SelectParameters["correo_est"].DefaultValue = TextBoxEst.Text.Trim();
            this.ReportViewer1.LocalReport.Refresh();
        }
    }
}