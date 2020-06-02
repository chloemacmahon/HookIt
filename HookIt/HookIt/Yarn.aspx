<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yarn.aspx.cs" Inherits="HookIt.Yarn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Yarn.css">
    <title></title>
    <style>
        
        .auto-style1 {
            width: 100%;
        }
        
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <div style="text-align: right">
            <h1><strong>Yarn</strong></h1>
        </div>
        <div style="text-align: right"" class="auto-style1">
            <h2 >
                <strong style="color: #006666">Choose the yarn type you want to know more about </strong>
            </h2>
            <div>
                <p>
                    <span>&nbsp;</span><strong><asp:DropDownList ID="DropDownList1" runat="server"  Font-Names="Freestyle Script" Font-Size="45px" Height="50px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="210px" AutoPostBack="True">
                        <asp:ListItem>Acrylic</asp:ListItem>
                        <asp:ListItem>Cotton</asp:ListItem>
                        <asp:ListItem>Lama Wool</asp:ListItem>
                        <asp:ListItem>Merino</asp:ListItem>
                        <asp:ListItem>Mohair</asp:ListItem>
                    </asp:DropDownList>
                    </strong><span class="auto-style3">&nbsp; </span></p>
                <p>
                    Sea<span class="auto-style3">rch:
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;<asp:DropDownList ID="DropDownListSearch" runat="server" Font-Names="Freestyle Script" Font-Size="16pt" Width="112px">
                        <asp:ListItem Value="Name">Wool Name</asp:ListItem>
                        <asp:ListItem>Type</asp:ListItem>
                        <asp:ListItem>Thickness</asp:ListItem>
                        <asp:ListItem>Weight</asp:ListItem>
                        <asp:ListItem>Meter</asp:ListItem>
                        <asp:ListItem>Brand</asp:ListItem>
                        <asp:ListItem>Colour</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:CheckBox ID="chkAll" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Search all wool types" />
                    &nbsp;</span></p>
                <p>
                    <span class="auto-style3">&nbsp;<asp:Button ID="btnSearch" runat="server" Font-Names="Freestyle Script" Font-Size="16pt" OnClick="btnSearch_Click" Text="Search" Width="126px" />
                    </span></p>
        </div>
            <div>
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" Font-Size="24pt" ForeColor="#000099" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
&nbsp;</p>
                <asp:GridView ID="GridView1" runat="server" ForeColor="Black" Width="80%" style="margin-left: 20%" >
                            </asp:GridView>
        </div>
            <p>
                &nbsp;
               
&nbsp; <strong>&nbsp;&nbsp; </strong>
            </p>
            
        </div>
    </form>
</body>
</html>
