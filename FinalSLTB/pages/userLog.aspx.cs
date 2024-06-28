using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalSLTB.pages
{
    public partial class userLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string typeOfUser = "User";
            string userTypeUserName = userName.Text;
            string userTypePassword = password.Text;

            if (typeOfUser == "User") {

                SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * from  UserRegister WHERE UserName = '" + userTypeUserName + "' AND Password='" + userTypePassword + "'";
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                if (reader.Read())
                {

                    string userName = (reader["UserName"].ToString());
                    string password = (reader["Password"].ToString());
                    reader.Close();

                    Server.Transfer("index.aspx");


                }
                else
                {
                    reader.Close();
                    Response.Write("<script>alert('UserName or Password Invalid!');</script>");
                }


            }
            else if (typeOfUser == "Admin") {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * from  Loging WHERE UserName = '" + userTypeUserName + "' AND Password='" + userTypePassword + "'";
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                if (reader.Read())
                {

                    string userName = (reader["UserName"].ToString());
                    string password = (reader["Password"].ToString());
                    string role = (reader["Role"].ToString());
                    reader.Close();

                    Server.Transfer("admin.aspx");


                }
                else
                {
                    reader.Close();
                    Response.Write("<script>alert('UserName or Password Invalid!');</script>");
                }
            }
            else { 

            }
        }
    }
}