using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalSLTB.pages
{
    public partial class admin : System.Web.UI.Page
    {
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            ShowData();
        }

        protected void inserData(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[BusData]
           ([Despature]
           ,[DespatureTime]
           ,[Arrival]
           ,[ArrivalDate]
           ,[ArrivalTime]
           ,[BusType]
           ,[Model]
           ,[BusSchedID]
           ,[Price]
           ,[Seats]
           ,[DepoName]
           ,[CloseTime])
            VALUES('" + Despature.Text + "','" + DespatureTime.Text + "','" + Arrival.Text + "','" + ArrivalDate.Text + "','" + ArrivalTime.Text + "','" + BusType.Text + "','" + Model.Text + "','" + scheduleId.Text + "','" + Price.Text + "','" + Seats.Text + "','" + DepotName.Text + "','" + closeTime.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Successfull Add Data');</script>");
            con.Close();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            string searchItem = search.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "UPDATE BusData SET Despature ='" + Despature.Text + "',DespatureTime ='" + DespatureTime.Text + "',Arrival='" + Arrival.Text + "',ArrivalDate = '" + ArrivalDate.Text + "',ArrivalTime='" + ArrivalTime.Text + "',BusType ='" + BusType.Text + "',Model ='" + Model.Text + "',BusSchedID='" + scheduleId.Text + "',Price = '" + Price.Text + "',Seats ='" + Seats.Text + "',DepoName='" + DepotName.Text + "',CloseTime ='" + closeTime.Text + "'  WHERE BusSchedID='" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('SuccessFull Update');</script>");

        }
        public void ShowData()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select * from  BusData";
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchItem = search.Text;
            bool isData = true;
            ArrayList dataList = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT * from  BusData WHERE BusSchedID='" + searchItem + "'";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            while (reader.Read())
            {
                isData = false;
                Despature.Text = reader["Despature"].ToString();
                DespatureTime.Text = (reader["DespatureTime"].ToString() + " AM");
                Arrival.Text = (reader["Arrival"].ToString());
                ArrivalDate.Text = (reader["ArrivalDate"].ToString());
                ArrivalTime.Text = (reader["ArrivalTime"].ToString() + " AM");
                BusType.Text = (reader["BusType"].ToString());
                Model.Text = (reader["Model"].ToString());
                scheduleId.Text = (reader["BusSchedID"].ToString());
                Price.Text = (reader["Price"].ToString());
                Seats.Text = (reader["Seats"].ToString());
                closeTime.Text = (reader["CloseTime"].ToString());
                DepotName.Text = (reader["DepoName"].ToString());
            }
            reader.Close();

            if (isData)
            {

                Response.Write("<script>alert('Not Found Data');</script>");
            }


        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string searchItem = search.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O095CDK\\SQLEXPRESS;Initial Catalog=SLTB;Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "DELETE FROM BusData WHERE BusSchedID = '" + searchItem + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            Despature.Text = "";
            DespatureTime.Text = "";
            Arrival.Text = "";
            ArrivalDate.Text = "";
            ArrivalTime.Text = "";
            BusType.Text = "";
            Model.Text = "";
            scheduleId.Text = "";
            Price.Text = "";
            Seats.Text = "";
            closeTime.Text = "";
            DepotName.Text = "";
            Response.Write("<script>alert('Sucessfull Deleted');</script>");
        }
    }
}