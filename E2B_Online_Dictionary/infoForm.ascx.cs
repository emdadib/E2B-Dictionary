using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace studentInfo.User_Control
{
    public partial class infoForm : System.Web.UI.UserControl
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\dictionary.mdf;Integrated Security = True; MultipleActiveResultSets=True;Application Name = EntityFramework");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked)
            {
                con.Open();
                cmd = new SqlCommand("insert into userMassage(Name,Email,Phone,dateOfBirth,Gender,Message) values(@name,@email,@phone,@dob,@gender,@message)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@dob", birthDate.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@message", txtMessage.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                birthDate.Text = "";
                txtMessage.Text = "";

                msg.Text = "Your Message Successfully Send";
            }
            else
            {
                msg.Text = "Please chek the chack box";
            }

        }
    }
}