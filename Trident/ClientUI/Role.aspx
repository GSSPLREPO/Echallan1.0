<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="Trident.clientui.Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div runat="server" class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-6">
                        <h4>
                            <asp:Label ID="lblHeading" runat="server" Text="Role"></asp:Label></h4>
                    </div>
                    <%--<div id='search-form' class="col-md-4 form-group">
                        <div class="input-group">
                            <span id='search-icon' class="input-group-addon"><span class='glyphicon glyphicon-search'></span></span>
                            <input id="id_search" type="text" class="form-control" placeholder="search" onkeydown=" return (event.keyCode !== 13); " />
                        </div>
                    </div>--%>
                    <div class="col-md-1 pull-right">
                        <asp:Button runat="server" ID="btnAddNew" Text="Add New" CssClass="btn btn-primary" data-original-title="Select Project" data-placement="bottom" data-toggle="tooltip" ToolTip="Add New" OnClick="btnAddNew_Click"></asp:Button>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvEmployeeRole" CssClass="table table-hover table-striped" AutoGenerateColumns="False" GridLines="None" ShowHeaderWhenEmpty="True" OnPreRender="gvEmployeeRole_PreRender" OnRowCommand="gvEmployeeRole_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="Name" DataField="Name" ItemStyle-Width="80%" HeaderStyle-Width="80%">
                                <HeaderStyle Width="80%"></HeaderStyle>
                                <ItemStyle Width="80%"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Edit" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgEdit" CommandName="Edit1" CommandArgument='<%# Eval("ID") %>' ItemStyle-Width="10%" ImageUrl="../Images/Edit.png"></asp:ImageButton>
                                </ItemTemplate>

                                <HeaderStyle Width="10%"></HeaderStyle>

                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgDelete" CommandName="Delete1" CommandArgument='<%# Eval("ID") %>' Style="text-align: center;" ItemStyle-Width="10%" ImageUrl="../Images/Delete.png" OnClientClick="javascript:return confirm('Do you really want to Delete this record?');"></asp:ImageButton>
                                </ItemTemplate>

                                <HeaderStyle Width="10%"></HeaderStyle>

                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <div runat="server" id="divPanel">
                <div class="panel-body">
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">Role Name<span class="errMsg">*</span></label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter Name" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Role" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <span id="chkEmployeeRoleName"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">Description</label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" placeholder="Enter Description" TextMode="MultiLine" />
                            </div>
                        </div>
                    </div>
                    <br />
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
