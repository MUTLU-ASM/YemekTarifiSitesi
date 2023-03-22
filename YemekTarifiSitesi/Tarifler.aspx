<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSitesi.Tarifler" %>
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
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style21">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnArtı" runat="server" Height="30px" Text="+" Width="30px"  CssClass="btn" OnClick="btnArtı_Click"   />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px"  CssClass="txtbx" OnClick="btnEksi_Click"  />
                    </strong></td>
                <td class="auto-style22"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" Width="478px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style23">
                                <a href="TarifOnerDetay.aspx?tarifid=<%#Eval("tarifid")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Images/updated.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style21">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnAltArtı" runat="server" Height="30px" Text="+" Width="30px"  CssClass="btn" OnClick="btnAltArtı_Click"    />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="btnAltEksi" runat="server" Height="30px" Text="-" Width="30px"  CssClass="txtbx" OnClick="btnAltEksi_Click"   />
                    </strong></td>
                <td class="auto-style22"><strong>ONAYLI TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="478px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style23">
                                <a href="TarifOnerDetay.aspx?tarifid=<%#Eval("tarifid")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Images/updated.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </asp:Panel>
</asp:Content>
