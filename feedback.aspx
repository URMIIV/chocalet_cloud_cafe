<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 32%;
            height: 236px;
        }
        .style2
        {
            width: 221px;
        }
        .style3
        {
            width: 221px;
            height: 29px;
        }
        .style4
        {
            height: 29px;
            width: 175px;
        }
        .style5
        {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br />
   <center style="background-color: #C4DFE6">
  <center>     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">FEEDBACK</h1>
</center>
   <br />
   <center>
   
    <img src="images/pantting/38.jpg"500" width="200" />
   <br /><br />
   
    <table class="style1" align="center" 
           style="border: medium double #000000; padding: inherit; margin: inherit"  >
        <tr>
            <td class="style2" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#660066"></asp:Label>
            </td>
            <td class="style5" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:TextBox ID="name" runat="server" Height="29px" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" align="center" 
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Label ID="Label2" runat="server" Text="Title:" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#660066"></asp:Label>
            </td>
            <td class="style5" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:TextBox ID="title" runat="server" Height="29px" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Label ID="Label3" runat="server" Text="Description:" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#660066"></asp:Label>
            </td>
            <td class="style5" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:TextBox ID="des" runat="server" Height="29px" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Email:" ForeColor="#660066"></asp:Label>
            </td>
            <td class="style5" align="center" 
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:TextBox ID="email" runat="server" Height="29px" Width="152px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit;">
                <asp:Label ID="Label6" runat="server" Text="Contact no:" Font-Size="Large" 
                    ForeColor="#660066" Font-Bold="True"></asp:Label>
            </td>
            <td class="style4" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:TextBox ID="cno" runat="server" Height="29px" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                <asp:Button ID="Button1" runat="server" EnableTheming="True" Text="Submit" 
                    Font-Bold="True" ForeColor="#660066" Font-Size="Large" 
                    onclick="Button1_Click" />
            </td>
                    
                    <td class="style4" align="center"
                style="border: medium double #000000; padding: inherit; margin: inherit">
                
                <asp:Button ID="Button3" runat="server" Text="Cancel" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#660066" />
                </td>
            
        </tr>
    </table></center>
    <br /><br />
    </center>
</asp:Content>

