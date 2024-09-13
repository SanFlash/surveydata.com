<%@ page language="C#" autoeventwireup="true" inherits="Default2, App_Web_alldata.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AllStatus</title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <style type="text/css">
        .style1
        {
            width: 753px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <section>
       
        <header CssClass="header">
      
        <table>
        <tr>
        <td class="style1"> 
        <h2><b style="color:White">Data Survey</b></h2></td>
        <td> <asp:Image ID="Image1" runat="server" CssClass="img" ImageUrl="~/Image/DP NOW.jpg" ImageAlign="Right"></asp:Image>
        </td></tr>
        <tr>
    <td style="background-color:Navy; "text-align: center;" class="style1"> 
        <asp:Menu ID="Menu1" runat="server" CssClass="horizontal-menu" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Country" NavigateUrl="~/CountryFrm.aspx"></asp:MenuItem>
                <asp:MenuItem Text="State" NavigateUrl="~/StateFrm.aspx"></asp:MenuItem>
                <asp:MenuItem Text="City" NavigateUrl="~/CityFrm.aspx" ></asp:MenuItem>
            </Items>
        </asp:Menu>
    </td>
    <td style="background-color:Navy; margin-right:auto"><asp:Button ID="Button1" runat="server" Text="All Data" CssClass="asp-button" CausesValidation="false">
    </asp:Button>
    <asp:Button ID="Button5" runat="server" Text="Clear" CssClass="asp-button" 
            CausesValidation="false" onclick="Button5_Click"></asp:Button>
    </td>
</tr> 
        </table>


</header>
        </section>
    </div>

    <table>
        <tr align="center" >
            <td>
                <asp:Button ID="Button2" runat="server" Text="Country" CssClass="asp-button" 
                    OnClick="Button2_Click" Height="36px">
                </asp:Button>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="State" CssClass="asp-button" 
                    onclick="Button3_Click" Height="36px"></asp:Button>
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="City" CssClass="asp-button" 
                    onclick="Button4_Click" Height="36px"></asp:Button>
            </td>
        </tr>
    </table>

   
   <fieldset style="border="2">
    <table style="background-color:White">
        <tr><td>
            <asp:GridView ID="GridView1" runat="server" 
     Width="961px" Visible="False" BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sat24AugConnectionString %>"
                SelectCommand="SELECT * FROM [countrytable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Sat24AugConnectionString %>"
                SelectCommand="SELECT * FROM [StateTable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Sat24AugConnectionString %>"
                SelectCommand="SELECT * FROM [CityTable]" ></asp:SqlDataSource>
        </td></tr>
    </table>
    </fieldset>
    </form>
</body>
</html>
