<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="bill1aspx.aspx.cs" Inherits="admin_bill1aspx" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">
<br /><br />
 <center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">USER BILL DETAILS</h1>
</center>
<br /><br />
<center>
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066" Font-Bold="true" Font-Italic="true" Font-Size="X-Large"
        GridLines="Both" DataKeyNames="bill_id" EmptyDataText="No Data Found" RowStyle-BorderStyle="Double" RowStyle-BorderColor="Black"
        Width="450" AutoGenerateColumns="False">
         <Columns>
              <asp:TemplateField HeaderText="billid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("bill_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="username"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="pro_id"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="name"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="price"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="quantity"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("quantity") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="total"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="date"><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("date") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="sh_id"><ItemTemplate><asp:Label ID="Label9" runat="server" Text='<%# Eval("sh_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/admin/images/uu/000.jpg"  Height="50" Width="50"  OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
</center>
<br /><br />

</center>
</asp:Content>

