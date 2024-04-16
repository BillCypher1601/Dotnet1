<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conbooklist.aspx.cs" Inherits="RentBook.admin.Conbooklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member List</title>
    <link rel="stylesheet" type="text/css" href="~/StyleSheet1.css" />
</head>
<body>
    <form id="Memberlistform" runat="server">
    <div class="container">
        <div class="menu-nav">
            <div style="text-align:center">
                <asp:ImageButton CssClass="icon-nav"  ID="imgbtnMainPage" runat="server" ImageUrl="~\resource\mainpage.png" OnClick="imgbtnADMainPage_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnAddEmployee" runat="server" ImageUrl="~\resource\mainpage.png"/>
                <asp:Button CssClass="button-nav" ID="btnAddEmployee" runat="server" Text="Thêm Nhân Viên" OnClick="btnAddEmployee_Click"/>
            </div>

            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnEmployeelist" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnEmployeeslist" runat="server" Text="Danh Sách Nhân Viên" OnClick="btnEmployeelist_Click"  />
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnAddbook" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnAddbook" runat="server" Text="Thêm Sách" OnClick="btnAddbook_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnConbookslist" runat="server" ImageUrl="~\resource\mainpage.png" />         
                <asp:Button CssClass="button-nav" ID="btnConbookslist" runat="server" Text="Danh Sách Sách" OnClick="btnConbookslist_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberlist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnMemberlist" runat="server" Text="Danh Sách Thành Viên" OnClick="btnMemberlist_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnRentbooklist" runat="server" ImageUrl="~\resource\mainpage.png" />           
                <asp:Button CssClass="button-nav" ID="btnRentbooklist" runat="server" Text="Danh Sách Cho Thuê" OnClick="btnRentbooklist_Click"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnLogout" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnLogout" runat="server" Text="Đăng Xuất" OnClick="btnLogout_Click"/>
            </div>            
        </div>
        <div class="main-page">
            <div style="text-align:center">
            <asp:Label ID="lblMainpage" runat="server" Text="Danh sách sách" Font-Size="50px" ></asp:Label>
            </div>
            <div style="margin: auto; text-align: center; width: 1000px">
                <div style="margin: auto;">
                    <asp:GridView ID="grdSach" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#E9F0FA" CellPadding="4" GridLines="None" PageSize="5" Width="1000px" DataKeyNames="S_MA" OnLoad="Page_Load" OnPageIndexChanging="grdSach_PageIndexChanging" OnRowDeleting="grdSach_RowDeleting" OnSelectedIndexChanged="grdSach_SelectedIndexChanged" OnRowCancelingEdit="grdSach_RowCancelingEdit" OnRowEditing="grdSach_RowEditing" OnRowUpdating="grdSach_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="S_MA" HeaderText="Mã Sách" />
                            <asp:BoundField DataField="S_TEN" HeaderText="Tên Sách" />
                            <asp:TemplateField HeaderText="Hình Ảnh">
                                <ItemTemplate>
                                    <asp:Image ID="imgSach" runat="server" ImageUrl='<%# Eval("S_HINHANH") %>' Width="100px" Height="150px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="S_TACGIA" HeaderText="Tác Giả" />
                            <asp:BoundField DataField="S_THELOAI" HeaderText="Thể Loại" />
                            <asp:BoundField DataField="S_SOLUONG" HeaderText="Số Lượng" />
                            <asp:BoundField DataField="S_GIATHUE" HeaderText="Giá Thuê" />
                            <asp:BoundField DataField="S_NGAYNHAP" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Nhập" ApplyFormatInEditMode="True" />
                            <asp:BoundField DataField="S_TINHTRANG" HeaderText="Tình Trạng" />
                            <asp:BoundField DataField="S_GHICHU" HeaderText="Ghi Chú" />
                            
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:CommandField CancelText="Hủy" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
                            <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
                        </Columns>
                        <HeaderStyle BackColor="#618BD7" ForeColor="White" HorizontalAlign="Left" />
                        <PagerStyle BackColor="#3D74C7" ForeColor="White" HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </div>



        </div>
    </div>
    </form>
</body>
</html>