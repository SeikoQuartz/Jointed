﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="EBookStore.BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Css/BookList.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-list">
        <asp:Repeater ID="rptList" runat="server">
            <ItemTemplate>
                <div class="card">
                    <asp:PlaceHolder runat="server" Visible='<%# 
                    !string.IsNullOrWhiteSpace(Eval("Image") as string) 
                %>'>
                        <p>
                            <a href="BookDetail.aspx?ID=<%# Eval("BookID") %>" title="前往查看：<%# Eval("BookName") %>">
                                <img src="<%# Eval("Image") %>" width="200" height="160" />
                            </a>
                        </p>
                    </asp:PlaceHolder>

                    <p>
                        <a href="BookDetail.aspx?ID=<%# Eval("BookID") %>" title="前往查看：<%# Eval("BookName") %>">
                            <%# Eval("BookName") %> 
                        </a>
                    </p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:PlaceHolder runat="server" ID="plcEmpty" Visible="false">
        <p>尚未有資料 </p>
    </asp:PlaceHolder>
</asp:Content>
