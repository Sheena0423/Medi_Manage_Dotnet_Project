<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="EClinic.Views.Admin.Receptionist" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid my-4">
        <div class="row">
            <!-- Left Column: Image and GridView -->
            <div class="col-md-8 mb-4">
                <div class="row">
                    <div class="col d-flex justify-content-center align-items-center">
                        <img src="../../Assets/Images/Reception.jpg" class="img-fluid rounded shadow" alt="Receptionist Image" style="height: 400px; width: 100%; object-fit: cover;" />
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <h1 class="text-center">List of Receptionists</h1>
                        <asp:GridView ID="ReceptionistGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="ReceptionistGV_SelectedIndexChanged">
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
                        <h2 class="card-title text-center mb-4">Receptionist Detail</h2>
                        <form>
                            <div class="mb-3">
                                <label for="RNameTb" class="form-label">Name</label>
                                <input type="text" class="form-control" id="RNameTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="RMailTb" class="form-label">Email ID</label>
                                <input type="email" class="form-control" id="RMailTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="RAddTb" class="form-label">Address</label>
                                <input type="text" class="form-control" id="RAddTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="RphnTb" class="form-label">Phone No.</label>
                                <input type="text" class="form-control" id="RphnTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="RPwdTb" class="form-label">Password</label>
                                <input type="text" class="form-control" id="RPwdTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="RGenTb" class="form-label">Gender</label>
                                <input type="text" class="form-control" id="RGenTb" runat="server" required />
                            </div>

                            <label runat="server" id="ErrMsg" class="text-danger"></label><br />

                            <asp:Button ID="AddBtn" runat="server" Text="Save" CssClass="btn btn-primary " OnClick="AddBtn_Click" />
                            <asp:Button ID="EditBtn" runat="server" Text="Edit" CssClass="btn btn-warning " />
                            <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger " OnClick="DeleteBtn_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
