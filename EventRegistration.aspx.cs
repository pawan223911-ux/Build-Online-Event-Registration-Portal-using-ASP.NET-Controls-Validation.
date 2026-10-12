using System;

namespace Registrationfrom
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (chkTerms.Checked)
                {
                    lblMessage.Text = "Registration Successful! Welcome, "
                        + Server.HtmlEncode(txtName.Text)
                        + ". Event: "
                        + Server.HtmlEncode(ddlEvent.SelectedValue);
                }
                else
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Please accept the terms and conditions.";
                }
            }
        }
    }
}
