<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="RentBook.admin_Mainpage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="~/StyleSheet1.css" />
</head>
<body>
    <form id="Mainform" runat="server">
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
            <asp:Label ID="lblMainpage" runat="server" Text="Trang Chủ" Font-Size="50px" ></asp:Label>
            </div>
            <div class="search-container">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Searching..." class="search-box"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="search-button" OnClick="Button1_Click"/>
            </div>




            


        </div>

    </div>

    </form>
    
</body>

</html>
