<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="MotorVehicleAct.aspx.cs" Inherits="Trident.ClientUI.MotorVehicleAct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div runat="server" class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-6">
                        <h4>
                            <asp:Label ID="lblHeading" runat="server" Text="MV Act"></asp:Label></h4>
                    </div>
                    <div class="col-md-1 pull-right">
                        <asp:Button runat="server" ID="btnAddNew" Text="Add New" CssClass="btn btn-primary" data-original-title="Select Project" data-placement="bottom" data-toggle="tooltip" ToolTip="Add New" OnClick="btnAddNew_Click"></asp:Button>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvMVAct" CssClass="table table-hover table-striped" AutoGenerateColumns="False" GridLines="None" ShowHeaderWhenEmpty="True" OnPreRender="gvMVAct_PreRender" OnRowCommand="gvMVAct_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="Section" DataField="Section" ItemStyle-Width="30%" HeaderStyle-Width="30%">
                                <HeaderStyle Width="30%"></HeaderStyle>
                                <ItemStyle Width="30%"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Ttile" DataField="Title" ItemStyle-Width="50%" HeaderStyle-Width="50%">
                                <HeaderStyle Width="50%"></HeaderStyle>
                                <ItemStyle Width="50%"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Edit" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgEdit" CommandName="Edit1" CommandArgument='<%# Eval("Id") %>' ItemStyle-Width="10%" ImageUrl="../Images/Edit.png"></asp:ImageButton>
                                </ItemTemplate>

                                <HeaderStyle Width="10%"></HeaderStyle>

                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgDelete" CommandName="Delete1" CommandArgument='<%# Eval("Id") %>' Style="text-align: center;" ItemStyle-Width="10%" ImageUrl="../Images/Delete.png" OnClientClick="javascript:return confirm('Do you really want to Delete this record?');"></asp:ImageButton>
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
                            <label class="col-md-2">Section<span class="errMsg">*</span></label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtSection" CssClass="form-control" placeholder="Enter Section" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSection" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Section" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <span id="chkEmployeeRoleName"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">Title<span class="errMsg">*</span></label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control" placeholder="Enter Title" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Title" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <span id="chkEmployeeRoleName1"></span>
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
