<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1> Công Ty Thương Mai Và Dịch Vụ ISATOE.</h1>
                <p><h2> Mang ước mơ của bạn trở thành hiện thực!!!</h2></p>
            </hgroup>
            <p>
               Hoạt Động Gần Đây
              
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Khai trương chi nhánh mới tại Hải Phòng:</h3>
    <p>Ngày 22/2/2016 Chi nhánh công ty ISATOE được khai trương tại quận Lê Chân Hải Phòng.</p>
    <p>Với diện tích 500m2 và được bố trí với các không gian độc đáo, mới lạ sẽ mang đến những khoảnh khắc trải nghiệm vô cùng tuyệt vời cho các bạn giải trí sau những giờ
    làm việc mệt mỏi. ở đây được trang trí với phong cách mới lạ, trẻ trung phù hợp mới mọi khách hàng. Hãy cùng đến và cảm nhận nhé.
    </p>
    <p>Trên tầng 2 là nơi trưng bày các sản phẩm công nghệ mới nhất của công ty. Các thiết bị kỹ thuật số, điện thoại thông minh....
    Chúng tôi đang có chương trình khuyến mãi lớn nhân khai trương chi nhánh mới. Chỉ cần mua sản phẩm trị giá 2 triệu đồng trở lên, các bạn sẽ có cơ hội 
    nhận những giải thưởng có giá trị rất cao, Tổng giá trị giải thưởng lên tới 10 tỷ đồng.

    </p>
    <h2>Dưới đây là danh sách khách hàng đang dẫn đầu top mua hàng trong tháng 01/2016</h2>

    <ol class="round">
        <li class="one">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAKH" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
                    <asp:BoundField DataField="TENKH" HeaderText="TENKH" SortExpression="TENKH" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QUANGTVPH03494QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KHACHHANG] ([MAKH], [TENKH], [email], [SDT], [DIACHI]) VALUES (@MAKH, @TENKH, @email, @SDT, @DIACHI)" SelectCommand="SELECT [MAKH], [TENKH], [email], [SDT], [DIACHI] FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TENKH] = @TENKH, [email] = @email, [SDT] = @SDT, [DIACHI] = @DIACHI WHERE [MAKH] = @MAKH">
                <DeleteParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="TENKH" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENKH" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
         
        </li>
        <li class="two">
            <h5>Số tiền đã dùng</h5> 
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAHD" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" SortExpression="MAKH" />
                    <asp:BoundField DataField="GIATIEN" HeaderText="GIATIEN" SortExpression="GIATIEN" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QUANGTVPH03494QLBHConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MAHD] = @MAHD" InsertCommand="INSERT INTO [HOADON] ([MAHD], [MAKH], [GIATIEN]) VALUES (@MAHD, @MAKH, @GIATIEN)" SelectCommand="SELECT [MAHD], [MAKH], [GIATIEN] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [MAKH] = @MAKH, [GIATIEN] = @GIATIEN WHERE [MAHD] = @MAHD">
                <DeleteParameters>
                    <asp:Parameter Name="MAHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAHD" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="GIATIEN" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="GIATIEN" Type="Decimal" />
                    <asp:Parameter Name="MAHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5> Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MALOAISP" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MALOAISP" HeaderText="MALOAISP" ReadOnly="True" SortExpression="MALOAISP" />
                    <asp:BoundField DataField="TENLOAISP" HeaderText="TENLOAISP" SortExpression="TENLOAISP" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QUANGTVPH03494QLBHConnectionString %>" DeleteCommand="DELETE FROM [LOAISP] WHERE [MALOAISP] = @MALOAISP" InsertCommand="INSERT INTO [LOAISP] ([MALOAISP], [TENLOAISP], [SOLUONG]) VALUES (@MALOAISP, @TENLOAISP, @SOLUONG)" SelectCommand="SELECT [MALOAISP], [TENLOAISP], [SOLUONG] FROM [LOAISP]" UpdateCommand="UPDATE [LOAISP] SET [TENLOAISP] = @TENLOAISP, [SOLUONG] = @SOLUONG WHERE [MALOAISP] = @MALOAISP">
                <DeleteParameters>
                    <asp:Parameter Name="MALOAISP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MALOAISP" Type="String" />
                    <asp:Parameter Name="TENLOAISP" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENLOAISP" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                    <asp:Parameter Name="MALOAISP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
         <li class="four">
            <h5>Chi Tiết</h5>
             <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource4">
                 <Fields>
                     <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                     <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
                     <asp:BoundField DataField="MALOAISP" HeaderText="MALOAISP" SortExpression="MALOAISP" />
                     <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />
                     <asp:BoundField DataField="Dinhgia" HeaderText="Dinhgia" SortExpression="Dinhgia" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                 </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QUANGTVPH03494QLBHConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [SanPham] ([MASP], [TENSP], [MALOAISP], [MOTA], [Dinhgia]) VALUES (@MASP, @TENSP, @MALOAISP, @MOTA, @Dinhgia)" SelectCommand="SELECT [MASP], [TENSP], [MALOAISP], [MOTA], [Dinhgia] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TENSP] = @TENSP, [MALOAISP] = @MALOAISP, [MOTA] = @MOTA, [Dinhgia] = @Dinhgia WHERE [MASP] = @MASP">
                 <DeleteParameters>
                     <asp:Parameter Name="MASP" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="MASP" Type="String" />
                     <asp:Parameter Name="TENSP" Type="String" />
                     <asp:Parameter Name="MALOAISP" Type="String" />
                     <asp:Parameter Name="MOTA" Type="String" />
                     <asp:Parameter Name="Dinhgia" Type="Decimal" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="TENSP" Type="String" />
                     <asp:Parameter Name="MALOAISP" Type="String" />
                     <asp:Parameter Name="MOTA" Type="String" />
                     <asp:Parameter Name="Dinhgia" Type="Decimal" />
                     <asp:Parameter Name="MASP" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Số Lượng</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" SortExpression="MAHD" />
                    <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QUANGTVPH03494QLBHConnectionString %>" SelectCommand="SELECT [MAHD], [MASP], [SOLUONG] FROM [CHITIETHOADON]"></asp:SqlDataSource>
             </li>
    </ol>
</asp:Content>