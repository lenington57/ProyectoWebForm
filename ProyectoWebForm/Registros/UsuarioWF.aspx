<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuarioWF.aspx.cs" Inherits="ProyectoWebForm.Registros.UsuarioWF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <div class="form-row justify-content-center">
        <aside class="col-sm-8">
            <div class="card">
                <div class="card-header text-uppercase text-center text-primary">Usuario</div>
                <article class="card-body">
                    <form>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" class="text-success" Text="UsuarioId"></asp:Label>
                                    <asp:Button class="btn btn-outline-success btn-sm" ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
                                    <asp:TextBox class="form-control" type="number" ID="usuarioIdTextBox" Text="0" runat="server" ValidationGroup="Guardar"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="usuarioIdRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="usuarioIdTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="usuarioIdRegularExpressionValidator" runat="server" ErrorMessage="Solo Números" ControlToValidate="usuarioIdTextBox" ValidationExpression="^[0-9]*$" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" class="text-success" Text="Fecha"></asp:Label>
                                    <asp:TextBox class="form-control" ID="fechaTextBox" type="date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <asp:Image ID="UsuarioImage" runat="server" Height="317px" ImageUrl="~/Resources/user.png" runat="server" Width="263px" AlternateText="Imagen no disponible" ImageAlign="right" />
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" class="text-success" Text="Nombre"></asp:Label>
                                    <asp:TextBox class="form-control" type="text" ID="nombreTextBox" placeholder="Nombre" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="nombreRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="nombreTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Campo Descripcion obligatorio&quot;&gt;Por favor llenar el campo Nombre">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="nombreRegularExpressionValidator" runat="server" ErrorMessage="Solo Letras" ControlToValidate="nombreTextBox" ValidationExpression="(^[a-zA-Z'.\s]{1,20}$)" SetFocusOnError="True" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" class="text-success" Text="UserName"></asp:Label>
                                    <asp:TextBox class="form-control" type="text" ID="usernameTextBox" placeholder="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="usernameRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="usernameTextBox" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" class="text-success" Text="Número de Teléfono"></asp:Label>
                                    <asp:TextBox class="form-control" type="number" ID="noTelefonoTextBox" placeholder="###-###-####" runat="server" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="noTelefonoRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="noTelefonoTextBox" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="noTelefonoRegularExpressionValidator" runat="server" ErrorMessage="Solo Números" ControlToValidate="noTelefonoTextBox" ValidationExpression="^[0-9]*$" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" class="text-success" Text="Número de Celular"></asp:Label>
                                    <asp:TextBox class="form-control" type="number" ID="noCelularTextBox" placeholder="###-###-####" runat="server" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="noCelularRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="noCelularTextBox" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="noCelularRegularExpressionValidator" runat="server" ErrorMessage="Solo Números" ControlToValidate="noCelularTextBox" ValidationExpression="^[0-9]*$" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" class="text-success" Text="Email"></asp:Label>
                                    <asp:TextBox class="form-control" type="email" ID="emailTextBox" placeholder="micorreo@gmail.com" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="emailTextBox" Display="Dynamic" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" class="text-success" Text="Contraseña"></asp:Label>
                                    <asp:TextBox class="form-control" ID="passwordTextBox" type="password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="passwordTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="passwordCompareValidator" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="cpasswordTextBox" ControlToValidate="passwordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Guardar"></asp:CompareValidator>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" class="text-success" Text="Confirmar Contraseña"></asp:Label>
                                    <asp:TextBox class="form-control" ID="cpasswordTextBox" type="password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="cpasswordRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="cpasswordTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cpasswordCompareValidator" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="passwordTextBox" ControlToValidate="cpasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Guardar"></asp:CompareValidator>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" class="text-success" Text="Tipo de Usuario"></asp:Label>
                                    <asp:DropDownList class="form-control" ID="tipoUsuarioDropDownList" runat="server">
                                        <asp:ListItem>Administrador</asp:ListItem>
                                        <asp:ListItem>Usuario</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary" runat="server" />
                        <div class="panel-footer">
                            <div class="text-center">
                                <div class="form-group" style="display: inline-block">
                                    <asp:Button Text="Nuevo" class="btn btn-outline-primary btn-sm" runat="server" ID="nuevoButton" OnClick="nuevoButton_Click" />
                                    <asp:Button Text="Guardar" class="btn btn-outline-success btn-sm" runat="server" ID="guadarButton" OnClick="guadarButton_Click" />
                                    <asp:Button Text="Eliminar" class="btn btn-outline-danger btn-sm" runat="server" ID="eliminarButton" OnClick="eliminarButton_Click" />
                                </div>
                            </div>
                        </div>

                    </form>
                </article>
            </div>
            <!-- card.// -->
    </div>
    <br>
</asp:Content>
