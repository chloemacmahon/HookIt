<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternAdd.aspx.cs" Inherits="HookIt.PatternAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Freestyle Script";
            font-size: 50px;
            background-image: url('Images/Pattern6.jpg');
        }
        .auto-style1 {
            font-family: "Freestyle Script";
            font-size: 50px;
            background-image: url('Images/Pattern6.jpg');
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 338px;
        }
        .auto-style3 {
            font-size: 18pt;
            text-align: left;
        }
        .auto-style4 {
            width: 62px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style7 {
            font-size: 18pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;<span class="auto-style6"> Pattern Upload </span>
            <br class="auto-style6" />
            <span class="auto-style6">These are the tutorials not in our database that users have requested:
            <br />
            <br />
            </span>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Font-Names="Freestyle Script" Font-Size="X-Large" Height="124px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="570px"></asp:ListBox>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3"><span class="auto-style5">
                        <br />
                        What is the name of the pattern: </span>
                        <asp:TextBox ID="txtName" runat="server" Font-Names="Century" Font-Size="15pt"></asp:TextBox>
                        <br />
&nbsp;<asp:CheckBox ID="CheckBoxHasTut" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Is there a Tutorial on youtube?" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblYoutube" runat="server" Text="Youtube link to tutorial: "></asp:Label>
                        <asp:TextBox ID="txtYoutubelink" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text="Description of the tutorial: "></asp:Label>
&nbsp;<asp:TextBox ID="txtDescription" runat="server" MaxLength="200" Width="491px"></asp:TextBox>
                        <br />
                        Category: <asp:DropDownList ID="DropDownListCategory" runat="server">
                            <asp:ListItem>Afghans</asp:ListItem>
                            <asp:ListItem>Blocks</asp:ListItem>
                            <asp:ListItem>Clothes</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        If there is a picture of the finished product please upload it here: " Font-Names="Freestyle Script" Font-Size="18pt" />
                        <br />
                        Please upload a file with the pattern in (Please only upload pdf or textfiles):
                        <asp:FileUpload ID="FileUploadFile" runat="server" Font-Names="Freestyle Script" Font-Size="Large" />
                        <br />
                        <asp:Button ID="btnAdd" runat="server" Font-Names="Freestyle Script" Font-Size="20pt" Height="40px" OnClick="btnAdd_Click" Text="Add Pattern" Width="196px" />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
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
        </div>
    </form>
</body>
</html>
