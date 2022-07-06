<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="CesdeCarga.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtcadena" runat="server" Width="271px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Encriptar" />
        </div>
        <asp:Label ID="lblTextoEncriptado" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
