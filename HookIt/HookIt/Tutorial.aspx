<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tutorial.aspx.cs" Inherits="HookIt.Tutorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .newStyle1 {
            background-image: url('Images/background1.jpg');
            background-repeat: no-repeat;
            font-family: "Freestyle Script";
            color: #FFFFFF;
            font-size: small;
        }
        .newStyle2 {
            font-family: "Freestyle Script";
            color: #FFFFFF;
            font-size: medium;
            background-image: url('Images/background1.jpg');
            background-repeat: repeat;
        }
        .auto-style3 {
            color: #990000;
            font-size: 40pt;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            color: #990000;
            font-size: 20pt;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style8 {
            color: #990000;
        }
        .auto-style9 {
            height: 29px;
            font-size: 20pt;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            height: 46px;
        }
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style14 {
            width: 12px;
        }
    </style>
</head>
<body class="newStyle2">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <h1 class="auto-style3">Tutorials</h1>
            <p class="auto-style4">
                Select a tutorial from the list box below and press the play video</p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownListTutotial" runat="server" Height="34px" Width="280px" Font-Names="Century" Font-Size="14pt">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Play video" BackColor="White" Font-Names="Century" Font-Size="14pt" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style9"><span class="auto-style8">If the tutorial is not in the list box type in the tutorial name and enter the re-direct button to be redirected to youtube </span></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtYoutube" runat="server" Font-Names="Century" Font-Size="14pt"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" Font-Names="Century" Font-Size="14pt" OnClick="Button2_Click" OnClientClick="return false" Text="Button" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="auto-style12"></asp:Label>
            <br />
            <br />
            <table class="auto-style10">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <iframe id=youtubevid runat="server" width="854" height="480" frameborder="0" allowfullscreen></iframe>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
