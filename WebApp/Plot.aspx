<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Plot.aspx.cs" Inherits="Projectcash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style12
    {
        text-align: center;
    }
        .style13
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
        GroupingText="Unit Information" Height="350px" BorderColor="Blue" 
         BorderWidth="3px">
         <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" Width="100%"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            CssClass="style12" AllowPaging="True" 
             onpageindexchanging="GridView1_PageIndexChanging">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
                 <asp:TemplateField HeaderText="Edit">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server">Edit</asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Delete">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton2" runat="server"></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Sr.No.">
                     <ItemTemplate>
                         <%#Container.DataItemIndex+1 %>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Project">
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("Project Name")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Block">
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%#Eval("Block")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Type">
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%#Eval("Type")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                  <asp:TemplateField HeaderText="PlotNo">
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%#Eval("PlotNo")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Floor">
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%#Eval("Floor")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="UnitNo">
                     <ItemTemplate>
                         <asp:Label ID="Label7" runat="server" Text='<%#Eval("Unit No")%>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Area">
                     <ItemTemplate>
                         <asp:Label ID="Label8" runat="server" Text='<%#Eval("Area")%>'></asp:Label>
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
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
        onclick="LinkButton4_Click" CssClass="style13">Add New Unit</asp:LinkButton>
</asp:Content>


