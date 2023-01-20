<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Bill.aspx.cs" Inherits="Bill" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

         .gridview {
             margin-left: 396px;
         }

         body {
             background-color: antiquewhite;
         }

           .btn {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        font-family: "Roboto", sans-serif;
        font-size: 10px;
        background: #FF3131;
        padding: 8px;
        text-decoration: none;
        color: #fff;
        border-radius: 18px;
        cursor: pointer;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: box-shadow, transform;
        transition-property: box-shadow, transform;
        }

        .btn:hover, .btn:focus, .btn:active {
            box-shadow: 0 0 20px #FF3131;
            -webkit-transform: scale(1.1);
            transform: scale(1.1);

        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    <div>
         <nav>
      <div class="logo">Liverpool FC</div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fas fa-bars"></i>
      </label>
      <ul>
        <li><a class="active" href="Home Page.aspx">Home</a></li>
        <li><a href="Default.aspx">Products</a></li>
         <li><a href="News.aspx">News</a></li>
        <li><a href="About Us.aspx">About Us</a></li>
        <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>
        <br />
        <br />
        <br />
        <br />
        &nbsp;Order ID:
        <asp:Label ID="Label3" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Cyan"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="btn" runat="server" Height="43px" OnClick="Button1_Click" Text="Download Invoice" Width="149px" />
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
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Purple"></asp:Label>
                        <br />
                        <br />
                        Order Date :
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <table border="2" class="auto-style3">
                            <tr>
                                <td class="auto-style5">Buyer Address:&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </td>
                                <td>Seller Address:&nbsp;
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red">Liverpool Football Club, Liverpool, 27street</asp:Label>
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
                        <asp:GridView ID="GridView1" runat="server" CssClass="gridview"  AutoGenerateColumns="False" Height="359px" Width="970px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="SNO" />
                                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([orderid] = @orderid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label3" Name="orderid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
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
</asp:Content>
  