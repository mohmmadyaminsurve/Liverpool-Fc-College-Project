<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style4 {
            width: 264px;
        }
        .auto-style5 {
            width: 264px;
            height: 50px;
        }
        .auto-style1 {
            height: 350px;
            width: 296px;
        }
        body {
            background-color:antiquewhite;
        }

        .label {
            color: red;
            text-decoration: none;
        }

        .labe:hover {
            color: red;
            background-color: none;
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
        <li><a href="Home Page.aspx">Home</a></li>
        <li><a class="active" href="Default.aspx">Products</a></li>
         <li><a href="News.aspx">News</a></li>
        <li><a href="About Us.aspx">About Us</a></li>
        <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>
    <br />
    <br />
    <br />
    <br />
    
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You Have Products in Your Cart&nbsp; <asp:Label ID="Label3" runat="server" Font-Bold="True" BackColor="Black" ForeColor="Cyan"></asp:Label>
         &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" CssClass="label" runat="server" NavigateUrl="~/AddToCart.aspx" Font-Bold="True" ForeColor="Red">Your Cart?</asp:HyperLink>
         <br />
        <br />
         <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataKeyField="ProductId" DataSourceID="SqlDataSource1" Height="40px" RepeatColumns="3" RepeatDirection="Horizontal" Width="836px" OnItemCommand="DataList1_ItemCommand" style="text-align: center; margin-top: 93; margin-left:369px;" CellSpacing="2">
            <FooterStyle ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#8C4510" />
            <ItemTemplate>
                &nbsp;<br />
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Product ID"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductId") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("ProductImage") %>' Width="146px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Quantity<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/Shopping.png" style="text-align: center" Width="142px" CommandArgument='<%# Eval("ProductId") %>' CommandName="addtocart" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineProjectDataConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
   
 </asp:Content>
