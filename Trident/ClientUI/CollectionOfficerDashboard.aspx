<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="CollectionOfficerDashboard.aspx.cs" Inherits="Trident.ClientUI.CollectionOfficerDashboard" %>

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
    <link href="../css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <script src="../js/bootstrap-datepicker.min.js"></script>
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
                                <b>
                                    <asp:Label ID="lblHeading" runat="server" style="font-size: 20px;" Text="Collection Officer Dashboard "></asp:Label></b>
                            </div>
                            <div class="pull-right">
                                <asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary right" Text="Add New" />
                                <asp:Button runat="server" ID="btnBack" CssClass="btn btn-primary" OnClick="btnBack_Click" Text="Back" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row" style="padding-bottom: 10px">
                    <div class="form-group">
                        <label class="col-md-2">
                            <b>Search By</b> <span class="errMsg">*</span>
                        </label>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddlSearchBy" ClientIDMode="Static" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlSearchBy_SelectedIndexChanged" OnTextChanged="ddlSearchBy_TextChanged">
                                <asp:ListItem Value="EChallanNo" Selected="True" Text="E-Challan No">E-Challan No</asp:ListItem>
                                <asp:ListItem Value="OwnerName" Text="Owner Name">Owner Name</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtSearch" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:HiddenField ID="hdnChallanId" runat="server" />
                        </div>
                        <%--<div class="col-md-4" style="padding-left: 50px">
                            <asp:Button ID="btnGo" runat="server" Text="Go" class="btn btn-primary" Width="40px" ValidationGroup="Save" />
                        </div>--%>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle No
                                 <span class="errMsg">*</span>
                        </label>
                        <label id="lblVehicleNo" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Name<span class="errMsg">*</span>
                        </label>
                        <label id="lblName" class="col-md-10">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Address
                                    <span class="errMsg">*</span>
                        </label>
                        <label id="lblAddress" class="col-md-10">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            City<span class="errMsg">*</span>
                        </label>
                        <label id="lblCity" class="col-md-4">
                        </label>
                        <label class="col-md-2">
                            State<span class="errMsg">*</span>
                        </label>
                        <label id="lblState" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Postal Code<span class="errMsg">*</span>
                        </label>
                        <label id="lblPostCode" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Date & Time Of Violation
                        </label>
                        <label id="lblDateTime" class="col-md-4">
                        </label>

                        <label class="col-md-2">
                            Due Date
                        </label>
                        <label id="lblDueDate" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle Type<span class="errMsg">*</span>
                        </label>
                        <label id="lblVehicleType" class="col-md-4">
                        </label>
                        <label class="col-md-2">
                            Vehicle Model<span class="errMsg">*</span>
                        </label>
                        <label id="lblVehicleModel" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle Make<span class="errMsg">*</span>
                        </label>
                        <label id="lblVehicleMake" class="col-md-4">
                        </label>
                        <label class="col-md-2">
                            No. Of Violations/Total Challan <span class="errMsg">*</span>
                        </label>
                        <label id="lblNoOfViolations" class="col-md-4">
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Police Station<span class="errMsg">*</span>
                        </label>
                        <label id="lblPoliceStation" class="col-md-4">
                        </label>
                        <label class="col-md-2">
                            Location<span class="errMsg">*</span>
                        </label>
                        <label id="lblLocation" class="col-md-4">
                        </label>
                    </div>
                </div>
                <label>
                    <b>List of Pending E-Challan</b>
                </label>
                <div id="divPreChallan"></div>
                <label>
                    <b>List of Current E-Challan</b>
                </label>
                <div id="divChallan"></div>
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                        </label>
                        <div class="col-md-4">
                            <asp:HiddenField ID="hdnPrevChallanId" ClientIDMode="Static" runat="server" />
                        </div>
                        <div class="col-md-2">
                        </div>
                        <label class="col-md-3">Total Amount</label>
                        <label id="lblTotalAmount" class="col-md-1 pull-right"></label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-4">
                        </div>
                        <label class="col-md-2">
                            Payment Mode<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="form-control" ClientIDMode="Static">
                                <asp:ListItem>Cash</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-4">
                        </div>
                        <label class="col-md-2">
                            Mobile No
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtMobileNo" Width="250px" placeholder="Mobile No" ClientIDMode="Static" CssClass="form-control" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-4">
                        </div>
                        <label class="col-md-2">
                            Email Id
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtEmailId" Width="250px" placeholder="Email Id" ClientIDMode="Static" CssClass="form-control" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="form-group">
                        <div class="pull-right">
                            <button id="btnSave" type="button" class="btn btn-primary">Save</button>
                            <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="divReceipt" class="divReceipt" style="display: none;">
        <div class="col-md-12">
            <asp:DataList ID="dlPrintChallan" Width="800px" Visible="false" runat="server" OnItemDataBound="dlPrintChallan_ItemDataBound">
                <HeaderTemplate>
                    <table cellpadding="1px" style="font-family: Verdana;" valign="top"
                        height="100px" width="800px">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td valign="top" align="left" height="15%" rowspan="2" style="border-right: thin 1px black; width: 10%;">
                                            <img src='../images/Berhampur_Police.jpg' width="100" height="80" />
                                        </td>
                                        <td style="font-size: 15px; border-bottom: solid 1px black" align="center">
                                            <b>Berhampur City Police</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="font-size: 15px; color: crimson;"><b>Challan Receipt</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;" width="50%">Receipt No. : <b><%# Eval("ReceiptNo") %></b>
                                    </td>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;">Payment Date & Time : <%# Eval("PaymentDate") %>
                                    </td>
                                </tr>
                                <tr style="background-color: blue;">
                                    <td colspan="4" style="height: 25px; text-align: center;"><b>Your Payment has been Successfully Received.</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: 25px; text-align: center;">Total Paid Amount: <%# Eval("PaidAmount") %>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td colspan="2" style="height: 25px; max-height: 25px;"></td>
                                </tr>--%>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Vehicle Details</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">Vehicle Reg. No.
                                    </td>
                                    <td style="border: 1px solid black; width: 30%; padding: 3px;"><%# Eval("VehiclePlateNo") %></td>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">Vehicle Make
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("VehicleMake") %></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">Vehicle Type
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;" colspan="3"><%# Eval("VehicleType") %></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <br />
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Offense Details</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">
                                        <asp:GridView runat="server" ID="gvChallanPrint" CellPadding="1" CssClass="table table-striped" Font-Size="13px" Width="100%" AutoGenerateColumns="False" GridLines="Both">
                                            <Columns>
                                                <asp:BoundField DataField="ChallanDate" HeaderText="Challan Date" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="120px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="ChallanNo" HeaderText="Challan No" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Location" HeaderText="Violation Place" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="350px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" Width="275px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="TotalAmount" HeaderText="Amount" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Right" Width="100px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <table width="100%" style="font-size: 13px;">
                                            <tr>
                                                <td valign="top" width="80%"></td>
                                                <td valign="top" align="center" height="15%"><b>Generated By</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="80%"></td>
                                                <td valign="top" align="center" height="15%"><%# Session["UserName"] %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="70%"></td>
                                                <td valign="top" align="center" height="15%">&nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="70%"></td>
                                                <td valign="top" align="center" height="15%">&nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="80%"></td>
                                                <td valign="top" align="center" height="15%"><b>H.C / A.S.I / P.S.I</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="80%"></td>
                                                <td valign="top" align="center" height="15%"><b>Traffic Branch CCTV Berhampur</b>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                    <br /><br /><br />
                    <table cellpadding="1px" style="font-family: Verdana; padding-top: 5px;" valign="top"
                        height="100px" width="800px">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td valign="top" align="left" height="15%" rowspan="2" style="border-right: thin 1px black; width: 10%;">
                                            <img src='../images/Berhampur_Police.jpg' width="100" height="80" />
                                        </td>
                                        <td style="font-size: 15px; border-bottom: solid 1px black" align="center">
                                            <b>Berhampur City Police</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="font-size: 15px; color: crimson;"><b>Challan Receipt</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                    <tr>
                                        <td colspan="2" style="border: 1px solid black; padding: 3px;" width="50%">Receipt No. : <b><%# Eval("ReceiptNo") %></b>
                                        </td>
                                        <td colspan="2" style="border: 1px solid black; padding: 3px;">Payment Date & Time : <%# Eval("PaymentDate") %>
                                        </td>
                                    </tr>
                                    <tr style="background-color: blue;">
                                        <td colspan="4" style="height: 25px; text-align: center;"><b>Your Payment has been Successfully Received.</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="height: 25px; text-align: center;">Total Paid Amount: <%# Eval("PaidAmount") %>
                                        </td>
                                    </tr>
                                    <%--<tr>
                                    <td colspan="2" style="height: 25px; max-height: 25px;"></td>
                                </tr>--%>
                                </table>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                    <tr>
                                        <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Vehicle Details</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid black; width: 20%; padding: 3px;">Vehicle Reg. No.
                                        </td>
                                        <td style="border: 1px solid black; width: 30%; padding: 3px;"><%# Eval("VehiclePlateNo") %></td>
                                        <td style="border: 1px solid black; width: 20%; padding: 3px;">Vehicle Make
                                        </td>
                                        <td style="border: 1px solid black; padding: 3px;"><%# Eval("VehicleMake") %></td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid black; padding: 3px;">Vehicle Type
                                        </td>
                                        <td style="border: 1px solid black; padding: 3px;" colspan="3"><%# Eval("VehicleType") %></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="vertical-align: top; font-size: 13px; border-collapse: collapse;" frame="box">
                                    <tr>
                                        <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Offense Details</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid black; padding: 3px;">
                                            <asp:GridView runat="server" ID="gvChallanPrint1" CellPadding="1" CssClass="table table-striped" Font-Size="13px" Width="100%" AutoGenerateColumns="False" GridLines="Both">
                                                <Columns>
                                                    <asp:BoundField DataField="ChallanDate" HeaderText="Challan Date" HeaderStyle-CssClass="text-center">
                                                        <HeaderStyle Width="120px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                        <ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top" Wrap="true" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ChallanNo" HeaderText="Challan No" HeaderStyle-CssClass="text-center">
                                                        <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                        <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Location" HeaderText="Violation Place" HeaderStyle-CssClass="text-center">
                                                        <HeaderStyle Width="350px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                        <ItemStyle HorizontalAlign="Left" Width="275px" VerticalAlign="Top" Wrap="true" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="TotalAmount" HeaderText="Amount" HeaderStyle-CssClass="text-center">
                                                        <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                        <ItemStyle HorizontalAlign="Right" Width="100px" VerticalAlign="Top" Wrap="true" />
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <table width="100%" style="font-size: 13px;">
                                                <tr>
                                                    <td valign="top" width="80%"></td>
                                                    <td valign="top" align="center" height="15%"><b>Generated By</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="80%"></td>
                                                    <td valign="top" align="center" height="15%"><%# Session["UserName"] %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="70%"></td>
                                                    <td valign="top" align="center" height="15%">&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="70%"></td>
                                                    <td valign="top" align="center" height="15%">&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="80%"></td>
                                                    <td valign="top" align="center" height="15%"><b>H.C / A.S.I / P.S.I</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="80%"></td>
                                                    <td valign="top" align="center" height="15%"><b>Traffic Branch CCTV Berhampur</b>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../js/moment.js"></script>
    <script src="../codejs/CODashboard.js"></script>
</asp:Content>
