<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPersona.aspx.cs" Inherits="CesdeCarga.AgregarPersona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Estilos/EstilosPedido.css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 43px;
            text-align: center;
        }
        .auto-style2 {
            height: 30px;
            width: 456px;
        }
        .auto-style4 {
            height: 30px;
            width: 380px;
        }
        .auto-style6 {
            height: 30px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div>
            <table  align="center">
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/logo.jpg" Height="105px" Width="194px" />
                    </td>
                    <td class="auto-style2">
                        <h2 class="auto-style1">CREAR PERSONA</h2>
                    </td>
                </tr>
        </div>
    
            
                <tr>
                    <td class="auto-style4">
                        Primer Nombre:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox" ID="txt1Nombre" runat="server" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Segundo Nombre:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox" ID="txt2Nombre" runat="server" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Primer Apellido:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox" ID="txt1Apellido" runat="server" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Segundo Apellido:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox" ID="txt2Apellido" runat="server" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Email:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox"  ID="txtEmail" runat="server" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Número de identificación:</td>
                    <td class="auto-style2">
                        <asp:TextBox class="textbox" ID="txtIdUsuario" runat="server" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Rol:</td>
                    <td class="auto-style2">
                        <asp:DropDownList  class="textbox" ID="ddlRol" runat="server" Width="196px" Height="25px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="btnAgregarPersona" runat="server" OnClick="btnAgregarPersona_Click" Text="AGREGAR" Height="40px" />
                    </td>
                </tr>
        
                <tr>
                    <td class="auto-style6" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="btnMenu" runat="server" OnClick="btnMenu_Click" Text="VOLVER AL MENÚ" Height="40px" />
                    </td>
                </tr>
        </div>
        <p>
            &nbsp;</p>
        </form>
        </body>
</html>
