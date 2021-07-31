<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Trident.ClientUI.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div id="loadingDiv" style="display: none;">
    </div>
    <div class="col-md-12">
        <div class="panel-heading">
            <div class="row" style="background-color: bisque;">
                <div class="col-md-10" style="font-size: 24px; text-align: center">
                    <%--WELCOME TO BERHAMPUR POLICE E-CHALLAN APPLICATION--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            window.location.href = "../ClientUI/CRODashboard.aspx";
        });
        

    </script>
</asp:Content>
