<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Doctors/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="EClinic.Views.Doctors.Prescriptions" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid my-4">
        <div class="row">
            <!-- Left Column: Image and GridView -->
            <div class="col-md-8 mb-4">
                <div class="row">
                    <div class="col d-flex justify-content-center align-items-center">
                        <img src="../../Assets/Images/Medical.jpg" class="img-fluid rounded shadow" alt="Laboratorian Image" style="height: 400px; width: 100%; object-fit: fill;" />
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <h1 class="text-center">List of Prescription</h1>
                        <asp:GridView ID="PrescriptionGV" CssClass="table table-hover mt-3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
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
                        <h2 class="card-title text-center mb-4">Prescription Detail</h2>
                        <form>

                            <div class="mb-3">
                                <label for="PatientCb" class="form-label">Patient</label>
                                <asp:DropDownList ID="PatientCb" class="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="MedicineTb" class="form-label">Medicines</label>
                                <input type="text" class="form-control" id="MedicineTb" runat="server" required />
                            </div>
                            <div class="mb-3">
                                <label for="TestCb" class="form-label">Lab Test</label>
                                <asp:DropDownList ID="TestCb" class="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="CostTb" class="form-label">Cost</label>
                                <input type="text" class="form-control" id="CostTb" runat="server" required />
                            </div>

                            <div class="d-grid">
                                <label runat="server" id="ErrMsg" class="text-danger"></label>
                                <br />

                                <asp:Button ID="AddBtn" runat="server" Text="Save Prescription" CssClass="btn btn-warning btn-block " OnClick="AddBtn_Click" />

                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
