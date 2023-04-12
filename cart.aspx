<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
<%--<form id="form1" runat="server">--%>
<center style="background-color: #C4DFE6">
  <center>
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">CART</h1>
</center>
<br /><br />
<center>
<table border="1" align="center" 
        style="border: medium solid #000000; table-layout: inherit; border-collapse: inherit; ">
    <tr><td colspan="2"><h1 style="font-size: x-large; font-weight: bold; color: #660066"  >
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066"
        GridLines="Both" DataKeyNames="cart_id" EmptyDataText="No Data Found" 
        Width="350" AutoGenerateColumns="False">
        
         <Columns>
             <asp:TemplateField  HeaderText="pro_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="pro_name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Qty"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("quantity") %>' Width="30" ontextchanged="TextBox1_TextChanged"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="amount"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("c_img") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("cart_id")  %>' ><h1 style="font-size: x-large; font-weight: bold; color: #660066">
                 Edit</h1></asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/admin/images/uu/000.jpg" Height="50" Width="50" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></td></tr>
    
    <tr><td align="center" valign="middle">
        <br /><asp:Label ID="Label5" runat="server" Text="Total:" Font-Bold="True" Font-Italic="true" Font-Size="XX-Large" ForeColor="#660066" ></asp:Label>
        <br />
        <br /></td>
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Italic="true" Font-Size="XX-Large" ForeColor="#660066" ></asp:Label></td></tr>
     
    <tr><td colspan="2" align="center"><br />
        
        <asp:Button ID="btn_payment" 
            runat="server" Text="Payment" Font-Bold="true" Font-Italic="true" Font-Size="XX-Large" ForeColor="#660066" onclick="btn_payment_Click" />
      
        <asp:Button ID="btn_red" runat="server" Text="Continue" 
            Font-Bold="true" Font-Italic="true" Font-Size="XX-Large" ForeColor="#000066" 
            onclick="btn_red_Click" Width="169px"  />
    </td>
    </tr>
    
    </table>
    </center>
    <%--</form>--%>
    </center>
    <br /><br />






    </asp:Content>