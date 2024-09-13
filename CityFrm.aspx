<%@ page language="C#" autoeventwireup="true" inherits="CityFrm, App_Web_cityfrm.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CityForm</title>
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
        <table><tr><td class="style1"> 
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
    <td style="background-color:Navy; margin-right:auto"><asp:Button ID="Button1" runat="server" Text="All Data" CssClass="asp-button" CausesValidation="false" PostBackUrl="~/AllData.aspx"></asp:Button></td>
</tr>

        
        </table>
        
        
</header>
        </section>
        <center>
            <fieldset>
                <legend>City Details</legend>
                <table>
                    <tr>
                        <td>
                            Select Country<b style="color: Red;">*</b>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Rquired Select Country"
                                ControlToValidate="ddlcountry" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Select State<b style="color: Red;">*</b>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlstate" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Rquired Select State"
                                ControlToValidate="ddlstate" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City Name<b style="color: Red;">*</b>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtsnm" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required"
                                ControlToValidate="txtsnm" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City Description
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtsdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City Satus
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:CheckBox ID="chksstatus" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click1"
                                CssClass="asp-button" Width="100px" />
                            <asp:Button ID="btnupdate" runat="server" Text="Update" Visible="False" OnClick="btnupdate_Click"
                                CssClass="asp-button update" Width="100px" />
                            <asp:Button ID="btnreset" runat="server" Text="Reset" CausesValidation="False" OnClick="btnreset_Click"
                                CssClass="asp-button reset" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300"
                                ShowMessageBox="True" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table border="3">
                                        <tr>
                                            <th>
                                                SN
                                            </th>
                                            <th>
                                                CountryName
                                            </th>
                                            <th>
                                                StateName
                                            </th>
                                            <th>
                                                CityName
                                            </th>
                                            <th>
                                                Description
                                            </th>
                                            <th>
                                                Satus
                                            </th>
                                            <th>
                                                Update
                                            </th>
                                            <th>
                                                Delete
                                            </th>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%#Container.ItemIndex+1 %>
                                        </td>
                                        <td>
                                            <%#Eval("cnm")%>
                                        </td>
                                        <td>
                                            <%#Eval("snm")%>
                                        </td>
                                        <td>
                                            <%#Eval("ciname")%>
                                        </td>
                                        <td>
                                            <%#Eval("cides")%>
                                        </td>
                                        <td>
                                            <%#Eval("cista")%>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/CityFrm.aspx?updateid="+Eval("ciid").ToString()%>'>ClcikToUpdate</asp:HyperLink>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/CityFrm.aspx?deleteid="+Eval("ciid").ToString() %>'>ClickToDelete</asp:HyperLink>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </center>
    </div>
    </form>
</body>
</html>
