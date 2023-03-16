<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        margin-left: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="txtbx"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="txtbx"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="txtbx"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Resim:</strong></td>
        <td>
            <asp:FileUpload ID="fileResim" runat="server" Width="250px" CssClass="txtbx" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarifi Öneren:</strong></td>
        <td>
            <asp:TextBox ID="txtTarifiOneren" runat="server" Width="250px" CssClass="txtbx"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px" CssClass="txtbx"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnTarifOner" runat="server" BackColor="#FFFFCC" CssClass="txtbx" Font-Bold="True" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>
