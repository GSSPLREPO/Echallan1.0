<%@ Page Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="ApprovedChallanReport.aspx.cs" Inherits="Trident.Reports.ApprovedChallanReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
    <style type="text/css">
        .button {
            padding-top: 1px;
        }
    </style>
    <script src="../Scripts/moment.min.js"></script>
    <link href="../Content/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap-datetimepicker.min.js"></script>
    <link href="../css/bootstrap-timepicker.min.css" rel="stylesheet" />
    <script src="../js/bootstrap-timepicker.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div id="loadingDiv" style="display: none;">
    </div>
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-10" style="font-size: 24px; text-align: center">
                        Approved Challan Report
                    </div>
                    <div class="col-md-2 right" id="divExport" runat="server">
                        <asp:LinkButton ID="imgPDFButton" runat="server" ClientIDMode="Static" OnClick="imgbtnPDF_OnClick" CssClass="btn btn-danger quick-btn"><i class="fa fa-file-pdf-o fa-2x"></i></asp:LinkButton>
                        <%--<asp:LinkButton ID="imgExcelButton" runat="server" ClientIDMode="Static" OnClick="imgbtnExcel_OnClick" CssClass="btn btn-success quick-btn"><i class="fa fa-file-excel-o fa-2x"></i></asp:LinkButton>--%>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                   <%-- <div class="col-md-12">
                        <div class="col-md-2">
                            From Date :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFromDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter From Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group" id="datetimepicker8">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtFromDate" CssClass="form-control" runat="server" />
                                <span class="errMsg"></span>

                            </div>
                        </div>

                        <div class="col-md-2">
                            To Date :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtToDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter To Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group" id="datetimepicker9">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" />
                                <span class="errMsg"></span>

                            </div>
                        </div>

                        <asp:Button runat="server" ID="btnGo" Text="Go" CssClass="btn btn-primary pull-right" ValidationGroup="g1" OnClick="btnGo_Click" />
                    </div>--%>
                    <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3">
                            From Date :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFromDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter From Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            From Time :
                        </div>
                        <div class="col-md-3">
                            To Date :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtToDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter To Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            To Time :
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3 has-error">
                            <div class="input-group" id="datetimepicker8">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtFromDate" CssClass="form-control" runat="server" />
                                <span class="errMsg"></span>

                            </div>
                           <%-- <div class='input-group date' id='datetimepicker1'>
                                <asp:TextBox ID="txtFromDate" CssClass="form-control" Placeholder="From Date" runat="server"></asp:TextBox>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>--%>
                        </div>
                        <div class="col-md-3">
                            <div class="bootstrap-timepicker">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtFromTime" ClientIDMode="Static" CssClass="form-control timepicker" Placeholder="From Time" runat="server"></asp:TextBox>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 has-error">
                            <div class="input-group" id="datetimepicker9">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" />
                                <span class="errMsg"></span>

                            </div>
                           <%-- <div class='input-group date' id='datetimepicker2'>
                                <asp:TextBox ID="txtToDate" CssClass="form-control" Placeholder="To Date" runat="server"></asp:TextBox>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>--%>
                        </div>
                        <div class="col-md-3">
                            <div class="bootstrap-timepicker">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtToTime" ClientIDMode="Static" CssClass="form-control timepicker1" Placeholder="To Time" runat="server"></asp:TextBox>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                  <div class="row" style="margin-top: 10px; padding-bottom: 15px;">
                    <div class="col-md-12">
                        <div class="col-md-8">
                        </div>
                        <div class="col-md-4">
                            <asp:Button runat="server" ID="btnGo" Text="Go" CssClass="btn btn-primary pull-right" ValidationGroup="g1" OnClick="btnGo_Click" />
                            
                        </div>
                    </div>
                </div>
                </div>

                <br />
                <div class="row" style="overflow: scroll;">
                    <asp:GridView runat="server" ID="gvPendingChallanReport" CssClass="table table-hover table-striped"
                        AutoGenerateColumns="False" GridLines="Both" Width="100%" HeaderStyle-Wrap="false" ClientIDMode="Static">
                        <Columns>
                            <asp:BoundField DataField="SrNo" HeaderText="SrNo" ItemStyle-Wrap="false" />
                            <asp:BoundField DataField="ChallanDate" HeaderText="Challan Date & Time" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="ChallanNo" HeaderText="Challan ID" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="TotalAmount" HeaderText="Challan Amt (Rs)" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="VehiclePlateNo" HeaderText="Vehicle Number" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="PoliceStation" HeaderText="Junction Name" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Name" HeaderText="Approved By" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Center" />
                            <asp:ImageField AlternateText="LPImage" DataImageUrlField="LPImage" HeaderText="License Plate" ControlStyle-Width="130" ControlStyle-Height = "90"></asp:ImageField>
                            <asp:ImageField DataImageUrlField="ContextImagePath" HeaderText="Context Image" ControlStyle-Width="130" ControlStyle-Height = "90"></asp:ImageField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="center" id="divId" runat="server" clientidmode="static">No records found.</div>
                <%--<asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary pull-right" ValidationGroup="g1" OnClick="btnSave_Click" />--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../js/moment.js"></script>
    <%--<script src="../codejs/PendingChallanReport.js"></script>--%>
    <script>
        $(function () {
            //$('#MainBody_divExport').hide();
            $('#datetimepicker8').datetimepicker({
                format: 'DD/MM/YYYY',/* HH: mm: ss*/
                icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"

                }
            });

            $('#datetimepicker9').datetimepicker({
                format: 'DD/MM/YYYY',/* HH: mm: ss*/
                icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"

                }
            });

            $(".timepicker").timepicker({
                showInputs: false,
                use24hours: true,
                format: 'HH:mm',
                showMeridian: false,
                showSeconds: true,
                minuteStep: 1,
                secondStep: 10
            });
            $(".timepicker1").timepicker({
                showInputs: false,
                use24hours: true,
                format: 'HH:mm',
                showMeridian: false,
                showSeconds: true,
                minuteStep: 1,
                secondStep: 10

            });
        });
    </script>
</asp:Content>
