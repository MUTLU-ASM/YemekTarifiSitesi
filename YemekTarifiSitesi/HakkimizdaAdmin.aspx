<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style21 {
            width: 100%;
            height: 36px;
        }
        .auto-style19 {
            width: 71px;
            text-align: right;
            height: 32px;
        }
        .auto-style20 {
            width: 51px;
            text-align: left;
            height: 32px;
        }
        .auto-style22 {
            height: 32px;
            font-size: large;
            text-align: center;
        }
        .auto-style23 {
            border : 2px solid #000000;
            border-radius: 10px;
        }
        .auto-style24 {
            margin-left: 40px;
        }
        .auto-style25 {
            border : 2px solid #000000;
            border-radius: 10px;
            font-weight: bold;
        }
        .auto-style26 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style21">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnArtı" runat="server" Height="30px" Text="+" Width="30px"  CssClass="txtbx" OnClick="btnArtı_Click"   />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px"  CssClass="btn" OnClick="btnEksi_Click"  />
                    </strong></td>
                <td class="auto-style22"><strong>HAKKIMIZDA </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style24">
                    <asp:TextBox ID="txtHakkimizda" runat="server" CssClass="auto-style23" Height="250px" TextMode="MultiLine" Width="467px"></asp:TextBox>
                </td>
            </tr>
        </table>
    <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CssClass="auto-style25" Height="43px" Width="200px" OnClick="btnUpdate_Click" />
    </asp:Panel>
    </asp:Content>
