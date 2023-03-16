<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            font-size: 15pt;
        }
        .auto-style12 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" Height="156px" ImageUrl="~/Images/hakkimizda.jpg" Width="478px" />
    <p class="auto-style12">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <em>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="auto-style11" Text='<%# Eval("metin") %>'></asp:Label>
                </em>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
