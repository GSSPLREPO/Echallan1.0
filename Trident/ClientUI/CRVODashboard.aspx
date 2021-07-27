<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="CRVODashboard.aspx.cs" Inherits="Trident.ClientUI.CRVODashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div id="loadingDiv" style="display: none;">
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
    </div>
    <%--<div class="col-md-12">--%>
    <div id="defaultPanel" class="panel panel-default">

        <div class="panel-heading">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel-heading">
                        <div class="col-md-10">
                            <h4>
                                <asp:Label ID="lblHeading" runat="server" Text="CRVO Dashboard"></asp:Label></h4>
                        </div>
                        <div class="pull-right col-md-2">
                            <button id="btnApprove" type="button" class="btn btn-primary">Approve Selected</button>
                            <%--<input id="id_search" type="text" placeholder="Search" onkeydown="return (event.keyCode!=13);" />--%>
                            <%--<asp:Button runat="server" ID="btnAddNew" CssClass="btn btn-primary" Style="margin-right: 20px;" Text="Add New" OnClick="btnAddNew_Click"/>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-primary divGrid" id="divGrid">
        <div class="box-body no-padding">
            <div id="divCRVODashboard"></div>
            <br />
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="form-group">
                <div class="col-md-12 col-md-offset-10">
                    <asp:HiddenField ID="hdnEmployeeId" runat="server" ClientIDMode="Static" />
                    <asp:HiddenField ID="hdnHeadOfficeId" runat="server" ClientIDMode="Static" />
                </div>
            </div>
        </div>
    </div>

    <%--</div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptDeclaration" runat="server">
    <script src="../codejs/CRVODashboard.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            GridBindCRVO();
        });
    </script>
</asp:Content>
