<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="ReceiptPrint.aspx.cs" Inherits="Trident.ClientUI.ReceiptPrint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div class="panel panel-default" runat="server">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel-heading">
                            <div class="col-md-10">
                                <h4><b>Receipt Printing & Cancellation</b></h4>
                            </div>
                            <%--<div class="pull-right col-md-1">
                                <input id="id_search" type="text" placeholder="Search" onkeydown="return (event.keyCode!=13);" />
                                <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" Style="margin-right: 20px;" Text="Add New" OnClick="btnAddNew_Click" />
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <%--<div class="col-md-12" style="text-align: center;">
                    <asp:Label ID="lblMsg" runat="server" CssClass="message" Visible="False"></asp:Label>
                </div>--%>
                <div id="divGrid" class="row" runat="server">
                    <asp:GridView runat="server" ID="gvReceipt" CssClass="table table-striped" AutoGenerateColumns="False" GridLines="None" OnRowCommand="gvReceipt_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="SrNo" HeaderText="Sr No." HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ReceiptNo" HeaderText="Receipt No" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PaymentDate" HeaderText="Payment Date" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <%--<asp:BoundField DataField="VehiclePlateNo" HeaderText="Plate No" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>--%>
                            <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount" HeaderStyle-CssClass="text-center">
                                <HeaderStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="Center" Width="150px" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Print Receipt">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" ImageUrl="~/images/print.png"
                                        CommandName="Print1" CommandArgument='<%# Eval("Id")%>' Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Rec Cancellation">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="false" ImageUrl="~/images/delete-1.png"
                                        CommandName="Delete1" CommandArgument='<%# Eval("Id")%>' OnClientClick="javascript:return confirm('Are you sure, you want to delete this Record?');"
                                        Height="16px" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div id="divReceipt" class="divReceipt" style="display: none;">
        <div class="col-md-12">
            <asp:DataList ID="dlPrintChallan" Width="800px" Visible="false" runat="server" BorderStyle="Solid" OnItemDataBound="dlPrintChallan_ItemDataBound" >
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
</asp:Content>
