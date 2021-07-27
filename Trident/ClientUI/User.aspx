<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Trident.ClientUI.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div class="panel panel-default" runat="server">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel-heading">
                            <div class="col-md-10">
                                <h4>Users</h4>
                            </div>
                            <div class="pull-right col-md-1">
                                <asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary" Style="margin-right: 20px;" Text="Add New" OnClick="btnAddNew_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="col-md-12" style="text-align: center;">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                </div>
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvEmployee" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="None" OnRowCommand="gvEmployee_RowCommand" OnPreRender="gvEmployee_PreRender">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="User Name" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Role" HeaderText="Role" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" ImageUrl="../images/Edit.png"
                                        CommandName="Edit1" CommandArgument='<%# Eval("Id")%>' Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="false" ImageUrl="../images/Delete.png"
                                        CommandName="Delete1" CommandArgument='<%# Eval("Id")%>' OnClientClick="javascript:return confirm('Are you sure, you want to delete this Record?');"
                                        Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="divPanel" runat="server">
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">
                                Role<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlEmpRole" runat="server" CssClass="dropdown form-control" TabIndex="1"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlEmpRole"
                                    SetFocusOnError="true" ErrorMessage="Select Role" InitialValue="-1" CssClass="message" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">
                                User Name<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter User Name." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">
                                Password<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password" TabIndex="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPwd"
                                    SetFocusOnError="true" ErrorMessage="Enter Password" CssClass="message" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">
                                Confirm Password<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtConfPwd" runat="server" CssClass="form-control" TextMode="Password" TabIndex="4"
                                    CausesValidation="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtConfPwd"
                                    SetFocusOnError="true" ErrorMessage="Enter Confirm Password" CssClass="message" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </div>
                        <%--</div>
                    </div>
                    <div class="row">
                        <div class="form-group">--%>
                            <asp:CompareValidator ID="CompareValidator2" runat="server"
                                ControlToCompare="txtConfPwd" ControlToValidate="txtPwd" CssClass="message" CultureInvariantValues="True"
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="g1"></asp:CompareValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does not match"
                                ControlToCompare="txtPwd" ControlToValidate="txtConfPwd" CssClass="message" CultureInvariantValues="True"
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="g1"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row pull-right">
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" TabIndex="5" Text="Save" ValidationGroup="g1" OnClick="btnSave_Click" />
                                <asp:Button ID="btnViewList" runat="server" Text="View List" class="btn btn-primary"
                                    Width="80px" OnClick="btnViewList_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
</asp:Content>
