<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="EClinic.Views.Receptionist.Patients" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid my-4">
        <div class="row">
            <!-- Left Column: Image and GridView -->
            <div class="col-md-8 mb-4">
                <div class="row">
                    <div class="col d-flex justify-content-center align-items-center">
                        <img src="../../Assets/Images/Patients.jpg" class="img-fluid rounded shadow" alt="Laboratorian Image" style="height: 400px; width: 100%; object-fit: fill;" />
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <h1 class="text-center">List of Patients</h1>
                        <asp:GridView ID="PatientGV" CssClass="table table-hover mt-3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="PatientGV_SelectedIndexChanged">
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
                        <h2 class="card-title text-center mb-4">Patients Detail</h2>
                        <form>
                            <div class="mb-3">
                                <label for="PNameTb" class="form-label">Name</label>
                                <input type="text" class="form-control" id="PNameTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="PPhoneTb" class="form-label">Phone No.</label>
                                <input type="text" class="form-control" id="PPhoneTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="PGenTb" class="form-label">Gender</label>
                                <asp:DropDownList ID="PGenTb" class="form-control" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="PDOBTb" class="form-label">DOB</label>
                                <input type="date" class="form-control" id="PDOBTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="PAddTb" class="form-label">Address</label>
                                <input type="text" class="form-control" id="PAddTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="PAllergyTb" class="form-label">Allergies</label>
                                <input type="text" class="form-control" id="PAllergyTb" runat="server" required />
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
