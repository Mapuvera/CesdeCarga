<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroPedido.aspx.cs" Inherits="CesdeCarga.RegistroPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Estilos/EstilosPedido.css"/>

    <title></title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            height: 34px;
            width: 242px;
        }
        .auto-style5 {
            height: 33px;
            width: 275px;
        }
        .auto-style6 {
            height: 34px;
            width: 275px;
        }
        .auto-style7 {
            width: 275px;
        }
        .auto-style8 {
            height: 33px;
            width: 242px;
        }
        .auto-style9 {
            width: 242px;
        }
        .auto-style10 {
            height: 33px;
            width: 240px;
        }
        .auto-style11 {
            width: 240px;
        }
        .auto-style12 {
            height: 33px;
            width: 252px;
        }
        .auto-style14 {
            height: 33px;
            text-align: center;
        }
        .auto-style15 {
            margin-top: 0%;
        }
    </style>
</head>
<body style="height: 757px">
    <form id="form1" runat="server">
        <div>
            <table id="Tabla" class="auto-style3" align="center">
               
                    &nbsp;<td class="auto-style30" colspan="4">
                        <h1 class="auto-style1">SOLICITUDES DE SERVICIOS</h1>
                    </td>
                    <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label25" runat="server" Text="Id Pedido:"></asp:Label>
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="idPedido" runat="server" Width="187px"></asp:TextBox>
                        </td>
                    <td class="auto-style2" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text="fecha (aaaa-mm-dd):"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtFecha" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" Text="Contacto descargue celular:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox class="textbox" ID="txtContactoDescargueCelular" runat="server" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" Text="Tipo de solicitud:"></asp:Label>
                    <td class="auto-style5">
                        <asp:DropDownList class="textbox" ID="ddltipo" runat="server" CssClass="auto-style22" Height="25px" Width="194px">
                        </asp:DropDownList>
                    <td class="auto-style10">
                        <asp:Label ID="Label14" runat="server" Text="Valor cargue o descargue:"></asp:Label>
                    <td class="auto-style8">
                        <asp:TextBox  class="textbox" ID="txtValorCargue" runat="server" Width="165px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="Cliente:"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtIdCliente" runat="server" Width="182px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label15" runat="server" Text="Tipo de vehículo:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:DropDownList class="textbox" ID="ddlTipoVehiculo" runat="server" CssClass="auto-style22" Height="25px" Width="175px">
                            </asp:DropDownList>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label5" runat="server" Text="Origen:"></asp:Label>
                    <td class="auto-style6">
                        <asp:TextBox class="textbox" ID="txtOrigen" runat="server" Width="184px" Height="16px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label16" runat="server" Text="Carrocería:"></asp:Label>
                        <td class="auto-style4">
               
                            <asp:DropDownList class="textbox" ID="ddlCarroceria" runat="server" Height="25px" Width="175px">
                            </asp:DropDownList>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text="Destino:"></asp:Label>
                    <td class="auto-style7">
                        <asp:TextBox class="textbox" ID="txtDestino" runat="server" Width="183px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label17" runat="server" Text="Número de entrega:"></asp:Label>
                        <td class="auto-style9">
               
                            <asp:TextBox class="textbox" ID="txtNumeroEntrega" runat="server" CssClass="auto-style22" Width="170px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label6" runat="server" Text="Dirección de cargue:"></asp:Label>
                    <td class="auto-style7">
                        <asp:TextBox class="textbox" ID="txtDireccionCargue" runat="server" Width="181px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label18" runat="server" Text="Peso volumen:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:TextBox class="textbox" ID="txtPesoVolumen" runat="server" Width="172px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label7" runat="server" Text="Fecha de cargue (aaaa-mm-dd):"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtFechaCargue" runat="server" Width="182px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label19" runat="server" Text="Flete:"></asp:Label>
                        <td class="auto-style8">
               
                            
                            <asp:TextBox class="textbox" ID="txtFlete" runat="server" Width="173px"></asp:TextBox>
               
                            
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label8" runat="server" Text="Hora de cargue (hh:mm):"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtHoraCargue" runat="server" Width="183px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label20" runat="server" Text="Tarifa:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:TextBox class="textbox" ID="txtTarifa" runat="server" Width="171px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label9" runat="server" Text="Contacto cargue celular:"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtContactoCargueCelular" runat="server" Width="180px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label21" runat="server" Text="Margen:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:TextBox class="textbox" ID="txtMargen" runat="server" Width="174px" Height="17px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label10" runat="server" Text="Dirección descargue:"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtDireccionDescargue" runat="server" Width="179px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label22" runat="server" Text="Contacto comercial:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:TextBox class="textbox" ID="txtContactoComercial" runat="server" Width="173px"></asp:TextBox>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label11" runat="server" Text="Fecha descargue (aaaa-mm-dd):"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtFechaDescargue" runat="server" Width="177px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label23" runat="server" Text="Confirmado:"></asp:Label>
                        <td class="auto-style8">
               
                            <asp:DropDownList class="textbox" ID="ddlConfirmado" runat="server" Height="25px" Width="182px">
                                <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                <asp:ListItem Value="1">SI</asp:ListItem>
                                <asp:ListItem Value="2">NO</asp:ListItem>
                            </asp:DropDownList>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label12" runat="server" Text="Hora descargue(hh:mm):"></asp:Label>
                    <td class="auto-style5">
                        <asp:TextBox class="textbox" ID="txtHoraDescargue" runat="server" Width="172px"></asp:TextBox>
                        <td class="auto-style10">
               
                            <asp:Label ID="Label24" runat="server" Text="Observaciones:"></asp:Label>
                        <td class="auto-style9">
               
                            <asp:TextBox ID="txtObservaciones" runat="server" Height="103px" Width="182px" TextMode="MultiLine"></asp:TextBox>
                <tr>
                    <td  colspan="2" class="auto-style14">
                        <asp:Button class="Buttons" ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="REGISTRAR" CssClass="auto-style15" Height="40px" />
                        <td class="auto-style11">
               
                            <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False" ForeColor="#990000"></asp:Label>
                        <td class="auto-style14">
               
                            <asp:Button  ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="SALIR" Height="40px" Width="79px" />
               
                         </table>
        </div>
    </form>
    </body>
</html>
