﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucNavbar.ascx.cs" Inherits="EBookStore.Components.ucNavbar" %>

<header class="navbar__container">
    <h1 class="navbar__logo-site-name">
        <a class="navbar__logo-site-name-link" href="index.html">
            <div class="navbar__logo-container">
                <img
                    class="navbar__logo"
                    src="Images/logo.jpg"
                    alt="logo"
                    title="Logo" />
            </div>
            PC Phone
        </a>
    </h1>

    <div class="navbar__seperator">
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="搜尋" OnClick="btnSearch_Click" />
    </div>

    <nav class="navbar__navlist-container">
        <ul class="navbar__navlist">
            <li class="navbar__navitem"><a href="index.html">首頁</a></li>
            <li class="navbar__navitem">
                <a href="pages/about.html">關於敝社</a>
            </li>
            <li class="navbar__navitem"><a href="pages/goods.html">商品</a></li>
            <li class="navbar__navitem">
                <a href="pages/partners.html">合作夥伴</a>
            </li>
            <li class="navbar__navitem">
                <a href="pages/contact.html">與我們聯絡</a>
            </li>
        </ul>
    </nav>
</header>
