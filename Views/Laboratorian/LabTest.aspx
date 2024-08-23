<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaboratroianMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="EClinic.Views.Laboratorian.LabTest" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid my-4">
        <div class="row" style="height:50px"></div>
    <div class="row">
        <!-- Left Column: Image and GridView -->
        <div class="col-md-8 mb-4">
            <div class="row">
                <div class="col d-flex justify-content-center align-items-center">
                    <img src="../../Assets/Images/Micro-scope.jpg" class="img-fluid rounded shadow" alt="Laboratory Image" style="height: 400px; width: 100%; object-fit: cover;" />
                </div>
            </div>
            <div class="row mt-4">
                <div class="col">
                    <h1 class="text-center">Laboratory Test Details</h1>
                    <asp:GridView ID="LabTestGV" CssClass="table table-hover mt-3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="LabTestGV_SelectedIndexChanged">
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
                    <h2 class="card-title text-center mb-4">Lab Tests</h2>
                    <form>
                        <div class="row" style="height:23px"></div>
                        <div class="mb-3">
                            <label for="TestNameTb" class="form-label">Test Name</label>
                            <input type="text" class="form-control" id="TestNameTb" runat="server" required />
                        </div>
                        <div class="row" style="height:23px"></div>
                        <div class="mb-3">
                            <label for="TestCostTb" class="form-label">Test Cost</label>
                            <input type="text" class="form-control" id="TestCostTb" runat="server" required />
                        </div>
                        
                        <div class="row" style="height:23px"></div>

                        <label runat="server" id="ErrMsg" class="text-danger"></label>
                        <br />

                        <asp:Button ID="AddBtn" runat="server" Text="  Save  " CssClass="btn btn-primary " OnClick="AddBtn_Click" />
                        <asp:Button ID="EditBtn" runat="server" Text="  Edit  " CssClass="btn btn-warning " OnClick="EditBtn_Click" />
                        <asp:Button ID="DeleteBtn" runat="server" Text="  Delete  " CssClass="btn btn-danger " OnClick="DeleteBtn_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
