using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClinic.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (RoleCb.SelectedIndex == 0)
            {
                ErrMsg.InnerText = "Select a Role";
            }
            else if (RoleCb.SelectedIndex == 1)
            {
                if(emailTb.Value=="admin@gamil.com" && PasswordTb.Value == "admin")
                {
                    string role = "admin";
                    Session["uid"] = 1;
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Doctors.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Credentials";
                }
                
            }
            else if(RoleCb.SelectedIndex == 2)
            {
                string query = "select * from DoctorsTbl where DocEmail='{0}' and DocPass='{1}' ";
                query=string.Format(query, emailTb.Value, PasswordTb.Value);
                DataTable dt=con.GetDatas(query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Credentials";
                }
                else
                {
                    string role = "Doctors";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Prescriptions.aspx";
                    r_url=string.Format(r_url, role);
                    Response.Redirect(r_url);
                }
            }
            else if(RoleCb.SelectedIndex == 3)
            {
                string query = "select * from ReceptionistTbl where RecEmail='{0}' and RecPassword='{1}' ";
                query = string.Format(query, emailTb.Value, PasswordTb.Value);
                DataTable dt = con.GetDatas(query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Credentials";
                }
                else
                {
                    string role = "Receptionist";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Patients.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }
            }
            else if(RoleCb.SelectedIndex == 4)
            {
                string query = "select * from LaboratorianTbl where LabEmail='{0}' and LabPass='{1}' ";
                query = string.Format(query, emailTb.Value, PasswordTb.Value);
                DataTable dt = con.GetDatas(query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Credentials";
                }
                else
                {
                    string role = "Laboratorian";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/LabTest.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }

            }
        }
    }
}