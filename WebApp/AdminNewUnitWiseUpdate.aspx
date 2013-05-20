<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminNewUnitWiseUpdate.aspx.cs" Inherits="NewUnitWiseUpdate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">

        function validate() {
            if (document.getElementById("ContentPlaceHolder1_txtActualdate").value != "" && document.getElementById("ContentPlaceHolder1_txtremark").value == "") {
                alert("Please Give the some remarks Also?");
                document.getElementById("ContentPlaceHolder1_txtremark").focus();
                return false;
            }

            if (document.getElementById("ContentPlaceHolder1_txtActualdate").value == "" && document.getElementById("ContentPlaceHolder1_txtremark").value != "") {

                alert("Please Clear the text of remarks Also?");
                document.getElementById("ContentPlaceHolder1_txtremark").focus();
                return false;


            }
        }
             </script>



    <style type="text/css">
        .style8
        {}
    .style9
    {}
        .style10
        {
            height: 35px;
        }
        .style11
        {
            height: 32px;
        }
        .style12
        {
            height: 37px;
        }
    .style13
    {}
        .style18
        {
            text-align: center;
        }
        .style19
        {
            height: 27px;
            margin: 0px;
            padding: 0px;
            text-align: center;
        }
        .style20
        {
            height: 37px;
            margin: 0px;
            padding: 0px;
        }
        .style21
        {
            text-align: center;
        }
        .style24
        {
            text-align: left;
            height: 37px;
        }
        .style25
        {
            text-align: center;
            height: 28px;
        }
        .style26
        {
            height: 28px;
        }
        .style27
        {
            text-align: left;
            height: 29px;
        }
        .style28
        {
            text-align: left;
        }
        .style29
        {
            height: 37px;
            margin: 0px;
            padding: 0px;
            text-align: left;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" GroupingText="Unit Wise Target Link Info"
    Font-Bold="True" BorderColor="Blue" BorderWidth="3px">
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropprojectname" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="style12">
                                <asp:Label ID="Label5" runat="server" Text="Block Name:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropblock" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style29">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Plot/Tower-No:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropplot" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Floor:"></asp:Label>
                            </td>
                            <td class="style20">
                               
                                <asp:DropDownList ID="dropfloor" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Unit No:"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropunit" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Milestone Desc:"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropmilestone" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Target Date:"></asp:Label>
                            </td>
                            <td class="style12" >
                                <asp:TextBox ID="txtActualdate" runat="server" CssClass="style14" autocomplete="off"
                                    Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtActualdate_CalendarExtender" runat="server" 
                                    Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtActualdate">
                                </cc1:CalendarExtender>
                            </td>
                            <td class="style12">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Update Date:"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:TextBox ID="txtupdatedate" runat="server" CssClass="style14" autocomplete="off"
                                    Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtupdatedate_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtupdatedate" Format="dd/MM/yyyy">
                                </cc1:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Remark:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtremark" runat="server" CssClass="style27" Height="99px" 
                                    TextMode="MultiLine" Width="331px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style21" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18" colspan="4">
                                <asp:Button ID="Button8" runat="server" CssClass="style25" Height="28px" 
                                    Text="Save" Width="87px" onclick="Button8_Click"  OnClientClick='return validate();'/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button9" runat="server" CssClass="style26" Height="28px" 
                                    Text="Cancel" Width="87px" onclick="Button9_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="4">
                                <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
<a href="AdminUnitWiseUpdation.aspx"<strong><strong>Back Admin Unit Wise Target Link Info</strong></strong></a>
</asp:Content>


