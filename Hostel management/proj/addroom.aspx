<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addroom.aspx.cs" Inherits="Hostel_management.proj.addroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 494px;
            
            margin-top: 81px;
        }
        .auto-style2 {
            width: 327px;
        }
        .auto-style3 {
            width: 207px;
        }
        </style>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/room.jpg" ImageAlign="Right" CssClass="auto-style11" Height="511px" Width="472px" style="margin-top: 81px" />
    <form id="form1" runat="server">
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  cellspacing="10" align="center";class="auto-style3" style="border: 5px ridge #FBB117; background-color: #FFFFFF" class="auto-style1">
            <tr style="background-color: #8EEBEC">
                <td colspan="3" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;">
                    ADD ROOM
                </td>
                
            </tr>
           <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="ROOM NO" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox3" Height="30px"  Width="169px" runat="server"></asp:TextBox>
               </td>
                </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="ROOM CATEGORY" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox2" Height="30px"  Width="169px" runat="server"></asp:TextBox>
               </td>
                
            </tr>
            </tr>
             
            <tr>
                <td align="Center">
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" Width="67px" />
                </td>
                <td>
<asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
                </td>
            </tr>
            </table>
        </form>
</body>
</html>
