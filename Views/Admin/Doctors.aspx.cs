using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views.Admin
{
    public partial class Doctors : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showDoctors();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void showDoctors()
        {
            string query = "Select * from DoctorsTbl";
            DrGV.DataSource = con.GetDatas(query);
            DrGV.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DrName = DrNameTb.Value;
                string DrPhone = DrPhnTb.Value;
                string DrEmail=DrMailTb.Value;
                string DrExp = DrExpTb.Value;
                string DrSpe = DrSplTb.Value;
                string DrGen = DrGenTb.SelectedItem.ToString() ;
                string DrAdd = DrAddTb.Value;
                string DrDOB = DrDOBTb.Value;
                string DrPwd = DrPwdTb.Value;

                // Update this line with the correct table name
                string query = "insert into DoctorsTbl (DocName, DocPhone, DocExp, DocSpec, DocGender, DocAdd, DocDOB, DocPass, DocEmail) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')";
                query = string.Format(query, DrName, DrPhone, DrExp, DrSpe, DrGen, DrAdd, DrDOB, DrPwd, DrEmail);
                con.SetDatas(query);
                showDoctors();

                ErrMsg.InnerText = "Details Added!!!";

                DrNameTb.Value = "";
                DrPhnTb.Value = "";
                DrMailTb.Value = "";
                DrExpTb.Value = "";
                DrSplTb.Value = "";
                DrGenTb.SelectedIndex = -1;
                DrAddTb.Value = ""; 
                DrDOBTb.Value = "";
                DrPwdTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }

        }
        int key = 0;


        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DrNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Doctor!!!";
                }
                else
                {

                    string query = "delete from DoctorsTbl where DocId={0}";
                    query = string.Format(query, DrGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showDoctors();
                    ErrMsg.InnerText = "Doctor Deleted!!!";
                    key = 0;

                    DrNameTb.Value = "";
                    DrPhnTb.Value = "";
                    DrMailTb.Value = "";
                    DrExpTb.Value = "";
                    DrSplTb.Value = "";
                    DrGenTb.SelectedIndex = -1;
                    DrAddTb.Value = "";
                    DrDOBTb.Value = "";
                    DrPwdTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void DrGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            DrNameTb.Value = DrGV.SelectedRow.Cells[2].Text;
            DrPhnTb.Value = DrGV.SelectedRow.Cells[3].Text;
            DrExpTb.Value = DrGV.SelectedRow.Cells[4].Text;
            DrSplTb.Value = DrGV.SelectedRow.Cells[5].Text;
            DrGenTb.SelectedItem.Value = DrGV.SelectedRow.Cells[6].Text;
            DrAddTb.Value = DrGV.SelectedRow.Cells[7].Text;
            DrDOBTb.Value = DrGV.SelectedRow.Cells[8].Text;
            DrPwdTb.Value = DrGV.SelectedRow.Cells[9].Text;
            DrMailTb.Value = DrGV.SelectedRow.Cells[10].Text;
            if (DrNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(DrGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DrNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Doctor!!!";
                }
                else
                {
                    string DrName = DrNameTb.Value;
                    string DrPhn = DrPhnTb.Value;
                    string DrEmail = DrMailTb.Value;
                    string DrExp = DrExpTb.Value;
                    string DrSp = DrSplTb.Value;
                    string DrGen = DrGenTb.SelectedItem.ToString();
                    string DrAdd = DrAddTb.Value;
                    string DrDOB = DrDOBTb.Value;
                    string DrPass = DrPwdTb.Value;

                    string query = "Update DoctorsTbl set DocName='{0}', DocPhone='{1}', DocExp='{2}', DocSpec='{3}', DocGender='{4}', DocAdd='{5}', DocDOB='{6}', DocPass='{7}', DocEmail='{8}' where DocId={9}";
                    query = string.Format(query, DrName, DrPhn, DrExp, DrSp, DrGen, DrAdd, DrDOB, DrPass, DrEmail, DrGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showDoctors();
                    ErrMsg.InnerText = "Details Updated!!!";

                    DrNameTb.Value = "";
                    DrPhnTb.Value = "";
                    DrMailTb.Value = "";
                    DrExpTb.Value = "";
                    DrSplTb.Value = "";
                    DrGenTb.SelectedIndex = -1;
                    DrAddTb.Value = "";
                    DrDOBTb.Value = "";
                    DrPwdTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}