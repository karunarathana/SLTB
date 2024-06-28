using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalSLTB.pages
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void user_Register(object sender, EventArgs e)
        {
            string role = "User";
            int bookCount = 0;

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[UserRegister]
           ([UserName]
           ,[Password]
           ,[Role]
           ,[BookCount])
            VALUES('" + userName.Text + "','" + password.Text + "','"+ role + "','"+ bookCount + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Successfull Register');</script>");
            con.Close();
        }
    }
}