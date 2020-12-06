<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cadastro_aluno.aspx.cs" Inherits="Projeto2.Cadastro_aluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Design/DesignCadastro.css" rel="stylesheet" />
<style type="text/css">
    #slcPersonal {
        width: 148px;
        height: 19px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="input-block">
        Nome:<asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtNome" ValidationGroup="form" ErrorMessage="Preencha o campo Nome." >*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Nome inválido." ValidationExpression="/^[a-z ,.'-]+$/i" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;
          <asp:TextBox ID="txtNome" runat="server" Height="16px" Width="180px"></asp:TextBox>
          <br />
    </div>
    <div class="input-block">
        CPF:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="CPF obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="CPF inválido. Ex: XXX.XXX.XXX-XX" ValidationExpression="^\d{3}\.\d{3}\.\d{3}-\d{2}$" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtCPF" runat="server" Height="16px" Width="189px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Endereco:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Endereço obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:TextBox ID="txtEndereco" runat="server" Width="152px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Bairro:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBairro" runat="server" Width="173px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Celular:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCelular" ErrorMessage="Celukar obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCelular" ErrorMessage="Celular inválido. Ex: (xx) xxxxx-xxxx" ValidationExpression="^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;
        <asp:TextBox ID="txtCelular" runat="server" Width="167px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Data Nascimento:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDataNasc" ErrorMessage="Data de Nascimento obrigatória." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDataNasc" ErrorMessage="Data inválida. Ex: DD.MM.YYYY" ValidationExpression="^ (d {2}). d {2}. (d {4}) $" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;
        <asp:TextBox ID="txtDataNasc" runat="server" Width="100px"></asp:TextBox>
        <br />
    </div>
Personal Trainer<br />
<select id="slcPersonal" name="D1">
    <option></option>
</select><br />
      <br />
    <div class="input-block">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Black" BorderColor="White" DisplayMode="List" ForeColor="White" ShowMessageBox="True" ValidationGroup="form" />
        <br />
    </div>
        <br />
        <asp:Button ID="btnLimpar" runat="server" Text="Limpar"  BackColor="#3333FF" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" BorderColor="White"/>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px"/>
        <asp:Button ID="btnBuscar" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Text="Buscar" Width="67px" OnClick="btnBuscar_Click" />
        <br />
</asp:Content>
