<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
 <center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">PRODUCTS</h1>
</center>
<br /><br />
<center>
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066" Font-Size="X-Large"
        GridLines="Both" DataKeyNames="cat_id" EmptyDataText="No Data Found" 
        Width="1000" AutoGenerateColumns="False" CellSpacing="2" AllowPaging="True" RowStyle-BorderStyle="Double" 
        onpageindexchanging="GridView1_PageIndexChanging">
        
         <Columns>
             <asp:TemplateField HeaderText="pro_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="image"><ItemTemplate><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("p_img") %>' Height="150" Width="150" ImageAlign="Middle"/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/admin/images/uu/000.jpg"  OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete" Height="100" Width="100"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
     </center>
    <br />
    <br /><center>
    <asp:Button ID="addpro" runat="server" Text="Add Product"  onclick="addpro_Click" BorderStyle="Groove" Font-Bold="true" Font-Italic="true" Font-Size="XX-Large" />
    </center>
    <br />
</asp:Content>

