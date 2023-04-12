<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="editcat.aspx.cs" Inherits="admin_editcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">
 <center>
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;"> Edit Category</h1>
</center>
<center>
<table border="1" width="300" height="200" align="center">
        
        
        <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Category Name:" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
            <td><asp:TextBox ID="txtcat" runat="server" Text="" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:TextBox></td></tr>
                    <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Category Image:" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server"  Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066" Width="234px"  />
            </td></tr>
        
               
                
   
                    
        
        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Button ID="btnupdate" runat="server" Text="Update" 
                onclick="btnupdate_Click" Font-Bold="True" Font-Italic="True" 
                Font-Size="X-Large" ForeColor="#660066" /></td></tr>
    </table>
    </center>
    <br /><br />
    </center>
</asp:Content>

