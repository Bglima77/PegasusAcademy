<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="BuscaAluno.aspx.cs" Inherits="Projeto2.BuscaAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Design/DesignBusca.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
        Insira:
        <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" ValidationGroup="form" />
    </p>
    <p>
        Filtro:
        <asp:RadioButton ID="rbNome" runat="server" Font-Size="Small" Text="Nome" Checked="True" GroupName="filtro" />
        <asp:RadioButton ID="rbCPF" runat="server" Font-Size="Small" Text="CPF" GroupName="filtro" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" Width="758px" AutoGenerateColumns="False" DataKeyNames="ID_Aluno">
            <Columns>
                <asp:BoundField DataField="ID_Aluno" HeaderText="Codigo" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                <asp:BoundField DataField="Celular" HeaderText="Contato" />
                <asp:BoundField DataField="DataNasc" HeaderText="Data Nascimento" />
                <asp:BoundField DataField="Personal" HeaderText="Personal Trainer" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
        <p>
            <asp:Button ID="btnCancelar" runat="server" OnClick="Button1_Click" Text="Cancelar" />
&nbsp;<asp:Button ID="btnRemover" runat="server" OnClick="btnRemover_Click" Text="Remover" />
    </p>
</asp:Content>
