<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
<style>
    body {
        background-color: crimson;
    }

    .panel {
        border-radius: 16px;
        box-shadow: 5px 5px 15px 9px;
    }

    
.fadeindown {
        -webkit-animation-name: fadeindown;
        animation-name: fadeindown;
        -webkit-animation-duration: 2s;
        animation-duration: 2s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
    }

    @-webkit-keyframes fadeindown {
        0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
        }
    }

    .Textbox {
     border-radius: 25px;
    border: 2px solid white;
    padding: 20px;
    background: crimson;
    font-size: medium;
    outline:none;
    text-align: center;
    color: white;
    }

        .Textbox:focus {
     color: white;
    transition: 0.4s;
    border: 2px solid  white;
    box-shadow: 0 0 85px white;
        }

    .auto-style3 {
        width: 483px;
        height: 421px;
        border-radius: 18px;
        
    }

    .dropdown {
        border-radius: 26px;
        border: 2px solid white;
        outline:none;
        background: crimson;
        color: white;
        text-align:center;
    }

     .dropdown:hover {
         box-shadow: 0 0 25px white; 
        border: 2px solid white;
    }


::placeholder {
    color: white;
    text-align:center;
    }

    .btn {
        border:none;
        background-color: crimson;
        color: white;
        border: 2px solid white;
        border-radius: 20px;
    }

        .btn:hover {
            background-color: white;
            color: darkgoldenrod;
             box-shadow: 0 0 25px white; 
             cursor: pointer;
              
              
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

    .Label {
        color: white;
        box-shadow:0 0 95px white;
        outline: none;
        background-color: transparent;
    }
</style>

 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11" type="text/javascript"></script>
    <script>
        function wrong() {
            Swal.fire({
                icon: 'success',
                title: 'Registration has been Sucessfully Completed',
                //text: 'Either UserName or Password is wrong!',
                //footer: '<a href="Create LogIn.aspx">Why do I have this issue?</a>'
            })
        }
    </script> 
     
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" CssClass="panel fadeindown" runat="server" Height="421px" style="margin-left: 279px" Width="972px" BackColor="crimson" Font-Size="15px">
            <div style="float:right; width: 482px; height: 419px;";>&nbsp;&nbsp;<br /> &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" CssClass="Label" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="White" Text="Sign Up" Height="28px" Width="94px"></asp:Label>
                &nbsp;<br />
                <br />&nbsp;
                <br />
&nbsp;<br />&nbsp;
                <asp:TextBox ID="FirstName" runat="server" CssClass="Textbox" Height="7px" placeholder="FirstName" Width="160px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="LastName" runat="server" CssClass="Textbox" Height="7px" placeholder="LastName" Width="160px"></asp:TextBox>
                <br />
                <br />
&nbsp;
                <asp:TextBox ID="UserName" runat="server" CssClass="Textbox" Height="7px" OnTextChanged="TextBox3_TextChanged" placeholder="E-Mail" Width="160px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="Password" runat="server" CssClass="Textbox" Height="7px" placeholder="Password" Width="160px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" Height="50px" Width="200px">
                    <asp:ListItem>England</asp:ListItem>
                    <asp:ListItem>Scotland</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Address" runat="server" CssClass="Textbox" Height="7px" placeholder="Address" Width="160px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" CssClass="btn" runat="server" Text="Sign In" Height="46px" Width="140px" Font-Bold="True" Font-Size="15px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" CssClass="btn1" runat="server" Text="Cancel" Height="46px" Width="140px" Font-Bold="True" Font-Size="15px" OnClick="Button2_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="White" NavigateUrl="~/Log In.aspx">Log In? </asp:HyperLink>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <div style="float:left; width: 482px; height: 417px;";>
                <img alt="" class="auto-style3" src="../Images/64b8ddebcbf5ce2d59ab43245298ab39.png" />
            </div>
        </asp:Panel>
       
    </div>
    </form>
</body>
</html>
