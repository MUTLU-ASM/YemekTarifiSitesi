<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSitesi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        font-size: large;
        text-align: center;
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
        .auto-style21 {
            width: 100%;
            height: 36px;
        }
        .auto-style22 {
            height: 32px;
            font-size: large;
            text-align: center;
        }
    .auto-style17 {
        text-align: left;
        width: 281px;
    }
    .auto-style18 {
        text-align: right;
    }
        .auto-style24 {
            width: 58px;
        }
        .auto-style25 {
            width: 71px;
            text-align: right;
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style27 {
            background-color: black;
        }
        .auto-style28 {
            border : 2px solid #000000;
            border-radius: 10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style16">
        <table class="auto-style21">
            <tr>
                <td class="auto-style19">
                    <strong>
                    <asp:Button ID="btnArtı" runat="server" Height="30px" Text="+" Width="30px"  CssClass="btn" OnClick="btnArtı_Click" />
                    </strong>
                </td>
                <td class="auto-style20">
                    <strong>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px"  CssClass="btn" OnClick="btnEksi_Click" />
                    </strong>
                </td>
                <td class="auto-style22"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </p>
    <asp:Panel runat="server" ID="panel">
        <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" Width="478px">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                        </td>

                        <td class="auto-style18">
                            <a href="Yemekler.aspx?yemekid=<%#Eval("yemekid")%>&islem=sil">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Images/delete.png" Width="30px" /></a> 

                        </td>
                        <td class="auto-style18">
                            <a href="YemekDuzenle.aspx?yemekid=<%#Eval("yemekid")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Images/updated.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="panel3" runat="server" CssClass="auto-style27" Height="5px">.</asp:Panel>
    <asp:Panel ID="pnlYmkEkle" runat="server" style="background-color:aliceblue;">
        <table class="auto-style11">
            <tr>
                <td class="auto-style25">
                    <strong><strong>
                    <asp:Button ID="btnArtıEkle" runat="server" CssClass="btn" Height="30px"  Text="+" Width="30px" OnClick="btnArtıEkle_Click" />
                    </strong></strong>
                </td>
                <td class="auto-style24">
                    <strong><strong>
                    <asp:Button ID="btnEksiEkle" runat="server" CssClass="btn" Height="30px"  Text="-" Width="30px" OnClick="btnEksiEkle_Click" />
                    </strong></strong>
                </td>
                <td class="auto-style16"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panel2" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td>YEMEK AD :</td>
                <td>
                    <asp:TextBox ID="txtAd" runat="server" CssClass="txtbx" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER :</td>
                <td>
                    <asp:TextBox ID="txtMalzeme" runat="server" CssClass="auto-style28" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ :</td>
                <td>
                    <asp:TextBox ID="txtTarif" runat="server" CssClass="auto-style28" Height="139px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ :</td>
                <td>
                    <asp:DropDownList ID="drpListKategori" runat="server" CssClass="auto-style28" Height="35px" Width="279px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" CssClass="btn" Font-Bold="True" Height="24px" Text="Ekle" Width="175px" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
