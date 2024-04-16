<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addbook.aspx.cs" Inherits="RentBook.Addbook" %>
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
                <asp:ImageButton CssClass="icon-nav"  ID="imgbtnMainPage" runat="server" ImageUrl="~\resource\mainpage.png" OnClick="imgbtnADMainPage_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnAddEmployee" runat="server" ImageUrl="~\resource\mainpage.png"/>
                <asp:Button CssClass="button-nav" ID="btnAddEmployee" runat="server" Text="Thêm Nhân Viên" OnClick="btnAddEmployee_Click" CausesValidation="false"/>
            </div>

            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnEmployeelist" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnEmployeeslist" runat="server" Text="Danh Sách Nhân Viên" OnClick="btnEmployeelist_Click" CausesValidation="false" />
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnAddbook" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="Button1" runat="server" Text="Thêm Sách" OnClick="btnAddbook_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnConbookslist" runat="server" ImageUrl="~\resource\mainpage.png" />         
                <asp:Button CssClass="button-nav" ID="btnConbookslist" runat="server" Text="Danh Sách Sách" OnClick="btnConbookslist_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberlist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnMemberlist" runat="server" Text="Danh Sách Thành Viên" OnClick="btnMemberlist_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentbooklist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentbooklist" runat="server" Text="Danh Sách Cho Thuê" OnClick="btnRentbooklist_Click" CausesValidation="false"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnLogout" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnLogout" runat="server" Text="Đăng Xuất" OnClick="btnLogout_Click" CausesValidation="false"/>
            </div>            
        </div>
        <div class="main-page">
            <div style="text-align:center">
                    <asp:Label ID="lblMainpage" runat="server" Text="Thêm Sách" Font-Size="30px" CssClass="form-title"></asp:Label>
                </div>
            <div class="form-container">
                
                <div class="form-group">
                    <asp:Label ID="lblTenSach" runat="server" Text="*Tên sách" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtTenSach" runat="server" CssClass="form-control" placeholder="Nhập Tên sách"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_TenSach" runat="server" ControlToValidate="txtTenSach" 
                        ErrorMessage="Tên sách không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group">
                    <asp:Label ID="lblHinhAnh" runat="server" Text="*Hình ảnh" CssClass="form-label"></asp:Label>
                    <asp:FileUpload ID="fileUploadHinhAnh" runat="server" />
                    <asp:RequiredFieldValidator ID="rf_HinhAnh" runat="server" ControlToValidate="fileUploadHinhAnh" ErrorMessage="Vui lòng chọn hình ảnh" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTacGia" runat="server" Text="*Tác giả" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtTacGia" runat="server" CssClass="form-control" placeholder="Nhập Tên tác giả"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_TacGia" runat="server" ControlToValidate="txtTacGia" 
                        ErrorMessage="Tác giả không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTheLoai" runat="server" Text="*Thể loại" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlTheLoai" runat="server" CssClass="form-control">
                        <asp:ListItem Text="1.Tiểu thuyết,Truyện ngắn" Value="Tiểu thuyết"></asp:ListItem>
                        <asp:ListItem Text="2.Truyện tranh" Value="Truyện ngắn"></asp:ListItem>
                        <asp:ListItem Text="3.Kinh điển" Value="Kinh điển"></asp:ListItem>
                        <asp:ListItem Text="4.Khoa học viễn tưởng" Value="Khoa học viễn tưởng"></asp:ListItem>
                        <asp:ListItem Text="5.Huyền bí" Value="Huyền bí"></asp:ListItem>
                        <asp:ListItem Text="6.Phiêu lưu" Value="Phiêu lưu"></asp:ListItem>
                        <asp:ListItem Text="7.Tình cảm, lãng mạn" Value="Tình cảm, lãng mạn"></asp:ListItem>
                        <asp:ListItem Text="8.Hài hước" Value="Hài hước"></asp:ListItem>
                        <asp:ListItem Text="9.Kỹ nghệ, công nghệ" Value="Kỹ nghệ, công nghệ"></asp:ListItem>
                        <asp:ListItem Text="10.Lịch sử" Value="Lịch sử"></asp:ListItem>
                        <asp:ListItem Text="11.Tâm lý, tâm lý học" Value="Tâm lý, tâm lý học"></asp:ListItem>
                        <asp:ListItem Text="12.Tôn giáo, tín ngưỡng" Value="Tôn giáo, tín ngưỡng"></asp:ListItem>
                        <asp:ListItem Text="13.Chính trị, xã hội" Value="Chính trị, xã hội"></asp:ListItem>
                        <asp:ListItem Text="14.Kinh tế, tài chính" Value="Kinh tế, tài chính"></asp:ListItem>
                        <asp:ListItem Text="15.Y học, sức khỏe" Value="Y học, sức khỏe"></asp:ListItem>
                        <asp:ListItem Text="16.Mỹ thuật, hội họa" Value="Mỹ thuật, hội họa"></asp:ListItem>
                        <asp:ListItem Text="17.Âm nhạc, nhạc lịch" Value="Âm nhạc, nhạc lịch"></asp:ListItem>
                        <asp:ListItem Text="18.Thể thao, thể dục" Value="Thể thao, thể dục"></asp:ListItem>
                        <asp:ListItem Text="19.Kỹ thuật số, công nghệ thông tin" Value="Kỹ thuật số, công nghệ thông tin"></asp:ListItem>
                        <asp:ListItem Text="20.Sách giáo khoa" Value="Sách giáo khoa"></asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="form-group">
                    <asp:Label ID="lblSoLuong" runat="server" Text="*Số lượng" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control" placeholder="Nhập Số lượng"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_SoLuong" runat="server" ControlToValidate="txtSoLuong" 
                        ErrorMessage="Số lượng không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblGiaThue" runat="server" Text="*Giá thuê" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtGiaThue" runat="server" CssClass="form-control" placeholder="Nhập Giá thuê"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rf_GiaThue" runat="server" ControlToValidate="txtGiaThue" 
                        ErrorMessage="Giá thuê không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblNgayNhap" runat="server" Text="*Ngày nhập" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtNgayNhap" runat="server" CssClass="form-control" placeholder="Nhập Ngày nhập (dd/mm/yyyy)"></asp:TextBox>
    
                    <asp:CompareValidator ID="cv_NgayNhap" runat="server" ControlToValidate="txtNgayNhap"
                        Errormessage="Ngày nhập không hợp lệ" Operator="DataTypeCheck" Type="Date" ForeColor="Red">(*)</asp:CompareValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTinhTrang" runat="server" Text="*Tình trạng" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlTinhTrang" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Còn hàng" Value="Còn hàng"></asp:ListItem>
                        <asp:ListItem Text="Hết hàng" Value="Còn hàng"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblGhiChuSach" runat="server" Text="*Ghi chú" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtGhiChuSach" runat="server" CssClass="form-control" placeholder="Nhập Ghi chú"></asp:TextBox>
                </div>

                <div class="form-group" style="text-align:center">
                    <asp:Button ID="btnAddbook" runat="server" Text="Thêm sách" CssClass="btn btn-primary" OnClick="btnAddbookConfirm_Click" />
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
