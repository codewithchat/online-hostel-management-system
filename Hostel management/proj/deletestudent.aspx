<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletestudent.aspx.cs" Inherits="Hostel_management.proj.deletestudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  align="center";class="auto-style3" style="border: 5px ridge #98AFC7; background-color: #FFFFFF" class="auto-style1">
            <tr>
                <th style="text-transform: uppercase"class="auto-style2" colspan="2">
                    dElEte Student
                </th>
                
            </tr>
             <tr>
                <td style="border-style: none; text-transform: uppercase; text-align: center;"class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="STUDENT ID" BorderColor="#98AFC7" BackColor="#FBB917" BorderStyle="Groove" BorderWidth="5px" Width="152px"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" Height="26px" Width="183px" ></asp:TextBox>
               </td>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="SEARCH" OnClick="Button1_Click" />
                 </td>
                
            </tr>
             <tr >
                <td style="text-transform: uppercase; text-align: center;"class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="STUDENT NAME" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="152px" BorderWidth="5px"></asp:Label>
               </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="184px"></asp:TextBox>
               </td>
                
            </tr>
             <tr >
                <td style="text-transform: uppercase;text-align: center;"class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="FATHER NAME" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="152px" BorderWidth="5px"></asp:Label>
               </td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="183px"></asp:TextBox>
               </td>
                
            </tr>
             <tr >
                <td style="text-transform: uppercase;text-align: center;"class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="course" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="152px" BorderWidth="5px"></asp:Label>
               </td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="183px"></asp:TextBox>
               </td>
                
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click"  />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click"   />
                </td>
                </tr>
            </table>
    </form>
</body>
</html>
