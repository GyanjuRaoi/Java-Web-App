
<%@ page import="controller.Dao.UserDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/crownstyle/crownnavbar.css">
</head>
<body>
    <header>
        <input type="checkbox" name="" id="chk1">
        <div class="logo"><h1>Crown</h1></div>
        <div class="search-box">
            <form action="">
                <input type="text" name="search" id="srch" placeholder="Search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="${ pageContext.request.contextPath }/viewpage/userproduct.jsp">Products</a></li>
			<% 
                String usermail = (String) session.getAttribute("usermail");
                if (usermail != null && !usermail.isEmpty()) {
                    // Fetch user's first name from the database using UserDao
                    String userName = (String) session.getAttribute("userName");
            %>
                <li><a href="${ pageContext.request.contextPath }/viewpage/crownprofile.jsp"><%= userName %> Profile</a></li>
            <% } %>
            <li><a href="${ pageContext.request.contextPath }/viewpage/feedback.jsp">Contact us</a></li>
           
            <%
            	String user = (String) session.getAttribute("userName");
            	if (user == null) { %>
            	
            	<li><a href="${ pageContext.request.contextPath }/viewpage/crownlogin.jsp">Log In</a></li>
            <% 
            } else {
            %>
            <li><a href="${ pageContext.request.contextPath }/crownLogout">Log out</a></li>
        	<%
        	}
        	%>
        </ul> 
    </header>
    <nav id="nav">
    <div class="navTop">
        <div class="navItem">
            <img src="" alt="">
        </div>
        <div class="navItem">
            </div>
        </div>
    
    <div class="navBottom">
        <h3 class="menuItem">ASUS</h3>
        <h3 class="menuItem">NITRO</h3>
        <h3 class="menuItem">MAC</h3>
        <h3 class="menuItem">LENEVO</h3>
        <h3 class="menuItem">DELL</h3>
    </div>
</nav>






