<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        body {
            background-color: ivory;
        }
        .auto-style8 {
            width: 61%;
            margin-bottom: 12px;
            margin-left: 255px;
        }
        .auto-style9 {
            width: 365px;
            height: 39px;
        }
        .auto-style11 {
            width: 365px;
            height: 43px;
        }
        .auto-style13 {
            height: 43px;
            width: 1053px;
        }
        .auto-style14 {
            height: 39px;
            width: 1053px;
        }
        .auto-style15 {
            width: 604px;
            height: 43px;
        }
        .auto-style16 {
            width: 604px;
            height: 39px;
        }
        .auto-style17 {
            width: 701px;
            height: 43px;
        }
        .auto-style18 {
            width: 701px;
            height: 39px;
        }
           
.TextBox {   
  border: none;
  color: #0d0d0d;
  padding: 8px 10px;
  outline: none;
  display: inline-block;
  font-size: 18px;
  margin: 5px 5px 5px 6px;
  border-bottom: 2px solid grey;
  background-color: ivory;
    }

.TextBox:hover {
  background: ivory;
  border-bottom: 3px solid #FF3131;   
        }

        .btn1 {
        border:none;
        background-color: crimson;
        color: white;
        border: 2px solid white;
        border-radius: 20px;
    }

 .btn1:hover {
            border: none;
            background-color: red;
            color: white;
            box-shadow: 0 0 55px red; 
            cursor: pointer;     
        }

        .gridview {
            box-shadow: 15px 15px;
        }

    </style>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11" type="text/javascript"></script>
    <script>
        function wrong() {
            Swal.fire({
                icon: 'success',
                title: 'Product Has Been Ordered Sucessfully',
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
        <table class="auto-style8">
            <tr>
                <td class="auto-style15">Order ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :</td>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Purple"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox1" CssClass="TextBox" runat="server" Height="30px" style="margin-left: 6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Order Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Crimson"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile Number&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" CssClass="TextBox" runat="server" Height="31px"></asp:TextBox>
                </td>
            </tr>
        </table>
       
        <br />
        <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="392px" ShowFooter="True" style="margin-left: 256px; text-align: center;" Width="959px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="SNO" />
                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                    <ControlStyle Height="100px" Width="150px" />
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="Price" >
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" Height="50px" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" Height="150px" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
&nbsp;:<asp:TextBox ID="TextBox3" runat="server" CssClass="TextBox" Height="30px" Width="200px"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="btn1" runat="server" OnClick="Button1_Click" Text="Place Order" Height="48px" style="margin-top: 0; margin-left: 354px;" Width="166px" />
        <br />
        <br />
    
 </asp:Content>