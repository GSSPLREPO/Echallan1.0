/*****************************************************************************************************
Created By: Ferdous Md. Jannatul, Sr. Software Engineer
Created On: 10 December 2005
Last Modified: 13 April 2006
******************************************************************************************************/
//Generating Pop-up Print Preview page
function getBarCodePrint(print_area) {
    //Creating new page
    //var pp = window.open();
    var pp = window.open('' + self.location, 'mywin', 'left=400,top=30,width=250,height=200,toolbar=0,resizable=0');
    

    //Adding HTML opening tag with <HEAD> … </HEAD> portion 
    pp.document.writeln('<HTML><HEAD><title>TRIDENT</title>')
    pp.document.writeln('<LINK href=../css/PrintStyle.css  type="text/css" rel="stylesheet" media="print"> <LINK href="../css/bootstrap.css" rel="stylesheet" type="text/css"><base target="_self"></HEAD>')
    pp.document.writeln('<body onload="" MS_POSITIONING="GridLayout" bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0" >');
    //Adding form Tag
    pp.document.writeln('<form  method="post">');
    //Creating two buttons Print and Close within a table
    //pp.document.writeln('<TABLE width=100% ><TR><TD></TD></TR><TR><TD align=center><table><tr><td><INPUT ID="PRINT" style="font-family:verdana;font-size:11px;font-weight:bold" type="button" value="Print" onclick="javascript:location.reload(true);javascript:hidePrint();javascript:ShowPrint()();"></td><td><INPUT ID="CLOSE" type="button" style="font-family:verdana;font-size:11px;font-weight:bold" value="Close" onclick="window.close();"></td></tr></table></TD></TR><TR><TD></TD></TR><TR><TD align=center>' + document.getElementById(print_area).innerHTML + '</TD><script type="text/javascript">javascript:hidePrint(); javascript:ShowPrint();</script></TR></TABLE>');
    pp.document.writeln('<TABLE width=100% align=center><TR><TD></TD></TR><TR><TD align=center><INPUT ID="PRINT" style="font-family:verdana;font-size:11px;font-weight:bold" type="button" value="Print" onclick="javascript:location.reload(true);window.print();"><INPUT ID="CLOSE" type="button" style="font-family:verdana;font-size:11px;font-weight:bold" value="Close" onclick="window.close();"></TD></TR><TR><TD></TD></TR><TR><TD width=100% align=center>' + document.getElementById(print_area).innerHTML + '</TD></TR></TABLE>');
    pp.document.writeln('</form></body></HTML>');
}