<body>
    <div class="slider">
        <div class="sliderWrapper">
            <div class="sliderItem">
                <img src="${ pageContext.request.contextPath }/images/asus.jpg" alt="" class="sliderImg">
                <h1 class="sliderTitle">ASUS<br> NEW<br> SEASON</h1>
                <h2 class="sliderPrice"></h2>
                <a href="#product">
                    <button class="buyButton">BUY NOW!</button>
                </a>
            </div>
            <div class="sliderItem">
                <img src="${ pageContext.request.contextPath }/images/nitro.jpg" alt="" class="sliderImg">
                <div class="sliderBg"></div>
                <h1 class="sliderTitle">NITRO<br> NEW<br> SEASON</h1>
                <h2 class="sliderPrice">$149</h2>
                <a href="#product">
                    <button class="buyButton">BUY NOW!</button>
                </a>
            </div>
            <div class="sliderItem">
                <img src="${ pageContext.request.contextPath }/images/macbook.jpeg" alt="" class="sliderImg">
                <div class="sliderBg"></div>
                <h1 class="sliderTitle">MAC<br> NEW<br> SEASON</h1>
                <h2 class="sliderPrice">$109</h2>
                <a href="#product">
                    <button class="buyButton">BUY NOW!</button>
                </a>
            </div>
            <div class="sliderItem">
                <img src="${ pageContext.request.contextPath }/images/lenevo.jpg" alt="" class="sliderImg">
                <div class="sliderBg"></div>
                <h1 class="sliderTitle">LENEVO<br> NEW<br> SEASON</h1>
                <h2 class="sliderPrice">$129</h2>
                <a href="#product">
                    <button class="buyButton">BUY NOW!</button>
                </a>
            </div>
            <div class="sliderItem">
                <img src="${ pageContext.request.contextPath }/images/dell.jpg" alt="" class="sliderImg">
                <div class="sliderBg"></div>
                <h1 class="sliderTitle">DELL<br> NEW<br> SEASON</h1>
                <h2 class="sliderPrice">$99</h2>
                <a href="#product">
                    <button class="buyButton">BUY NOW!</button>
                </a>
            </div>
        </div>
    </div>
   
    <div class="features">
        <div class="feature">
            <img src="${ pageContext.request.contextPath }/images/asus.jpg" alt="" class="featureIcon">
            <span class="featureTitle">FREE SHIPPING</span>
            <span class="featureDesc">Free worldwide shipping on all orders.</span>
        </div>
        <div class="feature">
            <img class="featureIcon" src="${ pageContext.request.contextPath }/images/nitro.jpg" alt="">
            <span class="featureTitle">30 DAYS RETURN</span>
            <span class="featureDesc">No question return and easy refund in 14 days.</span>
        </div>
        <div class="feature">
            <img class="featureIcon" src="${ pageContext.request.contextPath }/images/mac1.jpg" alt="">
            <span class="featureTitle">GIFT CARDS</span>
            <span class="featureDesc">Buy gift cards and use coupon codes easily.</span>
        </div>
        <div class="feature">
            <img class="featureIcon" src="${ pageContext.request.contextPath }/images/nitro2.jpg" alt="">
            <span class="featureTitle">CONTACT US!</span>
            <span class="featureDesc">Keep in touch via email and support system.</span>
        </div>
    </div>

    <div class="product" id="product">
        <img src="${ pageContext.request.contextPath }/images/Asus tuf.jpeg" alt="" class="productImg">
        <div class="productDetails">
            <h1 class="productTitle">ASUS</h1>
            <h2 class="productPrice">RS200000</h2>
            <p class="productDesc">Inspiring Innovation Persistent Perfection In Search of Incredible</p>
            <div class="colors">
                <div class="color"></div>
                <div class="color"></div>
            </div>
            <div class="sizes">
                <div class="size">14</div>
                <div class="size">15</div>
                <div class="size">16</div>
            </div>
            <button class="productButton">BUY NOW!</button>
        </div>
        <div class="payment">
            <h1 class="payTitle">Personal Information</h1>
            <label>Name and Surname</label>
            <input type="text" placeholder="John Doe" class="payInput">
            <label>Phone Number</label>
            <input type="text" placeholder="+1 234 5678" class="payInput">
            <label>Address</label>
            <input type="text" placeholder="Elton St 21 22-145" class="payInput">
            <h1 class="payTitle">Card Information</h1>
            <div class="cardIcons">
                <img src="${ pageContext.request.contextPath }/img/visa.png" width="40" alt="" class="cardIcon">
                <img src="${ pageContext.request.contextPath }/img/master.png" alt="" width="40" class="cardIcon">
            </div>
            <input type="password" class="payInput" placeholder="Card Number">
            <div class="cardInfo">
                <input type="text" placeholder="mm" class="payInput sm">
                <input type="text" placeholder="yyyy" class="payInput sm">
                <input type="text" placeholder="cvv" class="payInput sm">
            </div>
            <button class="payButton">Checkout!</button>
            <span class="close">X</span>
        </div>
    </div>
    <div class="gallery">
        <div class="galleryItem">
            <h1 class="galleryTitle">Be Yourself!</h1>
            <img src="${ pageContext.request.contextPath }/images/asus.jpg" alt="" class="galleryImg">
        </div>
        <div class="galleryItem">
            <img src="${ pageContext.request.contextPath }/images/mac1.jpg"alt="" class="galleryImg">
            <h1 class="galleryTitle">This is the First Day of Your tech Life in CROWN</h1>
        </div>
        <div class="galleryItem">
            <h1 class="galleryTitle">Just Do it!</h1>
            <img src=".${ pageContext.request.contextPath }/images/dell.jpg"alt="" class="galleryImg">
        </div>
    </div>
    <div class="newSeason">
        <div class="nsItem">
            <img src="${ pageContext.request.contextPath }/images/roglatest.jpg"
                alt="" class="nsImg">
        </div>
        <div class="nsItem">
            <h3 class="nsTitleSm"> NEW ARRIVALS</h3>
            <h1 class="nsTitle">New Season</h1>
            <h1 class="nsTitle">New Collection</h1>
            <a href="#nav">
                <button class="nsButton">CHOOSE YOUR BRAND</button>
            </a>
        </div>
        <div class="nsItem">
            <img src=".${ pageContext.request.contextPath }/images/nitro3.jpg"
                alt="" class="nsImg">
        </div>
    </div>
    <footer>
        <div class="footerLeft">
            <div class="footerMenu">
                <h1 class="fMenuTitle">About Us</h1>
                <ul class="fList">
                    <li class="fListItem">Company</li>
                    <li class="fListItem">Contact</li>
                    <li class="fListItem">Careers</li>
                    <li class="fListItem">Affiliates</li>
                    
                </ul>
            </div>
            <div class="footerMenu">
                <h1 class="fMenuTitle">Useful Links</h1>
                <ul class="fList">
                    <li class="fListItem">Support</li>
                    <li class="fListItem">Refund</li>
                    <li class="fListItem">FAQ</li>
                    <li class="fListItem">Feedback</li>
                    <li class="fListItem">Stories</li>
                </ul>
            </div>
            <div class="footerMenu">
                <h1 class="fMenuTitle">Products</h1>
                <ul class="fList">
                    <li class="fListItem">ASUS</li>
                    <li class="fListItem">LENEVO</li>
                    <li class="fListItem">MAC</li>
                    <li class="fListItem">NITRO</li>
                    <li class="fListItem">DELL</li>
                </ul>
            </div>
        </div>
        <div class="footerRight">
            <div class="footerRightMenu">
                <h1 class="fMenuTitle">Subscribe to our newsletter</h1>
                <div class="fMail">
                    <input type="text" placeholder="your@email.com" class="fInput">
                    <button class="fButton">Join!</button>
                </div>
            </div>
            <div class="footerRightMenu">
                <h1 class="fMenuTitle">Follow Us</h1>
                <div class="fIcons">
                    <img src="${ pageContext.request.contextPath }/img/facebook.png" alt="" class="fIcon">
                    <img src="${ pageContext.request.contextPath }/img/twitter.png" alt="" class="fIcon">
                    <img src="${ pageContext.request.contextPath }/img/instagram.png" alt="" class="fIcon">
                    <img src="${ pageContext.request.contextPath }/img/whatsapp.png" alt="" class="fIcon">
                </div>
            </div>
            <div class="footerRightMenu">
                <span class="copyright">@CROWN TEAMS.All rights reserved. 2022.</span>
            </div>
        </div>
    </footer>
    
    <script src="<%=request.getContextPath() %>/Script/app.js"></script>
</body>
</html>
