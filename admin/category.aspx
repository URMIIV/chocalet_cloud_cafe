<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">
<br /><br />
 <center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">CATEGORY</h1>
</center>
<br /><br />

<center>
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066"
        GridLines="Both" DataKeyNames="cat_id" EmptyDataText="No Data Found" Height="100"
        Width="1000" AutoGenerateColumns="False"  Font-Size="X-Large" Font-Bold="true"
        onselectedindexchanged="GridView1_SelectedIndexChanged" RowStyle-BorderStyle="Double">       
             <Columns>
             <asp:TemplateField HeaderText="cat_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Purple" Font-Bold="true" Text='<%# Eval("cat_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="cat_name"><ItemTemplate><asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Purple" Font-Bold="true" Text='<%# Eval("cat_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="image"><ItemTemplate><asp:Image ID="Image1" runat="server" BorderStyle="Solid" ImageAlign="Middle" ImageUrl='<%# Eval("cat_image") %>' Height="150" Width="150"/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpedit" runat="server" Font-Size="X-Large" ForeColor="Purple" Font-Bold="true" NavigateUrl='<%# "~/admin/editcat.aspx?id=" + Eval("cat_id")  %>' ><h1> Edit</h1></asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/admin/images/uu/000.jpg" Height="100" Width="100" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete" /></ItemTemplate></asp:TemplateField>
        </Columns>
       
    </asp:GridView>

</center>
    <br />
    <br />
    <center>
    <asp:Button ID="addcat" runat="server" Text="Add category" 
     onclick="addcat_Click" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" 
            ForeColor="#660066" />
     </center>
     <br /><br />

</asp:Content>

