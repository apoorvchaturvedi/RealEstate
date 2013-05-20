<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectSummary.aspx.cs" Inherits="ProjectSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            text-align: center;
        }
    .style20
    {
        text-align: center;
        height: 21px;
    }
    .style21
    {
        text-align: center;
        height: 13px;
    }
        .style22
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <a href="Home.aspx"><strong>Back To Home</strong></a>
 </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel2" runat="server" BorderColor="Blue" BorderWidth="3px" 
        Font-Bold="True" GroupingText="Project Summary/Information">
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style19">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Project Name:"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="dropprojectname" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" 
                                    onselectedindexchanged="dropprojectname_SelectedIndexChanged" Width="183px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Block Name:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="dropblock" runat="server" AutoPostBack="True" 
                                    CssClass="style13" Font-Bold="True" Height="27px" Width="183px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server" Height="27px" onclick="Button6_Click" 
                                    OnClientClick="return validate();" Text="GO" Width="66px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="style8 style22" 
                                    GridLines="Vertical" onpageindexchanging="GridView1_PageIndexChanging" 
                                    PageSize="25" Width="100%" Height="95px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr.No.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
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
                                        <asp:TemplateField HeaderText="Target Date">
                                            <ItemTemplate>
                                                <asp:Label ID="Label40" runat="server" 
                                                    Text='<%#Eval("Target-Date","{0:dd/MM/yyyy}")%>'></asp:Label>
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

