<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/product.aspx.cs" Inherits="product" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <%--<form id="form1" runat="server">--%>
     <br /><br />
     <center style="background-color: #C4DFE6">
     <center>
   <center> <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatLayout="Table"  CaptionAlign="Right" CellPadding="30" Width="966px" >
        
        <SeparatorStyle BorderStyle="None" />
     
    <HeaderTemplate>
    <center>
         <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">PRODUCTS</h1>
</center>
   <br /><br />
    </HeaderTemplate>
    
        <ItemTemplate>
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "productdetail.aspx?id=" + Eval("pro_id")  %>'>
           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("p_img") %>' Height="200" Width="200" BorderColor="Black" BorderStyle="Double" BorderWidth="2"/>
            </asp:HyperLink>   
           
           <br /><br />
            <h1 ><asp:HyperLink ID="hpdetail" runat="server" NavigateUrl='<%# "~/productdetail.aspx?id=" + Eval("pro_id") %>' Text='<%#Eval("name")%>'></asp:HyperLink></h1>
        
          <%--  <h1> <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label></h1>--%>
        
        </ItemTemplate>
        
    <FooterTemplate>
    
    </FooterTemplate>
    </asp:DataList></center>
    <%--</form>--%>
</center>
    
    <br /><br />
    
    </center>
    </asp:Content>





