<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternView.aspx.cs" Inherits="HookIt.PatternView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .newStyle2 {
            background-image: url('Images/Pattern3.jpg');
            font-family: "Freestyle Script";
            font-size: 50px;
            color: #000000;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 524px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="newStyle2">
        <div class="auto-style1">
            &nbsp;&nbsp;&nbsp; <span class="newStyle1">
            hyh<br />
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" Width="1086px">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </span>
        </div>
    </form>
</body>
</html>
