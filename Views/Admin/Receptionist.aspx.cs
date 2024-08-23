using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EClinic.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showReceptionist();
        }

        //Add This Overridden Method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void showReceptionist()
        {
            string query = "Select * from ReceptionistTbl";
            ReceptionistGV.DataSource = con.GetDatas(query);
            ReceptionistGV.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = RNameTb.Value;
                string REmail = RMailTb.Value;
                string RAdd = RAddTb.Value;
                string RPhone = RphnTb.Value;
                string RPass = RPwdTb.Value;
                string RGen = RGenTb.Value;

                // Update this line with the correct table name
                string query = "insert into ReceptionistTbl (RecName, RecEmail, RecAdd, RecPhone, RecPassword, RecGender) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')";
                query = string.Format(query, RName, REmail, RAdd, RPhone, RPass, RGen);
                con.SetDatas(query);
                showReceptionist();

                ErrMsg.InnerText = "Receptionist Added!!!";

                RNameTb.Value = "";
                RMailTb.Value = "";
                RAddTb.Value = "";
                RphnTb.Value = "";
                RPwdTb.Value = "";
                RGenTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
        int key = 0;

        protected void ReceptionistGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            RNameTb.Value = ReceptionistGV.SelectedRow.Cells[2].Text;
            RMailTb.Value = ReceptionistGV.SelectedRow.Cells[3].Text;
            RAddTb.Value = ReceptionistGV.SelectedRow.Cells[4].Text;
            RphnTb.Value = ReceptionistGV.SelectedRow.Cells[5].Text;
            RPwdTb.Value = ReceptionistGV.SelectedRow.Cells[6].Text;
            RGenTb.Value = ReceptionistGV.SelectedRow.Cells[7].Text;
            if (RNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(ReceptionistGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (RNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Receptionist!!!";
                }
                else
                {

                    string query = "delete from ReceptionistTbl where RecId={0}";
                    query = string.Format(query, ReceptionistGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showReceptionist();
                    ErrMsg.InnerText = "Receptionist Deleted!!!";
                    key = 0;

                    RNameTb.Value = "";
                    RMailTb.Value = "";
                    RAddTb.Value = "";
                    RphnTb.Value = "";
                    RPwdTb.Value = "";
                    RGenTb.Value = "";

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
                if (RNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Receptionist!!!";
                }
                else
                {
                    string RName = RNameTb.Value;
                    string REmail = RMailTb.Value;
                    string RAdd = RAddTb.Value;
                    string RPhone = RphnTb.Value;
                    string RPass = RPwdTb.Value;
                    string RGen = RGenTb.Value;

                    string query = "Update ReceptionistTbl set RecName='{0}', RecEmail='{1}', RecAdd='{2}', RecPhone='{3}', RecPassword='{4}', RecGender='{5}' where RecId={6}";
                    query = string.Format(query, RName, REmail, RAdd, RPhone, RPass, RGen, ReceptionistGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showReceptionist();
                    ErrMsg.InnerText = "Details Updated!!!";

                    RNameTb.Value = "";
                    RMailTb.Value = "";
                    RAddTb.Value = "";
                    RphnTb.Value = "";
                    RPwdTb.Value = "";
                    RGenTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}
