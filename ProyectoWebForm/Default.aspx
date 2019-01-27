<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoWebForm.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4" style="color: #008000; font-weight: bold;">Ventas.do</h1>
            <p class="lead">Donde registras tus ventas desde el alcance de tu casa.</p>
        </div>
    </div>
    <asp:LinkButton ID="buscarLinkButton" CssClass="btn btn-outline-success mt-4" runat="server">
                <span class="fas fa-search"></span>
                 Buscar
            </asp:LinkButton>
</asp:Content>
