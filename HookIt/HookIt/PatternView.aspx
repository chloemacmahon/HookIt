<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternView.aspx.cs" Inherits="HookIt.PatternView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Patterns</title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/PatternViewStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 1210px;
        }
    </style>
</head>
<body class="center">
    <form id="form1" runat="server" class="newStyle2">
        <div class="auto-style1">
            <h1>&nbsp;&nbsp;&nbsp;<span class="auto-style3"> Patterns </span>
            </h1>
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtSearch" runat="server" Font-Names="Century" Font-Size="14pt"></asp:TextBox>
&nbsp;
                        <asp:Button CssClass="smallbutton" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" Width="1086px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AutoGenerateSelectButton="True" EnableViewState="False" SelectedIndex="0">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;&nbsp;<asp:ListBox ID="lstPattern" runat="server" Font-Names="Freestyle Script" Font-Size="16pt" Width="1120px" CssClass="listbox" Height="270px"></asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Button CssClass="smallbutton" ID="btnDownload" runat="server" Text="Show Pattern" OnClick="btnDownload_Click" />
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
        </div>
    </form>
</body>
</html>
