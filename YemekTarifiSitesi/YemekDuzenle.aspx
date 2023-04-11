<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 26px;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style18 {
            height: 26px;
            text-align: justify;
        }
        .auto-style19 {
            height: 26px;
            text-align: right;
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
            <td style="text-align: right"><strong>Yemek Ad :</strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" CssClass="txtbx" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Malzemeler :</strong></td>
            <td>
                <asp:TextBox ID="txtMalzeme" runat="server" CssClass="txtbx" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Tarif :</strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="txtbx" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Kategori :</strong></td>
            <td>
                <asp:DropDownList ID="dropListKategori" runat="server" CssClass="txtbx" Height="31px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Yemek Görüntü :</strong></td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style18"><strong>
                <asp:Button ID="btnGüncelle" runat="server" CssClass="btn" Font-Bold="True" Height="39px" OnClick="btnGüncelle_Click" Text="Güncelle" Width="189px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18"><strong>
                <asp:Button ID="btnGununyemegi" runat="server" CssClass="btn" Font-Bold="True" Height="39px"  Text="Günün yemeğini seç" Width="189px" BorderColor="#CC3300" OnClick="btnGununyemegi_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
