using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views.Receptionist
{
    public partial class Patients : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showPatients();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void showPatients()
        {
            string query = "Select * from PatienTb1";
            PatientGV.DataSource = con.GetDatas(query);
            PatientGV.DataBind();
        }

        int key = 0;
        protected void PatientGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = PatientGV.SelectedRow.Cells[2].Text;
            PPhoneTb.Value = PatientGV.SelectedRow.Cells[3].Text;
            PGenTb.SelectedItem.Value = PatientGV.SelectedRow.Cells[4].Text;
            PDOBTb.Value = PatientGV.SelectedRow.Cells[5].Text;
            PAddTb.Value = PatientGV.SelectedRow.Cells[6].Text;
            PAllergyTb.Value = PatientGV.SelectedRow.Cells[7].Text;
            if (PNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(PatientGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string user = Session["uid"] as string;

                string PatName = PNameTb.Value;
                string PatPhone = PPhoneTb.Value;
                string PatGender = PGenTb.SelectedItem.Value;
                string PatDOB = PDOBTb.Value;
                string PatAdd = PAddTb.Value;
                string PatAllergies = PAllergyTb.Value;


                // Update this line with the correct table name
                string query = "insert into PatienTb1 (PatName, PatPhone, PatGender, PatDOB, PatAdd, PatAllergies, AddBy) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')";
                query = string.Format(query, PatName, PatPhone, PatGender, PatDOB, PatAdd, PatAllergies, user);
                con.SetDatas(query);
                showPatients();

                ErrMsg.InnerText = "Details Added!!!";

                PNameTb.Value = "";
                PPhoneTb.Value = "";
                PGenTb.SelectedIndex = -1;
                PDOBTb.Value = "";
                PAddTb.Value = "";
                PAllergyTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Patient!!!";
                }
                else
                {

                    string query = "delete from PatienTb1 where PatId={0}";
                    query = string.Format(query, PatientGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showPatients();
                    ErrMsg.InnerText = "Patient Deleted!!!";
                    key = 0;

                    PNameTb.Value = "";
                    PPhoneTb.Value = "";
                    PGenTb.SelectedIndex = -1;
                    PDOBTb.Value = "";
                    PAddTb.Value = "";
                    PAllergyTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Patient!!!";
                }
                else
                {
                    string PatName = PNameTb.Value;
                    string PatPhone = PPhoneTb.Value;
                    string PatGender = PGenTb.SelectedItem.Value;
                    string PatDOB = PDOBTb.Value;
                    string PatAdd = PAddTb.Value;
                    string PatAllergies = PAllergyTb.Value;

                    string query = "Update PatienTb1 set PatName='{0}', PatPhone='{1}', PatGender='{2}', PatDOB='{3}', PatAdd='{4}', PatAllergies='{5}' where PatId={6}";
                    query = string.Format(query, PatName, PatPhone, PatGender, PatDOB, PatAdd, PatAllergies, PatientGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showPatients();
                    ErrMsg.InnerText = "Details Updated!!!";

                    PNameTb.Value = "";
                    PPhoneTb.Value = "";
                    PGenTb.SelectedIndex = -1;
                    PDOBTb.Value = "";
                    PAddTb.Value = "";
                    PAllergyTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}