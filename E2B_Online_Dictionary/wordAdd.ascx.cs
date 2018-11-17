using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E2B_Online_Dictionary
{
    public partial class wordAdd : System.Web.UI.UserControl
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
                cmd = new SqlCommand("insert into words(en_word, bn_word) values(@en_word,@bn_word)", con);
                cmd.Parameters.AddWithValue("@en_word", enWord.Text);
                cmd.Parameters.AddWithValue("@bn_word", bnWord.Text);
               
            

                cmd.ExecuteNonQuery();
                con.Close();

                enWord.Text = "";
                
                bnWord.Text = "";
               
                

                msg.Text = "Thanks for your help to build us";
            }
            else
            {
                msg.Text = "Please chek the chack box";
            }
        }
    }
}