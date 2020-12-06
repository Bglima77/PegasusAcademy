<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="BuscaPersonal.aspx.cs" Inherits="Projeto2.BuscaPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Design/DesignBusca.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Insira:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Nome ou CPF obrigatório." ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="txtBusca" runat="server" Text="Buscar" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="form" />
    <p>
        Filtro:
        <asp:RadioButton ID="rbNome" runat="server" Font-Size="Small" Text="Nome" />
        <asp:RadioButton ID="rbCPF" runat="server" Font-Size="Small" Text="CPF" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" Width="467px">
        </asp:GridView>
    </p>
</asp:Content>
