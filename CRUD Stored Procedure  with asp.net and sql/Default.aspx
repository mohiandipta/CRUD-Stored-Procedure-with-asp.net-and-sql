<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_Stored_Procedure__with_asp.net_and_sql._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="StyleSheet" href="Style.css" type="text/css"/>


    <div class="heading">
        <h2>LC Precosting</h2>
    </div>

    <table class="nav-justified">
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="PO"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td style="width: 534px">
                <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="LC"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Unit"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                    <asp:ListItem>Akij Bakers Limited</asp:ListItem>
                    <asp:ListItem>Akij Plastics Limited</asp:ListItem>
                    <asp:ListItem>Akij Cables limited</asp:ListItem>
                    <asp:ListItem>Akij Food &amp; Beverage Ltd</asp:ListItem>
                    <asp:ListItem>Akij Gas Company Ltd</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Creation Date"></asp:Label>
            </td>
            <td style="width: 534px">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="VAT"></asp:Label>
            </td>
            <td style="width: 534px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Item Name"></asp:Label>
            </td>
            <td style="width: 534px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Specification"></asp:Label>
            </td>
            <td style="width: 534px">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Cost"></asp:Label>
            </td>
            <td style="width: 534px">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                &nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                &nbsp;</td>
            <td style="width: 534px">
                <asp:Button ID="Button1" CssClass="submitbtn" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                &nbsp;</td>
            <td style="width: 534px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 536px">
                &nbsp;</td>
            <td style="width: 534px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Height="246px" Width="1067px">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    

</asp:Content>
