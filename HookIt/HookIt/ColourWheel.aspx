<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColourWheel.aspx.cs" Inherits="HookIt.ColourWheel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Colour Wheel</title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/ColorWheelStyle.css" />
</head>
<body id="body" runat="server" class="center">
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" CssClass="Menu" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/HomePage.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Yarn.aspx" Text="Yarn" Value="Yarn"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PatternMain.aspx" Text="Pattern" Value="Pattern">
                        <asp:MenuItem NavigateUrl="~/PatternAdd.aspx" Text="Add a Pattern" Value="Add a Pattern"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/PatternView.aspx" Text="View Patterns" Value="View Patterns"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
            <h1>Colour Wheel</h1>
            <h2>How many colours are in your blanket:
                <asp:TextBox ID="txtNumberColours" runat="server" CssClass="smallbutton" Width="95px">1</asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNumberColours" ErrorMessage="Enter a number between 1 and 10" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </h2>
            <asp:Button ID="btnCreateColours" runat="server" CssClass="smallbutton" OnClick="btnCreateColours_Click" Text="Create colours" />
            <br />
            <br />
                <input id="colour1" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour2" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour3" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour4" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour5" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour6" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour7" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour8" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour9" runat="server" type="color" name="colour2" value="#c48484" />
                <input id="colour10" runat="server" type="color" name="colour2" value="#c48484" />
                <br />
            <br />
            <asp:Button ID="btnChangeColour" runat="server" CssClass="smallbutton" OnClick="btnChangeColour_Click" Text="Change Colours" />
            <br />
            &nbsp;<br />
        <asp:Panel ID="pnlShowColours" runat="server" CssClass="largePanel" Height="174px">
        </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
