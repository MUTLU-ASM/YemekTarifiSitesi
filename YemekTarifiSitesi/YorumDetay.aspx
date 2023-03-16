<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            height: 29px;
        }
        .auto-style17 {
            border : 2px solid #000000;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="lbl" style="text-align: right">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="lbl" style="height: 29px; text-align: right">Mail Adresi :</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtMail" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="lbl" style="text-align: right">İçerik :</td>
            <td>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="auto-style17" Height="90px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="lbl" style="text-align: right">Yemek : </td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnOnayla" runat="server" CssClass="btn" Height="35px" OnClick="btnOnayla_Click" Text="Onayla" Width="166px" />
            </td>
        </tr>
    </table>
</asp:Content>
