<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="HookIt.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .imageback {
            background-position: center center;
            background-repeat: no-repeat;
            margin: 0px 0px 0px 0px;
            width: 1000px;
            height: 1000px;
            padding: 0px 0px 0px 0px;
            text-align: center;
            font-family: Bahnschrift;
        }
        .newStyle1 {
            font-family: "Bahnschrift Light";
        }
        .newStyle2 {
            font-family: "Bahnschrift Light";
        }
        .newStyle3 {
            font-family: "Felix Titling";
        }
        .newStyle6 {
            font-family: "Freestyle Script";
            font-size: 79px;
        }
        .newStyle6 {
            font-family: "Freestyle Script";
            font-size: 121px;
        }
        .auto-style3 {
            width: 100%;
            height: 487px;
        }
    </style>
    <script>
        function hooks() {
            document.getElementById('<%= Button1.ClientID %>').click();
        }
        function patt() {
            document.getElementById('<%= Button3.ClientID %>').click();
        }
        function yarn() {
            document.getElementById('<%= Button2.ClientID %>').click();
        }
        function home() {
            document.getElementById('<%= Button4.ClientID %>').click();
        }
        function tut() {
            document.getElementById('<%= Button6.ClientID %>').click();
        }
        
    </script>

</head>
<body id="homebody" runat="server" >
    <form id="form1" runat="server" class="newStyle2">
        <div class="auto-style1">
            <div>
                <h1>
                <strong class="newStyle6">Hook it!</strong></h1>
                <p id="intro" >
                    <strong >Your go to website for crocheting tips, patterns and best hooks and yarns to use </strong>
                </p>
            </div>
            <table class="auto-style3">
                <asp:Button ID="Button4" runat="server" Text="Button" style="display:none" OnClick="resetHomePage"/>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button class="btnAccessories" ID="btnAccessories" runat="server" Height="121px" Text="Accessories" Width="245px" BackColor="White" OnClick="btnHooks_Click" Font-Names="Century" Font-Size="XX-Large" OnMouseOver="javascript:hooks()" OnMouseOut="javascript:home()"/>
                <strong class="newStyle4">
                        <asp:Button ID="Button1" runat="server" style="display:none" Text="Button" OnClick="btnHooks_MouseHover" />
                        
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnYarn" runat="server" Height="121px" Text="Yarn" Width="245px" OnClick="btnYarn_Click" BackColor="White" Font-Names="Century" Font-Size="XX-Large" OnMouseOver="javascript:yarn()" OnMouseOut="javascript:home()"/>
                        <asp:Button ID="Button2" runat="server" Text="Button" style="display:none" OnClick="btnYarn_MouseHover"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnPatterns" runat="server" Height="121px" Text="Pattern" Width="245px" OnClick="btnPatterns_Click" BackColor="White" Font-Names="Century" Font-Size="XX-Large"  OnMouseOver="javascript:patt()" OnMouseOut="javascript:home()"/>
                        <asp:Button ID="Button3" runat="server" Text="Button" style="display:none" OnClick="btnPattern_MouseHover"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnTutorials" runat="server" Height="121px" Text="Tutorial" Width="245px"  BackColor="White" Font-Names="Century" Font-Size="XX-Large"  OnMouseOver="javascript:tut()" OnMouseOut="javascript:home()" OnClick="btnTutorials_Click"/>
                        <asp:Button ID="Button6" runat="server" Text="Button" style="display:none" OnClick="btnTutorial_MouseHover"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p class="newStyle2">
    </p>
</body>
</html>
