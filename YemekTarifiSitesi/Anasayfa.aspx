<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifiSitesi.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }

        .auto-style10 {
            font-size: x-large;
        }

        .auto-style11 {
            background-color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style11" style="color: #5c0404; font-family: 'Modern No. 20'">

                        <a href="YemekDetay.aspx?yemekid=<%# Eval("yemekid") %>"> 
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("ad") %>' ForeColor="White"></asp:Label>
                        </a>

                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarifi: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Eklenme Tarihi:</strong>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                        &nbsp;- <em><strong>Puan:</strong>&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("puan") %>'></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
