using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views.Admin
{
    public partial class Laboratorian : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showLaboratorians();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void showLaboratorians()
        {
            string query = "Select * from LaboratorianTbl";
            LabGV.DataSource = con.GetDatas(query);
            LabGV.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LBNameTb.Value;
                string LabEmail = LBMailTb.Value;
                string LabPass = LBPwdTb.Value;
                string LabPhone = LBphnTb.Value;
                string LabGender = LBGenTb.SelectedItem.Value;
                string LabAdd = LBAddTb.Value;

                // Update this line with the correct table name
                string query = "insert into LaboratorianTbl (LabName, LabEmail, LabPass, LabPhone, LabGender, LabAdd) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')";
                query = string.Format(query, LabName, LabEmail, LabPass, LabPhone, LabGender, LabAdd);
                con.SetDatas(query);
                showLaboratorians();

                ErrMsg.InnerText = "Details Added!!!";

                LBNameTb.Value = "";
                LBMailTb.Value = "";
                LBPwdTb.Value = "";
                LBphnTb.Value = "";
                LBGenTb.SelectedIndex = -1;
                LBAddTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }

        }
        int key = 0;

        protected void LabGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            LBNameTb.Value = LabGV.SelectedRow.Cells[2].Text;
            LBMailTb.Value = LabGV.SelectedRow.Cells[3].Text;
            LBPwdTb.Value = LabGV.SelectedRow.Cells[4].Text;
            LBphnTb.Value = LabGV.SelectedRow.Cells[5].Text;
            LBGenTb.SelectedItem.Value = LabGV.SelectedRow.Cells[6].Text;
            LBAddTb.Value = LabGV.SelectedRow.Cells[7].Text;
            if (LBNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(LabGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LBNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Laboratorian!!!";
                }
                else
                {

                    string query = "delete from LaboratorianTbl where LabId={0}";
                    query = string.Format(query, LabGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showLaboratorians();
                    ErrMsg.InnerText = "Laboratrian Deleted!!!";
                    key = 0;

                    LBNameTb.Value = "";
                    LBMailTb.Value = "";
                    LBPwdTb.Value = "";
                    LBphnTb.Value = "";
                    LBGenTb.SelectedIndex = -1;
                    LBAddTb.Value = "";

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
                if (LBNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Laboratorian!!!";
                }
                else
                {
                    string LabName = LBNameTb.Value;
                    string LabEmail = LBMailTb.Value;
                    string LabPass = LBPwdTb.Value;
                    string LabPhone = LBphnTb.Value;
                    string LabGender = LBGenTb.SelectedItem.Value;
                    string LabAdd = LBAddTb.Value; ;

                    string query = "Update LaboratorianTbl set LabName='{0}', LabEmail='{1}', LabPass='{2}', LabPhone='{3}', LabGender='{4}', LabAdd='{5}' where LabId={6}";
                    query = string.Format(query, LabName, LabEmail, LabPass, LabPhone, LabGender, LabAdd, LabGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showLaboratorians();
                    ErrMsg.InnerText = "Details Updated!!!";

                    LBNameTb.Value = "";
                    LBMailTb.Value = "";
                    LBPwdTb.Value = "";
                    LBphnTb.Value = "";
                    LBGenTb.SelectedIndex = -1;
                    LBAddTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}