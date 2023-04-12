<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shipping.aspx.cs" Inherits="shipping" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style3
        {
            width: 107px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
<center style="background-color: #C4DFE6">
<center>
    <h1 style="text-decoration: underline; font-family: 'Bodoni MT Black'; font-size: xx-large; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #A52A2A;">SHIPPING</h1>
</center>
<center>
<br />
         <table class="" height="500" border="" width="" style="margin-left:60px; margin-top:20px">
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Name:" Font-Bold="True"  
                    ForeColor="#660066" Font-Size="X-Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>
        <tr>
        
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Address:" Font-Bold="True"  
                    ForeColor="#660066" Font-Size="X-Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Font-Bold="True" Font-Size="Larger" 
                    TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
       <!--- <tr>
            <td class="style4">
               <asp:Label ID="Label4" runat="server" Text="Email Id" Font-Bold="True"  ForeColor="#F8865B" Font-Size="Larger"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtemail" runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>-->
        <tr>
            <td class="style3">
                <asp:Label ID="Label10" runat="server" Text="Phone no." Font-Bold="True"  
                    ForeColor="#660066" Font-Size="X-Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcno" runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Payment Method:" Font-Bold="True"  
                    ForeColor="#660066" Font-Size="X-Large"></asp:Label>
            </td>
            <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:RadioButton ID="rbcash" runat="server" Text="Cash" AutoPostBack="True" 
                    oncheckedchanged="rbcash_CheckedChanged" GroupName="pay" Font-Bold="True" 
                    Font-Italic="True" ForeColor="#660066" Font-Size="X-Large" />
                  &nbsp;
                  <asp:RadioButton ID="rbcredit" runat="server" Text="Credit Card" 
                    AutoPostBack="True" oncheckedchanged="rbcredit_CheckedChanged" 
                    GroupName="pay" Font-Bold="True" Font-Italic="True" ForeColor="#660066" 
                    Font-Size="X-Large" />
                <asp:RadioButton ID="rbdebit" runat="server" Text="Debit Card" 
                    AutoPostBack="True" oncheckedchanged="rbdebit_CheckedChanged" 
                    GroupName="pay" Font-Bold="True" Font-Italic="True" ForeColor="#660066" 
                    Font-Size="X-Large" />
                <asp:Panel ID="Panel2" runat="server">
                <table>
                    </tr>
                
                <tr><td>Credit Card No.</td><td></td></tr>
                
                <tr><td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
                    </td>
                    <tr>
                        <td>
                            Month</td>
                        <td>
                            Year</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Value="01"></asp:ListItem>
                                <asp:ListItem Value="02"></asp:ListItem>
                                <asp:ListItem Value="03"></asp:ListItem>
                                <asp:ListItem Value="04"></asp:ListItem>
                                <asp:ListItem Value="05"></asp:ListItem>
                                <asp:ListItem Value="06"></asp:ListItem>
                                <asp:ListItem Value="07"></asp:ListItem>
                                <asp:ListItem Value="08"></asp:ListItem>
                                <asp:ListItem Value="09"></asp:ListItem>
                                <asp:ListItem Value="10"></asp:ListItem>
                                <asp:ListItem Value="11"></asp:ListItem>
                                <asp:ListItem Value="12"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="2019"></asp:ListItem>
                                <asp:ListItem Value="2020"></asp:ListItem>
                                <asp:ListItem Value="2021"></asp:ListItem>
                                <asp:ListItem Value="2022"></asp:ListItem>
                                <asp:ListItem Value="2023"></asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CVV
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    </tr>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <table>
                    </tr>
                
                <tr><td>Debit Card No.</td><td></td></tr>
                
                <tr><td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Text=""></asp:TextBox>
                    </td>
                    <tr>
                        <td>
                            Month</td>
                        <td>
                            Year</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem Value="01"></asp:ListItem>
                                <asp:ListItem Value="02"></asp:ListItem>
                                <asp:ListItem Value="03"></asp:ListItem>
                                <asp:ListItem Value="04"></asp:ListItem>
                                <asp:ListItem Value="05"></asp:ListItem>
                                <asp:ListItem Value="06"></asp:ListItem>
                                <asp:ListItem Value="07"></asp:ListItem>
                                <asp:ListItem Value="08"></asp:ListItem>
                                <asp:ListItem Value="09"></asp:ListItem>
                                <asp:ListItem Value="10"></asp:ListItem>
                                <asp:ListItem Value="11"></asp:ListItem>
                                <asp:ListItem Value="12"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Value="2019"></asp:ListItem>
                                <asp:ListItem Value="2020"></asp:ListItem>
                                <asp:ListItem Value="2021"></asp:ListItem>
                                <asp:ListItem Value="2022"></asp:ListItem>
                                <asp:ListItem Value="2023"></asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CVV
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>

                </asp:Panel>
            </ContentTemplate>
            </asp:UpdatePanel>
            </td>
        </tr>
        <tr align="center">
            <td colspan="3"><asp:Button ID="btn_billnow" runat="server" 
                    onclick="btn_billnow_Click" Text="Bill Now" Font-Bold="True" Font-Italic="True" 
                    Font-Size="X-Large" ForeColor="#660066" />
               </td>
        </tr>
    </table>
    
    <br />
    <br />
    </center>


</center>

</asp:Content>
