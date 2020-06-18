<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatternAdd.aspx.cs" Inherits="HookIt.PatternAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a pattern</title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/PatternAddStyle.css"/>
</head>
<body class="center" id="body" runat="server">
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;<span> Pattern Upload </span>
            <br/>
            </h1>
            <h2>
            <span>These are the tutorials not in our database that users have requested:</span><br />
            <asp:ListBox CssClass="buttonstyle" ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            <br />
            <span>
                        <br />
                        </h2>
                        <p>
                        What is the name of the pattern: </span>
                        <asp:TextBox CssClass="buttonstyle" ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter the name of the pattern"></asp:RequiredFieldValidator>
                        <br />
&nbsp;<asp:CheckBox ID="CheckBoxHasTut" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Is there a Tutorial on youtube?" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblYoutube" runat="server" Text="Youtube link to tutorial: "></asp:Label>
                        <asp:TextBox CssClass="buttonstyle" ID="txtYoutubelink" runat="server"></asp:TextBox>
                        <br />
                        Category: <asp:DropDownList ID="DropDownListCategory" runat="server">
                            <asp:ListItem>Afghans</asp:ListItem>
                            <asp:ListItem>Blocks</asp:ListItem>
                            <asp:ListItem>Clothes</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Please upload a file with the pattern in (Please only upload textfiles):
                        <asp:FileUpload CssClass="buttonstyle" ID="FileUploadFile" runat="server" Width="395px" />
                        <br />
                        <br />
                        <asp:Button CssClass="buttonstyle" ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Pattern" />
                        </p>
            <br />
        </div>
    </form>
</body>
</html>
