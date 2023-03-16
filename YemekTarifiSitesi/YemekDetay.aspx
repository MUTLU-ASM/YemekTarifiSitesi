<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #990000;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: xx-small;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            background-color: #000000;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            background-color: #990000;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            border : 2px solid #000000;
            border-radius: 10px;
            height: 22px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15"> <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label></div>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("adsoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("icerik") %>'></asp:Label>
                        &nbsp;- <em>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("tarih") %>'></asp:Label>
                        </em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style13" style="border-style: inset; border-width: 2px; border-color: #FF0000"><strong>Yorum Yapma Paneli</strong></div>
    <table class="auto-style10">
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Ad Soyad : </strong></td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" Height="20px" Width="200px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Mail : </strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="200px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yorumunuz : </strong></td>
            <td>
                <asp:TextBox ID="txtYorum" runat="server" Height="120px" TextMode="MultiLine" Width="200px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="btnYorumYap" runat="server" Text="YorumYap" Width="202px" Height="35px" OnClick="btnYorumYap_Click" CssClass="auto-style17" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
