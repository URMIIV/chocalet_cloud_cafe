<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="admin_addcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 177px;
            height: 136px;
        }
        .style2
        {
            width: 177px;
            height: 142px;
        }
        .style3
        {
            height: 142px;
        }
        .style4
        {
            height: 136px;
        }
        .style5
        {
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">
<br />
<center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;" 
         align="center">ADD CATGORY</h1>
</center>
<br /><br /><br />
<center>
 <table border="1" width="300" height="200" align="center">
       
        
        <tr><td class="style1" 
                style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label2" runat="server" Text="Category Name:" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
            <td align="center" class="style4" 
                style="padding: inherit; margin: inherit; border: medium double #000000">
                <asp:TextBox ID="TextBox1" runat="server" Width="213px" ></asp:TextBox></td></tr>
       
        <tr><td class="style2" 
                style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Label ID="Label1" runat="server" Text="Category Image:" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="#660066"></asp:Label></td>
            <td align="center" class="style3" 
                style="padding: inherit; margin: inherit; border: medium double #000000">
                <asp:FileUpload ID="FileUpload1" runat="server"  Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066" Width="234px"  />
            </td></tr>
        
               
                <tr><td colspan="2" align="center" 
                        style="padding: inherit; margin: inherit; border: medium double #000000">
        <asp:HiddenField ID="HiddenField1" runat="server" 
            onvaluechanged="HiddenField1_ValueChanged" /> </td></tr>
            
            <tr><td colspan="2" align="center" class="style5" 
                    style="padding: inherit; margin: inherit; border: medium double #000000"><asp:Button ID="btnadd" runat="server" 
                Text="Add" onclick="btnadd_Click" Font-Bold="True" Font-Italic="True" 
                Font-Size="X-Large" ForeColor="#660066" /></td></tr>
      
   
    </table>
    </center>
    <br /><br />
    </center>
</asp:Content>

