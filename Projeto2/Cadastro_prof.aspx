<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cadastro_prof.aspx.cs" Inherits="Projeto2.Cadastro_prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Design/DesignCadastro.css" rel="stylesheet" />
    <style type="text/css">
        
        #txtCPF {
            width: 217px;
        }
        #txtNome {
            width: 205px;
        }
        #txtFormacao {
            width: 183px;
        }
        #txtCelular {
            width: 200px;
        }
        #txtBairro {
            width: 205px;
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
        <input id="txtNome" type="text" /><br />
    </div>
    <div class="input-block">
        CPF:
        <input id="txtCPF" type="text" /><br />
    </div>
      <div class="input-block">
        Data Nascimento:
        <input id="txtDataNasc" type="text" /><br />
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
        Formação:
        <input id="txtFormacao" type="text" /><br />
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
