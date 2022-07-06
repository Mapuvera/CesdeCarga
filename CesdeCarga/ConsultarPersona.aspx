<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarPersona.aspx.cs" Inherits="CesdeCarga.ConsultarPersona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
            text-align: center;
            width: 789px;
        }
        .auto-style4 {
            width: 789px;
        }
        .auto-style5 {
            height: 23px;
            width: 789px;
        }
        .auto-style6 {
            height: 23px;
            width: 225px;
        }
        .auto-style7 {
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/logo.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Número de documento"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtIdPersona" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:ImageButton ID="btnBuscarPersonas" runat="server" Height="38px" ImageUrl="~/Imagenes/magnifying-glass-g31b47cd81_1280.png" OnClick="btnBuscarPedidos_Click" Width="45px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1" colspan="2">
                        <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="3">
                        <asp:GridView ID="GdPersonas" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="3">
                                <asp:Button ID="btnMenu" runat="server" Height="42px" OnClick="btnMenu_Click" Text="VOLVER AL MENÚ PRINCIPAL" />
                            </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
