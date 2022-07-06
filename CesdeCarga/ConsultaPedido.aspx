<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaPedido.aspx.cs" Inherits="CesdeCarga.ConsultaPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 174px;
        }
        .auto-style2 {
            height: 57px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            text-align: center;
            width: 732px;
        }
        .auto-style8 {
            height: 23px;
            width: 732px;
        }
        .auto-style9 {
            width: 732px;
        }
        .auto-style10 {
            height: 23px;
            width: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/logo.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3"><strong>
                        <asp:Label ID="Label1" runat="server" Text="CONSULTA DE PEDIDO"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style6" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Número de pedido"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtIdPedido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:ImageButton ID="btnBuscarPedidos" runat="server" Height="38px" ImageUrl="~/Imagenes/magnifying-glass-g31b47cd81_1280.png" OnClick="btnBuscarPedidos_Click" Width="45px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GdPedidos" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
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
                    <td colspan="3" class="auto-style5">
                                <asp:Button ID="btnMenu" runat="server" Height="42px" OnClick="btnMenu_Click" Text="VOLVER AL MENÚ PRINCIPAL" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
