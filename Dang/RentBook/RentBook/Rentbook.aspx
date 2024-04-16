<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rentbook.aspx.cs" Inherits="RentBook.Rentbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rentbook</title>
    <link rel="stylesheet" type="text/css" href="~/StyleSheet1.css" />
    <script src="~/SuggestBooks.js"></script>

</head>
<body>
    <form id="Rentbookform" runat="server">
        <div class="container">
        <div class="menu-nav">
            <div style="text-align:center">
                <asp:ImageButton CssClass="icon-nav"  ID="imgbtnMainPage" runat="server" ImageUrl="~\resource\mainpage.png" OnClick="imgbtnMainPage_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberlist" runat="server" ImageUrl="~\resource\mainpage.png"/>
                <asp:Button CssClass="button-nav" ID="btnMemberlist" runat="server" Text="Danh Sách Thành Viên" OnClick="btnMemberlist_Click"/>
            </div>

            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnConbooklist" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnConbooklist" runat="server" Text="Danh Sách Tình Trạng Sách" OnClick="btnConbooklist_Click"  />
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentlist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentlist" runat="server" Text="Danh Sách Cho Thuê" OnClick="btnRentlist_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberregister" runat="server" ImageUrl="~\resource\mainpage.png" />         
                <asp:Button CssClass="button-nav" ID="btnMemberregister" runat="server" Text="Đăng Ký Thành Viên Mới" OnClick="btnMemberregister_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentbook" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentbook" runat="server" Text="Cho Thuê" OnClick="btnRentbook_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnLogout" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnLogout" runat="server" Text="Đăng Xuất" OnClick="btnLogout_Click"/>
            </div>            
        </div>

        <div class="main-page">
            <div style="text-align:center">
            <asp:Label ID="lblMainpage" runat="server" Text="Cho thuê" Font-Size="50px" ></asp:Label>
            </div>

            <div class="main-page">
    <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="Cho Thuê Sách" Font-Size="30px" CssClass="form-title"></asp:Label>
    </div>
    <div class="form-container">
        <div class="form-group">
            <asp:Label ID="lblHoTen" runat="server" Text="*Họ và Tên" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" placeholder="Nhập Họ và Tên"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf_HoTen" runat="server" ControlToValidate="txtHoTen" 
                ErrorMessage="Họ và tên không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
        </div>
        <script>
            function suggestBooks() {
                var keyword = document.getElementById("txtSearch").value.trim();
                // Gửi request tới server để lấy các từ gợi ý dựa trên keyword
                // Sau đó cập nhật dropdownlist hoặc danh sách gợi ý tương ứng
            }
        </script>

        <div class="form-group">
            <asp:Label ID="lblSearch" runat="server" Text="Tìm Kiếm Sách" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Nhập từ khóa tìm kiếm" onkeyup="suggestBooks()"></asp:TextBox>
            <asp:DropDownList ID="ddlSearchResults" runat="server" CssClass="dropdownlist"></asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Label ID="lblNgayThue" runat="server" Text="*Ngày Thuê" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtNgayThue" runat="server" CssClass="form-control" placeholder="Nhập Ngày Thuê (dd/mm/yyyy)"></asp:TextBox>
            <asp:CompareValidator ID="cv_NgayThue" runat="server" ControlToValidate="txtNgayThue"
                Errormessage="Ngày thuê không hợp lệ" Operator="DataTypeCheck" Type="Date" ForeColor="Red">(*)</asp:CompareValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lblNgayTra" runat="server" Text="*Ngày Trả" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtNgayTra" runat="server" CssClass="form-control" placeholder="Nhập Ngày Trả (dd/mm/yyyy)"></asp:TextBox>
            <asp:CompareValidator ID="cv_NgayTra" runat="server" ControlToValidate="txtNgayTra"
                Errormessage="Ngày trả không hợp lệ" Operator="DataTypeCheck" Type="Date" ForeColor="Red">(*)</asp:CompareValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="lblSoLuong" runat="server" Text="*Tổng Số Lượng" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control" placeholder="Nhập Tổng Số Lượng"></asp:TextBox>
            <!-- Cần thêm validation cho TextBox này -->
        </div>
        <div class="form-group">
            <asp:Label ID="lblGiaTien" runat="server" Text="*Giá Tiền" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtGiaTien" runat="server" CssClass="form-control" placeholder="Nhập Giá Tiền"></asp:TextBox>
            <!-- Cần thêm validation cho TextBox này -->
        </div>
        <div class="form-group" style="text-align:center">
            <asp:Button ID="btnChoThue" runat="server" Text="Cho Thuê" CssClass="btn btn-primary" OnClick="btnChoThue_Click" />
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
    </div>
    </form>
    
</body>

</html>
