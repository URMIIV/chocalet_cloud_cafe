<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 134px;
        }
        .style2
        {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="background-color: #C4DFE6">
   <br /><br />
    <center>
      <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">ADMIN LOG</h1>
</center>
<br /><br />
<center>
<table cellpadding="10" cellspacing="10" align="center">
    <tr>
    <td style="padding: inherit; margin: inherit; border: medium double #000000" 
            align="center"><asp:Label ID="Label1" runat="server" Text="User:" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="#660066" ></asp:Label></td>
    <td class="style2" 
            style="padding: inherit; margin: inherit; border: medium double #000000" 
            align="center">
        <asp:TextBox ID="txtuname" runat="server" Font-Size="Larger" 
            ForeColor="#993399"></asp:TextBox>
        </td>    
    </tr>
    
    <tr><td style="padding: inherit; margin: inherit; border: medium double #000000" 
            align="center">
        <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="#660066"></asp:Label>
        </td><td class="style2" 
            style="padding: inherit; margin: inherit; border: medium double #000000" 
            align="center">
            <asp:TextBox ID="txtpass" runat="server" Font-Size="Larger" ForeColor="#993399" 
                TextMode="Password"></asp:TextBox>
        </td></tr>
    
    <tr align=center><td colspan="2" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000" 
            align="center">
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Larger"></asp:Label>
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" 
            
            style="height: 26px;  Font-Bold:True; Font-Italic:True; Font-Size:Medium; ForeColor:#660066; Height:50px; Width:170px" 
            Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#660066" />
        </td></tr>
    </table>
</center>
<br /><br /></center>
</asp:Content>

