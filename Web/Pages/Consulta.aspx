<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Web.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Consulta de cliente</h3>

                    <asp:GridView ID="grdCliente" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="False" BackColor="PaleGreen">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                        </Columns>

                        <RowStyle CssClass="cursor-pointer" />
                    </asp:GridView>
                    <p>
                        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    </p>
                    <a href="../Default.aspx" class="btn btn-default btn-lg">Voltar</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
