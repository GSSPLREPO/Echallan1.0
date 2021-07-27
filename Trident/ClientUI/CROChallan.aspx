<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="CROChallan.aspx.cs" Inherits="Trident.ClientUI.CROChallan" %>

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

        ul {
            list-style-type: none;
        }

        li {
            display: inline-block;
        }

        input[type="checkbox"][id^="chk"] {
            display: none;
        }

        .lblChecked {
            border: 1px solid #fff;
            padding: 5px;
            display: block;
            position: relative;
            margin: 5px;
            cursor: pointer;
        }

            .lblChecked:before {
                background-color: white;
                color: white;
                content: " ";
                display: block;
                border-radius: 50%;
                border: 1px solid grey;
                position: absolute;
                top: -5px;
                left: -5px;
                width: 25px;
                height: 25px;
                text-align: center;
                line-height: 28px;
                transition-duration: 0.4s;
                transform: scale(0);
            }

            .lblChecked img {
                height: 120px;
                width: 120px;
                transition-duration: 0.2s;
                transform-origin: 50% 50%;
            }

        .lblChecked {
            border: 2px solid grey;
            
        }

            .lblChecked:before {
                content: "✓";
                background-color: darkred;
                transform: scale(1.25);
                z-index: 0;
            }

            .lblChecked img {
                transform: scale(0.9);
                box-shadow: 0 0 5px #333;
                z-index: -1;
            }

            img:hover {
                transform: scale(2);
            }
    </style>
    <script src="../codejs/CROEchallan.js"></script>
    <link href="../css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <script src="../js/bootstrap-datepicker.min.js"></script>
    
    <%--<link href="../css/bootstrap-multiselect.css" rel="stylesheet" />
    <script src="../js/bootstrap-multiselect.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=lstMVAct]').multiselect({
                includeSelectAllOption: true
            });
        });
    </script>--%>
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
                                    <asp:Label ID="lblHeading" runat="server" Text="E-Challan"></asp:Label></h4>
                            </div>
                            <div class="col-md-2 pull-right" style="margin-right: -30px">
                                <%--<asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary right" Text="Add New" />--%>
                                <%--</div>
                            <div class="col-md-1 pull-right">--%>
                                <asp:Button runat="server" ID="btnBack" CssClass="btn btn-primary" OnClick="btnBack_Click" Text="Back" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="form-inline">
                        <label class="col-md-2">
                            Plate / Context Image / Screen Shots
                        </label>
                        <div class="col-md-2">
                            <asp:Image ID="imgPlate" runat="server" Height="100px" Width="130px" />
                        </div>
                        <div class="col-md-2">
                            <asp:Image ID="imgContextImage" runat="server" Height="100px" Width="130px" />
                        </div>
                        <div id="dvScreenshots" class="col-md-6">
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle No
                                 <span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtSearchVehicleNo" Width="350px" CssClass="form-control" runat="server"></asp:TextBox>
                            <span class="errMsg"></span>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtSearchVehicleNo"
                                SetFocusOnError="true" ErrorMessage="*" CssClass="message" ValidationGroup="Save"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="col-md-2">
                            <%--<asp:Button ID="btnGo" runat="server" Text="Go" class="btn btn-primary" Width="40px" ValidationGroup="Save" />--%>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Name<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-1">
                            <asp:DropDownList ID="ddlSalutation" Width="80px" runat="server" CssClass="form-control">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                                <asp:ListItem>Ms.</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSurname" Width="250px" placeholder="Surname" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtFirstName" Width="250px" placeholder="First Name" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMiddleName" Width="250px" placeholder="Middle Name" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Address
                                    <span class="errMsg">*</span>
                        </label>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtAddress" Width="400px" CssClass="form-control" TextMode="MultiLine" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            City<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCity" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <label class="col-md-2">
                            State<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtState" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Postal Code<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtPostalCode" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Date & Time Of Violation
                        </label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtDateTimeOfViolation" CssClass="form-control" runat="server" />
                                <span class="errMsg"></span>
                            </div>
                        </div>

                        <label class="col-md-2">
                            Due Date
                        </label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control" />
                                <span class="errMsg"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <%--<div class="form-group">
                        <label class="col-md-12" style="border: thin inset #000000; text-align: center;">
                            Traffic Violation Details
                        </label>
                    </div>
                    <br />--%>
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle Type<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlVehicleType" runat="server" CssClass="form-control" />
                            <span class="errMsg"></span>
                        </div>
                        <label class="col-md-2">
                            Vehicle Model<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtVehicleModel" runat="server" CssClass="form-control" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Vehicle Make<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtVehicleMake" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <label class="col-md-2">
                            No. Of Violations/Total Challan <span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtNoOfViolations" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Police Station<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtPoliceStation" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <label class="col-md-2">
                            Location<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtLocation" CssClass="form-control" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-6">
                            List of Pending E-Challan
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="panel-body">
                        <asp:GridView runat="server" ID="gvListOfPendingEchallan" CssClass="table table-hover table-striped" AutoGenerateColumns="False" CellPadding="4" border="1" Style="border-collapse: collapse;" GridLines="None" ShowHeaderWhenEmpty="True">
                            <Columns>
                                <asp:BoundField HeaderText="ChallanId" DataField="ChallanId" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" ItemStyle-Width="5%" HeaderStyle-Width="5%"></asp:BoundField>
                                <asp:BoundField HeaderText="Sr. No." DataField="SrNo" ItemStyle-Width="5%" HeaderStyle-Width="5%"></asp:BoundField>
                                <asp:BoundField HeaderText="Challan Date Time" DataField="ChallanDateTime" ItemStyle-Width="25%" HeaderStyle-Width="25%" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                <asp:BoundField HeaderText="Challan No" DataField="ChallanNo" ItemStyle-Width="25%" HeaderStyle-Width="25%" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                                <asp:BoundField HeaderText="Amount" DataField="TotalAmount" ItemStyle-Width="15%" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Right"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

                <br />
                <div class="row">
                    <%--<div class="form-group">
                        <label class="col-md-12" style="border: thin inset #000000; text-align: center;">
                            Traffic Violation Details
                        </label>
                    </div>
                    <br />--%>
                    <div class="form-group">
                        <label class="col-md-2">
                            Offense<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlOffense" onblur="validateSelect(this.id, 'Select Offense');" runat="server" ClientIDMode="Static" CssClass="form-control" />
                            <span class="errMsg"></span>
                            <asp:HiddenField ID="hdnTotalPendingAmount" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnOffense" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnHeadOfficeId" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnJsonFilePath" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnPendingChallanIds" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnScreenShots" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnSc" ClientIDMode="Static" runat="server" />
                            <asp:HiddenField ID="hdnCount" ClientIDMode="Static" runat="server" />
                        </div>
                        <label class="col-md-2">
                            Amount<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtAmount" CssClass="form-control" onkeyup="validate(this.id, 'Enter Amount', '');numberAllow(this.id, 'Only numeric data allowed.');" ClientIDMode="Static" runat="server" ReadOnly="true" />
                            <span class="errMsg"></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            Motor Vehicle Acts<span class="errMsg">*</span>
                        </label>
                        <div class="col-md-4">
                            <%--<asp:ListBox ID="lstMVAct" CssClass="form-control" runat="server" SelectionMode="Multiple">
                            </asp:ListBox>--%>
                            <asp:HiddenField ID="hdnMVActs" ClientIDMode="Static" runat="server" />
                            <asp:TextBox ID="txtMVActs" CssClass="form-control" ClientIDMode="Static" onkeyup="validate(this.id, 'Enter MV Act', '');" runat="server" />
                            <span class="errMsg"></span>
                        </div>
                        <div class="col-md-2">
                            <button id="btnAddOffense" type="button" class="btn btn-primary">Add Offense</button>
                        </div>
                        <label class="col-md-3">Total Amount</label>
                        <label id="lblTotalAmount" class="col-md-1"></label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <label id="grdMsg" class="col-md-12 errMsg">
                        </label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="panel-body">
                        <div id="divListOfOffenses">
                        </div>
                    </div>
                </div>
                <%--<br />
                <div class="row">
                    <div class="form-group">
                        <label class="col-md-3">
                            Total Compounding Challan Amount(In Rs.) 
                        </label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtAmount" CssClass="form-control" runat="server" />
                        </div>
                    </div>
                </div>--%>
                <br />
                <%--<div class="row">
                    <div class="form-group">
                        <label class="col-md-2">
                            License No.
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtLicenseNo" CssClass="form-control" runat="server" />
                        </div>
                        
                    </div>
                </div>--%>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2 pull-right" style="margin-right: -30px">
                            <button id="btnSave" type="button" class="btn btn-primary">Save</button>
                            <%--<asp:Button runat="server" ID="btnCancel" CssClass="btn btn-primary" OnClick="btnBack_Click" Text="Cancel" />--%>
                            <%--<asp:ValidationSummary runat="server" ID="vs1" ValidationGroup="g1" ShowMessageBox="True" ShowSummary="False" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../js/moment.js"></script>
    <script src="../js/jquery.scrolly.min.js"></script>
    <script src="../js/jquery.imgcheckbox.js"></script>
    <script src="../codejs/CROEchallan.js"></script>
    <script>
        $(document).ready(function () {
            $("#lblTotalAmount").text($("[id*=hdnTotalPendingAmount]").val());
            addImages($('#hdnSc').val(), $('#hdnCount').val());
        });
    </script>
</asp:Content>
