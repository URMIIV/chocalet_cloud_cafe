<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br />
<%--<form id="frm1" runat="server">--%>
<center style="background-color: #C4DFE6">
<center>
    
    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">PRODUCT-DETAIL</h1>
    <br /><br />


<table border="6" align="center" frame="border" >
<tr ><td rowspan="6" align="center" valign="middle"><asp:Image ID="Image1" runat="server" Height="100" Width="100"/>
    <asp:HiddenField ID="hdnscat" runat="server" />
    <asp:HiddenField ID="hdncat" runat="server" />
    
    </td>
<td><asp:Label ID="Label1" runat="server" Text="Product Id" Font-Bold="True" 
        Font-Size="Large" ForeColor="#660066"></asp:Label></td>
<td class="style1"><asp:Label ID="lblpro_id" runat="server" Text="" Font-Bold="True" 
        Font-Size="Large" ForeColor="#993399"></asp:Label></td>


</tr>

<tr>
<td><asp:Label ID="Label3" runat="server" Text="Product name" Font-Bold="True" 
        Font-Size="Large" ForeColor="#660066"></asp:Label></td>
<td class="style1"><asp:Label ID="lbl_name" runat="server" Font-Bold="True" 
        Font-Size="Large" ForeColor="#993399"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label5" runat="server" Text="Description" Font-Bold="True" 
        Font-Size="Large" ForeColor="#660066"></asp:Label></td>
<td class="style1"><asp:Label ID="lbl_dec" runat="server" Font-Bold="True" 
        Font-Size="Large" ForeColor="#993399"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label7" runat="server" Text="Price" Font-Bold="True" 
        Font-Size="Large" ForeColor="#660066"></asp:Label></td>
<td class="style1"><asp:Label ID="lbl_price" runat="server" Font-Bold="True" 
        Font-Size="Large" ForeColor="#993399"></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="Quantity" Font-Bold="True" 
        Font-Size="Large" ForeColor="#660066"></asp:Label></td>
<td class="style1"><asp:TextBox ID="TextBox1" runat="server" Text="1" 
        Font-Bold="True" Font-Size="Small" ForeColor="#993399"></asp:TextBox>
    <asp:CompareValidator ID="compare_qty" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Only Numbers Allowed" 
        Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
    </td>
</tr>

<tr>
<td colspan="2" align="center"><asp:Button ID="Button1" runat="server" 
        Text="Add to cart" onclick="Button1_Click" Font-Bold="True" 
        Font-Italic="True" Font-Size="X-Large" ForeColor="#660066" />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    </td>
</tr>
</table>
</center>
<%--</form>--%>
</center>
<br /><br /><br />
</asp:Content>

