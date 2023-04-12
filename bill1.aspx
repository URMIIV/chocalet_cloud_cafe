<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill1.aspx.cs" Inherits="bill1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function btn1_onclick() {

}

// ]]>
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>
<br /><br />
<center style="background-color: #C4DFE6">
<center>
    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">USER-BILL DETAIL</h1>
</center>
<center>
<br />

<table align="center" 
        style="border-style: double; border-width: medium; padding: inherit; margin: inherit"><tr><td colspan="2">
<br />
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066" 
        GridLines="Both" DataKeyNames="bill_id" EmptyDataText="No Data Found" Font-Size="XX-Large" Font-Bold="true"  
        Width="464px" AutoGenerateColumns="False">
<Columns>
             <asp:TemplateField HeaderText="billid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("bill_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="username"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="pro_id"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="name"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="price"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="quantity"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("quantity") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="total"><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="date"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("date") %>'></asp:Label></ItemTemplate></asp:TemplateField>
         </Columns>
    </asp:GridView></td></tr>
    
    <tr><td align="center" valign="middle" 
            style="padding: inherit; margin: inherit; border: medium double #000000" >
        <br /><asp:Label ID="Label5" runat="server" Text="Total:" Font-Bold="True" 
            Font-Italic="True" Font-Size="XX-Large" ForeColor="#660066" BorderStyle="None" 
            Width="162px" ></asp:Label>
        <br />
        <br /></td>
        <td align="center" valign="middle" 
            style="padding: inherit; margin: inherit; border: medium double #000000">
            <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="XX-Large" ForeColor="#660066" BorderStyle="None" Width="200px" ></asp:Label></td></tr>
    
        
    
    
</table>
<br /><br />
<center>
 <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
             Font-Size="XX-Large" ForeColor="#660066" onclick="Button1_Click" Text="Done"  
             Width="155px"  />
     </center>
<%--</form>--%>
</center>
<br /><br />
</center>
</asp:Content>

