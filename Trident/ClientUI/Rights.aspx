<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Rights.aspx.cs" Inherits="Trident.clientui.Rights" %>
 <%--<%@ Register Src="../userControl/SearchUserControl.ascx" TagPrefix="uc1" TagName="SearchResult" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
       <div class="col-md-12">
        <div id="divGrid" runat="server" class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-8">
                        <h4>
                            <asp:Label ID="lblHeading" runat="server" Text="Rights"></asp:Label></h4>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="form-group has-error">
                        <label class="col-md-1" style="margin-top: 10px">Role</label>
                        <div class="col-md-11">
                            <asp:DropDownList runat="server" ID="ddlRole" CssClass="form-control" placeholder="Enter Employee Name" ClientIDMode="Static" 
                                AutoPostBack="True" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" />

                        </div>

                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div id='search-form' class="col-md-offset-9 col-md-3 form-group">
                        <div class="input-group">
                            <span id='search-icon' class="input-group-addon"><span class='glyphicon glyphicon-search'></span></span>
                            <input id="id_search" type="text" class="form-control" placeholder="search" onkeydown=" return (event.keyCode !== 13); " />
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <asp:GridView runat="server" ID="gvRights" CssClass="table table-hover table-striped" AutoGenerateColumns="False" GridLines="None" ShowHeaderWhenEmpty="True" OnPreRender="gvRights_PreRender">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Screen Id" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                            <asp:BoundField HeaderText="Screen Name" ItemStyle-Width="80%" DataField="DisplayName" HeaderStyle-Width="80%">
                                <ItemStyle Width="80%"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Allow" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbAllow" runat="server"></asp:CheckBox>
                                </ItemTemplate>
                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-offset-11 col-md-1">
                            <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" ValidationGroup="g1" OnClick="btnSave_Click" />

                            <asp:ValidationSummary runat="server" ID="vs1" ValidationGroup="g1" ShowMessageBox="True" ShowSummary="False" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $("#<%=btnSave.ClientID%>").click(function (e) {
                var ddlRole = document.getElementById('<%=ddlRole.ClientID%>').value;
                if (ddlRole == -1) {
                    alert("Select Prpoper Role");
                    e.preventDefault();
                }
            });
        });
        $(function () {
            $('#id_search').quicksearch('table#<%=gvRights.ClientID%> tbody tr');
        });
    </script>
</asp:Content>
