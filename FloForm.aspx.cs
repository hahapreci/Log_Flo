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
            //call the data sources's insert parameters
            //assign them the input values from the add Flo panel
            sqlFloCycle.InsertParameters["Description"].DefaultValue = ddlDesc.SelectedValue;
            sqlFloCycle.InsertParameters["Date"].DefaultValue = txtDateFormat.Text;
            //ask the data source to insert
            sqlFloCycle.Insert();
            Response.Redirect("~/ViewLog.aspx");
        }

        protected void calCycle_SelectionChanged(object sender, EventArgs e)
        {
            txtDateFormat.Text=calCycle.SelectedDate.ToShortDateString();
        }
    }
}