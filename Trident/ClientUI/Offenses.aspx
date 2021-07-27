
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Offenses.aspx.cs" Inherits="Trident.ClientUI.Offenses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        #loadingDiv {
            position: fixed;
            top: 0px;
            right: 0px;
            width: 100%;
            height: 100%;
            background-color: #666;
            background-image: url('../images/loader.gif');
            background-repeat: no-repeat;
            background-position: center;
            z-index: 10000000;
            opacity: 0.4;
            filter: alpha(opacity=40); /* For IE8 and earlier */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div id="loadingDiv" style="display: none;">
    </div>
    <div class="col-md-12">
        <div id="defaultPanel" class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel-heading">
                            <div class="col-md-10">
                                <h4>
                                    <asp:Label ID="lblHeading" runat="server" Text="Offenses"></asp:Label></h4>
                            </div>  
                            <div class="pull-right col-md-1">
                            <%--<input id="id_search" type="text" placeholder="Search" onkeydown="return (event.keyCode!=13);" />--%>
                            <asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary" Text="Add New" OnClick="btnAddNew_Click" />
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12" style="text-align: center;">
                        <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                        
                    </div>
                    
                    <div class="box box-primary" id="divGrid" runat="server">
                        
                        <div class="box-body no-padding">
                            <asp:GridView runat="server" ID="gvOffenses" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="None" OnRowCommand="gvOffenses_RowCommand" OnPreRender="gvOffenses_PreRender">
                                <Columns>
                                    <asp:BoundField DataField="OffenseId" HeaderText="Id">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px"
                                            CssClass="hidden" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="false" CssClass="hidden" />
                                        <FooterStyle CssClass="hidden" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="Name">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20%" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ApplicableSection" HeaderText="Applicable Section">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="imgEdit" CommandName="Edit1" CommandArgument='<%# Eval("OffenseId") %>' ImageUrl="../images/Edit.png" ItemStyle-Width="10%"></asp:ImageButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="5%" />
                                        <HeaderStyle HorizontalAlign="Center" Width="5%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:ImageButton runat="server" ID="imgDelete" CommandName="Delete1" CommandArgument='<%# Eval("OffenseId") %>' ImageUrl="../images/Delete.png" ItemStyle-Width="10%" OnClientClick="javascript:return confirm('Are you sure, you want to delete this Record?');"></asp:ImageButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div id="divPanel" runat="server" class="box box-primary">
                        <%-- <div class="box-header">
                            <h3 class="box-title">Add Receipt</h3>
                        </div>--%>
                        <div class="box-body">
                            <div class="form-group">
                                <label class="col-md-2">
                                    Offense
                                 <span class="errMsg">*</span>
                                </label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                        SetFocusOnError="true" ErrorMessage="Enter Offense" ForeColor="Red" CssClass="message" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2">
                                    Applicable Section
                                    <span class="errMsg">*</span>
                                </label>
                                <div class="col-md-10">
                                    <asp:DropDownList ID="ddlSection" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlSection"
                                        ErrorMessage="Select Applicable Section" ForeColor="Red" InitialValue="-1" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2">
                                    First Offense Fine (In Rs.)
                                    <span class="errMsg">*</span>
                                </label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtFirstOffense" CssClass="form-control" runat="server" MaxLength="7" onkeypress="return PreventDecimalPoint(event)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstOffense"
                                        SetFocusOnError="true" ForeColor="Red" ErrorMessage="Enter First Offense Fine" CssClass="message" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                </div>
                            <%--</div>
                            <br />
                            <br />
                            <div class="form-group">--%>
                                <label class="col-md-2">
                                    Subsequent Offense Fine (In Rs.)
                                </label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtSubOffense" CssClass="form-control" runat="server" MaxLength="7" onkeypress="return PreventDecimalPoint(event)"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group pull-right">
                                <div class="col-md-12">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary"
                                        Width="67px" OnClick="btnSave_Click" ValidationGroup="Save" />&nbsp;&nbsp;
                                <asp:Button ID="btnViewList" runat="server" Text="View List" class="btn btn-primary"
                                    Width="85px" OnClick="btnViewList_Click" />
                                </div>
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
