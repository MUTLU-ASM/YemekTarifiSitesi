<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSitesi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 20px;
            width: 652px;
            text-align: right;
        }
        .auto-style16 {
            width: 697px;
        }
        .auto-style18 {
            width: 652px;
        }
        .auto-style19 {
            width: 652px;
            text-align: right;
        }
        .auto-style20 {
            border: 2px solid #000000;
            border-radius: 10px;
            height: 22px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarif Ad : </strong></td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Height="20px" Width="250px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarif Malzemeler : </strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="20px" Width="250px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Yapılış : </strong></td>
            <td>
                <asp:TextBox ID="txtYapilis" runat="server" Height="120px" TextMode="MultiLine" Width="250px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Tarif resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Öneren</strong>:</td>
            <td>
                <asp:TextBox ID="txtOneren" runat="server" Height="20px" Width="250px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Mail</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="250px" CssClass="txtbx"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="btnYorumYap" runat="server" Text="YorumYap" Width="202px" Height="35px"  CssClass="auto-style20" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
