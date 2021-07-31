<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="CRODashboard.aspx.cs" EnableEventValidation="false"
    Inherits="Trident.ClientUI.CRODashboard" %>

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
                                    <asp:Label ID="lblHeading" runat="server" Text="Violation List"></asp:Label></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="box box-primary divGrid" id="divGrid">
                <div class="box-body no-padding">
                    <div id="divCRODashboard"></div>
                    <div class="row pull-right" style="margin-right:10%">
                        <div class="form-group">
                            <button type="button" id="saveEchallan" class="btn btn-info" style="height:50%">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 col-md-offset-10">
                            <asp:HiddenField ID="hfEmployeeId" runat="server" ClientIDMode="Static" />
                            <asp:HiddenField ID="hfOrganisationId" runat="server" ClientIDMode="Static" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../codejs/CRODashboard.js"></script>
    <script type="text/javascript">
</script>
</asp:Content>
