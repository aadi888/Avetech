<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		<title>Apply</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico">
		<link rel="stylesheet" href="css/list.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.1.1.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/main.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/m.js"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
		})
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
	<body class="">
<!--==============================header=================================-->
		<header>
		
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
							<li class="bt-icon"><a href="home.jsp">Home</a></li>
								<li class="bt-icon" ><a href="about.jsp">About</a></li>
								<li class="bt-icon"><a href="foremployees.jsp">For Employees</a></li>
								<li class="bt-icon"><a href="services.jsp">Services</a></li>
								<li class="bt-icon"><a href="staffing.jsp">Staffing/Consulting</a></li>
								<li class="current bt-icon"><a href="apply.jsp">Apply</a></li>
								
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
		
		
		<div class="content cont1"><div class="ic"></div>
			<div class="container_12">
				<div class="grid_12">
					<h2 class="mb0">Apply With Us</h2>
				</div>
				
			</div>
		</div>
		<div class="container_12">
				<div class="grid_8">
					<div class="blog">
						<img src="images/resume-logo.jpg" alt="">
						<div class="extra_wrapper">
							<div class="text1">
							 Copy And Paste Your Most Updated Resume Here<br/>
							<form action="AttachResumeController" name="resume" method="post" >
							<textarea rows="10" cols="35" name="resume">Ctrl+c and then Ctrl+v(Shortcut)</textarea><br/><br/><br/>
							 Copy And Paste Your Most Updated Cover letter Here<br/>
							<textarea rows="10" cols="35" name="cover">Ctrl+c and then Ctrl+v(Shortcut)</textarea><br/><br/><br/>
							
				            <%String flag=(String)request.getAttribute("flag");%>
							<input type="submit" name="APPLY" value="APPLY"><font color="red"><strong>${flag}</strong></font>
						    
							</form>
							</div><a href="contactus.jsp"><font color="red">Having Trouble? Contact Us !</font></a>
							</div>
							
							</div>
							
							</div>
							<%if(flag!=null && !flag.equals("*Please Copy/Paste The Resume")){ %>
							<div class="grid_4">
					<div class="text1 col3 head1">
					
					<img src="images/thanksapplying.jpg" alt="">
					</div>
					</div>
					<%} %>
							</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="socials">
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-google-plus"></a>
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
			$('.responsive').on('click', '.close', function(){
				$('.close').remove();
				bgColor = $('.active .card-front').css('background-color');
				$('.responsive').removeClass(effect);
				$('.all-content').hide();
				$('.content li').removeClass('active').show().css({ 
					'border-bottom':'1px solid #2c2c2c',
					'border-left':'1px solid #2c2c2c' 
				});
				$('.card-front, .card-back').show();
				$('.content').css('background-color',bgColor);
			});
		});
		</script>

</body>
</html>