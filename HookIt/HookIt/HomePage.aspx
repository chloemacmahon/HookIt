<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="HookIt.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/HomePageStyle.css" />
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
<body class="center" id="homebody" runat="server" >
    <form id="form1" runat="server" class="newStyle2">
        <div>
            <div>
                <h1>Hook it!</h1>
                <h2 id="intro" >Your go to website for crocheting tips, patterns and best hooks and yarns to use</h2>
            </div>
            <table>
                <asp:Button ID="Button4" runat="server" Text="Button" style="display:none" OnClick="resetHomePage"/>
                <tr>
                    <td class="largecells">
                        <asp:Button CssClass="largebutton" class="btnAccessories" ID="btnAccessories" runat="server" Text="Accessories" OnClick="btnHooks_Click" OnMouseOver="javascript:hooks()" OnMouseOut="javascript:home()" />
                <strong >
                        <asp:Button ID="Button1" runat="server" style="display:none" Text="Button" OnClick="btnHooks_MouseHover" />
                        
                        </strong>
                    </td>
                    <td class="largecells">
                        <asp:Button CssClass="largebutton" ID="btnPatterns" runat="server" Text="Pattern" OnClick="btnPatterns_Click" OnMouseOver="javascript:patt()" OnMouseOut="javascript:home()" />
                        </td>
                </tr>
                <tr>
                    <td class="largecells">
                        <asp:Button CssClass="largebutton" ID="btnYarn" runat="server" Text="Yarn" OnClick="btnYarn_Click" OnMouseOver="javascript:yarn()" OnMouseOut="javascript:home()" />
                        <asp:Button ID="Button2" runat="server" Text="Button" style="display:none" OnClick="btnYarn_MouseHover"/>
                        <asp:Button ID="Button3" runat="server" Text="Button" style="display:none" OnClick="btnPattern_MouseHover"/>
                        <asp:Button ID="Button6" runat="server" Text="Button" style="display:none" OnClick="btnTutorial_MouseHover"/>
                    </td>
                    <td class="largecells">
                        <asp:Button CssClass="largebutton" ID="btnTutorials" runat="server" Text="Tutorial" OnMouseOver="javascript:tut()" OnMouseOut="javascript:home()" OnClick="btnTutorials_Click" />
                    </td>
                </tr>
                               
            </table>
        </div>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/colourwheel.gif" OnClick="ImageButton1_Click" style="text-align: right" Width="10%" />
    </p>
    </form>
    </body>
</html>
