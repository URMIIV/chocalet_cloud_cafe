<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table align="center" class="style1" style="margin-top:50px">
   <tr><td align="center">
                    <asp:Label ID="Label1" runat="server" Text="Change Password" Font-Bold="True" Font-Size="X-Large" ForeColor="#75A54B"></asp:Label>
            </td>
        </tr>
        </table>
         <table class="" height="200px" width="300px" style="margin-left:60px; margin-top:20px">
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Old Password" Font-Bold="True"  ForeColor="#F8865B" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtold" runat="server" Font-Bold="True" Font-Size="Larger" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True"  ForeColor="#F8865B" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnew" runat="server" Font-Bold="True" Font-Size="Larger" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Confirm New Password" Font-Bold="True"  ForeColor="#F8865B" Font-Size="Larger"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtconfirm" runat="server" Font-Bold="True" Font-Size="Larger" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        
            <tr align="center">
            <td class="style3" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click"/>
                <br />
                <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>



</asp:Content>

