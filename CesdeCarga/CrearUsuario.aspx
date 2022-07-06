<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="CesdeCarga.CrearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Estilos/Estilos.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
    <title>CREAR USUARIO</title>
   
 
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div class="con">

            <header class="head-form">
                <h2>
                    <asp:Image ID="Image1" runat="server" Height="83px" Width="159px" ImageUrl="~/logo.jpg" />
                </h2>
                <asp:Label ID="lbl1" runat="server" Text="CREAR USUARIO"></asp:Label>
            </header>

            <div class="informacion">
                <div class="campos">
                     <br>
                    <span class="input-item">
                        <i class="fa fa-id-card"></i>
                    
                    </span>
                    <asp:TextBox class="form-input" ID="txtIdUsuario" runat="server" ></asp:TextBox>
                     <br>
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

            <div class="botones">
                
                    <asp:Button class="btn submits sign-up" ID="btningresar" runat="server" Text="Registrar" OnClick="btningresar_Click"  />
                    <asp:LinkButton class="btn submits frgt-pass" ID="OlvideContraseña" runat="server" PostBackUrl="~/Inicio.aspx">¿Ya tienes un usuario?</asp:LinkButton>
                    
                 
            </div>
        </div>
    </form>
    
</body>
</html>
