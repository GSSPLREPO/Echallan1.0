<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Trident.ClientUI.UserProfile" %>

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
                                <h4>User Profile</h4>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="col-md-12" style="text-align: center;">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                </div>

                <div id="divPanel" runat="server">
                    <div class="row">
                        <div class="form-group">
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
