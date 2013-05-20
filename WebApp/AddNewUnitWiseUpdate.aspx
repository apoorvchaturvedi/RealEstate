<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewUnitWiseUpdate.aspx.cs" Inherits="AddNewUnitWiseUpdate" %>

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
         if (document.getElementById("ContentPlaceHolder1_dropplot").value == "[Select Plot]") {
             alert("Please Select The Plot Name");
             document.getElementById("ContentPlaceHolder1_dropplot").focus();
             return false;

         }

         if (document.getElementById("ContentPlaceHolder1_dropfloor").value == "[Select Floor]") {
             alert("Please Select The Floor No");
             document.getElementById("ContentPlaceHolder1_dropfloor").focus();
             return false;

         }
         if (document.getElementById("ContentPlaceHolder1_dropunit").value == "[Select Unit]") {
             alert("Please Select The Unit No");
             document.getElementById("ContentPlaceHolder1_dropunit").focus();
             return false;

         }

         if (document.getElementById("ContentPlaceHolder1_dropmilestone").value == "[Select Milstones]") {
             alert("Please Select The MileStone Name");
             document.getElementById("ContentPlaceHolder1_dropmilestone").focus();
             return false;

         }
         if (document.getElementById("ContentPlaceHolder1_txtActualdate").value == "") {
             alert("Please Enter the Actual Date ");
             document.getElementById("ContentPlaceHolder1_txtActualdate").focus();
             return false;

         }
     }

</script>


    <style type="text/css">
        .style18
        {
            text-align: center;
        }
        .style21
        {
            height: 37px;
        }
        .style25
        {
            font-weight: 700;
        }
        .style26
        {
            height: 37px;
            width: 250px;
        }
        .style35
        {
            height: 10px;
            width: 250px;
        }
        .style39
        {
            height: 10px;
            width: 123px;
        }
        .style42
        {
            height: 10px;
            width: 110px;
        }
        .style46
        {
            height: 37px;
            width: 207px;
        }
        .style47
        {
            height: 10px;
            width: 207px;
        }
        .style48
        {
            height: 31px;
            text-align: center;
        }
        .style49
        {
            height: 37px;
            width: 123px;
        }
        .style50
        {
            height: 37px;
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="Blue" BorderWidth="3px" 
        Font-Bold="True" GroupingText="Add New Unit Target Link Info">
     
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style46">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                            </td>
                            <td class="style49">
                                <asp:DropDownList ID="dropprojectname" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropprojectname_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                            </td>
                            <td class="style50">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Block Name:"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="dropblock" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropblock_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style46">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Plot/Tower-No:"></asp:Label>
                            </td>
                            <td class="style49">
                                <asp:DropDownList ID="dropplot" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropplot_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                            </td>
                            <td class="style50">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Floor:"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="dropfloor" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropfloor_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style46">
                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Unit No:"></asp:Label>
                            </td>
                            <td class="style49">
                                <asp:DropDownList ID="dropunit" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropunit_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                            </td>
                            <td class="style50">
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Milestone Desc:"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="dropmilestone" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                </td>
                        </tr>
                       
                        <tr>
                            <td class="style46">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Actual Date:"></asp:Label>
                            </td>
                            <td class="style49">
                                <asp:TextBox ID="txtActualdate" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtActualdate_CalendarExtender" runat="server" 
                                    Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtActualdate">
                                </cc1:CalendarExtender>
                            </td>
                            <td class="style50">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Update Date:"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="txtupdatedate" runat="server" autocomplete="off" 
                                    CssClass="style14" Font-Bold="True" Height="22px" Width="179px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtupdatedate_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtupdatedate" Format="dd/MM/yyyy">
                                </cc1:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style39">
                            </td>
                            <td class="style42">
                            </td>
                            <td class="style35">
                            </td>
                        </tr>
                        <tr>
                            <td class="style48" colspan="4">
                                <asp:Button ID="Button8" runat="server" CssClass="style25" Height="28px" 
                                    onclick="Button8_Click" Text="Save" Width="87px" OnClientClick='return validate();' />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" CssClass="style26" Height="28px" 
                                    onclick="Button9_Click" Text="Cancel" Width="87px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" colspan="4">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" colspan="4">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="style8" 
                                    GridLines="Vertical" PageSize="25"  Width="100%">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" runat="server">Edit</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Sr.No.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1%>
                                                <asp:Label ID="Label25" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MileStone Desc">
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("Task details")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Project">
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Project_Name")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Block">
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("Block")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Plot/Tower">
                                            <ItemTemplate>
                                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("PlotNo")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Floor">
                                            <ItemTemplate>
                                                <asp:Label ID="Label23" runat="server" Text='<%#Eval("Floor")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="UnitNo">
                                            <ItemTemplate>
                                                <asp:Label ID="Label24" runat="server" Text='<%#Eval("Unit No")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Actual Date">
                                            <ItemTemplate>
                                                <asp:Label ID="Label13" runat="server" 
                                                    Text='<%#Eval("Actual-Date","{0:dd/MM/yyyy}")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Update Date">
                                            <ItemTemplate>
                                                <asp:Label ID="Label14" runat="server" 
                                                    Text='<%#Eval("update date","{0:dd/MM/yyyy}")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Justify" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
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
        <a href="UnitWiseUpdation.aspx"><strong>Back New Unit Target Link Info</strong></a>
</asp:Content>


