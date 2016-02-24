<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>LIÊN HỆ</h1>
        <p><h2>TRANG LIÊN HỆ</h2></p>
    </hgroup>

    <section class="contact">
        <header>
            <h3>ĐIỆN THOẠI:</h3>
        </header>
        <p>
            <span class="label">GIỜ HÀNH CHÍNH:</span>
            <span>043.666.888</span>
        </p>
        <p>
            <span class="label">NGOÀI GIỜ HÀNH CHÍNH:</span>
            <span>0979.666.999</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">HỖ TRỢ:</span>
            <span><a href="mailto:Support@example.com">hotrokhachhang@isatoe.com</a></span>
        </p>
        <p>
            <span class="label">MAKERTING:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@isatoe.com</a></span>
        </p>
        <p>
            <span class="label">CHĂM SÓC KHÁCH HÀNG:</span>
            <span><a href="mailto:General@example.com">cskh@isatoe.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>ĐỊA CHỈ:</h3>
        </header>
        <p>
            TÒA NHÀ FPY POLY, HÀM NGHI, TỪ LIÊM HÀ NỘI
        </p>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2633.213322126422!2d105.76422367566613!3d21.03564701600509!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljLCBUw7JhIE5ow6AgSMOgbSBOZ2hpIE5ow6AgSA!5e0!3m2!1svi!2s!4v1456321943028" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>