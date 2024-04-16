<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Memberlist.aspx.cs" Inherits="RentBook.Memberlist" %>

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
            <asp:Label ID="lblMainpage" runat="server" Text="Danh sách thành viên" Font-Size="50px" ></asp:Label>
            </div>
            <div style="margin: auto; text-align: center; width: 1000px">
                <div style="margin: auto;">
                    <asp:GridView ID="grdTV" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#E9F0FA" CellPadding="4" GridLines="None" PageSize="5" Width="1000px" DataKeyNames="TV_MA" OnLoad="Page_Load" OnPageIndexChanging="grdTV_PageIndexChanging" OnRowDeleting="grdTV_RowDeleting" OnSelectedIndexChanged="grdTV_SelectedIndexChanged" OnRowCancelingEdit="grdTV_RowCancelingEdit" OnRowEditing="grdTV_RowEditing" OnRowUpdating="grdTV_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TV_MA" HeaderText="Mã Thành Viên" />
                            <asp:BoundField DataField="TV_TEN" HeaderText="Họ Tên" />
                            <asp:TemplateField HeaderText="Giới Tính">
                                <ItemTemplate>
                                    <asp:Literal runat="server" Text='<%# Convert.ToBoolean(Eval("TV_GT")) ? "Nam" : "Nữ" %>' />
                                    <asp:CheckBox ID="cboGT" runat="server" Visible="false"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TV_DIACHI" HeaderText="Địa Chỉ" />
                            <asp:BoundField DataField="TV_SDT" HeaderText="Số điện thoại" />
                            <asp:BoundField DataField="TV_EMAIL" HeaderText="Số điện thoại" />
                            <asp:BoundField DataField="TV_NGAYSINH" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Sinh" ApplyFormatInEditMode="True" />
                            <asp:BoundField DataField="TV_GHICHU" HeaderText="Ghi Chú" />
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
