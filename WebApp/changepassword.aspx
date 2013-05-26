<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {}
        .style15
        {
            height: 36px;
        }
        .style16
        {
            height: 36px;
            text-align: center;
        }
        .style17
        {}
        .style18
        {}
        .style19
        {
            text-align: center;
        }
    .style20
    {
        height: 37px;
        text-align: center;
    }
    .style21
    {
        height: 37px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
        GroupingText="Change Password" BorderColor="Blue" BorderWidth="3px">
        <table class="style1">
            <tr>
                <td class="style20">
                    <asp:Label ID="Label2" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="style12" Height="22px" 
                        Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label3" runat="server">NewPassword:</asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="style12" Height="22px" 
                        Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label4" runat="server">Confirmed Password:</asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="style12" Height="22px" 
                        Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    </td>
                <td class="style21">
                    <asp:Button ID="Button2" runat="server" CssClass="style17" Font-Bold="False" 
                        Height="28px" Text="Click Change" Width="91px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="style18" Height="28px" 
                        Text="Cancel" Width="73px" />
                </td>
            </tr>
            <tr>
                <td class="style19" colspan="2">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style19" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

