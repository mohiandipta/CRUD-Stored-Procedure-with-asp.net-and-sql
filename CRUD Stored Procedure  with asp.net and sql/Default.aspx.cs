using System;
using System.Collections.Generic;
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

        }

        // sqlConnection
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0NFD8E2\SQLEXPRESS;Initial Catalog=MyTest_DB;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}