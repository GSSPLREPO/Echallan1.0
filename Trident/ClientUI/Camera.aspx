<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Camera.aspx.cs" Inherits="Trident.ClientUI.Camera" %>

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
                                <h4>Camera</h4>
                            </div>
                            <div class="pull-right col-md-1">
                                <asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary" Style="margin-right: 20px;" Text="Add New" OnClick="btnAddNew_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="col-md-12" style="text-align: center; color:red">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message"  Visible="False"></asp:Label>
                </div>
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvCamera" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="None" OnRowCommand="gvCamera_RowCommand" OnPreRender="gvCamera_PreRender">
                        <Columns>
                             <asp:BoundField DataField="Id" HeaderText="Id" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitCode" HeaderText="Unit" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PolicestationCode" HeaderText="Police Station" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PointCode" HeaderText="Point" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" Wrap="true" />
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
                                Units<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlUnit" runat="server" CssClass="dropdown form-control" TabIndex="1" OnSelectedIndexChanged="ddlUnit_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlUnit"
                                    SetFocusOnError="true" ErrorMessage="Select Unit" InitialValue="-1" CssClass="message" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">
                                Police Station<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlPs" runat="server" CssClass="dropdown form-control" TabIndex="1" OnSelectedIndexChanged="ddlPs_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlPs"
                                    SetFocusOnError="true" ErrorMessage="Select Police Station" InitialValue="-1" CssClass="message" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2">
                                Points<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlPoints" runat="server" CssClass="dropdown form-control" TabIndex="1"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlPoints"
                                    SetFocusOnError="true" ErrorMessage="Select Points" InitialValue="-1" CssClass="message" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">
                                Name<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Name." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">

                            <label class="col-md-2">
                                Make
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtMake" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
                            </div>
                            <label class="col-md-2">
                                Ip Address<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtIp" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIp" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Ip Adress." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2">
                                    Latitude<span class="errMsg">*</span>
                                </label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" TabIndex="3"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLatitude" ValidationGroup="g1"
                                        SetFocusOnError="True" ErrorMessage="Enter Latitude." ForeColor="Red"></asp:RequiredFieldValidator>
                                   
                                </div>
                                <label class="col-md-2">
                                    Longitude<span class="errMsg">*</span>
                                </label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" TabIndex="3" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLongitude" ValidationGroup="g1"
                                        SetFocusOnError="True" ErrorMessage="Enter Logitude." ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%--<label class="col-md-2">
                                Confirm Password<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtConfPwd" runat="server" CssClass="form-control" TextMode="Password" TabIndex="4"
                                    CausesValidation="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtConfPwd"
                                    SetFocusOnError="true" ErrorMessage="Enter Confirm Password" CssClass="message" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </div>--%>
                            <%--</div>
                    </div>
                    <div class="row">
                        <div class="form-group">--%>
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
