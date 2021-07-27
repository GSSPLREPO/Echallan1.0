<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="UnauthorisedAccess.aspx.cs" Inherits="Trident.UnauthorisedUI.UnauthorisedAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div id="divCurrenTabSelected" class="hidden" visible="false">master</div>
    <div class="col-md-12">
        <div id="divGrid" runat="server" class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-8">
                        <h4>
                            <asp:Image ID="imgUnauthorised" runat="server" ImageUrl="~/images/unauthorised.png" Width="4%" Height="4%" />
                            <asp:Label ID="lblHeading" runat="server" Text="Access Denied"></asp:Label></h4>
                    </div>
                    <div id='search-form' class="col-md-3 form-group">
                        <div class="input-group">
                        </div>
                    </div>
                    <div class="col-md-1 right">
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-10">
                        <h3>!!!SORRY</h3>
                        <h4>You Are Not Authorised User for Access This Page</h4>
                        <h5>Please Contact Your Administrator for Further Assistance
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
</asp:Content>
