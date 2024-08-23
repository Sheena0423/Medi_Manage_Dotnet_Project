using EClinic.Views.Admin;
using EClinic.Views.Receptionist;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views.Doctors
{
    public partial class Prescriptions : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showPrescription();
            getTest();
            getPatients();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void showPrescription()
        {
            string query = "Select * from PrecriptionTbl";
            PrescriptionGV.DataSource = con.GetDatas(query);
            PrescriptionGV.DataBind();
        }
        private void getTest()
        {
            string query = "select * from LabTestTbl";
            TestCb.DataTextField = con.GetDatas(query).Columns["TestName"].ToString();
            TestCb.DataValueField = con.GetDatas(query).Columns["TestId"].ToString();
            TestCb.DataSource = con.GetDatas(query);
            TestCb.DataBind();

        }
        private void getPatients()
        {
            string query = "select * from PatienTb1";
            PatientCb.DataTextField = con.GetDatas(query).Columns["PatName"].ToString();
            PatientCb.DataValueField = con.GetDatas(query).Columns["PatId"].ToString();
            PatientCb.DataSource = con.GetDatas(query);
            PatientCb.DataBind();

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                int doctor = 301;
                string PatPhone = PatientCb.SelectedValue.ToString();
                string Medicine = MedicineTb.Value;
                string Test = TestCb.SelectedValue.ToString();
                string Cost = CostTb.Value;


                // Update this line with the correct table name
                string query = "insert into PrecriptionTbl (Doctor, Patient, Medicine, LabTest, Cost) values({0}, {1}, '{2}', {3}, {4})";
                query = string.Format(query, doctor, PatPhone, Medicine, Test, Cost);
                con.SetDatas(query);
                showPrescription();

                ErrMsg.InnerText = "Details Added!!!";

                MedicineTb.Value = "";
                CostTb.Value = "";
                PatientCb.SelectedIndex = -1;
                TestCb.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}