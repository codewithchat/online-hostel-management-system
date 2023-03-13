<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hostel_management.proj.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('img/hostel1 - Copy.jpg'); background-repeat: no-repeat;">
    <form id="form1" runat="server">
         
    <h1 style="margin: 120px 76px 76px 380px; text-align: center; font-variant: normal; text-transform: uppercase; font-size: x-large; color: #FFA62F;">
        welcome to hostel mangement system
    </h1>
        
       <table style="margin: 70px 76px 76px 550px; text-align: center;">
           <tr>
              
                <td style="padding: 20px">
                   <asp:Button ID="Button2" runat="server" Text="Pay Fees" BackColor="#77BFC7" BorderStyle="None" Height="32px" Width="107px" OnClick="Button2_Click" />
               </td>
               <td style="padding: 20px">
                   <asp:Button ID="Button3" runat="server" Text="Records" BackColor="#77BFC7" BorderStyle="None" Height="32px" Width="107px" OnClick="Button3_Click"/>
               </td>
               <td style="padding: 20px">
                   <asp:Button ID="Button4" runat="server" Text="Logout" BackColor="#77BFC7" BorderStyle="None" Height="32px" Width="107px" OnClick="Button4_Click" />
               </td>
                </tr>
           <tr>
               <td style="padding: 15px">
                   <asp:Button ID="Button5" runat="server" Text="ADDSTUDENT" Width="205px" BackColor="#B7CEEC" BorderStyle="None" Height="40px" OnClick="Button5_Click"  />
               </td>
               <td style="padding: 15px">
                   <asp:Button ID="Button8" runat="server" Text="Allot Room" BackColor="#56A5EC" BorderStyle="None" Width="169px"  Height="40px" OnClick="Button8_Click"  />
               </td>
                <td style="padding: 15px">
                    <asp:Button ID="Button1" runat="server" Text="Add Room" BackColor="#56A5EC" BorderStyle="None" Width="169px" Height="40px" OnClick="Button1_Click"    />
                </td>
               </tr>
            <tr>
                
               <td style="padding: 15px">
                   <asp:Button ID="Button6" runat="server" Text="DELETESTUDENT" Width="205px" BackColor="#0000A0" BorderStyle="None" Height="40px" OnClick="Button6_Click" />
               </td>
                <td style="padding: 15px">
                    <asp:Button ID="Button9" runat="server" Text="Unallot Room" BackColor="#56A5EC" BorderStyle="None" Width="169px" Height="40px" OnClick="Button9_Click"   />
                </td>
                
                </tr>
                 </table>
    </form>
</body>
</html>
