using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Stored_Procedure__with_asp.net_and_sql
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLCPrecostingList();
            }
        }

        // sqlConnection
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0NFD8E2\SQLEXPRESS;Initial Catalog=MyTest_DB;Integrated Security=True");


        // submit btn
        protected void Button1_Click(object sender, EventArgs e)
        {
            int PO = int.Parse(TextBox1.Text);
            int LC = int.Parse(TextBox2.Text);
            string Unit = DropDownList1.SelectedValue; 
            string Vat = TextBox3.Text;
            string ItemName = TextBox4.Text;
            string Specification = TextBox5.Text;
            string Cost = TextBox6.Text;
            string mydate = TextBox7.Text;
            DateTime cDate = DateTime.Parse(mydate);

            con.Open();
            SqlCommand comm = new SqlCommand("exec LcPrecosting_storeProcedure'"+PO+"', '"+LC+"', '"+cDate+"', '"+Unit+"', '"+Vat+"', '"+ItemName+"', '"+Specification+ "', '"+Cost+"'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Submited');", true);

            // calling GetLCPrecostingList method
            GetLCPrecostingList();
        }
       


        void GetLCPrecostingList()
        {
            SqlCommand comm = new SqlCommand("exec LCPrecostingList_storeProcedure", con);
            SqlDataAdapter sd = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sd.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        // update btn
        protected void Button2_Click(object sender, EventArgs e)
        {
            int PO = int.Parse(TextBox1.Text);
            int LC = int.Parse(TextBox2.Text);
            string Unit = DropDownList1.SelectedValue;
            string Vat = TextBox3.Text;
            string ItemName = TextBox4.Text;
            string Specification = TextBox5.Text;
            string Cost = TextBox6.Text;
            string mydate = TextBox7.Text;
            DateTime cDate = DateTime.Parse(mydate);

            con.Open();
            SqlCommand comm = new SqlCommand("exec PrecostingUpdate1_storeProcedure'" + PO + "', '" + LC + "', '" + cDate + "', '" + Unit + "', '" + Vat + "', '" + ItemName + "', '" + Specification + "', '" + Cost + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);

            // calling GetLCPrecostingList method
            GetLCPrecostingList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}