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
        <input id="txtNome" type="text" /><br />
    </div>
    <div class="input-block">
        CPF:
        <input id="txtCPF" type="text" /><br />
    </div>
    <div class="input-block">
        Logradouro:
        <input id="txtLogradouro" type="text" /><br />
    </div>
    <div class="input-block">
        Bairro:
        <input id="txtBairro" type="text" /><br />
    </div>
    <div class="input-block">
        Celular:
        <input id="txtCelular" type="text" /><br />
    </div>
    <div class="input-block">
        Data Nascimento:
        <input id="txtFormacao" type="text" /><br />
    </div>
    <div class="input-block">
        <br />
    </div>
Personal Trainer<br />
<select id="slcPersonal" name="D1">
    <option></option>
</select><br />
        <br />
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" OnClick="btnVoltar_Click" />
        &nbsp;<asp:Button ID="btnSalvar" runat="server" Text="Salvar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px"/>
        <asp:Button ID="btnLimpar" runat="server" Text="Limpar"  BackColor="#3333FF" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" BorderColor="White"/>
        <asp:Button ID="btnBuscar" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Text="Buscar" Width="67px" />
        <br />
</asp:Content>
