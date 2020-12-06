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
        Nome:
          <asp:TextBox ID="txtNome" runat="server" Height="16px" Width="180px"></asp:TextBox>
          <br />
    </div>
    <div class="input-block">
        CPF:
        <asp:TextBox ID="txtCPF" runat="server" Height="16px" Width="189px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Endereco:
        <asp:TextBox ID="txtEndereco" runat="server" Width="152px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Bairro:
        <asp:TextBox ID="txtBairro" runat="server" Width="173px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Celular:
        <asp:TextBox ID="txtCelular" runat="server" Width="167px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Data Nascimento:
        <asp:TextBox ID="txtDataNasc" runat="server" Width="100px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        <br />
    </div>
Personal Trainer<br />
<select id="slcPersonal" name="D1">
    <option></option>
</select><br />
        <br />
        <asp:Button ID="btnLimpar" runat="server" Text="Limpar"  BackColor="#3333FF" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" BorderColor="White"/>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px"/>
        <asp:Button ID="btnBuscar" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Text="Buscar" Width="67px" OnClick="btnBuscar_Click" />
        <br />
</asp:Content>
