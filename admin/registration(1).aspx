<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="admin_registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
<center style="background-color: #C4DFE6">
 <center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">USER DETAILS</h1>
</center>
<br /><br />
<center>
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#660066" Font-Bold="true" Font-Italic="true" Font-Size="X-Large"
        GridLines="Both" DataKeyNames="r_id" EmptyDataText="No Data Found" RowStyle-BorderStyle="Double" RowStyle-BorderColor="Black"
        Width="450" AutoGenerateColumns="False">
         <Columns>
             <asp:TemplateField HeaderText="Rid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("r_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Fname"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("fname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Lname"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("lname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Username"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("username") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Password"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Email"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("email") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Phoneno"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("mobileno") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/admin/images/uu/000.jpg"  Height="50" Width="50"  OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
</center>
<br /><br />
</center>
</asp:Content>

