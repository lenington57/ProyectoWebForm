<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoWebForm.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4" style="color: #008000; font-weight: bold;">Ventas.do</h1>
            <p class="lead">Donde registras tus ventas desde el alcance de tu casa.</p>
        </div>
    </div>
    <div class="form-row justify-content-center">
        <aside class="col-sm-4">
            <div class="card">
                <article class="card-body">
                    <a href="http://localhost:55115/Registros/UsuarioWF.aspx" class="float-right btn btn-outline-success">Registrarse</a>
                    <h4 class="card-title mb-4 mt-1" style="color: #008000">Iniciar Sesión</h4>
                    <form>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" class="text-success" Text="Label">Email</asp:Label>
                            <asp:TextBox class="form-control" ID="emailTextBox" type="email" runat="server"></asp:TextBox>
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <a class="float-right" href="#" style="color: #008000">Olvidó su contraseña?</a>
                            <asp:Label ID="Label2" runat="server" class="text-success" Text="Contraseña"></asp:Label>
                            <asp:TextBox class="form-control" ID="passwordTextBox" placeholder="******" type="password" runat="server"></asp:TextBox>
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" style="color: #008000">
                                    Guardar contraseña
                                </label>
                            </div>
                            <!-- checkbox .// -->
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <asp:Button ID="iniciarSButton" type="submit" class="btn btn-success btn-block" runat="server" Text="Iniciar Sesión" OnClick="iniciarSButton_Click" />
                        </div>
                        <!-- form-group// -->
                    </form>
                </article>
            </div>
            <!-- card.// -->
            <br>
    </div>
</asp:Content>
