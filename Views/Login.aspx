<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EClinic.Views.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Globle Shifa Hospital - Login</title>
    <link rel="stylesheet" href="../Libs/bootstrap-5.3.3-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../CSS/Login.css" />
</head>
<body>
    <div class="overlay"></div>
    <!-- Dark overlay -->
    <div class="login-card col-md-4">
        <h1>Globle Shifa Hospital</h1>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="emailTb" class="form-label">Email address</label>
                <input type="email" class="form-control" id="emailTb" aria-describedby="emailHelp" runat="server" required="required" />
            </div>
            <div class="mb-3">
                <label for="PasswordTb" class="form-label">Password</label>
                <input type="password" class="form-control" id="PasswordTb" runat="server" required="required" />
            </div><br />
            <div class="mb-3">
                <asp:DropDownList ID="RoleCb" class="form-control" runat="server" required="required">
                    <asp:ListItem>--Select Role--</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Receptionist</asp:ListItem>
                    <asp:ListItem>Laboratorian</asp:ListItem>
                </asp:DropDownList>
            </div> 
            <div class="d-flex justify-content-between mb-3 align-items-center">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe" />
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                </div>
                <div>
                    <a href="#" class="form-text">Forgot Password?</a>
                </div>
            </div>
            <div class="d-grid">
                <label runat="server" id="ErrMsg" class="text-danger"></label>
                <br />

                <asp:Button ID="AddBtn" runat="server" Text="Login" class="btn btn-primary btn-block " OnClick="AddBtn_Click" />

            </div>
            <div class="mt-3 text-center">
                <span>Don't have an account? <a href="SignUp.aspx">Sign Up</a></span>
            </div>
        </form>
    </div>
</body>
</html>
