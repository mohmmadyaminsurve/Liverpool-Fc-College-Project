<%@ Page Title="" Language="C#" MasterPageFile="~/Admin MasterPage.master" AutoEventWireup="true" CodeFile="Order Details.aspx.cs" Inherits="Order_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-color: navajowhite;
        }

        .Gridview {
            box-shadow: 15px 15px 10px;
            border-radius: 12px 12px;
        }

       .btn {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        font-family: "Roboto", sans-serif;
        font-size: 10px;
        background: red;
        padding: 8px;
        text-decoration: none;
        color: #fff;
        border-radius: 26px;
        cursor: pointer;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: box-shadow, transform;
        transition-property: box-shadow, transform;
        }

        .btn:hover, .btn:focus, .btn:active {
            box-shadow: 0 0 20px black;
            -webkit-transform: scale(1.1);
            transform: scale(1.1);

        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <nav>
      <div class="logo">Liverpool FC</div>
      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fas fa-bars"></i>
      </label>
      <ul>
        <li><a href="Add Product.aspx">Add Products</a></li>
        <li><a href="Update.aspx">Update</a></li>
        <li><a href="Delete.aspx">Delete</a></li>
        <li><a class="active"href="Order Details.aspx">Order View</a></li>
        <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>

<br />
<br />
<br />
<br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" CssClass="Gridview" runat="server" DataSourceID="SqlDataSource1" DataTextField="orderid" DataValueField="orderid" Height="50px" style="margin-top: 0px" Width="194px">
        </asp:DropDownList>
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="btn" runat="server" Height="56px" OnClick="Button1_Click" Text="View Orders" Width="181px" />
<br />
<br />
<br />
        <asp:GridView ID="GridView1" CssClass="Gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Visible="False" Height="175px" style="text-align: center; margin-left: 88px" Width="1197px" DataKeyNames="orderid">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="OrderId" ReadOnly="True" SortExpression="orderid" />
                <asp:BoundField DataField="sno" HeaderText="SNo" SortExpression="sno" />
                <asp:BoundField DataField="productid" HeaderText="ProductID" SortExpression="productid" />
                <asp:BoundField DataField="productname" HeaderText="ProductName" SortExpression="productname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="dateoforder" HeaderText="DateOfOrder" SortExpression="dateoforder" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="3px" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" Height="10px" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
<br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT DISTINCT [orderid] FROM [OrderDetails]"></asp:SqlDataSource>
        <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([orderid] = @orderid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="orderid" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
</asp:Content>

