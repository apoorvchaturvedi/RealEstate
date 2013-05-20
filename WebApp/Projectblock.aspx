<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Projectblock.aspx.cs" Inherits="Block" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    function validate() {
        if (document.getElementById("ContentPlaceHolder1_dropprojectname").value == "[Select Projects]") {
            alert("Please Select  The Project Name");
            document.getElementById("ContentPlaceHolder1_dropprojectname").focus();
            return false;

        }

        if (document.getElementById("ContentPlaceHolder1_txtblock").value == "") {
            alert("Please Enter The Block Name");
            document.getElementById("ContentPlaceHolder1_txtblock").focus();
            return false;

        }
    }
         </script>
    <style type="text/css">
        .style12
        {
            text-align: center;
        }
        .style13
        {
            height: 29px;
        }
        .style17
        {
            width: 1px;
        }
        .style18
        {}
        .style19
        {
            text-align: center;
        }
        .style20
        {
            text-align: center;
        }
        .style22
        {
            height: 37px;
            text-align: center;
        }
        .style24
        {
            width: 126px;
        }
        .style26
        {
            width: 271px;
        }
        .style28
        {
            height: 37px;
            width: 271px;
        }
        .style29
        {
            height: 37px;
            text-align: center;
            width: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel2" runat="server" BorderColor="Blue" BorderWidth="3px" 
                    CssClass="style12" Font-Bold="True" GroupingText="Block Information">
    <table class="style1">
        <tr>
            <td colspan="4">
               
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" CssClass="style12" GridLines="Vertical" 
                        Width="100%" onrowdatabound="GridView1_RowDataBound">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sr.No.">
                                <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                        <asp:Label ID="Label30" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Project Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Project Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Block">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Block")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
               
            </td>
        </tr>
        <tr>
            <td class="style28">
                </td>
            <td class="style29">
                    <asp:Label ID="Label13" runat="server" 
                Text="Project Name:" Font-Bold="True" CssClass="style18"></asp:Label>
                </td>
            <td class="style22">
                                <asp:DropDownList ID="dropprojectname" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td class="style28">
                </td>
            <td>
                                <asp:Label ID="Label5" runat="server" Text="Block Name:" 
                    Font-Bold="True"></asp:Label>
                            </td>
            <td class="style22">
                    <asp:TextBox ID="txtblock" runat="server" Width="180px"  Height="22px" 
                        autocomplete="off" Font-Bold="True"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style19" colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" 
                    ForeColor="#FF6600"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td class="style20" colspan="4">
                    <asp:Button ID="Button6" runat="server" CssClass="style13" Height="27px"  
                        onclick="Button6_Click" Text="Save" Width="66px" Font-Bold="True" 
                        OnClientClick='return validate();' />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" 
                        CssClass="style13" Font-Bold="True" Height="27px" onclick="Button8_Click" 
                        Text="Cancel" Width="66px" />
                </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
        onclick="LinkButton3_Click">Add New Block</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
        onclick="LinkButton4_Click">Back</asp:LinkButton>
&nbsp;
</asp:Content>


