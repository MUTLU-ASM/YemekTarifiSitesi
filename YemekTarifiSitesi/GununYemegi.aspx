<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            margin-left: 3px;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("ad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style11"><strong>Malzemeler :</strong></span>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><span class="auto-style11"><strong>Tarif :</strong></span><span class="auto-style9"> </span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style10" Height="210px" ImageUrl="~/Images/musakka.jpg" Width="365px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>&nbsp; </strong></td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style12"><strong>Puan:</strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("puan") %>'></asp:Label>
                                    <strong>&nbsp;&nbsp; </strong></td>
                                <td class="auto-style13"><strong>Tarih:</strong>&nbsp;<em><asp:Label ID="Label7" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
