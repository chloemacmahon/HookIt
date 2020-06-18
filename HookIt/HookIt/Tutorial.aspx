<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tutorial.aspx.cs" Inherits="HookIt.Tutorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/TutorialStyle.css" />
    
</head>
<body class="center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <h1>Tutorials</h1>
            <h2>
                Select a tutorial from the list box below and press the play video</h2>
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownListTutotial" runat="server" Height="34px" Width="280px" Font-Names="Century" Font-Size="14pt">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button CssClass="smallbutton" ID="Button1" runat="server" Text="Play video" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2><span class="auto-style8">If the tutorial is not in the list box type in the tutorial name and enter the re-direct button to be redirected to youtube </span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtYoutube" runat="server" Font-Names="Century" Font-Size="14pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:Button CssClass="smallbutton" ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
                    &nbsp;</td>
                </tr>
            </table>
            <asp:Label CssClass="label" ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <iframe id="youtubevid" runat="server" width="854" height="480" frameborder="0" allowfullscreen></iframe>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button CssClass="smallbutton" ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home, James" />
            <br />
        </div>
    </form>
</body>
</html>
