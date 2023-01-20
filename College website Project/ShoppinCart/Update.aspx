<%@ Page Title="" Language="C#" MasterPageFile="~/Admin MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

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
                title: 'Product Has Been Updated Sucessfully',
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
        <li><a  class="active" href="Update.aspx">Update</a></li>
        <li><a href="Delete.aspx">Delete</a></li>
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

              <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="156px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="text-align: center; margin-left: 257px;" Width="927px">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:TemplateField HeaderText="Product ID">
                          <EditItemTemplate>
                              <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("ProductId") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Peoduct Name">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ProductName") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Price">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                          </ItemTemplate>
                          <HeaderStyle Width="150px" />
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Image">
                          <EditItemTemplate>
                              <asp:FileUpload ID="FileUpload1" runat="server" />
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
                          </ItemTemplate>
                          <ControlStyle Height="100px" Width="150px" />
                      </asp:TemplateField>
                      <asp:CommandField ShowEditButton="True" />
                  </Columns>
                  <FooterStyle BackColor="#CCCC99" />
                  <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="50px" />
                  <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                  <RowStyle BackColor="#F7F7DE" Height="130px" />
                  <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#FBFBF2" />
                  <SortedAscendingHeaderStyle BackColor="#848384" />
                  <SortedDescendingCellStyle BackColor="#EAEAD3" />
                  <SortedDescendingHeaderStyle BackColor="#575357" />
              </asp:GridView>
&nbsp;
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        
      
   
</asp:Content>

