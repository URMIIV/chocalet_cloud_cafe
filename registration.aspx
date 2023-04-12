<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" Title="Untitled Page"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 25px;
        }
        .style3
        {
            width: 330px;
        }
        .style4
        {
            height: 25px;
            width: 330px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">
    <br /><br />
<center>    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">REGISTRATION</h1>
</center>
    <br /><br />
   
    <center>
        <img src="images/house/1_1.jpeg" height="500" width="250" 
            style="border: medium solid #000000" />
        <br /><br /> 
    </center>
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
                <asp:Label ID="Label4" runat="server" Text="Confirm Password:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
             <td style="border-style: double; border-width: medium; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="cpassword" runat="server" Font-Size="X-Large"></asp:TextBox>
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
                 <asp:RadioButton ID="rb1" runat="server" Text="Male"  GroupName="gender" 
                     Font-Bold="True" Font-Size="X-Large" ForeColor="#993399"/>
                 &nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="rb2" runat="server" Text="Female" GroupName="gender" 
                     Font-Bold="True" Font-Size="X-Large" ForeColor="#993399" />
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
                <asp:TextBox ID="dob" runat="server" Font-Size="X-Large"></asp:TextBox>
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
                <asp:TextBox ID="add" runat="server" Font-Size="X-Large"></asp:TextBox>
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
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
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
                <asp:TextBox ID="mob" runat="server" Font-Size="X-Large"></asp:TextBox>
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
                style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                    Font-Size="XX-Large" ForeColor="#660066" Font-Italic="True" />
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" 
                    Font-Size="XX-Large" onclick="Button2_Click" ForeColor="#660066" 
                    Font-Italic="True" />
            </td>
        </tr>
    </table>
<br /><br />
</center>
</center>
</asp:Content>

