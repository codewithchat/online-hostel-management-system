<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bystdid.aspx.cs" Inherits="Hostel_management.proj.bystdid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/room.jpg" ImageAlign="Right" CssClass="auto-style11" Height="511px" Width="472px" style="margin-top: 81px" />
    <form id="form2" runat="server">
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  align="center";class="auto-style3" style="border: 5px ridge #FBB117; background-color: #FFFFFF" class="auto-style1">
            <tr style="background-color: #8EEBEC">
                <td colspan="3" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;">
                   Student History
                </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Enter student_id" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="169px"></asp:TextBox>
               </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SEARCH" OnClick="Button1_Click"  />
                </td>
                  <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click"   />
                </td>
            </tr>
      
            </table>
         <br />
        <br />
          <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1"></asp:GridView>
        </form>
    
</body>
</html>
