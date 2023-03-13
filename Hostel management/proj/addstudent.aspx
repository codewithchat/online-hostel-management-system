<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstudent.aspx.cs" Inherits="Hostel_management.proj.addstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style2 {
            height: 45px;
        }
                
        .auto-style6 {
            margin-left: 42px;
        }
        
        .auto-style9 {
            height: 34px;
        }
        
        .auto-style11 {
            margin-top: 68px;
        }
        
        .auto-style12 {
            width: 463px;
            height: 408px;
            margin-top: 93px;
        }
        
    </style>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/hostel5.jpg" ImageAlign="Right" CssClass="auto-style11" Height="511px" Width="453px" />
    <form id="form1" runat="server">
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  align="center";class="auto-style3" style="border: 5px ridge #98AFC7; background-color: #FFFFFF" class="auto-style12">
            <tr>
                <th style="text-transform: uppercase"class="auto-style2" colspan="2">
                 ADD Student
                </th>
                
            </tr>
             <tr>
                <td style="border-style: none; text-transform: uppercase; text-align: center;"class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="STUDENT ID" BorderColor="#98AFC7" BackColor="#FBB917" BorderStyle="Groove" BorderWidth="5px" Width="152px"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" Height="26px" Width="183px" Enabled="False"></asp:TextBox>
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
                <td style="text-transform: uppercase; text-align: center;" class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="COURSE" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="152px" BorderWidth="5px"></asp:Label>
               </td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="183px"></asp:TextBox>
               </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase;text-align: center;"class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="ADDRESS" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="152px" BorderWidth="5px"></asp:Label>
               </td>
                 
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="183px"></asp:TextBox>
               </td>
                 </tr>
            <tr >
                <td style="text-transform: uppercase;text-align: center;" text-align: center;class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="MOBILE NUMBER" BackColor="#FBB917" BorderColor="#98AFC7" BorderStyle="Groove" Width="160px" BorderWidth="5px"></asp:Label>
               </td>
                 
                 <td>
                     <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="183px" TextMode="Number"></asp:TextBox>
               </td>
                 </tr>
            <tr>
                <td class="auto-style9" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="ADD" Height="30px" Width="130px" OnClick="Button1_Click1"  />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Text="CANCEL" Height="30px" Width="130px" CssClass="auto-style6" OnClick="Button2_Click"  />
                    </td>
            </tr>
            
        </table>
       
    </form>
</body>
</html>
