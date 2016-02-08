<%@page import="bean.AdminBean"%>

<%@page import="java.util.List"%>
<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<% AdminDAO dao=new AdminDAO();
  List<AdminBean> list=(List)dao.getData();
 
  String heroChange=(String)request.getAttribute("heroChange");
   String payment=(String)request.getAttribute("payment");
   
   
   
   String paymentReject=(String)request.getAttribute("paymentReject");
   
   String updateFlag=(String)request.getAttribute("updateFlag");
   
   String newsFlag=(String)request.getAttribute("newsFlag");
   String newFlag=(String)request.getAttribute("newFlag");
  

%>


<html lang="en">
	<head>
		<meta charset="utf-8">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		<title>Home</title>
	     
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/component.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.1.1.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/camera.js"></script>
		<script src="js/snap.svg-min.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script>
		$(document).ready(function(){
			jQuery('#camera_wrap').camera({
			loader: false,
			pagination: true ,
			minHeight: '394',
			thumbnails: false,
			height: '40.1875%',
			caption: false,
			navigation: false,
			fx: 'mosaic'
			});
			$().UItoTop({ easingType: 'easeOutQuart' });
		})
		</script>
		
		<script>
function myFunction() {
    var x;
    if (confirm("Are You Admin! You Have To Login First To continue!") == true) {
        x = "You pressed OK!";
      
        
        
        	
        	var jspcall="admin.jsp";
        	     window.location.href=jspcall;
        	}
        
    } 
    document.getElementById("demo").innerHTML = x;

</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
		<!--[if lt IE 10]>
		<link rel="stylesheet" media="screen" href="css/ie1.css">
		<![endif]-->
		
		
		


	</head>
	<body class="page1">
<!--==============================header=================================-->

      <%session.invalidate(); %>
		<header>
		
		
	 
	
		<a style="float: left;text-align: left;font-weight: bold;"><img src="images/admin.png" height="30" width="30" ondblclick="myFunction()"></a><font color="red">${updateFlag}${heroChange}${payment}${paymentReject}${newsFlag}${newFlag}</font><%if(updateFlag==null && heroChange==null && payment==null && paymentReject==null && newsFlag==null && newFlag==null  ) {%><font color="green">Welcome To Avenue Technology!</font><%} %>
		
		<div class="extra_wrapper">
								<div class="title col1">
								<a href="contactus.jsp" style="float: right;text-align: left;
	
	
	font-weight: bold;
	
	"><img src="images/contact_us.png" height="70" width="300"></a>
								</div>
								</div>
		
			<div class="container_12">
				<div class="grid_12">
				    
					<h1><a href="home.jsp"><img src="images/logo.png" alt="Boo House" height="1000" width="1000"></a></h1>
					<div class="menu_block">
						<nav id="bt-menu" class="bt-menu">
							<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
							<ul>
							<li  class="current bt-icon"><a href="home.jsp">Home</a></li>
								<li class="bt-icon" ><a href="about.jsp">About</a></li>
								<li class="bt-icon"><a href="foremployees.jsp">For Employees</a></li>
								<li class="bt-icon"><a href="services.jsp">Services</a></li>
								<li class="bt-icon"><a href="staffing.jsp">Staffing/Consulting</a></li>
								<li class="bt-icon"><a href="apply.jsp">Apply</a></li>
								
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
		
		<div class="slider_wrapper">
			<div id="camera_wrap" class="">
			   <%	ServletContext context = getServletContext();
				String path = context.getRealPath("\\"); %>
			
				<div data-src="images/i1.png"></div>
				
				<div data-src="images/i2.png"></div>
				
				<div data-src="images/i3.png"></div>
				
				     
				      
			
			</div>
		</div>
		<div class="container_12">
			<div class="grid_12">
				<div class="slogan">
					Avenue Technology believes in building strong foundation. Key to our success are our Clients, Partners and our Valuable Employees. <br>
				<!--  	<a href="#" class="btn">more</a> -->
				</div>
			</div>
		</div>
		<div class="container_12">
			<section class="grid" id="grid">
				<a href="itconsulting.jsp" data-path-hover="m 180,70.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,262 0,0 180,0 z"/></svg>
						<figcaption>
						<div class="title">IT Consulting</div>
						</figcaption>
					</figure>
					<span>more</span>
				</a>
				<a href="webapps.jsp" data-path-hover="m 180,70.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,262 0,0 180,0 z"/></svg>
						<figcaption>
							<div class="title">Application Development</div>
						</figcaption>
					</figure>
					<span>more</span>
				</a>
				<a href="mobileapps.jsp" data-path-hover="m 180,70.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,262 0,0 180,0 z"/></svg>
						<figcaption>
						<div class="title">Mobile Apps</div>
						</figcaption>
					</figure>
					<span>more</span>
				</a>
				<a href="about.jsp" data-path-hover="m 180,70.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,262 0,0 180,0 z"/></svg>
						<figcaption>
						<div class="title">About Us</div>
						</figcaption>
					</figure>
					<span>more</span>
				</a>
			</section>
		</div>
