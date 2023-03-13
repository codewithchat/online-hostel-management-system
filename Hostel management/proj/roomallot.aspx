<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roomallot.aspx.cs" Inherits="Hostel_management.proj.roomallot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style type="text/css">
        .auto-style1 {
            width: 494px;
            height: 533px;
            margin-top: 81px;
        }
        .auto-style2 {
            width: 327px;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            width: 207px;
            height: 41px;
        }
        .auto-style5 {
            width: 327px;
            height: 41px;
        }
    </style>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/room.jpg" ImageAlign="Right" CssClass="auto-style11" Height="511px" Width="472px" style="margin-top: 81px" />
    <form id="form1" runat="server">
        <h1 style="color: #FFFFFF; background-color: #737CA1;">
            
HOSTEL MANAGEMENT SYSTEM
        </h1>
        <table  align="center";class="auto-style3" style="border: 5px ridge #FBB117; background-color: #FFFFFF" class="auto-style1">
            <tr style="background-color: #8EEBEC">
                <td colspan="3" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;">
                    ROOM ALLOT
                </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="ROOM NO" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="169px"></asp:TextBox>
               </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click" />
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
            
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Student_ID" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge"></asp:TextBox>
                 </td>
                  <td>
                    <asp:Button ID="Button3" runat="server" Text="SEARCH" OnClick="Button3_Click"  />
                </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Student_NAME" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge"></asp:TextBox>
               </td>
                
            </tr>
            
              <tr>
                <td style="text-transform: uppercase"class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Class" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style5">
                     <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge"></asp:TextBox>
               </td>
                
            </tr>
             <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="DATE OF ISSUE" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge" TextMode="Date" ></asp:TextBox>
               </td>
                
            </tr>
            <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="FEES" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge" ></asp:TextBox>
               </td>
</tr>
            <tr>
                <td style="text-transform: uppercase"class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Registration_id" BackColor="Silver"></asp:Label>
               </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="179px" BackColor="White" BorderColor="White" BorderStyle="Ridge" Enabled="False" ></asp:TextBox>
               </td>
            <tr style="text-align: center">
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="ADD"  Width="108px" OnClick="Button1_Click" />
                </td>
                 <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="CANCEL"  Width="105px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" Text="Rooms"  Width="148px" OnClick="Button5_Click"  />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                     <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </td>
            </tr>
            </table>
        <br />
        <br />
       
    </form>
</body>
</html>
