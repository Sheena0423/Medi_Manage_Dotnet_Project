<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="EClinic.Views.Admin.Doctors" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="Mybody">
    <div class="container-fluid my-4">
        <div class="row">
            <!-- Left Column: Image and GridView -->
            <div class="col-md-8 mb-4">
                <div class="row">
                    <div class="col d-flex justify-content-center align-items-center">
                        <img src="../../Assets/Images/Doctor.jpg" class="img-fluid rounded shadow" alt="Doctor Image" style="height: 400px; width: 100%; object-fit: cover;" />
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <h1 class="text-center">List of Doctors</h1>
                        <asp:GridView ID="DrGV" CssClass="table table-hover mt-3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DrGV_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>

            <!-- Right Column: Form -->
            <div class="col-md-4">
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4">Doctor's Details</h2>
                        <form>
                            <div class="mb-3">
                                <label for="DrNameTb" class="form-label">Name</label>
                                <input type="text" class="form-control" id="DrNameTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DrPhnTb" class="form-label">Contact No.</label>
                                <input type="text" class="form-control" id="DrPhnTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DrMailTb" class="form-label">Email Id</label>
                                <input type="text" class="form-control" id="DrMailTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DrExpTb" class="form-label">Experience</label>
                                <input type="text" class="form-control" id="DrExpTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DrSplTb" class="form-label">Specialization</label>
                                <input type="text" class="form-control" id="DrSplTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DrGenTb" class="form-label">Gender</label>
                                <asp:DropDownList ID="DrGenTb" class="form-control" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="PwdTb" class="form-label">Password</label>
                                <input type="text" class="form-control" id="DrPwdTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="AddTb" class="form-label">Address</label>
                                <input type="text" class="form-control" id="DrAddTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="DOBTb" class="form-label">DOB</label>
                                <input type="date" class="form-control" id="DrDOBTb" runat="server" required />
                            </div>

                            <label runat="server" id="ErrMsg" class="text-danger"></label>
                            <br />

                            <asp:Button ID="AddBtn" runat="server" Text="Save" CssClass="btn btn-primary " OnClick="AddBtn_Click" />
                            <asp:Button ID="EditBtn" runat="server" Text="Edit" CssClass="btn btn-warning " OnClick="EditBtn_Click" />
                            <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger " OnClick="DeleteBtn_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
