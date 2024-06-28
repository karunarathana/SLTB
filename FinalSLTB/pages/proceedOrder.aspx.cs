using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalSLTB.pages
{
    public partial class proceedOrder : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string bCount = bookcount.Value;
            string bId = busid.Value;
            string cSeat = currentseat.Value;
            string bSeat = bookseat.Value;

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT* FROM Validation WHERE NicNumber = '" + nic.Text + "'";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            if (reader.Read())
            {

                string count = (reader["BootTime"].ToString());
                int bookTime = int.Parse(count) + int.Parse(bCount);
                reader.Close();
                if (bookTime > 5)
                {
                    //Eroro message
                    Response.Write("<script>alert('Please enter another ID Number. One ID Number can be booked only 5 times.!');</script>");
                  
                }
                else {
                    //200 ok response

                    //update query
                    string connectionString2 = "Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True";
                    using (SqlConnection connection = new SqlConnection(connectionString2))
                    {
                        connection.Open();
                        SqlCommand command = new SqlCommand("UPDATE Validation SET BootTime ='" + bookTime.ToString() + "'  WHERE NicNumber ='" + nic.Text + "'", connection);
                        SqlDataReader reader1 = command.ExecuteReader();
                        reader1.Close();
                    }
                 
                    string answer = (int.Parse(cSeat) - int.Parse(bCount)).ToString();
                    string connectionString1 = "Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True";
                    using (SqlConnection connection = new SqlConnection(connectionString1))
                    {
                        connection.Open();
                        SqlCommand command = new SqlCommand("UPDATE BusData SET Seats ='" + answer + "'  WHERE BusSchedID ='" + bId + "'", connection);
                        SqlDataReader reader1 = command.ExecuteReader();
                        reader1.Close();
                    }
                    //dengeurous zone
                    SqlConnection con5 = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                    SqlCommand cmd5 = con.CreateCommand();
                    cmd.CommandText = "SELECT * from  BokingDetails WHERE BusId= '" + bId + "'";
                    con5.Open();
                    SqlDataReader reader3 = cmd.ExecuteReader();
                    SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                    if (reader3.Read())
                    {

                        string bookSeat = (reader3["BookSeat"].ToString());
                        string response = bookSeat + bSeat;
                        //this is a update query
                        string connectionString10 = "Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True";
                        using (SqlConnection connection10 = new SqlConnection(connectionString10))
                        {
                            connection10.Open();
                            SqlCommand command = new SqlCommand("UPDATE BokingDetails SET BookSeat ='" + response + "'  WHERE BusId ='" + bId + "'", connection10);
                            SqlDataReader reader1 = command.ExecuteReader();
                            reader1.Close();
                            Response.Write("<script>alert('orderd!');</script>");
                            Server.Transfer("printTicekt.aspx");
                        }


                    }
                    else
                    {
                        reader.Close();
                        SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                        SqlCommand cmd1 = new SqlCommand(@"INSERT INTO [dbo].[BokingDetails]
                            ([BusId]
                            ,[BookSeat])
                            VALUES('" + bId.ToString() + "','" + bSeat.ToString() + "')", con1);
                        con1.Open();
                        cmd1.ExecuteNonQuery();
                        con1.Close();
                        Response.Write("<script>alert('orderd!');</script>");
                        Server.Transfer("printTicekt.aspx");
                    }
                    //above is a new logic

                }

            }
            else
            {
                reader.Close();
                SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand(@"INSERT INTO [dbo].[Validation]
                ([NicNumber]
                ,[BootTime])
                 VALUES
                ('" + nic.Text + "','" + bCount.ToString() + "')", con1);
                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();
                //methaninuth book wenna puluwan

                string answer = (int.Parse(cSeat) - int.Parse(bCount)).ToString();
                string connectionString1 = "Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString1))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("UPDATE BusData SET Seats ='" + answer + "'  WHERE BusSchedID ='" + bId + "'", connection);
                    SqlDataReader reader1 = command.ExecuteReader();
                    reader1.Close();
                }
                //dengeurous zone

                SqlConnection con5 = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                SqlCommand cmd5 = con5.CreateCommand();
                cmd5.CommandText = "SELECT * from  BokingDetails WHERE BusId= '" + bId + "'";
                con5.Open();
                SqlDataReader reader3 = cmd5.ExecuteReader();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                if (reader3.Read())
                {

                    string bookSeat = (reader3["BookSeat"].ToString());
                    string response = bookSeat + bSeat;
                    //this is a update query
                    string connectionString10 = "Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True";
                    using (SqlConnection connection10 = new SqlConnection(connectionString10))
                    {
                        connection10.Open();
                        SqlCommand command = new SqlCommand("UPDATE BokingDetails SET BookSeat ='" + response + "'  WHERE BusId ='" + bId + "'", connection10);
                        SqlDataReader reader1 = command.ExecuteReader();
                        reader1.Close();
                        Response.Write("<script>alert('orderd!');</script>");
                        Server.Transfer("printTicekt.aspx");
                    }


                }
                else
                {
                    reader.Close();
                    SqlConnection con8 = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
                    SqlCommand cmd8 = new SqlCommand(@"INSERT INTO [dbo].[BokingDetails]
                    ([BusId]
                    ,[BookSeat])
                    VALUES('" + bId.ToString() + "','" + bSeat.ToString() + "')", con8);
                    con8.Open();
                    cmd8.ExecuteNonQuery();
                    con8.Close();
                    Response.Write("<script>alert('orderd!');</script>");
                    Server.Transfer("printTicekt.aspx");
                }
                //above is a new logic
            }



        }
    }
}