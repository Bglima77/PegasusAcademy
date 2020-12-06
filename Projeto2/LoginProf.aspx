<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginProf.aspx.cs" Inherits="Projeto2.LoginProf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Design/DesignLogin.css" rel="stylesheet" />
</head>
<body>
    <section class="form-section">
    <form id="form1" runat="server">
       <div class="input-block">
            <b>Usuario</b><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Usuário obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
       </div>
            <br />

        <div class="input-block">
            <b>Senha</b><br />
            <input id="txtSenha" type="password" /><br />
        </div>
            <asp:Button ID="btnEntrar" runat="server" Text="Login" Height="27px" Width="104px" class="btn-login" OnClick="btnEntrar_Click"/>
            <br />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" class="btn-login" OnClick="btnVoltar_Click"/>
        <br />
    </form>
    </section>
</body>
</html>
