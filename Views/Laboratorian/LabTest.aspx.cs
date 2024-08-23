using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views.Laboratorian
{
    public partial class LabTest : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            showTests();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void showTests()
        {
            string query = "Select * from LabTestTbl";
            LabTestGV.DataSource = con.GetDatas(query);
            LabTestGV.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string user = Session["uid"] as string;
                string TestName = TestNameTb.Value;
                string TestCost = TestCostTb.Value;

                // Update this line with the correct table name
                string query = "insert into LabTestTbl (TestName, TestCost, AddBy) values('{0}', '{1}', '{2}')";
                query = string.Format(query, TestName, TestCost, user);
                con.SetDatas(query);
                showTests();

                ErrMsg.InnerText = "Details Added!!!";

                TestNameTb.Value = "";
                TestCostTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
        int key = 0;
        protected void LabTestGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TestNameTb.Value = LabTestGV.SelectedRow.Cells[2].Text;
            TestCostTb.Value = LabTestGV.SelectedRow.Cells[3].Text;
            if (TestNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(LabTestGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TestNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Lab test!!!";
                }
                else
                {
                    string TestName = TestNameTb.Value;
                    string TestCost = TestCostTb.Value;

                    string query = "Update LabTestTbl set TestName='{0}', TestCost='{1}' where TestId={2}";
                    query = string.Format(query, TestName, TestCost, LabTestGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showTests();
                    ErrMsg.InnerText = "Details Updated!!!";

                    TestNameTb.Value = "";
                    TestCostTb.Value = "";

                }
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
                if (TestNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Test!!!";
                }
                else
                {

                    string query = "delete from LabTestTbl where TestId={0}";
                    query = string.Format(query, LabTestGV.SelectedRow.Cells[1].Text);
                    con.SetDatas(query);
                    showTests();
                    ErrMsg.InnerText = "Lab Test Deleted!!!";
                    key = 0;

                    TestNameTb.Value = "";
                    TestCostTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}