<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yarn.aspx.cs" Inherits="HookIt.Yarn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Freestyle Script";
        }
        .newStyle2 {
            font-family: "Freestyle Script";
            background-image: url('Images/yarn3.jpg');
            background-repeat: no-repeat;
        }
        .newStyle3 {
            font-family: "Freestyle Script";
            background-image: url('Images/yarn3.jpg');
            background-repeat: no-repeat;
        }
        .auto-style1 {
            font-size: 72px;
        }
        .auto-style2 {
            font-weight: normal;
            font-size: 100px;
            height: 111px;
            width: 1499px;
            margin-top: 0px;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            height: 66px;
        }
        .auto-style5 {
            text-align: left;
            width: 230px;
        }
        .auto-style6 {
            width: 230px;
            height: 139px;
        }
        .auto-style7 {
            height: 66px;
            width: 230px;
        }
        .auto-style8 {
            font-weight: normal;
            font-size: 100px;
            height: 65px;
            width: 1507px;
            margin-top: 0px;
        }
        .auto-style9 {
            height: 139px;
        }
        .auto-style10 {
            height: 139px;
            width: 1046px;
        }
        .auto-style11 {
            height: 66px;
            width: 1046px;
        }
        .auto-style12 {
            width: 1046px;
        }
        .auto-style13 {
            width: 99%;
            height: 397px;
            margin-right: 0px;
        }
        .auto-style14 {
            height: 46px;
            width: 1499px;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server" class="newStyle3" style="font-family: 'Freestyle Script'; font-size: 34px; background-color: #669999; color: #FFFFFF">
        <div style="text-align: right">
            <h1 class="auto-style2"><strong>Yarn</strong></h1>
        </div>
        <div style="text-align: right">
            <p class="auto-style14" style="background-color: #FFFFFF">
                <strong style="color: #006666">Choose the yarn type you want to know more about </strong>
            </p>
            <div style="text-align: right">
                <p class="auto-style8">
                    <span class="auto-style3">&nbsp;</span><strong><asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" Font-Names="Freestyle Script" Font-Size="45px" Height="50px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="210px">
                        <asp:ListItem>Acrylic</asp:ListItem>
                        <asp:ListItem>Cotton</asp:ListItem>
                        <asp:ListItem>Lama Wool</asp:ListItem>
                        <asp:ListItem>Merino</asp:ListItem>
                        <asp:ListItem>Mohair</asp:ListItem>
                    </asp:DropDownList>
                    </strong><span class="auto-style3">&nbsp; &nbsp;</span></p>
        </div>
            <p>
&nbsp;&nbsp;
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style10">&nbsp;
                            <asp:Button ID="btnYarnType" runat="server" BackColor="White" Font-Names="Centaur" Font-Size="64px" Height="126px" Text="Button" Width="270px" />
&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Button ID="btnHomepage" runat="server" BackColor="White" Font-Names="Century" Height="48px" OnClick="btnHomepage_Click" Text="Return to home page" Width="184px" />
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                    </tr>
                </table>
&nbsp; <strong>&nbsp;&nbsp; </strong>
            </p>
            <span class="auto-style1">&nbsp;</span><br />
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
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
