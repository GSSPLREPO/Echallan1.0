

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
                                    <asp:Label ID="lblHeading" runat="server" Text="CRO Dashboard"></asp:Label></h4>
                            </div>
                            <div class="pull-right col-md-1">
                                <%--<input id="id_search" type="text" placeholder="Search" onkeydown="return (event.keyCode!=13);" />--%>
                                <%--<asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary" Style="margin-right: 20px;" Text="Add New" OnClick="btnAddNew_Click"/>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box box-primary divGrid" id="divGrid">
                <div class="box-body no-padding">
                    <div id="divCRODashboard"></div>
                    <br />
                    <button type="button" id="btnSubmit1" class="btn btn-info" style="margin-top: 50px;">Submit</button>
                    <%--<asp:Button  runat="server" ID="btnSubmit" OnClick="btnSubmit_Click"/>--%>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <%--<div class="col-md-12" style="text-align: center;">
                        <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                    </div>--%>
                    <%--  <div id="divCRODashboard"></div>
                        <br />--%>
                    <%-- <div class="box box-primary" id="divGrid" runat="server">
                        <div class="box-body no-padding">
                            <asp:GridView runat="server" ID="gvCRODashboard" CssClass="table table-striped" AutoGenerateColumns="False"
                                OnRowDataBound="gvCRODashboard_RowDataBound" OnSelectedIndexChanged="gvCRODashboard_SelectedIndexChanged" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="VehicleId" HeaderText="Id">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Width="20px"
                                            CssClass="hidden" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="false" CssClass="hidden" />
                                        <FooterStyle CssClass="hidden" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SRNo" HeaderText="Sr No.">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Width="320px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="320px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LicensePlate" HeaderText="License Plate">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PlateImage" HeaderText="Plate Image">
                                        <HeaderStyle Width="50px" HorizontalAlign="Right" VerticalAlign="Top" />
                                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Wrap="true" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>--%>
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

        //$(document).ready(function () {
        //    GridBindCRO();
        //});
    </script>
</asp:Content>
