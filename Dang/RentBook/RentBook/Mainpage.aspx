<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="RentBook.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="~/StyleSheet1.css" />
    <script src="Changing.js"></script>
</head>
<body>
    <form id="Mainform" runat="server">
        <div class="container">
        <div class="menu-nav">
            <div style="text-align:center">
                <asp:ImageButton CssClass="icon-nav"  ID="imgbtnMainPage" runat="server" ImageUrl="~\resource\mainpage.png" OnClientClick="showMainpage()"/>
            </div>
            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnMemberlist" runat="server" ImageUrl="~\resource\mainpage.png"/>
                <asp:Button CssClass="button-nav" ID="btnMemberlist" runat="server" Text="Danh Sách Thành Viên" OnClientClick="showMemberlist()" OnClick="btnMemberlist_Click"/>
            </div>

            <div class="container">
                <asp:ImageButton CssClass="icon-nav" ID="imgbtnConbooklist" runat="server" ImageUrl="~\resource\mainpage.png" />
                <asp:Button CssClass="button-nav" ID="btnConbooklist" runat="server" Text="Danh Sách Sách" OnClick="btnConbooklist_Click"  />
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
            <asp:Label ID="lblMainpage" runat="server" Text="Trang Chủ" Font-Size="50px" ></asp:Label>
            </div>
            <div class="search-container">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Searching..." class="search-box"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" class="search-button"/>
            </div>




            <div class="horizontal-scroll-container">
                <div class="book-item">
                    <asp:Image ID="BookImage1" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage2" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage3" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage4" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage5" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage6" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage7" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage8" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage9" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage10" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage11" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 1</h3>
                        <p class="book-author">Tác giả 1</p>
                        <p class="book-description">Mô tả ngắn về sách 1...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
                <div class="book-item">
                    <asp:Image ID="BookImage12" runat="server" ImageUrl="~\resource\img\luachonnhiemmau.png" AlternateText="Book Cover" />
                    <div class="book-details">
                        <h3 class="book-title">Tên Sách 2</h3>
                        <p class="book-author">Tác giả 2</p>
                        <p class="book-description">Mô tả ngắn về sách 2...</p>
                        <a href="#" class="read-more">Đọc thêm</a>
                    </div>
                </div>
            </div>


        </div>
    </div>
    </form>
    
</body>

</html>
