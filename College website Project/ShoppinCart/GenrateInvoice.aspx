<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenrateInvoice.aspx.cs" Inherits="GenrateInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 406px;
        }
        .auto-style2 {
            height: 75px;
        }
        .auto-style3 {
            width: 100%;
            height: 142px;
        }
        .auto-style4 {
            height: 123px;
        }
        .auto-style5 {
            width: 856px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Order ID:
        <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Button" Width="117px" />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="756px">
            <table class="auto-style1" border="2">
                <tr>
                    <td style="text-align: center">Retail Invoice</td>
                </tr>
                <tr>
                    <td class="auto-style2">Order No:
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <br />
                        <br />
                        Order Date :
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <table border="2" class="auto-style3">
                            <tr>
                                <td class="auto-style5">Buyer Address:&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                </td>
                                <td>Seller Address:&nbsp;
                                    <asp:Label ID="Label7" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="318px" Width="942px">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="SNO" />
                                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Grand Total:
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
