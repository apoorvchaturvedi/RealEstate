<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewUnit.aspx.cs" Inherits="AddNewUnit" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">

        function validate() {
            if (document.getElementById("ContentPlaceHolder1_dropprojectname").value == "[Select Projects]") {
                alert("Please Select The Project Name");
                document.getElementById("ContentPlaceHolder1_dropprojectname").focus();
                return false;

            }

            if (document.getElementById("ContentPlaceHolder1_dropblock").value == "[Select Block]") {
                alert("Please Select The Block Name");
                document.getElementById("ContentPlaceHolder1_dropblock").focus();
                return false;

            }
            if (document.getElementById("ContentPlaceHolder1_droptype").value == "[Select Type]") {
                alert("Please Select The Type Name");
                document.getElementById("ContentPlaceHolder1_droptype").focus();
                return false;

            }

            if (document.getElementById("ContentPlaceHolder1_txtfloor").value == "") {
                alert("Please Enter The Floor No");
                document.getElementById("ContentPlaceHolder1_txtfloor").focus();
                return false;

            }
            if (document.getElementById("ContentPlaceHolder1_txtplot").value == "") {
                alert("Please Enter The PlotNo");
                document.getElementById("ContentPlaceHolder1_txtplot").focus();
                return false;

            }

            if (document.getElementById("ContentPlaceHolder1_txtunit").value == "") {
                alert("Please Enter The UnitNo Name");
                document.getElementById("ContentPlaceHolder1_txtunit").focus();
                return false;

            }
            if (document.getElementById("ContentPlaceHolder1_txtarea").value == "") {
                alert("Please Enter The Area ");
                document.getElementById("ContentPlaceHolder1_txtarea").focus();
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
            font-weight: 700;
        }
    .style13
    {
            text-align: center;
        }
        .style18
        {
            text-align: center;
        }
        .style23
        {
            text-align: center;
            height: 37px;
        }
        .style30
        {
            height: 29px;
            text-align: center;
        }
        .style34
        {
            height: 29px;
            text-align: left;
        }
        .style35
        {
            height: 27px;
            text-align: center;
        }
        .style36
        {
            height: 37px;
            margin: 0px;
            padding: 0px;
            text-align: center;
        }
        .style37
        {
            height: 37px;
            font-weight: 700;
            text-align: center;
        }
        .style38
        {
            height: 27px;
            text-align: left;
        }
        .style39
        {
            height: 37px;
            margin: 0px;
            padding: 0px;
            text-align: left;
        }
        .style40
        {
            height: 37px;
            font-weight: 700;
            text-align: left;
        }
        .style41
        {
            text-align: center;
        }
        .style14
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="style12" 
        onclick="LinkButton1_Click">Back Add New Unit </asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" GroupingText="Unit Wise Target Link Info"
    Font-Bold="True" BorderColor="Blue" BorderWidth="3px">
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style37">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                            </td>
                            <td class="style37">
                                &nbsp;</td>
                            <td class="style40">
                                <asp:DropDownList ID="dropprojectname" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px" 
                                    onselectedindexchanged="dropprojectname_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Block Name:"></asp:Label>
                            </td>
                            <td class="style37">
                                &nbsp;</td>
                            <td class="style40">
                                <asp:DropDownList ID="dropblock" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px" 
                                    onselectedindexchanged="dropblock_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style36">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Type:"></asp:Label>
                            </td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style39">
                                <asp:DropDownList ID="droptype" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style36">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Floor:"></asp:Label>
                            </td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style39">
                                <asp:TextBox ID="txtfloor" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="PlotNo/Tower:"></asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtplot" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                            </td>
                        </tr>
                       
                        <tr>
                            <td class="style23">
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="UnitNo:"></asp:Label>
                            </td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtunit" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                            </td>
                        </tr>
                       
                        <tr>
                            <td class="style35">
                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Area:"></asp:Label>
                            </td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style38">
                                <asp:TextBox ID="txtarea" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style38">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                            </td>
                            <td class="style34">
                                &nbsp;</td>
                            <td>
                                &nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server" CssClass="style13" Font-Bold="True" 
                                    Height="27px" onclick="Button6_Click" Text="Save" Width="66px" 
                                    OnClientClick="return validate();" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button11" runat="server" CssClass="style13" Font-Bold="True" 
                                    Height="27px" onclick="Button8_Click" Text="Cancel" Width="66px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="style41">
                                <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

