<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestNewunittargetkink.aspx.cs" Inherits="Newunittargetkink" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            text-align: center;
        }
    .style19
    {
        text-align: center;
    }
        .style20
        {
            height: 36px;
        }
        .style23
        {
            text-align: center;
        }
    .style24
    {
        text-align: center;
    }
    .style25
    {}
    .style26
    {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" 
    GroupingText="New Unit Target Link Info" Font-Bold="True" 
    BorderColor="Blue" BorderWidth="3px">
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                                <a href="Unittargetkink.aspx">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                </a>
                            </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropprojectname" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                <asp:Label ID="Label5" runat="server" Text="Block Name:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropblock" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Plot/Tower-No:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropplot" runat="server" CssClass="style13" 
                                    Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Milestone Desc:"></asp:Label>
                                </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropmilestone" runat="server" CssClass="style13" 
                                    Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label4" runat="server" Text="Actual Date:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtActualdate" runat="server" CssClass="style14" Height="22px" autocomplete="off"
                                    Width="179px" Font-Bold="True"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtActualdate_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtActualdate" Format="dd/MM/yyyy">
                                </cc1:CalendarExtender>
                            </td>
                            <td class="style20">
                                <asp:Label ID="Label7" runat="server" Text="Update Date:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtupdatedate" runat="server" CssClass="style14" Height="22px" autocomplete="off"
                                    Width="179px" Font-Bold="True"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="style18" colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server" Height="28px" 
                                    Text="Save" Width="87px" onclick="Button6_Click" CssClass="style25" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button7" runat="server" Height="28px" 
                                    Text="Cancel" Width="87px" onclick="Button7_Click" CssClass="style26" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
 
        <a href="Unittargetkink.aspx"><strong>Back Unit Target Link Info</strong></a>
</asp:Content>


