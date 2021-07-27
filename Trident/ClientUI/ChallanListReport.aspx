<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="ChallanListReport.aspx.cs" Inherits="Trident.ClientUI.ChallanListReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-10" style="font-size: 24px; text-align: center">
                        List Of Challan
                    </div>
                   <%-- <div class="col-md-2 right" id="divExport" runat="server">
                        <asp:LinkButton ID="imgbtnPDF" runat="server" OnClick="imgbtnPDF_Click" CssClass="btn btn-danger quick-btn"><i class="fa fa-file-pdf-o"></i></asp:LinkButton>
                        <asp:LinkButton ID="imgbtnExcel" runat="server" OnClick="imgbtnExcel_Click" CssClass="btn btn-success quick-btn"><i class="fa fa-file-excel-o"></i></asp:LinkButton>
                        <asp:LinkButton ID="imgbtnWord" runat="server" OnClick="imgbtnWord_Click" CssClass="btn btn-info quick-btn"><i class="fa fa-file-word-o"></i></asp:LinkButton>

                    </div>--%>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3">
                            From Date :
                        </div>
                        <div class="col-md-3">
                            To Date :
                        </div>

                        <div class="col-md-3">
                            Status :
                        </div>

                          <div class="col-md-3">
                            Location :
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3 ">
                            <div class='input-group date' id='datetimepicker1'>
                                <asp:TextBox ID="txtFromDate" CssClass="fromdate form-control" ClientIDMode="Static" Placeholder="From Date" runat="server"></asp:TextBox>
                                <span id="cal" class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                        </div>

                        <div class="col-md-3 ">
                            <div class='input-group date' id='datetimepicker2'>
                                <asp:TextBox ID="txtToDate" CssClass="form-control" ClientIDMode="Static" Placeholder="To Date" runat="server"></asp:TextBox>
                                <span id="cal1" class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            </div>
                        </div>

                         <div class="col-md-3 ">
                            <div class='input-group date' id='drpstatus'>
                                <asp:DropDownList ID="ddlStatus" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:DropDownList>
                            </div>
                        </div>

                         <div class="col-md-3 ">
                            <div class='input-group date' id='drpLocation'>
                                <asp:DropDownList ID="ddlLocation" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnGo" Text="Go" CssClass="btn btn-primary pull-left" ValidationGroup="g1" OnClick="btnGo_Click" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFromDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter From Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtToDate" ValidationGroup="g1"
                                SetFocusOnError="True" ErrorMessage="Enter To Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>

                    </div>
                </div>
                <br />
                <div class="row" style="overflow: scroll;">
                    
                </div>
                <div class="center" id="divId" runat="server">No records found.</div>
                <%--<asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary pull-right" ValidationGroup="g1" OnClick="btnSave_Click" />--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
</asp:Content>
