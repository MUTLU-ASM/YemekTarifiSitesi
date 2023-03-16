<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            text-align: right;
            font-size: large;
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
            <td class="auto-style16"><strong>Kategori Ad :</strong></td>
            <td>
                <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Adet :</strong></td>
            <td>
                <asp:TextBox ID="txtAdet" runat="server" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Resim :</strong></td>
            <td>
                <asp:FileUpload ID="fileResim" runat="server" CssClass="txtbx" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="btn" Height="31px" Text="Güncelle" Width="166px" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
