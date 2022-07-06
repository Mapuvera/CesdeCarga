<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OlvideContraseña.aspx.cs" Inherits="CesdeCarga.OlvideContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Estilos/Estilos.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
    <title>RECUPERAR CONTRASEÑA</title>
    <style type="text/css">
        .auto-style1 {
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
                <asp:Label ID="lbl1" runat="server" Text="RECUPERAR CONTRASEÑA"></asp:Label>
            </header>

            <div class="informacion">
                <div class="campos">
                     <br>
                    <span class="input-item">
                        <i class="fa fa-id-card"></i>
                    
                    </span>
                    <asp:TextBox class="form-input" ID="txtDocumento" runat="server" ></asp:TextBox>
                     <br>
                    
                    <div class="lblmensaje">
                <asp:Label ID="mensaje" runat="server" Text="Label" Visible="False"></asp:Label>
             </div>
            

           <div>
                
                     <asp:Button  class="btn submits sign-up"  ID="btnRestaurar" runat="server" OnClick="btnRestaurar_Click" Text="Restaurar" />
                     
                    
                    
                 
            </div>
        </div>
    </form>
    
</body>
</html>
