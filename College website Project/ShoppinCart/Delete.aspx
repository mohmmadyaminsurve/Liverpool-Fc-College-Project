<%@ Page Title="" Language="C#" MasterPageFile="~/Admin MasterPage.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        body {
            background-color: navajowhite;
        }
         .gridview {
            box-shadow: 16px 16px 12px;
        }
    </style>
    

 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11" type="text/javascript"></script>
    <script>
        function wrong() {
            Swal.fire({
                icon: 'success',
                title: 'Product Has Been Deleted Sucessfully',
                //text: 'Either UserName or Password is wrong!',
                //footer: '<a href="Create LogIn.aspx">Why do I have this issue?</a>'
            })
        }
    </script> 
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
        <li><a  class="active" href="Delete.aspx">Delete</a></li>
        <li><a href="Order Details.aspx">Order View</a></li>
          <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>
<br />
<br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="240px" style="text-align: center; margin-left: 398px" Width="706px" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
            <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                <ControlStyle Height="100px" Width="150px" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="60px" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE from [Product] Where [ProductId]=@ProductId"></asp:SqlDataSource>
<br />

</asp:Content>

