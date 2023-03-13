<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payfees.aspx.cs" Inherits="Hostel_management.proj.payfees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/room.jpg" ImageAlign="Right" CssClass="auto-style11" Height="511px" Width="472px" style="margin-top: 81px" />
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  align="center";class="auto-style3" style="border: 5px ridge #FBB117; background-color: #FFFFFF" class="auto-style1">
            <tr style="background-color: #8EEBEC">
                <td colspan="3" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;">
                   Pay Fees
                </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Registration_id" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="169px"></asp:TextBox>
               </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SEARCH" OnClick="Button1_Click"  />
                </td>
            </tr>
       <tr style="text-align: center">
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="PAID"  Width="108px"  style="height: 26px" OnClick="Button2_Click"  />
                </td>
                 <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="CANCEL"  Width="105px"  style="height: 26px" OnClick="Button3_Click" />
                </td>
            </tr>
            </table>
         <br />
        <br />
          <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1"></asp:GridView>
        </form>
    
</body>
</html>
