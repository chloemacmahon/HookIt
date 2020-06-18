<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternMain.aspx.cs" Inherits="HookIt.PatternMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patterns</title>
    <link rel="stylesheet" type ="text/css" href="Style/PatternMainStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    
    
</head>
<body id="body" runat="server">
    <form id="form1" runat="server">
        <div>
           <table>
                <tr>
                    <td></td>
                    <td class="columncentersize"><asp:Button CssClass="buttonstyle" ID="btnBlock" runat="server" Text="Blocks" OnClick="btnBlock_Click1"/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Button CssClass="buttonstyle" ID="btnBlanket" runat="server" Text="Afghans" OnClick="btnBlanket_Click" />
                    </td>
                    <td class="columncentersize">
                        <h3>
                            <span >Patterns</span></h3>
                        <h3>
                            <span>Choose what type patterns you want to view</span> or if you want to add a pattern click the add a pattern button</h3>
                    </td>
                    <td><asp:Button CssClass="buttonstyle" ID="btnClothes"  runat="server" Text="Clothes" OnClick="btnClothes_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="columncentersize">
                        <asp:Button CssClass="buttonstyle" ID="btnAll" runat="server" Text="Show all" OnClick="btnAll_Click"/>
                        <br />
                        </td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="columncentersize">
                        <asp:Button CssClass="buttonstyle" ID="btnAdd" runat="server" Text="Add Pattern" OnClick="btnAdd_Click" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="btnHome" runat="server" CssClass="smallbutton" OnClick="btnHome_Click" Text="home" />
        </p>
    </form>
</body>
</html>
