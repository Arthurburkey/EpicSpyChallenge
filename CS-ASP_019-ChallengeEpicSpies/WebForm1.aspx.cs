using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_ASP_019_ChallengeEpicSpies
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void assignButton_Click(object sender, EventArgs e)
        {
            double result = (Calendar2.SelectedDate.Subtract(Calendar1.SelectedDate).Days);

            if (result < 14)
            {
                resultLabel.Text = "Error: 2 weeks duration must exist between assignments";
                Calendar2.SelectedDate = Calendar1.SelectedDate.AddDays(14);
            }
            else
            {
                TimeSpan myTimeSpan = Calendar3.SelectedDate.Subtract(Calendar2.SelectedDate);
                double assignmentLength = (myTimeSpan.TotalDays);
                double budget = assignmentLength * 500;

                if (assignmentLength > 21)
                {
                    budget += 1000;
                }
                string myString = string.Format("Assignment of {0} to assignment project {1} is authorized. Budget Total: {2:c}",
                    codeNameBox.Text,
                    newAssignmentNameBox.Text, budget);
                resultLabel.Text = myString;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}