<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternMain.aspx.cs" Inherits="HookIt.PatternMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .newStyle1 {
            font-family: "Freestyle Script";
            font-size: 72px;
        }
        .auto-style3 {
            font-size: 50px;
            background-color: #FFFFFF;
        }
        .newStyle2 {
            font-family: "Freestyle Script";
            font-size: 75px;
            background-image: url('Images/blanket.jpg');
            background-repeat: no-repeat;
        }
        .auto-style4 {
            color: #990000;
            background-color: #FFFFFF;
        }
        .newStyle3 {
            font-family: "Freestyle Script";
            font-size: 75px;
        }
        .newStyle4 {
            font-family: "freestyle Script";
        }
        .newStyle5 {
            font-family: "freestyle Script";
            font-size: 75px;
            background-image: url('Images/blanket.jpg');
            background-repeat: no-repeat;
        }
        .auto-style5 {
            font-family: "Freestyle Script";
            font-size: 75px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
        .auto-style8 {
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="newStyle5">
        <div class="auto-style5">
            <div class="auto-style6">
                ...</div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;&nbsp;<asp:Button ID="btnBlock" runat="server" BackColor="White" Font-Names="Century" Font-Size="40pt" ForeColor="#990000" Height="168px" OnClick="btnBlock_Click" Text="Blocks" Width="330px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;<asp:Button ID="btnBlanket" runat="server" BackColor="White" Font-Names="Century" Font-Size="40pt" ForeColor="#990000" Height="188px" Text="Blankets" Width="330px" />
                    </td>
                    <td class="newStyle1"><span>
                        <br />
                        <span class="auto-style4">Patterns</span><span class="auto-style8"> </span></span>
                        <br class="auto-style4" />
                        <span class="auto-style3"><span class="auto-style8">&nbsp;Choose what type patterns you want to view</span><br />
                        <br />
                        </span></td>
                    <td class="auto-style6">&nbsp;&nbsp;<asp:Button ID="btnClothes" runat="server" BackColor="White" Font-Names="Century" Font-Size="40pt" ForeColor="#990000" Height="191px" Text="Clothes" Width="330px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnOther" runat="server" BackColor="White" Font-Names="Century" Font-Size="40pt" ForeColor="#990000" Height="179px" Text="Other" Width="330px" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
            <div class="auto-style6">
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
