<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="admin_addproduct" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 444px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center style="background-color: #C4DFE6">
<br /><br />
<center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;" 
         align="center">ADD CATGORY</h1>
</center>

<center>
    <table border="1" width="400" height="500" align="center">
    
   
    
    <tr><td align="center" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label2" runat="server" 
            Text="Select Category Name:" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#660066"></asp:Label></td>
    <td align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:DropDownList ID="ddlcat" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="cat_name" DataValueField="cat_id" onselectedindexchanged="ddlcat_SelectedIndexChanged"></asp:DropDownList></td></tr>
            
    
    <tr><td align="center" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label1" runat="server" Text="Product Name:" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
    <td align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:TextBox ID="txtpname" runat="server"></asp:TextBox></td></tr>

    <tr><td align="center" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label4" runat="server" Text="Description:" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
    <td align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td></tr>
    
    <tr><td align="center" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label5" runat="server" Text="Price:" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
    <td align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td></tr>
    
    <tr><td align="center" class="style1" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label6" runat="server" Text="Product Image:" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
    <td align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000"><asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" 
            Font-Italic="True" Height="22px" Width="208px" /></td></tr>
    
    <tr><td colspan="2" align="center" 
            style="padding: inherit; margin: inherit; border: medium double #000000">
        <asp:HiddenField ID="HiddenField1" runat="server" 
            onvaluechanged="HiddenField1_ValueChanged" />
        <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066" /></td></tr>
    
    </table>
    </center>
</center>
<br /><br />
</asp:Content>

