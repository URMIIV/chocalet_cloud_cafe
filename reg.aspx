<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 39px;
        }
        .style3
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center style="background-color: #C4DFE6">
 <br /><br />
<center>    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">EDIT DETAIL</h1>
</center>
    <br /><br />
   
   
    <center>
    <table  align="center"  
        style="border-style: double; border-width: medium; padding: inherit; margin: inherit" >
      
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True" 
                    Font-Italic="False" Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="fname" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="lname" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="UserName:" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="username" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="password" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label15" runat="server" Text="Gender:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
             <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                 
                 
                 
                 <asp:TextBox ID="gender" runat="server" Font-Bold="True" Font-Size="X-Large" 
                     Width="284px"></asp:TextBox>
                 
                 
                 
            </td>
        </tr>
        
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label6" runat="server" Text="Date Of Birth:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="dateofbrith" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label7" runat="server" Text="Address:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td border-style: double; border-width: medium; padding: inherit; margin: 
                inherit align="center" 
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
                <asp:TextBox ID="address" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label8" runat="server" Text="City:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td border-style: double; border-width: medium; padding: inherit; margin: 
                inherit align="center" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                class="style3">
                <asp:TextBox ID="city" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label9" runat="server" Text="State:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td class="style2" align="center" 
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
                <asp:TextBox ID="state" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label10" runat="server" Text="Mobile Number:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="mobilenumber" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
          <!---  <tr>
            <td class="style3">
                <asp:Label ID="Label13" runat="server" Text="len-number:" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
        <td>
                <asp:TextBox ID="len" runat="server"></asp:TextBox>
            </td
        </tr>>--->
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:Label ID="Label11" runat="server" Text="Email:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
            <td border-style: double; border-width: medium; padding: inherit; margin: 
                inherit align="center" 
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
                <asp:TextBox ID="email" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="style3" 
                
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                
                &nbsp;</td>
            <td border-style: double; border-width: medium; padding: inherit; margin: 
                inherit align="center" 
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
                 
                 <asp:Button ID="btnupdate" runat="server" Text="Update" 
                onclick="btnupdate_Click" Font-Bold="True" Font-Italic="True" 
                Font-Size="X-Large" ForeColor="#660066" />
            </td>
        </tr>
         
        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
           </td></tr>
    </table>
    
<br /><br />
</center>

</center>
</asp:Content>

