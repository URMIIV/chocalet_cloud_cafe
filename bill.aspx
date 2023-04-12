<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>
<center style="background-color: #C4DFE6">
<table><tr><td colspan="2">
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="bill_id" EmptyDataText="No Data Found" 
        Width="400" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="billid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("bill_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="pro_id"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="name"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="price"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="qty"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="total"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="date"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("date") %>'></asp:Label></ItemTemplate></asp:TemplateField>
         </Columns>
    </asp:GridView></td></tr>
    <tr><td align="center" valign="middle"><br /><asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label><br /><br /></td>
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
</table>
</center>
<%--</form>--%>
</asp:Content>

