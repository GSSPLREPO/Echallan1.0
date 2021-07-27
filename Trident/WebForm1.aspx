<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Trident.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 148px;
        }

        .auto-style2 {
            width: 189px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%">
                <tbody>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>
                                            <input id="PRINT" style="font-family: verdana; font-size: 11px; font-weight: bold" type="button" value="Print &amp; Close" onclick="javascript: location.reload(false); javascript: hidePrint(); javascript: ShowPrint();"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <div class="col-md-12">
                                '<table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <table width='100%'>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                                                <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                                            <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0206201900001</b></td>
                                                                            <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 02/06/2019 02:23:07</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                                            <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chaglani Chintan P</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                                            <td colspan='3' style='border: 1px solid black; padding: 3px;'>BRC</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                                            <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                                            <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'></td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                                            <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                                            <td colspan='3' style='border: 1px solid black; padding: 3px;'>06/12/2019 00:00:00</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                                            <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06LQ3424</td>
                                                                            <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Hero</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>HF Delux</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>14/05/2019 15:07:00</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Cam-1</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                                            <td style='border: 1px solid black; padding: 3px;'>Gorwa Police Station</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                                                <div>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                                            <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                                            <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                                            <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                                            <td align='left' valign='top' style='width: 150px;'>Driving without Helmet</td>
                                                                                            <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                                            <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                    </tr>
                    <tr>
                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                        <td style='border: 1px solid black; width: 30%; padding: 3px;'>0</td>
                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                        <td style='border: 1px solid black; padding: 3px; text-align: right;'>0</td>
                    </tr>
                    <tr>
                        <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                        <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>300</b></td>
                    </tr>
                    <tr>
                        <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                        <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Three Hundred Only</b></td>
                    </tr>
                </tbody>
            </table>
            </td></tr><tr>
                <td>
                    <table width='100%'>
                        <tbody>
                            <tr>
                                <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                    <img src='..\PlateImages\14052019015901.jpg' width='175px' height='150px'></td>
                                <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                    <img src='' width='175px' height='150px'></td>
                                <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                    <img src='' width='175px' height='150px'></td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    <table width='100%'>
                        <tbody>
                            <tr>
                                <td valign='top' width='80%'></td>
                                <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                            </tr>
                            <tr>
                                <td valign='top' width='80%'></td>
                                <td valign='top' align='center' height='15%'>Admin</td>
                            </tr>
                            <tr>
                                <td valign='top' width='70%'></td>
                                <td valign='top' align='center' height='20%'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign='top' width='70%'></td>
                                <td valign='top' align='center' height='20%'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign='top' width='80%'></td>
                                <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                            </tr>
                            <tr>
                                <td valign='top' width='80%'></td>
                                <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody></table></td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
                <tbody>
                    <tr>
                        <td>
                            <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                                <tbody>
                                    <tr>
                                        <td>
                                            <table width='100%'>
                                                <tbody>
                                                    <tr>
                                                        <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                            <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                        <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                <tbody>
                                                    <tr>
                                                        <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM1406201900001</b></td>
                                                        <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 14/06/2019 16:34:21</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                        <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. chaglani chintan p</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                        <td colspan='3' style='border: 1px solid black; padding: 3px;'>Radhakrishna Cross road Akota</td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                        <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                        <td style='border: 1px solid black; padding: 3px;'></td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                        <td style='border: 1px solid black; padding: 3px;'></td>
                                                        <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                        <td style='border: 1px solid black; padding: 3px;'></td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                        <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                        <td colspan='3' style='border: 1px solid black; padding: 3px;'>24/06/2019 00:00:00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                <tbody>
                                                    <tr>
                                                        <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                        <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06DN0388</td>
                                                        <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                        <td style='border: 1px solid black; padding: 3px;'>TVS</td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                        <td style='border: 1px solid black; padding: 3px;'>jupiter</td>
                                                        <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                        <td style='border: 1px solid black; padding: 3px;'>17/05/2019 10:12:19</td>
                                                    </tr>
                                                    <tr>
                                                        <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                        <td style='border: 1px solid black; padding: 3px;'></td>
                                                        <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                        <td style='border: 1px solid black; padding: 3px;'>Vasna Police Station</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                                <tbody>
                                                    <tr>
                                                        <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                            <div>
                                                                <tbody>
                                                                    <tr>
                                                                        <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                        <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                        <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                        <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                        <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                        <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                        <td align='right' valign='top' style='width: 100px;'>100</td>
                                                                    </tr>
                                                                </tbody>
                                            </table>
        </div>
        </td></tr><tr>
            <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
        </tr>
        <tr>
            <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
            <td style='border: 1px solid black; width: 30%; padding: 3px;'>1</td>
            <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
            <td style='border: 1px solid black; padding: 3px; text-align: right;'>100</td>
        </tr>
        <tr>
            <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
            <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>200</b></td>
        </tr>
        <tr>
            <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
            <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Two Hundred Only</b></td>
        </tr>
        </tbody></table></td></tr><tr>
            <td>
                <table width='100%'>
                    <tbody>
                        <tr>
                            <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                <img src='..\PlateImages\14052019015903.jpg' width='175px' height='150px'></td>
                            <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                <img src='' width='175px' height='150px'></td>
                            <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                <img src='' width='175px' height='150px'></td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <br>
            </td>
        </tr>
        <tr>
            <td>
                <table width='100%'>
                    <tbody>
                        <tr>
                            <td valign='top' width='80%'></td>
                            <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                        </tr>
                        <tr>
                            <td valign='top' width='80%'></td>
                            <td valign='top' align='center' height='15%'>Admin</td>
                        </tr>
                        <tr>
                            <td valign='top' width='70%'></td>
                            <td valign='top' align='center' height='20%'>&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign='top' width='70%'></td>
                            <td valign='top' align='center' height='20%'>&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign='top' width='80%'></td>
                            <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                        </tr>
                        <tr>
                            <td valign='top' width='80%'></td>
                            <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        </tbody></table></td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM1406201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 14/06/2019 16:34:29</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. chaglani chintan p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Radhakrishna Cross road Akota</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>24/06/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06DN0388</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>TVS</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>jupiter</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>17/05/2019 10:12:19</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vasna Police Station</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>100</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>1</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>100</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>200</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Two Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\14052019015903.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 17:39:00</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. c c p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>brc</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>guj</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>def</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Driving without Helmet</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 18:29:47</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chag cp c</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Hari Smruti Apartment, brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>BRC</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>GUJ</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>abc</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Driving without Helmet</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>2</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>100</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4600</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2509201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/09/2019 11:55:42</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. a s f</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>bn</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/10/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>z</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>c</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>100</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1600</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Six Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_12-21-23_OD07AB2329_ss_4.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2011201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 20/11/2019 16:58:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>30/11/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\9_2019-08-29_02-46-18_OD33VV2908_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2511201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/11/2019 15:26:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390021</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Driving without Helmet</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>2</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\101_2019-09-09_09-04-40_OD02Q3244_ss_5.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900001</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:28:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:33:54</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. soni devarsh d</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>vadodar</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>vadodara</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>39018</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>gujrat</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>vadoadra</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\12208_2019-09-1' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:18</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>300</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src=' ..\ScreenShots\12208_2019-09-' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Not carrying valid licence while driving</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>100</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2911201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 29/11/2019 12:51:14</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>09/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                                <tr>
                                                                    <td align='right' valign='top' style='width: 50px;'>1</td>
                                                                    <td align='left' valign='top' style='width: 150px;'>Red Light Violation</td>
                                                                    <td align='left' valign='top' style='width: 250px;'>177 | General provision for punishment of offences.</td>
                                                                    <td align='right' valign='top' style='width: 100px;'>500</td>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_8.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0206201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 02/06/2019 02:23:07</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chaglani Chintan P</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>BRC</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>06/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06LQ3424</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Hero</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>HF Delux</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/05/2019 15:07:00</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Cam-1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Gorwa Police Station</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>0</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>0</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>300</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Three Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\14052019015901.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 17:39:00</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. c c p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>brc</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>guj</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>def</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 18:29:47</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chag cp c</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Hari Smruti Apartment, brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>BRC</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>GUJ</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>abc</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4600</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2509201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/09/2019 11:55:42</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. a s f</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>bn</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/10/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>z</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>c</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1600</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Six Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_12-21-23_OD07AB2329_ss_4.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2011201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 20/11/2019 16:58:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>30/11/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\9_2019-08-29_02-46-18_OD33VV2908_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2511201900002</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/11/2019 15:26:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390021</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\101_2019-09-09_09-04-40_OD02Q3244_ss_5.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900005</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:28:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900006</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:33:54</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. soni devarsh d</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>vadodar</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>vadodara</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>39018</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>gujrat</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>vadoadra</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\12208_2019-09-1' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900007</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:18</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src=' ..\ScreenShots\12208_2019-09-' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900008</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2911201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 29/11/2019 12:51:14</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>09/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_8.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0206201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 02/06/2019 02:23:07</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chaglani Chintan P</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>BRC</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>06/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06LQ3424</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Hero</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>HF Delux</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/05/2019 15:07:00</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Cam-1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Gorwa Police Station</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>0</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>0</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>300</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Three Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\14052019015901.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900005</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 17:39:00</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. c c p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>brc</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>guj</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>def</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900006</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 18:29:47</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chag cp c</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Hari Smruti Apartment, brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>BRC</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>GUJ</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>abc</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4600</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2509201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/09/2019 11:55:42</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. a s f</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>bn</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/10/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>z</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>c</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1600</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Six Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_12-21-23_OD07AB2329_ss_4.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2011201900005</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 20/11/2019 16:58:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>30/11/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\9_2019-08-29_02-46-18_OD33VV2908_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2511201900003</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/11/2019 15:26:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390021</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\101_2019-09-09_09-04-40_OD02Q3244_ss_5.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900009</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:28:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900010</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:33:54</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. soni devarsh d</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>vadodar</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>vadodara</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>39018</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>gujrat</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>vadoadra</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\12208_2019-09-1' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900011</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:18</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src=' ..\ScreenShots\12208_2019-09-' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900012</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2911201900006</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 29/11/2019 12:51:14</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>09/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_8.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0206201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 02/06/2019 02:23:07</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chaglani Chintan P</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>BRC</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>06/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06LQ3424</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Hero</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>HF Delux</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/05/2019 15:07:00</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Cam-1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Gorwa Police Station</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>0</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>0</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>300</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Three Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\14052019015901.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900007</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 17:39:00</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. c c p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>brc</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>guj</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>def</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900008</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 18:29:47</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chag cp c</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Hari Smruti Apartment, brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>BRC</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>GUJ</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>abc</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4600</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2509201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/09/2019 11:55:42</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. a s f</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>bn</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/10/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>z</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>c</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1600</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Six Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_12-21-23_OD07AB2329_ss_4.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2011201900007</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 20/11/2019 16:58:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>30/11/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\9_2019-08-29_02-46-18_OD33VV2908_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2511201900004</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/11/2019 15:26:16</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390021</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\101_2019-09-09_09-04-40_OD02Q3244_ss_5.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900013</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:28:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900014</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 15:33:54</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. soni devarsh d</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>vadodar</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>vadodara</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>39018</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>gujrat</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>KTM</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>vadoadra</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\12208_2019-09-1' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900015</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:18</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07T505</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/09/2019 08:02:08</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Kamapalli To Courtpetta  Lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>14</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4200</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>4500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Four Thousand Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\12208_2019-09-14_08-02-08_OD07T505.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src=' ..\ScreenShots\12208_2019-09-' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2811201900016</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 28/11/2019 18:00:48</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. A B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>08/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>4</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>400</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>500</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_6.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2911201900008</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 29/11/2019 12:51:14</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Ab B C</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>a</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>390020</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>09/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OR07V774</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:22:21</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Kamapali towards Courtpetta-lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>s</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\740_2019-09-16_12-22-21_OR07V774.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\740_2019-09-16_12-22-21_OR07V774_ss_8.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0206201900005</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 02/06/2019 02:23:07</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chaglani Chintan P</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>BRC</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>06/12/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>GJ06LQ3424</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Hero</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>HF Delux</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>14/05/2019 15:07:00</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Cam-1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Gorwa Police Station</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>0</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>0</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>300</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Three Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\14052019015901.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900009</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 17:39:00</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. c c p</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>brc</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>guj</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD33VV2908</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>29/08/2019 02:46:18</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Towards sp office lane 2  LPR</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>def</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1800</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Eight Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\9_2019-08-29_02-46-18_OD33VV2908.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM0909201900010</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 09/09/2019 18:29:47</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. Chag cp c</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Hari Smruti Apartment, brc</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>BRC</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>GUJ</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>19/09/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD02Q3244</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>123</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>09/09/2019 09:04:40</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Courtpetta To sp office Lane  1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>abc</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>9</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>4600</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>5000</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>Five Thousand Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\101_2019-09-09_09-04-40_OD02Q3244.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table><table id='MainBody_dlPrintChallan' cellspacing='0' style='width: 800px; border-collapse: collapse;'>
            <tbody>
                <tr>
                    <td>
                        <table cellpadding='1px' style='font-family: Verdana;' valign='top' height='100px' width='800px'>
                            <tbody>
                                <tr>
                                    <td>
                                        <table width='100%'>
                                            <tbody>
                                                <tr>
                                                    <td valign='top' align='left' height='20%' rowspan='2' style='border-right: thin 1px black; width: 10%;'>
                                                        <img src='../images/Berhampur_Police.png' width='100px' height='100px'></td>
                                                    <td style='font-size: 17px; border-bottom: solid 1px black' align='center'><b>Berhampur City Police</b></td>
                                                </tr>
                                                <tr>
                                                    <td align='center' style='font-size: 17px; color: crimson;'><b>E-Challan for Violation of Traffic Rules </b></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;' width='50%'>Challan No. : <b>BAM2509201900005</b></td>
                                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'>Challan Date & amp; Time: 25/09/2019 11:55:42</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Challan Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' width='20%' style='border: 1px solid black; padding: 3px;'>Name</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>Mr. a s f</td>
                                                </tr>
                                                <tr>
                                                    <td colspan='1' style='border: 1px solid black; padding: 3px;'>Address</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>bn</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>City</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Postal Code</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Province</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>b</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Mobile No.</td>
                                                    <td style='border: 1px solid black; padding: 3px;'></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Type</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>MCycleScooter</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Due Date</td>
                                                    <td colspan='3' style='border: 1px solid black; padding: 3px;'>05/10/2019 00:00:00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Traffic Violation Details</b></td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Reg.No.</td>
                                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>OD07AB2329</td>
                                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Vehicle Make</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>z</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Vehicle Model</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>a</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Date & amp; Time</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>16/09/2019 12:21:23</td>
                                                </tr>
                                                <tr>
                                                    <td style='border: 1px solid black; padding: 3px;'>Violation Place</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>At Gate bazar towards city hospital lane 1</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>Police Station</td>
                                                    <td style='border: 1px solid black; padding: 3px;'>c</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width='100%' style='vertical-align: top; font-size: 14px; border-collapse: collapse;' frame='box'>
                                            <tbody>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Offense Details </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'>
                                                        <div>
                                                            <tbody>
                                                                <tr>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Sr No.</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 250px;'>Offence</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 350px;'>MV Act</th>
                                                                    <th class='text-center' align='center' valign='top' scope='col' style='width: 100px;'>Amount</th>
                                                                </tr>
                                                            </tbody>
                                        </table>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td colspan='4' style='border: 1px solid black; padding: 3px;'><b>Previous Unpaid Challan Details</b></td>
                                </tr>
                                <tr>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>No.of Prev.unpaid Challans</td>
                                    <td style='border: 1px solid black; width: 30%; padding: 3px;'>5</td>
                                    <td style='border: 1px solid black; width: 20%; padding: 3px;'>Amount</td>
                                    <td style='border: 1px solid black; padding: 3px; text-align: right;'>1500</td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Total Compounding Amount (Rs.)</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>1600</b></td>
                                </tr>
                                <tr>
                                    <td colspan='2' style='border: 1px solid black; padding: 3px;'><b>Amount in Words</b></td>
                                    <td colspan='2' align='right' style='border: 1px solid black; padding: 3px;'><b>One Thousand Six Hundred Only</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\PlateImages\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ContextImage\690_2019-09-16_12-21-23_OD07AB2329.jpg' width='175px' height='150px'></td>
                                    <td valign='top' align='center' height='20%' style='border-right: thin 1px black; align-self: center;'>
                                        <img src='..\ScreenShots\690_2019-09-16_12-21-23_OD07AB2329_ss_4.jpg' width='175px' height='150px'></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width='100%'>
                            <tbody>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Generated By</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'>Admin</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='70%'></td>
                                    <td valign='top' align='center' height='20%'>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>H.C / A.S.I / P.S.I</b></td>
                                </tr>
                                <tr>
                                    <td valign='top' width='80%'></td>
                                    <td valign='top' align='center' height='15%'><b>Traffic Branch CCTV Berhampur</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        </td></tr></tbody></table>'
                            </div>
                        </td>
                        <script type="text/javascript"></script>
        </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
