<%@ Page Title="" Language="C#" MasterPageFile="~/Admin MasterPage.master" AutoEventWireup="true" CodeFile="Add Product.aspx.cs" Inherits="Admin_Add_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    body {
         background-image: linear-gradient(to right,#ed213a ,#93291e); 
        background-repeat: no-repeat;
        height: 760px;
    }

    .Panel {
        border-radius: 18px;
        background-color: white;
        margin-left: 503px;
        margin-top: 0px;
    }
 
    
.TextBox {   
  border: none;
  color: #0d0d0d;
  padding: 10px 12px;
  outline: none;
  display: inline-block;
  font-size: 20px;
  
  border-bottom: 2px solid #f6f6f6
    }

.TextBox:hover {
  background: white;
  border-bottom: 3px solid #FF3131;   
        }

     
        .auto-style1 {
            width: 38%;
            height: 350px;
            border-radius: 16px;
            background-color: white;
        margin-left: 436px;
        margin-right: 0px;
        box-shadow: 15px 15px;
    }
        .auto-style3 {
        width: 457px;
    }
     
    .auto-style6 {
        width: 337px;
        height: 52px;
    }
    .auto-style7 {
        width: 457px;
        height: 52px;
    }
     
    .auto-style8 {
            width: 337px;
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
     
</style>
    
 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11" type="text/javascript"></script>
    <script>
        function wrong() {
            Swal.fire({
                icon: 'success',
                title: 'Product has been Added Sucessfully',
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
        <li><a class="active" href="Add Product.aspx">Add Products</a></li>
        <li><a href="Update.aspx">Update</a></li>
        <li><a href="Delete.aspx">Delete</a></li>
        <li><a href="Delete.aspx">Order View</a></li>
          <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>
     <br />
        <br />
        <br />       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp; &nbsp;<br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Height="27px" Text="   Product ID" Font-Size="20px" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style3">
                    <br />
&nbsp;&nbsp;&nbsp; 
                    <br />
&nbsp;<br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Purple"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Product Name" Font-Size="20px" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="TextBox" runat="server" Height="20px" Width="227px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Price" Width="47px" Font-Size="20px" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" CssClass="TextBox" runat="server" Height="30px" Width="224px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Upload Image" Font-Size="20px" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style3">
                    <br />
                    &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Green" Text=""></asp:Label>
                </td>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Save Product" Width="142px" CssClass="btn1" />
                    <br />
                    <br />
                    &nbsp;
                    </td>
            </tr>
        </table>
    
    
        <p>
            &nbsp;</p>
</asp:Content>

