<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cadastro_prof.aspx.cs" Inherits="Projeto2.Cadastro_prof" %>
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
        Nome:
        <asp:TextBox ID="txtNome" runat="server" Width="183px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        CPF:
        <asp:TextBox ID="txtCPF" runat="server" Width="197px"></asp:TextBox>
        <br />
    </div>
      <div class="input-block">
        Data Nascimento:
          <asp:TextBox ID="txtDatanasc" runat="server" Width="109px"></asp:TextBox>
          <br />
    </div>
    <div class="input-block">
        Endereco:
        <asp:TextBox ID="txtEndereco" runat="server" Width="162px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Bairro:
        <asp:TextBox ID="txtBairro" runat="server" Width="185px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Celular:
        <asp:TextBox ID="txtCelular" runat="server" Width="179px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Formação:
        <asp:TextBox ID="txtFormacao" runat="server" Width="160px"></asp:TextBox>
        <br />
    </div>
    <div class="input-block">
        Experiências<br />
        <textarea id="txtExp" name="S1"></textarea><br />
    </div>
        <br />
        <asp:Button ID="btnLimpar" runat="server" Text="Limpar"  BackColor="#3333FF" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px" BorderColor="White"/>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar"  BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Width="67px"/>
        <asp:Button ID="btnBuscar" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="32px" Text="Buscar" Width="67px" OnClick="btnBuscar_Click" />
        <br />
</asp:Content>
