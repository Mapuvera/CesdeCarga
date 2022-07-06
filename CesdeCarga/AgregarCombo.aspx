<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCombo.aspx.cs" Inherits="CesdeCarga.AgregarCombo" %>

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
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style11 {
            text-align: left;
            height: 32px;
        }
        .auto-style15 {
            height: 24px;
            width: 530px;
        }
        .auto-style18 {
            height: 24px;
            width: 462px;
        }
        .auto-style19 {
            height: 32px;
        }
        .auto-style21 {
            text-align: center;
            height: 58px;
        }
        .auto-style24 {
            height: 37px;
            text-align: left;
        }
        .auto-style25 {
            width: 160px;
            height: 37px;
        }
        .auto-style26 {
            width: 160px;
            height: 32px;
        }
        .auto-style27 {
            height: 34px;
        }
        .auto-style28 {
            width: 160px;
            height: 34px;
        }
        .auto-style29 {
            height: 38px;
            text-align: left;
        }
        .auto-style30 {
            width: 160px;
            height: 38px;
        }
        .auto-style31 {
            height: 36px;
            text-align: left;
        }
        .auto-style32 {
            width: 160px;
            height: 36px;
        }
        .auto-style33 {
            height: 35px;
            text-align: left;
        }
        .auto-style34 {
            width: 160px;
            height: 35px;
        }
        .auto-style35 {
            margin-top: 0%;
            margin-bottom: 0%;
        }
        .auto-style36 {
            height: 57px;
        }
        .auto-style37 {
            height: 58px;
        }
        .auto-style38 {
            height: 34px;
            text-align: left;
        }
        .auto-style39 {
            height: 31px;
        }
        .auto-style40 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style35">
        <div class="auto-style1">
        <div class="auto-style1">
        <div class="auto-style1">
            <div class="auto-style1">
        <div>
                <asp:Image ID="Image1" runat="server" Height="95px" ImageUrl="~/Imagenes/logo.jpg" Width="169px" />
        </div>
            </div>
        </div>
     
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <h2>AGREGAR COMBO</h2>
                    </td>
                </tr>
                
              
                        <tr>
                            <td class="auto-style18">
                                <asp:Button ID="btnCarroceria" runat="server" CssClass="auto-style5" Height="42px" OnClick="btnCarroceria_Click" Text="CARROCERIA" Width="214px" />
                            </td>
                            <td class="auto-style15">
                                <asp:Button ID="btnTipoSolicitud" runat="server" CssClass="auto-style5" Height="42px" OnClick="btnTipoSolicitud_Click" Text="TIPO DE SOLICITUD" Width="197px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Button ID="btnTipoVehiculo" runat="server" CssClass="auto-style5" Height="42px" OnClick="btnTipoVehiculo_Click" Text="TIPO DE VEHICULO" Width="199px" />
                            </td>
                            <td class="auto-style15">
                                <asp:Button ID="btnRol" runat="server" CssClass="auto-style5" Height="42px" OnClick="btnRol_Click" Text="ROL" Width="147px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="2">
                                <asp:Button ID="btnMenu" runat="server" Height="42px" OnClick="btnMenu_Click" Text="VOLVER AL MENÚ PRINCIPAL" />
                            </td>
                        </tr>
                
              
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table align="center">
                <tr>
                    <td colspan="2" class="auto-style39">
                    </td>
                </tr>
                        <tr>
                            <td colspan="2">
                                <h2 class="auto-style1">Carroceria</h2>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style24">Id Carroceria:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtIdCarroceria" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Nombre Carroceria:</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="txtNombreCarroceria" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                
                   
                        
                    
                    
           
                        <tr>
                            <td class="auto-style21" colspan="2">
                                <asp:Button ID="btnAgregarCarroceria" runat="server" OnClick="btnAgregarCarroceria_Click" Text="AGREGAR" Height="40px" />
                            </td>
                        </tr>
                
                   
                        
                    
                    
           
                        <tr>
                            <td class="auto-style21" colspan="2">
                                <asp:Button ID="btnRegresar1" runat="server" OnClick="btnRegresar1_Click" Text="REGRESAR" Height="40px" />
                            </td>
                        </tr>
                
                   
                        
                    
                    
           
            </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table align="center">
                <tr>
                    <td colspan="2" class="auto-style39">
                    </td>
                </tr>
                        <tr>
                            <td colspan="2">
                                <h2 class="auto-style1">Tipo De Solicitud</h2>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style27">Nombre De Solicitud:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtNombreSolicitud" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Id Solicitud:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtIdSolicitud" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                
                   
                    
              
                        <tr>
                            <td colspan="2" class="auto-style37">
                                <asp:Button ID="btnAgregarSolicitud" runat="server" Text="AGREGAR" OnClick="btnAgregarSolicitud_Click" Height="40px" />
                            </td>
                        </tr>
                
                   
                    
              
                        <tr>
                            <td colspan="2" class="auto-style36">
                                <asp:Button ID="btnRegresar2" runat="server" OnClick="btnRegresar2_Click" Text="REGRESAR" Height="40px" />
                            </td>
                        </tr>
                
                   
                    
              
            </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <table  align="center">
                <tr>
                    <td colspan="2" class="auto-style40">
                    </td>
                </tr>
                        <tr>
                            <td colspan="2">
                                <h2 class="auto-style1">Tipo De Vehiculo</h2>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style27">Nombre De Vehiculo:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtNombreVehiculo" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">Id Vehiculo:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txtIdVehiculo" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style38">Modelo:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtModelo" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style33">Placa:</td>
                    <td class="auto-style34">
                        <asp:TextBox ID="txtPlaca" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                
                   
                    
               
                        <tr>
                            <td colspan="2" class="auto-style37">
                                <asp:Button ID="btnAgregarVehiculo" runat="server" Text="AGREGAR" OnClick="btnAgregarVehiculo_Click" Height="40px" />
                            </td>
                        </tr>
                
                   
                    
               
                        <tr>
                            <td colspan="2" class="auto-style37">
                                <asp:Button ID="btnRegresar3" runat="server" OnClick="btnRegresar3_Click" Text="REGRESAR" Height="40px" />
                            </td>
                        </tr>
                
                   
                    
               
            </table>
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <table  align="center">
                <tr>
                    <td colspan="2" class="auto-style40">
                    </td>
                </tr>
                        <tr>
                            <td colspan="2">
                                <h2 class="auto-style1">Rol</h2>
                            </td>
                        </tr>
                <tr>
                    <td class="auto-style27">Nombre Rol:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtNombreRol" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38">Id Rol:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtIdRol" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                
                   
               
                        <tr>
                            <td colspan="2" class="auto-style36">
                                <asp:Button ID="btnAgregarRol" runat="server"  Text="AGREGAR" OnClick="btnAgregarRol_Click" Height="40px" />
                            </td>
                        </tr>
                
                   
               
                        <tr>
                            <td colspan="2" class="auto-style36">
                                <asp:Button ID="btnRegresar4" runat="server" OnClick="btnRegresar4_Click" Text="REGRESAR" Height="40px" />
                            </td>
                        </tr>
                
                   
               
            </table>
                </asp:View>
            </asp:MultiView>
        
          
                    
                    
                    
                       
                   
               
        </div>
        </div>
        <div class="auto-style1">
       
        </div>
    </form>
</body>
</html>
