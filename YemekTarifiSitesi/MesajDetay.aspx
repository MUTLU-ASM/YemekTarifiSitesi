<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSitesi.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            text-align: left;
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
            <td class="auto-style15">Gönderen :</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtGonderen" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Başlık&nbsp; :</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Mail :</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtMail" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">İçreik :</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="txtbx" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
