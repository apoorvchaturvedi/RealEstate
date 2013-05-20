<%@ Page Title="BPTP" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLink.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title></title>
    <style type="text/css">
        .a
        {
            text-decoration:none;
            color:Blue;
            text-align: center;
        }
        a:hover
        {
            text-decoration:underline;
            color:Blue;
        }
        
          .style11
        {
            margin:0px;
            padding:0px;
            height:25px;
            font-size:20px;
            
         }
         .style1
         {
             text-align:center;
         }
        .style12
        {
            width: 100%;
            height: 220px;
        }
        .style14
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div class="style1">
    
        <asp:Panel ID="Panel2" runat="server" BorderColor="Blue" BorderWidth="3px" Height="264px"
            Font-Bold="True" GroupingText="Target Date Update Navigation">
            <table class="style12">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <p class="style11">
                            <a class="a" href="AdminUnittargetlink.aspx"><strong class="style14">Tower/Plot Wise Target-Date Updation</strong></a></p>
                        <p class="style11">
                            <a class="a" href="AdminUnitWiseUpdation.aspx"><strong>Unit Wise Target-Date Updation</strong></a></p>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>


