<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
     function validate() {
         if (document.getElementById("ContentPlaceHolder1_GridView2_TextBox1").value == "") {
             alert("Please Enter the milestone?");
             document.getElementById("ContentPlaceHolder1_GridView2_TextBox1").focus();
             return false;
         }

         

     }
            </script>

    <style type="text/css">
        .style8
        {}
        .style12
        {
            margin-right: 0px;
            text-align: center;
            
        }
        .style13
        {}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" GroupingText="Home page" Height="400px"
        Font-Bold="True" BorderColor="Blue" BorderWidth="3px" CssClass="style12">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" CssClass="style8" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete"></asp:TemplateField>
                <asp:TemplateField HeaderText="MileStone">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">milestones</asp:LinkButton>
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
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Category")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Start date">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" 
                            Text='<%#Eval("Start Date","{0:dd/MM/yyyy}")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="End date">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" 
                            Text='<%#Eval("End Date","{0:dd/MM/yyyy}")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status ">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("Status")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("Location")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Budget">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Budget")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="style15" Font-Bold="True" 
                            Height="24px" Width="193px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            onpageindexchanging="GridView2_PageIndexChanging" 
            onrowcancelingedit="GridView2_RowCancelingEdit" 
            onrowcommand="GridView2_RowCommand" onrowdatabound="GridView2_RowDataBound" 
            onrowediting="GridView2_RowEditing" onrowupdating="GridView2_RowUpdating" 
            ShowFooter="True" Width="100%">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" 
                            CommandArgument='<%# Eval("Label") %>' CommandName="Delete" 
                            onclick="LinkButton4_Click1">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button2" runat="server" CommandName="ADD" CssClass="style14" 
                            Height="29px" OnClientClick="return validate();" Text="Add" Width="69px" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Milestone">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("Label")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Height="23px" 
                            Width="376px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="style13" Height="23px" 
                            Width="376px"></asp:TextBox>
                        &nbsp;
                    </FooterTemplate>
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
&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True"></asp:Label>
    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
        onclick="LinkButton5_Click">Back</asp:LinkButton>
    &nbsp;
    <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
        onclick="LinkButton6_Click">Add New Project</asp:LinkButton>
    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
</asp:Content>


