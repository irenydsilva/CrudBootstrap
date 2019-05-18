<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Web.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Detalhes do cliente</h3>

                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="15%"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" CssClass="btn btn-info btn-lg" />
                </div>
                <div class="row">
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="50%"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control" Width="50%"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="50%"></asp:TextBox>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
