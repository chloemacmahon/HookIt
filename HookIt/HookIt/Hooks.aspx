<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hooks.aspx.cs" Inherits="HookIt.Hooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accesories</title>
    <link rel="stylesheet" type ="text/css" href="Style/GeneralStyle.css" />
    <link rel="stylesheet" type ="text/css" href="Style/HookStyle.css" />
    <style type="text/css">
        
    </style>
    <script>
        function show(id) {
            document.getElementById(id).setAttribute("class", " show");
        }
        function hide(id) {
            document.getElementById(id).setAttribute("class", " hide");
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
                    <td class="">Aluminum or steel crochet hook</td>
                    <td class="">Tunisian crochet hook</td>
                    <td class="">Ergonomic crochet hook</td>
                </tr>
                <tr>
                    <td class="">
                        <asp:ImageButton ID="ibtnAluminium" runat="server" Height="221px" ImageUrl="~/Images/crochethooks.jpg" Width="301px" OnMouseOver="javascript:show('Aluminium')" OnMouseOut="javascript:hide('Aluminium')" OnClick="ibtnAluminium_Click"/>
                    </td>
                    <td class="">
                        <asp:ImageButton ID="ibtnTunisian" runat="server" Height="223px" ImageUrl="~/Images/tunisian.jpg" Width="361px" OnMouseOver="javascript:show('Tunisian')" OnMouseOut="javascript:hide('Tunisian')"/>
                    </td>
                    <td class="">
                        <asp:ImageButton ID="ibtnergonomic" runat="server" Height="220px" ImageUrl="~/Images/ergonomic.jpg" Width="286px" OnMouseOver="javascript:show('Ergonomic')" OnMouseOut="javascript:hide('Ergonomic')"/>
                    </td>
                </tr>
                <tr class="auto-style4">
                    <td id="Aluminium" class=" hide">Solid, smooth feeling whle crocheting. Can be used for most type of crocheting</td>
                    <td id= "Tunisian" class=" hide">Special crochet hook that has a stopper at the end of it. Used for tunisian crocheting</td>
                    <td id= "Ergonomic" class=" hide">Used to counteract damage caused by repetitive crocheting</td>
                </tr>
                <tr>
                    <td class=" ">Knook crochet hook</td>
                    <td class=" ">Bamboo crochet hook</td>
                    <td class=" ">Plastic crochet hook</td>
                </tr>
                <tr>
                    <td class="">
                        <asp:ImageButton ID="ibtnknook" runat="server" Height="347px" ImageUrl="~/Images/knook.jpg" Width="286px" OnMouseOver="javascript:show('Knook')" OnMouseOut="javascript:hide('Knook')"/>
                    </td>
                    <td class="">
                        <asp:ImageButton ID="ibtnbamboo" runat="server" Height="320px" ImageUrl="~/Images/bamboohook.jpg" Width="354px" OnMouseOver="javascript:show('Bamboo')" OnMouseOut="javascript:hide('Bamboo')"/>
                    </td>
                    <td class="">
                        <asp:ImageButton ID="ibtnplastic" runat="server" Height="297px" ImageUrl="~/Images/plastic.jpg" Width="312px" OnMouseOver="javascript:show('Plastic')" OnMouseOut="javascript:hide('Plastic')"/>
                    </td>
                </tr>
                <tr>
                    <td id="Knook" class="auto-style5 hide">Used to feed your wool when crocheting</td>
                    <td id="Bamboo" class="auto-style5 hide">Lighter weight hooks without smooth surface</td>
                    <td id="Plastic" class="auto-style5 hide">Light weight hooks with smooth surface</td>
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
