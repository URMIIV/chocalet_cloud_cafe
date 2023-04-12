<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 417px;
        }
        .style3
        {
            width: 251px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <br /><br />
   <center style="background-color: #C4DFE6">
    
    
    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">LOGIN PAGE</h1>
       <br />
      <img src="images/house/12_1.jpg" />
           
    <table align="center" 
        style="border-style: double; border-width: medium; padding: inherit; margin: inherit">
            <tr>
            <td class="style2" 
                    style="border: medium double #000000; padding: inherit; margin: inherit">
                 <asp:Label ID="Label1" runat="server" Text="Username:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066"></asp:Label>
            </td>
           
            <td class="style3"  style="border: medium double #000000; padding: inherit; margin: inherit" align="center">
                <asp:TextBox ID="TextBox1" runat="server" Width="237px" ></asp:TextBox>
            </td>
        </tr><br /><br />
        <tr>
            <td class="style2" 
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#660066 "></asp:Label>
            </td>
            <td class="style3" 
                style="border: medium double #000000; padding: inherit; margin: inherit" 
                align="center">
                <asp:TextBox ID="TextBox2" runat="server" Width="235px" TextMode="Password"></asp:TextBox>
            </td>
        </tr><br /><br />
        <div>



  <tr>

    <td align="center" class="style2" 
          style="border: medium double #000000; padding: inherit; margin: inherit">

      <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/CreateCaptcha.aspx?New=1" 
            Height="82px" Width="336px"/>

     </td>

 

  

    <td align="center" class="style3" 
          style="border: medium double #000000; padding: inherit; margin: inherit">

      <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>

     </td>

    

    

    

      </td>

     </tr>

     <tr>

      <td align="center" class="style2" 
             style="border: medium double #000000; padding: inherit; margin: inherit">

    

    

    

       <asp:Label ID="lblMessage" runat="server"></asp:Label>

       </td>

       </tr>

    

    </div>


        <tr>
            <td class="style2" 
                style="border: medium double #000000; padding: inherit; margin: inherit">
             <asp:Button ID="Button1" runat="server" Text="Submit" Width="118px" 
                    onclick="Button1_Click" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Large" ForeColor="#660066" />
                    
                <asp:Button ID="Button3" runat="server" Text="Cancel" Width="124px" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660066" />
               </td>
            <td class="style3" align="center" 
                style="border: medium double #000000; padding: inherit; margin: inherit">
                    
                &nbsp;&nbsp;&nbsp;&nbsp;
                    
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/registration.aspx" Font-Bold="True" Font-Underline="True" Font-Italic="True" 
                    Font-Size="X-Large" ForeColor="#900C3F" >New User</asp:HyperLink>
            </td>
        </tr>
    </table>

<br /><br />
 
 
 
 
 
</center>
</center>
</asp:Content>

