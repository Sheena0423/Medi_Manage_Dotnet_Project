<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Laboratorian.aspx.cs" Inherits="EClinic.Views.Admin.Laboratorian" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid my-4">
        <div class="row">
            <!-- Left Column: Image and GridView -->
            <div class="col-md-8 mb-4">
                <div class="row">
                    <div class="col d-flex justify-content-center align-items-center">
                        <img src="../../Assets/Images/Lab.jpg" class="img-fluid rounded shadow" alt="Laboratorian Image" style="height: 400px; width: 100%; object-fit: cover;" />
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <h1 class="text-center">List of Laboratorians</h1>
                        <asp:GridView ID="LabGV" CssClass="table table-hover mt-3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="LabGV_SelectedIndexChanged">
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
                        <h2 class="card-title text-center mb-4">Laboratorians Detail</h2>
                        <form>
                            <div class="mb-3">
                                <label for="LBNameTb" class="form-label">Name</label>
                                <input type="text" class="form-control" id="LBNameTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="LBMailTb" class="form-label">Email ID</label>
                                <input type="email" class="form-control" id="LBMailTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="LBPwdTb" class="form-label">Password</label>
                                <input type="text" class="form-control" id="LBPwdTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="LBphnTb" class="form-label">Phone No.</label>
                                <input type="text" class="form-control" id="LBphnTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="LBAddTb" class="form-label">Address</label>
                                <input type="text" class="form-control" id="LBAddTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="LBGenTb" class="form-label">Gender</label>
                                <asp:DropDownList ID="LBGenTb" class="form-control" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
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
