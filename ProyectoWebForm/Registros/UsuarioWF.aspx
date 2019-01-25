﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuarioWF.aspx.cs" Inherits="ProyectoWebForm.Registros.UsuarioWF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 align="center" style="font-weight: bold">Registro de Usuarios</h3>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="UsuarioId"></asp:Label>
                <asp:Button class="btn btn-outline-success my-2 my-sm-0" ID="BuscarButton" runat="server" Text="Buscar" />
                <asp:TextBox class="form-control" ID="usuarioIdTextBox" Text="0" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <asp:Image ID="UsuarioImage" runat="server" Height="474px" ImageUrl="~/Resources/icono-nuevo-usuario-png-4.png" runat="server" Width="409px" AlternateText="Imagen no disponible" ImageAlign="right" />
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox class="form-control" ID="nombreTextBox" placeholder="Nombre" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Número de Teléfono"></asp:Label>
                <asp:TextBox class="form-control" ID="noTelefonoTextBox" placeholder="###-###-####" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                <asp:TextBox class="form-control" ID="emailTextBox" placeholder="micorreo@gmail.com" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox class="form-control" ID="passwordTextBox" type="password" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Confirmar Contraseña"></asp:Label>
                <asp:TextBox class="form-control" ID="cpasswordTextBox" type="password" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Tipo de Usuario"></asp:Label>
                <asp:DropDownList class="form-control" ID="tipoUsuarioDropDownList" runat="server">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Permisos"></asp:Label>
                <asp:DropDownList class="form-control" ID="permisosDropDownList" runat="server">
                    <asp:ListItem>Nivel 1</asp:ListItem>
                    <asp:ListItem>Nivel 2</asp:ListItem>
                    <asp:ListItem>Nivel 3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button class="btn btn-outline-success my-2 my-sm-0" ID="agregarButton" runat="server" Text="Agregar" />
            </div>
            <asp:GridView ID="detalleGridView" runat="server"></asp:GridView>
        </div>
    </div>
    <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">
                    <asp:Button Text="Nuevo" class="btn btn-primary btn-sm" runat="server" ID="Button1"/>
                    <asp:Button Text="Guardar" class="btn btn-success btn-sm" runat="server" ID="GuadarButton"/>
                    <asp:Button Text="Eliminar" class="btn btn-danger btn-sm" runat="server" ID="EliminarButton" />
                </div>
            </div>
        </div>
</asp:Content>
