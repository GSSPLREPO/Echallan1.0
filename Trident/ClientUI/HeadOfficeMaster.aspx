<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="HeadOfficeMaster.aspx.cs" Inherits="Trident.ClientUI.HeadOfficeMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div class="panel panel-default" runat="server">
            <div class="panel-heading">
                <h4>Head Office</h4>
            </div>
            <div class="panel-body">
                <div class="col-md-12" style="text-align: center;">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                </div>
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvHeadOffice" CssClass="table table-striped" AutoGenerateColumns="False"
                        GridLines="None" OnRowCommand="gvHeadOffice_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="300px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Email" HeaderText="Email ID" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile Number" HeaderStyle-CssClass="text-left">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FaxNo" HeaderText="Fax Number" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Logo" HeaderText="Logo" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DueDays" HeaderText="Due Days" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ChallanAbbreviation" HeaderText="Challan Abbreviation" HeaderStyle-CssClass="text-left" Visible="false">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
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
                            <%-- <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="false" ImageUrl="../images/Delete.png"
                                        CommandName="Delete" CommandArgument='<%# Eval("OrganisationID")%>' OnClientClick="javascript:return confirm('Are you sure, you want to delete this Record?');"
                                        Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>--%>
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="divPanel" runat="server">
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">
                                Name<span class="errMsg">*</span>
                            </label>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName"
                                    ValidationGroup="g1"  CssClass="errMsg"
                                    SetFocusOnError="True" ErrorMessage="Enter Head Office Name." />
                            </div>

                            <div class="col-md-2" style="float: right;">
                                <asp:HiddenField ID="hi" runat="server" />
                                <div id="imgLogo" class="col-md-offset-3">
                                    <asp:Image ID="imgCLogo" runat="server" Width="100" Height="100" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" />
                                </div>
                            </div>
                            <label class="col-md-2">Address<span class="errMsg">*</span></label>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddress" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Address."  CssClass="errMsg"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">State</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <label class="col-md-2">City</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">Email ID<span class="errMsg">*</span></label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="g1"
                                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="errMsg"
                                    ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                                    ValidationGroup="g1" SetFocusOnError="True" ErrorMessage="Enter Email ID." CssClass="errMsg"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">Mobile Number<span class="errMsg">*</span></label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="g1"
                                     CssClass="errMsg" ErrorMessage="Enter valid Phone number" ControlToValidate="txtMobileNo"
                                    SetFocusOnError="true"
                                    ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobileNo"
                                    ValidationGroup="g1" SetFocusOnError="True" ErrorMessage="Enter Mobile Name." CssClass="errMsg"></asp:RequiredFieldValidator>

                            </div>

                            <label class="col-md-2">Fax Number</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtFaxNo" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="form-group has-error">
                            <label class="col-md-2">Upload Logo</label>
                            <div class="col-md-8">
                                <asp:FileUpload runat="server" ID="FULogo" ClientIDMode="Static" CssClass="file" />
                                <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="FULogo"
                                    ErrorMessage="Only .jpg,.png,.jpeg,.gif Files are allowed" ValidationGroup="g1" CssClass="errMsg"
                                    ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.png|.gif|.JPG|.JPEG|.GIF|.PNG)">
                                </asp:RegularExpressionValidator>
                                
                                <div id="error"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-2">Due Days<span class="errMsg">*</span></label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDueDays" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="rev6" ControlToValidate="txtDueDays" runat="server" ErrorMessage="Enter Valid Due Days"
                                    SetFocusOnError="true" CssClass="errMsg" ValidationExpression="\d+" ValidationGroup="g1"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDueDays" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Due Days." CssClass="errMsg"></asp:RequiredFieldValidator>
                            </div>
                            <label class="col-md-2">Challan Abbreviation<span class="errMsg">*</span></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                    <asp:TextBox ID="txtChallanAbbreviation" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtChallanAbbreviation"
                                    runat="server" ErrorMessage="Enter Valid Challan Abbreviation" SetFocusOnError="true"  CssClass="errMsg"
                                    ValidationExpression="[a-zA-Z]*$" ValidationGroup="g1"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtChallanAbbreviation" ValidationGroup="g1"
                                    SetFocusOnError="True" ErrorMessage="Enter Valid Challan Abbreviation." CssClass="errMsg"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-offset-11 col-md-1">
                                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Update" ValidationGroup="g1"
                                    OnClick="btnSave_Click" />
                                <asp:ValidationSummary runat="server" ID="ValidationSummary1" ValidationGroup="g1"
                                    ShowMessageBox="True" ShowSummary="False" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
</asp:Content>
