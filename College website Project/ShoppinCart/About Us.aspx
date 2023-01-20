<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About Us.aspx.cs" Inherits="About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
           *,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
   
}

body {
  font: normal 30px/1.5 "Garamond", sans-serif;
  background: whitesmoke;
  color: black;
  overflow-x: hidden;
  padding-bottom: 50px;
} 
   
.intro {
  background: black;
  padding: 100px 0;
}

.container {
  width: 20%;
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}


body {
  background: #D00027; /*claret color from jim.neilsen.com*/
}

/*below affects the timeline*/
.timeline ul li {
  list-style-type: none;
  position: relative;
  width: 6px;
  margin: 0 auto;
  padding-top: 50px;
  background: #fff;
  }

.timeline ul li::after {
  content: '';
  position: absolute;
  left: 50%;
  bottom: 0;
  transform: translateX(-50%);
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background: inherit;
}

.timeline ul li div {
  position: relative;
  bottom: 0;
  width: 400px;
  padding: 15px;
  background: #FFFFFF /*found at jim-neilsen.com*/
}

.timeline ul li div::before {
  content: '';
  position: absolute;
  bottom: 7px;
  width: 0;
  height: 0;
  border-style: solid;
  }

.timeline ul li:nth-child(odd) div {
  left: 45px;
}
.timeline ul li:nth-child(odd) div::before {
  left: -15px;
  border-width: 8px 16px 8px 0;
  border-color: transparent #94BEE5 transparent transparent;
}

.timeline ul li:nth-child(even) div {
  left: -468px;
  }

.timeline ul li:nth-child(even) div::before {
  right: -15px;
  border-width: 8px 0 8px 16px;
  border-color: transparent transparent transparent #94BEE5;
}

.timeline ul li::after {
  background: #fff;
  transition: background .5s ease-in-out;
}
 
.timeline ul li.in-view::after {
  background: rgb(247, 71, 106);
}
 
 
.timeline ul li div {
  visibility: hidden;
  opacity: 0;
  transition: all .5s ease-in-out;
}
 
.timeline ul li:nth-child(odd) div {
  transform: translate3d(200px,0,0);
}
 
.timeline ul li:nth-child(even) div {
  transform: translate3d(-200px,0,0);
}
 
.timeline ul li.in-view div {
  transform: none;
  visibility: visible;
  opacity: 1;
}

	
@media screen and (max-width: 900px) {
  .timeline ul li div {
    width: 250px;
  }
  .timeline ul li:nth-child(even) div {
    left: -289px; /*250+45-6*/
  }
}

@media screen and (max-width: 600px) {
  .timeline ul li {
    margin-left: 20px;
  }
   
  .timeline ul li div {
    width: calc(100vw - 91px);
  }
   
  .timeline ul li:nth-child(even) div {
    left: 45px;
  }
   
  .timeline ul li:nth-child(even) div::before {
    left: -15px;
    border-width: 8px 16px 8px 0;
    border-color: transparent #0da73383 transparent transparent;
  }
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
        <li><a href="Default.aspx">Products</a></li>
         <li><a href="#">News</a></li>
        <li><a  class="active" href="About Us.aspx">About Us</a></li>
        <li><a href="Log In.aspx">Log Out</a></li>
      </ul>
    </nav>

<br />
<br />
<section class="timeline">
            <div class="container">
                
                 <img src="../images/1200px-Liverpool_FC.png" height="350" width="300" </img> </div>
            <ul>

             <li>
               <div>
                <time>2022 - Liverpool lift their Eight EFL cup.</time>
               </div>
             </li>

              <li>
                <div>
                  <time>2020 - Liverpool win their first premier league title, thier 19th championship overall.</time>
                </div>
              </li>

              <li>
               <div>
                <time>2019 - Liverpool lift their sixth European cup.</time>
               </div>
            </li>

            <li>
            <div>
              <time>2015 - jurgen klopp takes charge at Anfield  </time>
            </div>
            </li>

             <li>
            <div>
              <time>2005 -  The miracle of Istanbul</time>
            </div>
         </li>

            <li>
            <div>
              <time>1923 -  Back-to-back title triumphs</time>
          </div>
         </li>

            <li>
           <div>
              <time>1901 -  Reds crowned champions for the first time. </time>
          </div>
           </li>

            <li>
            <div>
              <time> 1892 - Liverpool Football Club is formed. </time>
            </div>
           </li>
         </ul>
            
 </section>
<script>
    function isElementInViewport(el) {
        var rect = el.getBoundingClientRect();
        return (
          rect.top >= 0 &&
          rect.left >= 0 &&
          rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
          rect.right <= (window.innerWidth || document.documentElement.clientWidth)
        );
    }

    var items = document.querySelectorAll(".timeline li");

    // code for the isElementInViewport function

    function callbackFunc() {
        for (var i = 0; i < items.length; i++) {
            if (isElementInViewport(items[i])) {
                items[i].classList.add("in-view");
            }
        }
    }

    window.addEventListener("load", callbackFunc);
    window.addEventListener("scroll", callbackFunc);
</script>           

    
   
</asp:Content>

