<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Pages.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--<link  type="text/css" href="Content/bootstrap.css" rel="stylesheet"  />--%>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>Meu site webforms</title>
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Projeto Controle de Clientes</h1>


            Selecione a opçao desejada:
            <asp:DropDownList ID="ddlMenu" runat="server">
                <asp:ListItem Selected="True" Value="0">Escolha uma opção</asp:ListItem>
                <asp:ListItem Value="1">Cadastrar cliente</asp:ListItem>
                <asp:ListItem Value="2">Consultar cliente</asp:ListItem>
                <asp:ListItem Value="3">Obter dados do cliente</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnMenu" runat="server" Text="Acessar" CssClass="btn btn-primary btn-lg" OnClick="btnAcessar" />

            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=" "></asp:Label>

        </div>
        
    </form>
</body>
</html>
