<%@ Page  Title="LOGIN" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 100%;
            text-align: center;
            margin-top: 15%;
        }
        .style41
        {
            text-decoration: underline;
            text-align: center;
        }
        .style100
        {
            margin-top: 50%;
        }
        .style101
        {
            text-align: center;
            
        }
        .style35
        {
             text-align: center;
        }
         .style42
        {
             text-align: center;
        }
        .style102
        {
            height:18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <table class="style3" align="center">
        <tr>
            <td align="left" valign="top" width="40%">
            </td>
            <td align="left" valign="top" width="20%" class="style100">
                <asp:Panel ID="Panel2" runat="server" Width="350px" Height="170px" bgcolor="Blue"
                    BackColor="Blue">
                    <table align="center" cellpadding="0" cellspacing="0" border="0" width="98%">
                        <tr>
                            <td align="left" valign="top" width="100%" colspan="2" class="style101">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="White"
                                    Text="Login" CssClass="style41"></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td class="style42">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" 
                                    ForeColor="White" Text="Username:"></asp:Label>
                            </td>
                              <td class="style29">
                                  <asp:TextBox ID="txtusername" runat="server" CssClass="style34" Height="22px" 
                                      Width="172px"></asp:TextBox>
                              </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2" valign="top" width="100%" class="style102">
                               <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" 
                                    ForeColor="White" Text="Password:"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:TextBox ID="txtpassward" runat="server" CssClass="style36" Height="22px" 
                                    TextMode="Password" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2" valign="top" width="100%">
                                &nbsp;
                            </td>
                        </tr>
                          <tr>
                            <td class="style42">
                            &nbsp;
                            </td>
                              <td class="style30">
                                  <asp:Button ID="Button4" runat="server" CssClass="style33" Font-Bold="True" 
                                      Font-Size="12pt" Height="28px" OnClick="Button4_Click" Text="Login" 
                                      Width="116px" />
                              </td>
                        </tr>
                        <tr>
                            <td class="style35" colspan="2">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="13pt" 
                                    ForeColor="#FF9933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style35" colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td align="left" valign="top" width="40%">
            </td>
        </tr>
    </table>
   
    </form>
</body>
</html>
