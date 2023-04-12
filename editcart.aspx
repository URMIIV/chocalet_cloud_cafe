<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editcart.aspx.cs" Inherits="editcart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<form id="frm1" runat="server">--%><br /><br />
<center style="background-color: #C4DFE6">
 <center>
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;"> EDIT CART</h1>
</center>
<br /><br />

<center>
<table border="1" align="center" 
        style="border: medium solid #000000; table-layout: inherit; border-collapse: inherit; ">
    
<tr><td><asp:Label ID="Label1" runat="server" Text="Product Id" Font-Bold="True"  
        ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="lblpro_id" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993399"></asp:Label></td></tr>

<tr><td><asp:Label ID="Label2" runat="server" Text="Product Name" Font-Bold="True"  
        ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="lblname" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993399"></asp:Label></td></tr>

<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Product Price" 
        Font-Bold="True"  ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="lblprice" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993399"></asp:Label></td></tr>

<tr><td>
    <asp:Label ID="Label4" runat="server" Text="Enter Quantity" 
        Font-Bold="True"  ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="txtquantity" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993399" ontextchanged="txtquantity_TextChanged"></asp:TextBox></td></tr>

<tr><td>
    <asp:Label ID="Label7" runat="server" Text="Total Amount" Font-Bold="True"  
        ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="lblamount" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993399"></asp:Label></td></tr>

<tr><td valign="top">
    <asp:Label ID="Label9" runat="server" Text="Image" 
        Font-Bold="True"  ForeColor="#660066" Font-Size="X-Large"></asp:Label></td><td>&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" height="100" Width="100"/></td></tr>


<tr><td colspan="2" align="center">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="btnupdate" runat="server" Text="Update" 
        onclick="btnupdate_Click" Font-Bold="True" Font-Italic="True" 
        Font-Size="XX-Large" Font-Underline="False" ForeColor="#660066" /></td></tr>
</table>
</center>
<%--</form>--%>
<br /><br />
</center>

</asp:Content>

