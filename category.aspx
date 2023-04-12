<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server"><br /><br />
<center style="background-color: #C4DFE6">
<center>
         <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3"  
             RepeatLayout="Table"  CaptionAlign="Right" CellPadding="30" 
             Width="966px">
    <HeaderTemplate>
    <center>   
     <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">CATEGORY</h1>
</center>
<br />
    </HeaderTemplate>

      
    <ItemTemplate>
     
     
  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "product.aspx?id=" + Eval("cat_id")  %>'>

   <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("cat_image") %>' Height="200" Width="200" BorderColor="Black" BorderStyle="Double" BorderWidth="2" />
<br><br>
</asp:HyperLink>
    <h1 ><asp:HyperLink ID="hpdetail" runat="server" NavigateUrl='<%# "~/product.aspx?id=" + Eval("cat_id") %>' Text='<%#Eval("cat_name")%>'></asp:HyperLink></h1>
    </ItemTemplate>
    </asp:DataList>
    </center>
  </center>
    </asp:Content>



