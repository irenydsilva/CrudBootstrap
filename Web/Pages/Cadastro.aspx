<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Web.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro de clientes</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Cadastro de cliente</h3>
                    <br />
                    <br />
                    Nome do cliente: 
                    <br />
                    <asp:TextBox ID="txtNome" runat="server" placeholder="Nome completo" Width="50%" CssClass="form-control"></asp:TextBox>
                    <br />
                    <br />

                    Endereço: 
                    <br />
                    <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereco residencial" Width="50%" CssClass="form-control"></asp:TextBox>
                    <br />
                    <br />

                    Email:
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Width="25%" CssClass="form-control"></asp:TextBox>
                    <br />
                    <br />

                    <p>
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    </p>
                    <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-sucess btn-lg" OnClick="btnCadastrarCliente_Click"/>
                    <a href="../Default.aspx" class="btn btn-default btn-lg">Voltar</a>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
