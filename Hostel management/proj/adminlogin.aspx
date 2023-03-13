<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Hostel_management.proj.img.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center; margin: 110px 110px 110px 150px; color: #5CB3FF; text-transform: uppercase; font-variant: normal; font-weight: bold; font-size: 35px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/download.png" Height="47px" Width="135px" />hostel management system
        </h1>
       <table style=" border: 7px outset #BCC6CC; margin: 20px 110px 110px 550px;">
           <tr>
               <td colspan="2" style="text-align: center; font-size: x-large">
                   
                   <asp:Label ID="Label4" runat="server" Text="ADMIN" BackColor="#98AFC7"></asp:Label>
               </td>
               
           </tr>
           <tr>
               <td style="padding: 30px">
                   <asp:Label ID="Label1" runat="server" Text="USERNAME" BackColor="#E5E4E2"></asp:Label>
               </td>
               <td style="padding: 30px">
                   <asp:TextBox ID="TextBox1" runat="server" BackColor="#EBF4FA" ReadOnly="True">hostel</asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="padding: 30px">
                   <asp:Label ID="Label2" runat="server" Text="PASSWORD" BackColor="#E5E4E2"></asp:Label>
               </td>
               <td style="padding: 30px">
                   <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="#EBF4FA"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="padding: 30px; text-align: center" align="right">
                   <asp:Button ID="Button1" runat="server" Text="LOGIN" BackColor="#25383C" BorderColor="#659EC7" BorderStyle="Outset" BorderWidth="5px" ForeColor="#FBB917" OnClick="Button1_Click"  />
               </td>
               <td align="center">
<asp:Button ID="Button2" runat="server" Text="CANCEL" BackColor="#25383C" BorderColor="#659EC7" BorderStyle="Outset" BorderWidth="5px" ForeColor="#FBB917"  />
               </td>
           </tr>
           </table>
    </form>
</body>
</html>
