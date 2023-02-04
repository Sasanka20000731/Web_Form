using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                GetEmployeeList();
            }

        }

        SqlConnection Connection = new SqlConnection("Data Source=DESKTOP-N1AKUG5;Initial Catalog=Pracise_ASPDB;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            String EmpNum = (TB_EmpNum.Text);
            String EmpName = (TBEmpName.Text);
            String DOB = (TB_DOB.Text);
            String Gender = (RadioButtonList_Gender.SelectedValue);
            String Position = (TBPosition.Text);
            String Department = (DropDownList_Department.SelectedValue);
            String JoinedDate = (TBJoinedDate.Text);
            String Contact = (TBContactNumber.Text);
            Connection.Open();
            SqlCommand command = new SqlCommand("Insert Into EmpDetail (EmpNum ,EmpName,DOB,Gender,Position ,Department ,JoinedDate ,Contact)  values ('" + EmpNum + "' , '" + EmpName + "', '" + DOB + "' ,'" + Gender + "' , '" + Position + "','"+Department+"', '" + JoinedDate + "', '" + Contact + "')", Connection);
            command.ExecuteNonQuery();
            Connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');" , true);
            GetEmployeeList();


        }

        void GetEmployeeList()
        {


            SqlCommand command = new SqlCommand("Select * from EmpDetail", Connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
             
        }

        protected void Button002_Click(object sender, EventArgs e)
        {
            TBEmpName.Text = string.Empty;
            TB_EmpNum.Text = String.Empty;
            TB_DOB.Text = String.Empty;
            RadioButtonList_Gender.SelectedValue = String.Empty;
            TBPosition.Text = String.Empty ;
            DropDownList_Department.SelectedValue = String.Empty;
            TBJoinedDate.Text =String.Empty ;
            TBContactNumber.Text = String.Empty;



        }

        protected void BTNUpdate_Click(object sender, EventArgs e)
        {
            String EmpNum = (TB_EmpNum.Text);
            String EmpName = (TBEmpName.Text);
            String DOB = (TB_DOB.Text);
            String Gender = (RadioButtonList_Gender.SelectedValue);
            String Position = (TBPosition.Text);
            String Department = (DropDownList_Department.SelectedValue);
            String JoinedDate = (TBJoinedDate.Text);
            String Contact = (TBContactNumber.Text);
            Connection.Open();
            SqlCommand command = new SqlCommand("Update  EmpDetail set   EmpNum = '" + EmpNum + "' ,EmpName = '" + EmpName + "', DOB = '" + DOB + "' , Gender = '" + Gender + "' ,Position = '" + Position + "',Department  ='" + Department + "', JoinedDate ='" + JoinedDate + "', Contact = '" + Contact + "'  where EmpNum = '"+EmpNum+ "' ", Connection);
            command.ExecuteNonQuery();
            Connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            GetEmployeeList();
        }

        protected void BTNDelete_Click(object sender, EventArgs e)
        {
            String EmpNum = (TB_EmpNum.Text);
            String EmpName = (TBEmpName.Text);
            String DOB = (TB_DOB.Text);
            String Gender = (RadioButtonList_Gender.SelectedValue);
            String Position = (TBPosition.Text);
            String Department = (DropDownList_Department.SelectedValue);
            String JoinedDate = (TBJoinedDate.Text);
            String Contact = (TBContactNumber.Text);
            Connection.Open();
            SqlCommand command = new SqlCommand("Delete from  EmpDetail where EmpNum = '" + EmpNum + "' ", Connection);
            command.ExecuteNonQuery();
            Connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            GetEmployeeList();
        }
    }
}