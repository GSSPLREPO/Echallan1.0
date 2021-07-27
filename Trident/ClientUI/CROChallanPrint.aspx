<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" MaintainScrollPositionOnPostback="true" ValidateRequest="false" AutoEventWireup="true" CodeBehind="CROChallanPrint.aspx.cs" Inherits="Trident.ClientUI.CROChallanPrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .PrintBarCode {
            font-family: 'IDAUTOMATIONHC39M',Verdana; /*color: #FF0000;*/
            font-size: 10px;
        }
    </style>
    <script src="../codejs/CROChallanPrint.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div class="panel panel-default" runat="server">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel-heading">
                            <div class="col-md-10">
                                <h4>Challan Printing Dashboard</h4>
                            </div>
                            <div class="pull-right col-md-1">
                                <%--<input id="id_search" type="text" placeholder="Search" onkeydown="return (event.keyCode!=13);" />--%>
                                <%--<button id="btnPrintSelected" type="button" class="btn btn-primary">Print Selected</button>--%>
                                <asp:Button runat="server" ID="btnPrintSelected" CssClass="btn btn-primary" Text="Print Selected" OnClick="btnPrintSelected_Click" />
                                <asp:HiddenField ID="hdnChallanString" ClientIDMode="Static" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <%--<div class="col-md-12" style="text-align: center;">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                </div>--%>
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvChallan" CssClass="table table-striped" OnPageIndexChanging="gvChallan_PageIndexChanging" AutoGenerateColumns="False" OnRowCommand="gvChallan_RowCommand" GridLines="None" AllowPaging="True" PageSize="50" AllowCustomPaging="False" PagerStyle-HorizontalAlign="Right" PagerSettings-Position="TopAndBottom" PagerStyle-BorderStyle="NotSet" PagerStyle-ForeColor="#993300" PagerStyle-CssClass="pagination-ys">
                        <Columns>
                            <asp:TemplateField HeaderText="Choose Category" ControlStyle-Width="25px" ItemStyle-Width="25px" HeaderStyle-Width="25px" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkHeader" ClientIDMode="Static" AutoPostBack="true" OnCheckedChanged="chkHeader_CheckedChanged" runat="server" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkChild" runat="server" AutoPostBack="true" OnCheckedChanged="chkChild_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="Id" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden">
                                <HeaderStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SrNo" HeaderText="Sr No." HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ChallanNo" HeaderText="Challan No" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ViolationDateTime" HeaderText="Violation Date & Time" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="VehiclePlateNo" HeaderText="Plate No" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Location" HeaderText="Location" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OffenderName" HeaderText="Offender Name" ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="200px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle Width="200px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Print Challan">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" ImageUrl="~/images/print.png"
                                        CommandName="Print1" CommandArgument='<%# Eval("Id")%>' Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="Print Barcode">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="false" ImageUrl="~/images/B_Print.png"
                                        CommandName="PrintBarcode1" CommandArgument='<%# Eval("Id")%>'
                                        Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>--%>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div id="divChallanBarcode" class="divChallan" style="display: none;">
        <div id="divBarCode" style="text-align: center;">
            <asp:DataList ID="dlPrintBarcode" Width="400px" HorizontalAlign="Center" Visible="false" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lblCode" runat="server" Visible="true" Text='<%# Eval("ChallanNo") %>' CssClass="PrintBarCode"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div id="divPrint" style="display: none;">
    </div>
    <div id="divChallan" class="divChallan" style="display: none;">
        <div class="col-md-12">
            <asp:DataList ID="dlPrintChallan" Width="800px" Visible="false" runat="server" BorderStyle="Solid" OnItemDataBound="dlPrintChallan_ItemDataBound">
                <HeaderTemplate>
                    <table cellpadding="1px" style="font-family: Verdana;" valign="top"
                        height="100px" width="800px">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td valign="top" align="left" height="20%" rowspan="2" style="border-right: thin 1px black; width: 10%;">
                                            <img src='../images/Odisha_Police_Logo.png' width="100px" height="100px" />
                                        </td>
                                        <td style="font-size: 17px; border-bottom: solid 1px black" align="center">
                                            <b>Berhampur City Police</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="font-size: 17px; color: crimson;"><b>E-Challan for Violation of Traffic Rules</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 14px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;" width="50%">Challan No. : <b><%# Eval("ChallanNo") %></b>
                                    </td>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;">Challan Date & Time : <%# Eval("ChallanDateTime") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Challan Details</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="1" width="20%" style="border: 1px solid black; padding: 3px;">Name
                                    </td>
                                    <td colspan="3" style="border: 1px solid black; padding: 3px;"><%# Eval("Name") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="1" style="border: 1px solid black; padding: 3px;">Address
                                    </td>
                                    <td colspan="3" style="border: 1px solid black; padding: 3px;"><%# Eval("OffenderAddress") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">City
                                    </td>
                                    <td style="border: 1px solid black; width: 30%; padding: 3px;"><%# Eval("City") %></td>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">Postal Code
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("PostalCode") %></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">Province
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("Province") %></td>
                                    <td style="border: 1px solid black; padding: 3px;">Mobile No.
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("MobileNo") %></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">Vehicle Type
                                    </td>
                                    <td colspan="3" style="border: 1px solid black; padding: 3px;"><%# Eval("VehicleType") %></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">Due Date
                                    </td>
                                    <td colspan="3" style="border: 1px solid black; padding: 3px;"><%# Eval("DueDate") %></td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 14px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Traffic Violation Details</b>
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
                                    <td style="border: 1px solid black; padding: 3px;">Vehicle Model
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("VehicleModel") %></td>
                                    <td style="border: 1px solid black; padding: 3px;">Violation Date & Time
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("ViolationDateTime") %></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; padding: 3px;">Violation Place
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("Location") %></td>
                                    <td style="border: 1px solid black; padding: 3px;">Police Station
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px;"><%# Eval("PoliceStation") %></td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" style="vertical-align: top; font-size: 14px; border-collapse: collapse;" frame="box">
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Offense Details</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;">
                                        <asp:GridView runat="server" ID="gvChallanPrint" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="Both">
                                            <Columns>
                                                <asp:BoundField DataField="SrNo" HeaderText="Sr No." HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Name" HeaderText="Offence" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="250px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="MVSection" HeaderText="MV Act" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="350px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" Width="250px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Amount" HeaderText="Amount" HeaderStyle-CssClass="text-center">
                                                    <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Right" Width="100px" VerticalAlign="Top" Wrap="true" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="border: 1px solid black; padding: 3px;"><b>Previous Unpaid Challan Details</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">No. of Prev. unpaid Challans
                                    </td>
                                    <td style="border: 1px solid black; width: 30%; padding: 3px;"><%# Eval("NoOfUnpaidChallan") %></td>
                                    <td style="border: 1px solid black; width: 20%; padding: 3px;">Amount
                                    </td>
                                    <td style="border: 1px solid black; padding: 3px; text-align: right;"><%# Eval("Amount") %></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;"><b>Total Compounding Amount (Rs.)</b>
                                    </td>
                                    <td colspan="2" align="right" style="border: 1px solid black; padding: 3px;"><b><%# Eval("CompoundingAmount") %>                                           </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="border: 1px solid black; padding: 3px;"><b>Amount in Words</b>
                                    </td>
                                    <td colspan="2" align="right" style="border: 1px solid black; padding: 3px;"><b><%# Eval("AmountInWord") %>                                           </b>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;">
                                        <img src='<%# Eval("LPImage") %>' width="175px" height="150px" />
                                    </td>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;">
                                        <img src='<%# Eval("ContextImage") %>' width="175px" height="150px" />
                                    </td>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;">
                                        <img src='<%# Eval("ViolationScreenShot") %>' width="175px" height="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;"><b>License Plate</b>
                                    </td>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;"><b>Context Image</b>
                                    </td>
                                    <td valign="top" align="center" height="20%" style="border-right: thin 1px black; align-self: center;"><b>Violation Image</b>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td valign="top" width="80%"></td>
                                    <td valign="top" align="center" height="15%"><b>Generated By</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="80%"></td>
                                    <td valign="top" align="center" height="15%"><%# Eval("UserName") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="70%"></td>
                                    <td valign="top" align="center" height="20%">&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="70%"></td>
                                    <td valign="top" align="center" height="20%">&nbsp;
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
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../codejs/CROChallanPrint.js"></script>
</asp:Content>
