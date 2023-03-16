<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style11 {
        text-align: right;
    }
    .auto-style12 {
        font-size: x-large;
        text-align: center;
        color: #FFFFFF;
        background-color: #990000;
    }
    .auto-style13 {
        background-color: #990000;
    }
        .auto-style14 {
            height: 10px;
        }
        .auto-style16 {
            border : 2px solid #000000;
            border-radius: 10px;
            widht: 230px;
        }
        .auto-style18 {
        border: 2px solid #000000;
        border-radius: 10px;
        height: 22px;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
    <tr>
        <td class="auto-style12" colspan="2"><strong><span class="auto-style13">Mesaj Paneli</span></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Ad Soyad :</strong></td>
        <td>
            <asp:TextBox ID="txtgonderen" runat="server" CssClass="txtbx" Width="240px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mail Adresiniz :</strong></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" CssClass="txtbx" Width="240px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Konu :</strong></td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" CssClass="txtbx" Width="240px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mesaj :</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="auto-style16" Height="136px" TextMode="MultiLine" Width="240px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="btnGonder" runat="server" CssClass="btn" Height="35px" Text="Gönder" Width="167px" Font-Bold="True" OnClick="btnGonder_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
