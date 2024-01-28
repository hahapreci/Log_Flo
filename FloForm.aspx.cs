using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Log_Flo
{
    public partial class FloForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCycle_Click(object sender, EventArgs e)
        {

            sqlFloCycle.InsertParameters["Description"].DefaultValue = txtDescription.Text;
        }

        protected void calCycle_SelectionChanged(object sender, EventArgs e)
        {
            
        }
    }
}