<!--==============================Content=================================-->
<!-- 
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - February 24, 2014!</div>
			<div class="container_12">
				<div class="grid_6">
					<img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<div class="title1">We Work for You!</div>
						<p>If you want to download this <span class="col3"><a href="http://blog.templatemonster.com/free-website-templates/" rel="dofollow">freebie</a></span>, visit TemplateMonster blog.</p>
						Want to find more themes of this kind? Go to <span class="col3"><a href="http://www.templatemonster.com/properties/topic/business-services/" rel="nofollow">Business and Services</a></span> website templates.
					</div>
					<div class="clear cl1"></div>
					In mollis erat mattisy neque facilisis, sit amet ultricieser erarutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis
				</div>
				<div class="grid_3">
					<div class="block1">
						<div class="title">20 <span>Years of Experience</span></div>
						In mollis erat matt nequemer facilameteserylerarutrum. Cras facilisis, nulla
						<br>
						<a href="#" class="btn bt1">more</a>
					</div>
				</div>
				<div class="grid_3 ver">
					<div class="block1">
						<div class="title">18 <span>Partner Programs</span></div>
						Cras facilisis, nulla vel viverra auctor, leo magna sodaleel alesuada nibh odio ulit
						<br>
						<a href="#" class="btn bt1">more</a>
					</div>
				</div>
			</div>
		</div>
		 -->
		<div class="gray_block">
			<div class="container_12">
			
			<%for(int i=0;i<list.size();i++){ AdminBean bean=new AdminBean();bean=list.get(i);%>
			<div class="grid_4">
					<div class="block2">
						<time datetime="2014-01-01"><span class="col1"><%=bean.getEventdate().substring(0,2)%></span><%=bean.getEventdate().substring(3)%></time>
						<div class="">
							<div class="extra_wrapper">
								<div class="title col1"><a href="#"><%=bean.getEventheadline() %></a></div>
							</div>
						</div>
						<div class="clear"></div>
						<p><%=bean.getEventdescription() %></p>
						<a class="col1"></a>
					</div>
				</div>
				<%} %>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="socials">
						<a href="https://www.facebook.com/karanrpatel?fref=ts" class="fa fa-facebook"></a>
						<a href="https://www.facebook.com/karanrpatel?fref=ts" class="fa fa-twitter"></a>
						<a href="https://www.facebook.com/karanrpatel?fref=ts" class="fa fa-google-plus"></a>
					</div>
					<div class="clear"></div>
					<div class="copy">
						AveTech &copy; 2015 | <a href="privacy.jsp">Privacy Policy</a> <br> Website Developed by <a href="https://www.linkedin.com/profile/view?id=346175135&trk=nav_responsive_tab_profile_pic" rel="nofollow">Aadish Shah</a>
					</div>
				</div>
			</div>
			
			
			
			
			
			
		</footer>
		<script>
			$(document).ready(function(){
			 $(".bt-menu-trigger").toggle(
				function(){
				$('.bt-menu').addClass('bt-menu-open');
				},
				function(){
				$('.bt-menu').removeClass('bt-menu-open');
				}
			);
			});
			(function() {
			function init() {
				var speed = 250,
				easing = mina.easeinout;
				[].slice.call ( document.querySelectorAll( '#grid > a' ) ).forEach( function( el ) {
				var s = Snap( el.querySelector( 'svg' ) ), path = s.select( 'path' ),
					pathConfig = {
					from : path.attr( 'd' ),
					to : el.getAttribute( 'data-path-hover' )
					};
				el.addEventListener( 'mouseenter', function() {
					path.animate( { 'path' : pathConfig.to }, speed, easing );
				} );
				el.addEventListener( 'mouseleave', function() {
					path.animate( { 'path' : pathConfig.from }, speed, easing );
				} );
				} );
			}
			init();
			})();
		</script>
	</body>
</html>