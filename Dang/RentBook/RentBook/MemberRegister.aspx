<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRegister.aspx.cs" Inherits="RentBook.MemberRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="~/StyleSheet1.css" />
</head>
<body>
    <form id="MemberRegisterform" runat="server">
    <div class="container">
        <div class="menu-nav">
            <div style="text-align:center">
                <asp:ImageButton CssClass="icon-nav"  ID="imgbtnMainPage" runat="server" ImageUrl="~\resource\mainpage.png" OnClick="imgbtnMainPage_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberlist" runat="server" ImageUrl="~\resource\mainpage.png"/>
                <asp:Button CssClass="button-nav" ID="btnMemberlist" runat="server" Text="Danh Sách Thành Viên" OnClick="btnMemberlist_Click" CausesValidation="false"/>
            </div>

            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnConbooklist" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnConbooklist" runat="server" Text="Danh Sách Tình Trạng Sách" OnClick="btnConbooklist_Click"  CausesValidation="false" />
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentlist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentlist" runat="server" Text="Danh Sách Cho Thuê" OnClick="btnRentlist_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberregister" runat="server" ImageUrl="~\resource\mainpage.png" />         
                <asp:Button CssClass="button-nav" ID="btnMemberregister" runat="server" Text="Đăng Ký Thành Viên Mới" OnClick="btnMemberregister_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentbook" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentbook" runat="server" Text="Cho Thuê" OnClick="btnRentbook_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnLogout" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnLogout" runat="server" Text="Đăng Xuất" OnClick="btnLogout_Click" CausesValidation="false"/>
            </div>            
        </div>
        <div class="main-page">
            <div style="text-align:center">
                    <asp:Label ID="lblMainpage" runat="server" Text="Đăng Ký Thành Viên" Font-Size="30px" CssClass="form-title"></asp:Label>
                </div>
            <div class="form-container">
                
                <div class="form-group">
                    <asp:Label ID="lblHoTen" runat="server" Text="*Họ và Tên" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" placeholder="Nhập Họ và Tên"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_HoTen" runat="server" ControlToValidate="txtHoTen" 
                ErrorMessage="Họ và tên không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblGioiTinh" runat="server" Text="*Giới tính" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlGioiTinh" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Nam">Nam</asp:ListItem>
                        <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                        <asp:ListItem Value="Khác">Khác</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDiaChi" runat="server" Text="*Địa chỉ" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" placeholder="Nhập Địa chỉ"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_DiaChi" runat="server" ControlToValidate="txtDiaChi" 
                ErrorMessage="Địa chỉ không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="*Email" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Nhập Email"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                ErrorMessage="Email không hợp lệ" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblNgaySinh" runat="server" Text="*Ngày sinh" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" placeholder="Nhập Ngày sinh (dd/mm/yyyy)"></asp:TextBox>
                    
                    <asp:CompareValidator ID="cv_NgaySinh" runat="server" ControlToValidate="txtNgaySinh"
                Errormessage="Ngày sinh không hợp lệ" Operator="DataTypeCheck" Type="Date" ForeColor="Red">(*)</asp:CompareValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblGhiChu" runat="server" Text="*Ghi chú" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtGhiChu" runat="server" CssClass="form-control" placeholder="Nhập Ghi chú"></asp:TextBox>
                </div>
                <div class="form-group" style="text-align:center">
                    <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" CssClass="btn btn-primary" OnClick="btnDangKy_Click" />
                </div>

                <div style="margin-top: 5px; margin-bottom: 5px; text-align: center;">
                
                <asp:Label ID="lblThongBao" runat="server" Text="[lblThongBao]"></asp:Label>
                
            </div>
            <div style="margin-top: 5px; margin-bottom: 5px; text-align: center">
                
                <asp:ValidationSummary ID="vsTonghop" runat="server" ForeColor="Red" HeaderText="Danh sách các lỗi" />
                
            </div>
            </div>
        </div>


    </div>
        </form>
</body>
</html>
