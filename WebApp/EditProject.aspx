<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditProject.aspx.cs" Inherits="ProjectInfo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    function validate() {
        if (document.getElementById("ContentPlaceHolder1_txtprojectName").value == "") {
            alert("Please Enter  The Project Name");
            document.getElementById("ContentPlaceHolder1_txtprojectName").focus();
            return false;

        }

        if (document.getElementById("ContentPlaceHolder1_txtCategory").value == "") {
            alert("Please Enter The Category Name");
            document.getElementById("ContentPlaceHolder1_txtCategory").focus();
            return false;

        }
        if (document.getElementById("ContentPlaceHolder1_txtstartdate").value == "") {
            alert("Please Enter The  Start Date");
            document.getElementById("ContentPlaceHolder1_txtstartdate").focus();
            return false;

        }
        if (document.getElementById("ContentPlaceHolder1_txtenddate").value == "") {
            alert("Please Enter The End Date");
            document.getElementById("ContentPlaceHolder1_txtenddate").focus();
            return false;

        }
        if (document.getElementById("ContentPlaceHolder1_txtstatus").value == "") {
            alert("Please Enter The Status");
            document.getElementById("ContentPlaceHolder1_txtstatus").focus();
            return false;

        }
        if (document.getElementById("ContentPlaceHolder1_txtlocation").value == "") {
            alert("Please Enter The Locattion Name");
            document.getElementById("ContentPlaceHolder1_txtlocation").focus();
            return false;
        }
        if (document.getElementById("ContentPlaceHolder1_txtbudget").value == "") {
            alert("Please Enter The Budget ");
            document.getElementById("ContentPlaceHolder1_txtbudget").focus();
            return false;

        }

        var a = /^[-+]?[0-9]+\.[0-9]+$/;
        if (document.getElementById("ContentPlaceHolder1_txtbudget").value.match(a) == null) {
            alert("Please Enter The Budget in Decimal Only");
            document.getElementById("ContentPlaceHolder1_txtbudget").focus();
            return false;
        }
    }
 </script>
    
        
    <style type="text/css">
        .style12
        {}
        .style13
        {
            height: 28px;
        }
        .style14
        {
            height: 37px;
        }
    .style7
    {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
        GroupingText="Project Edit Information" Height="260px" BorderColor="Blue" 
        BorderWidth="3px">
        <table  class="style1">
            <tr>
                <td class="style14">
                    <asp:Label ID="Label13" runat="server" 
                Text="ProjectName:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtprojectName" runat="server" CssClass="style12" autocomplete="off"
                        Height="22px" Width="180px"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="style14">
                    <asp:Label ID="Label14" runat="server" Text="Category:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtCategory" runat="server" Width="180px" Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label15" runat="server" Text="StartDate:" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstartdate" runat="server" Width="180px"  Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                       
                    <cc1:CalendarExtender ID="txtstartdate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtstartdate" Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                       
                   
                       
                </td>
                <td class="style14">
                    <asp:Label ID="Label16" runat="server" Text="EndDate:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtenddate" runat="server" Width="180px"  Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                    
                    <cc1:CalendarExtender ID="txtenddate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtenddate" Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                    
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label17" runat="server" Text="Status:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtstatus" runat="server" Width="180px"  Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                </td>
                <td class="style14">
                    <asp:Label ID="Label18" runat="server" Text="Location:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtlocation" runat="server" Width="180px"  Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label19" runat="server" Text="Budget:" Font-Bold="True"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtbudget" runat="server" Width="180px"  Height="22px" CssClass="style12" autocomplete="off"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" ForeColor="#FF6600" Text="IN 0.00 Lacs"></asp:Label>
                </td>
                <td class="style14">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7" colspan="2">
                    <asp:Button ID="Button6" runat="server" CssClass="style13" Height="27px"  
                        onclick="Button6_Click" Text="Save" Width="66px" Font-Bold="True" OnClientClick='return validate();' />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" 
                        CssClass="style13" Font-Bold="True" Height="27px" onclick="Button8_Click" 
                        Text="Cancel" Width="66px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7" colspan="2">
                    <asp:Label ID="Label20" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        Font-Bold="True">Back</asp:LinkButton>
</asp:Content>


