<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CesdeCarga.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/Estilos.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página Logueo - CESDECARGA</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            height: 500px;
        }
        .auto-style2 {
            text-align: center;
        }
        </style>
</head>
<body>
    
      
   
   
    <form id="form1" runat="server" class="auto-style1">
        <div class="con">

            <header class="head-form">
                <h2>
                    <asp:Image ID="Image1" runat="server" Height="83px" Width="159px" ImageUrl="~/Imagenes/logo.jpg" />
                </h2>
                <asp:Label ID="lbl1" runat="server" Text="BIENVENIDO"></asp:Label>
            </header>

            <div class="informacion">
                <div class="campos">

                    <span class="input-item">
                        <i class="fa fa-user-circle"></i>
                    
                    </span>
                    <asp:TextBox class="form-input" ID="txtUsuario" runat="server" ></asp:TextBox>
            
                    <br>
                    <span class="input-item">
                       <i class="fa fa-key"></i>
                    </span>
                    <asp:TextBox class="form-input" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br>
                </div>
             </div>

             <div class="lblmensaje">
                <asp:Label ID="mensaje" runat="server" Text="Label" Visible="False"></asp:Label>
             </div>

            <div class="auto-style2">
                
                    <asp:Button class="btn submits sign-up" ID="btningresar" runat="server" Text="Ingresar" OnClick="btningresar_Click1" />
                    <asp:LinkButton class="btn submits frgt-pass" ID="OlvideContraseña" runat="server" PostBackUrl="~/OlvideContraseña.aspx">¿Olvidaste tu contraseña?</asp:LinkButton>
                    <asp:LinkButton  ID="CrearUsuario" runat="server" PostBackUrl="~/CrearUsuario.aspx" ForeColor="Black">¿Aún no tienes una cuenta?</asp:LinkButton>
                 
            </div>

        </div>
    </form>
    
    
      
   
   
</body>
</html>
