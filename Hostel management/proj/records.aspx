<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="records.aspx.cs" Inherits="Hostel_management.proj.records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            width: 353px;
            height: 198px;
            margin-left: 462px;
            margin-top: 173px;
        }
        </style>
</head>
<body style="background-image: url('img/hostel1 - Copy.jpg'); background-repeat: no-repeat;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/proj/img/images.png" CssClass="auto-style1" Height="322px" ImageAlign="Right" Width="419px" />
    <form id="form1" runat="server">
        <table align="center" class="auto-style3" style="text-align: center">
            <tr>
                <td  class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="SEARCH BY  STUDENT ID" Height="29px" Width="220px" BackColor="#98AFC7" BorderStyle="None" OnClick="Button1_Click" />
                </td>
                </tr>
               <tr>
                 <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="SEARCH BY ROOM NO" Height="30px" Width="220px"  BackColor="#56A5EC" BorderStyle="None" OnClick="Button2_Click1" />
                </td>
            </tr>
<tr>
                 <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="SEARCH HOSTEL RECORD" Height="30px" Width="220px"  BackColor="#98AFC7" BorderStyle="None" OnClick="Button3_Click" />
                </td>
            </tr>        

<tr>
                 <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" Text="Cancel" Height="30px" Width="220px"  BackColor="#98AFC7" BorderStyle="None" OnClick="Button4_Click1" />
                </td>
            </tr>   
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
          <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>

</body>
</html> 
