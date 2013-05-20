<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminUnittargetlink.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

     <script type="text/javascript">

         function validate() 
         {
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
             if (document.getElementById("ContentPlaceHolder1_dropmilestone").value == "[Select Milestone]") {
                 alert("Please Select The MileStone Name");
                 document.getElementById("ContentPlaceHolder1_dropmilestonee").focus();
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
        }
        .style20
        {
            height: 37px;
            margin: 0px;
            padding: 0px;
        }
        .style21
        {
            height: 25px;
            margin: 0px;
            padding: 0px;
        }
        .style22
        {
            height: 24px;
            margin: 0px;
            padding: 0px;
        }
        .style23
        {
            height: 20px;
            margin: 0px;
            padding: 0px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" GroupingText="Admin Unit Target Link Info"
    Font-Bold="True" BorderColor="Blue" BorderWidth="3px">
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropprojectname" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True" 
                                    onselectedindexchanged="dropprojectname_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td class="style12">
                                <asp:Label ID="Label5" runat="server" Text="Block Name:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style12">
                                <asp:DropDownList ID="dropblock" runat="server" CssClass="style13" 
                                    Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True" 
                                    onselectedindexchanged="dropblock_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Plot/Tower-No:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:DropDownList ID="dropplot" runat="server" CssClass="style13" 
                                  Height="27px" Width="183px" Font-Bold="True" AutoPostBack="True" 
                                    onselectedindexchanged="dropplot_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Milestone Desc:"></asp:Label>
                            </td>
                            <td class="style20">
                               
                                <asp:DropDownList ID="dropmilestone" runat="server" Font-Bold="True" 
                                    Height="27px" Width="183px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server"  Height="27px" 
                                    onclick="Button6_Click" Text="GO" Width="66px" OnClientClick='return validate();' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                &nbsp;</td>
                            <td class="style21">
                                &nbsp;</td>
                            <td class="style22">
                                &nbsp;</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="style18" colspan="4">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style23" colspan="4">
                            </td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="style8" 
                                    GridLines="Vertical" onpageindexchanging="GridView1_PageIndexChanging" 
                                    PageSize="25" Width="100%">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Edit</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Sr.No.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MileStone Desc">
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("Task details")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Project">
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Project Name")%>'></asp:Label>
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
                                        <asp:TemplateField HeaderText="Target Date">
                                            <ItemTemplate>
                                                <asp:Label ID="Label13" runat="server" Text='<%#Eval("Target-Date","{0:dd/MM/yyyy}")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Update Date">
                                            <ItemTemplate>
                                                <asp:Label ID="Label14" runat="server" Text='<%#Eval("update date","{0:dd/MM/yyyy}")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remark">
                                        <ItemTemplate>
                                                <asp:Label ID="Label25" runat="server" 
                                                    Text='<%#Eval("Remarks","{0:dd/MM/yyyy}")%>'></asp:Label>
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

