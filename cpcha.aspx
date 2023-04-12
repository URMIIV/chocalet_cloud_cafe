<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cpcha.aspx.cs" Inherits="cpcha" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>

<table>

  <tr>

    <td>

      <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/CreateCaptcha.aspx?New=1"/>

     </td>

   </tr>

   <tr>

    <td>

      <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>

     </td>

    </tr>

    <tr>

     <td>

       <asp:Label ID="lblMessage" runat="server"></asp:Label>

      </td>

     </tr>

     <tr>

      <td>

 <asp:Button ID="btnCaptcha" runat="server" Text="Validate Cpatcha Code"                               onclick="btnCaptcha_Click" />

       </td>

       </tr>

     </table>

    </div>

</asp:Content>

