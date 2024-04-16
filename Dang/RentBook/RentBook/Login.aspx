<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RentBook.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:700px;margin:auto;text-align:center">
    
        <div>
            <asp:Label ID="lblLogin" runat="server" Text="Đăng nhập"  Font-Size="50px"></asp:Label>
        </div>
        <div style="margin-top: 5px; margin-bottom: 5px">

                <asp:Label ID="Label4" runat="server" Text="Tên đăng nhập" Width="200px"></asp:Label>
                <asp:TextBox ID="txtTenDN" runat="server" style="margin-left: 0px" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rf_TenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>

            </div>
        <div style="margin-top: 5px; margin-bottom: 5px">

                <asp:Label ID="Label5" runat="server" Text="Mật khẩu" Width="200px"></asp:Label>
                <asp:TextBox ID="txtMK" runat="server" style="margin-left: 0px" TextMode="Password" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rf_MK" runat="server" ControlToValidate="txtMK" ErrorMessage="Mật khẩu không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </div>
        <div style="margin-top: 5px; margin-bottom: 5px; text-align: center;">
                
                <asp:Button ID="btnDangnhap" runat="server" OnClick="btnDangnhap_Click" Text="Đăng nhập" />
                
            </div>
            <div style="margin-top: 5px; margin-bottom: 5px; text-align: center;">
                
                <asp:Label ID="lblThongBao" runat="server" Text="[ThongBao]"></asp:Label>
                
            </div>
            <div style="margin-top: 5px; margin-bottom: 5px; text-align: center">
                
                <asp:ValidationSummary ID="vsTonghop" runat="server" ForeColor="Red" HeaderText="Danh sách các lỗi" />
                
            </div>
    </div>
    </form>
</body>
</html>
