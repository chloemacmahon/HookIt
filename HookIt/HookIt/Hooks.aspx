<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hooks.aspx.cs" Inherits="HookIt.Hooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 26px;
            text-align: center;
        }
        .newStyle1 {
            font-family: "Freestyle Script";
            font-size: 90px;
        }
        .newStyle2 {
            font-family: "Freestyle Script";
            font-size: xx-large;
        }
        .newStyle3 {
            background-color: #808000;
        }
        .newStyle4 {
            background-color: #808000;
            color: #FFFFCC;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .hide {
            visibility:hidden;
        }
        .show {
            visibility:visible;
        }
        .newStyle5 {
            font-family: "Freestyle Script";
            font-size: 60px;
        }
        .auto-style5 {
            height: 40px;
        }
    </style>
    <script>
        function show(id) {
            document.getElementById(id).setAttribute("class", "auto-style2 show");
        }
        function hide(id) {
            document.getElementById(id).setAttribute("class", "auto-style2 hide");
        }
    </script>
</head>
<body class="newStyle4">
    <h1 style="text-align: center"><span class="newStyle1">Accessories</span></h1>
    <h2 style="text-align: center">
        <span class="newStyle5">Chrochet hooks</span></h2>
    <p style="text-align: center">
        Crochet hooks range in sizes from 2.25 mm to 25 mm. These sizes are used alongside different types of yarn to crochet patterns with different textures. The following crochet hooks are used for different reasons. Hover over the images to view more information about that type of crochet hook</p>
    <form id="form1" runat="server">
        <p>
            &nbsp; &nbsp;<table class="newStyle2" style="width: 100%;">
                <tr>
                    <td class="auto-style2">Aluminum or steel crochet hook</td>
                    <td class="auto-style2">Tunisian crochet hook</td>
                    <td class="auto-style2">Ergonomic crochet hook</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnAluminium" runat="server" Height="221px" ImageUrl="~/Images/crochethooks.jpg" Width="301px" OnMouseOver="javascript:show('Aluminium')" OnMouseOut="javascript:hide('Aluminium')" OnClick="ibtnAluminium_Click"/>
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnTunisian" runat="server" Height="223px" ImageUrl="~/Images/tunisian.jpg" Width="361px" OnMouseOver="javascript:show('Tunisian')" OnMouseOut="javascript:hide('Tunisian')"/>
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnergonomic" runat="server" Height="220px" ImageUrl="~/Images/ergonomic.jpg" Width="286px" OnMouseOver="javascript:show('Ergonomic')" OnMouseOut="javascript:hide('Ergonomic')"/>
                    </td>
                </tr>
                <tr class="auto-style4">
                    <td id="Aluminium" class="auto-style2 hide">bfbbbbb</td>
                    <td id= "Tunisian" class="auto-style2 hide">bfbbbbb</td>
                    <td id= "Ergonomic" class="auto-style2 hide">fffff</td>
                </tr>
                <tr>
                    <td class="auto-style3">Knook crochet hook</td>
                    <td class="auto-style3">Bamboo crochet hook</td>
                    <td class="auto-style3">Plastic crochet hook</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnknook" runat="server" Height="347px" ImageUrl="~/Images/knook.jpg" Width="286px" OnMouseOver="javascript:show('Knook')" OnMouseOut="javascript:hide('Knook')"/>
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnbamboo" runat="server" Height="320px" ImageUrl="~/Images/bamboohook.jpg" Width="354px" OnMouseOver="javascript:show('Bamboo')" OnMouseOut="javascript:hide('Bamboo')"/>
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibtnplastic" runat="server" Height="297px" ImageUrl="~/Images/plastic.jpg" Width="312px" OnMouseOver="javascript:show('Plastic')" OnMouseOut="javascript:hide('Plastic')"/>
                    </td>
                </tr>
                <tr class="auto-style4">
                    <td id="Knook" class="auto-style5 hide">ggggggggggggg</td>
                    <td id="Bamboo" class="auto-style5 hide">gggggggggggggg</td>
                    <td id="Plastic" class="auto-style5 hide">ggggggggggggg</td>
                </tr>
            </table>
        </p>
        <div style="text-align: right">
            &nbsp;<br />
&nbsp;<asp:Button ID="btnHomepage" runat="server" BackColor="White" Font-Names="Century" Height="48px" OnClick="btnHomepage_Click" Text="Return to home page" Width="184px" />
        </div>
    </form>
</body>
</html>
