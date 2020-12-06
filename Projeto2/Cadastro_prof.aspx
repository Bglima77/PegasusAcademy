﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cadastro_prof.aspx.cs" Inherits="Projeto2.Cadastro_prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Design/DesignCadastro.css" rel="stylesheet" />
    <style type="text/css">
        
        #txtCPF {
        }
        #txtNome {
        }
        #txtFormacao {
        }
        #txtCelular {
        }
        #txtBairro {
        }
        #txtLogradouro {
            width: 167px;
        }
        #txtExp {
            height: 42px;
            width: 272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="input-block">
        Nome:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Nome obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Nome inválido" ValidationExpression="/^[a-z ,.'-]+$/i" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtNome" runat="server" Width="183px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        CPF:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="CPF obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="CPF inválido. Ex: xxx.xxx.xxx-xx" ValidationExpression="^\d{3}\.\d{3}\.\d{3}-\d{2}$" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtCPF" runat="server" Width="197px"></asp:TextBox>
        <br />
    </div>
      <div class="input-block">
        Data Nascimento:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDatanasc" ErrorMessage="Data de Nascimento obrigatória." ValidationGroup="form">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDatanasc" ErrorMessage="Data inválida. Ex: DD.MM.AAAA" ValidationExpression="^ (d {2}). d {2}. (d {4}) $" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtDatanasc" runat="server" Width="109px"></asp:TextBox>
          <br />
    </div>
    <div class="input-block">
        Endereco:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Endereço obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:TextBox ID="txtEndereco" runat="server" Width="162px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Bairro:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBairro" runat="server" Width="185px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Celular:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCelular" ErrorMessage="Celular obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCelular" ErrorMessage="Celular inválido. Ex: (xx) xxxxx-xxxx" ValidationExpression="^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$" ValidationGroup="form" Visible="False">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtCelular" runat="server" Width="179px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Formação:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFormacao" ErrorMessage="Formação obrigatória." ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;
        <asp:TextBox ID="txtFormacao" runat="server" Width="160px"></asp:TextBox>
        <br />
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="form" />
    <div class="input-block">
        Experiências<br />
        <textarea id="txtExp" name="S1" cols="20" rows="1"></textarea><br />
    </div>
        <br />
        <asp:Button ID="btnLimpar" runat="server" Text="Limpar"  BackColor="#3333FF" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" BorderColor="White"/>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px"/>
        <asp:Button ID="btnBuscar" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Text="Buscar" Width="67px" OnClick="btnBuscar_Click" />
        <br />
</asp:Content>
