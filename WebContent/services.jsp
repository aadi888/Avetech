<!DOCTYPE html>
<%@page import="bean.NewsBean"%>

<%@page import="java.util.List"%>
<%@page import="dao.AdminDAO"%>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		<title>Services</title>
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
								<li class="current bt-icon"><a href="services.jsp">Services</a></li>
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
<!--==============================Content=================================-->
		<div class="content cont1"><div class="ic"></div>
			<div class="container_12">
				<div class="grid_12">
					<h2 class="mb0">Our Services</h2>
				</div>
			</div>
		</div>
		<div class="gray_block gb1">
			<div class="container_12">
				<div class="grid_12">
					<div class="responsive">
						<ul class="a_content">
<!-- 1 -->
							<li>
								<div class="card-front">
									<div class="text2">IT Consulting</div>
									<p>Our way of consulting clients make us different. We act like partners and not advisors. Our consultants are passionate about delivering successful results and achieving the targets set by the clients</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">IT Consulting</div>
									<p>Our way of consulting clients make us different. We act like partners and not advisors. Our consultants are passionate about delivering successful results and achieving the targets set by the clients. Our technology and resources used by our consultants include:</p>
									<p><strong>Application development and integration</strong></p>
						<p>1.Application maintenance</p>
						<p>2.Business analysis</p>
						<p>3.Content management</p>
						<p>4.Data warehousing and analysis</p>
						<p>5.Database design, administration and maintenance</p>
						<p>6.E-business and web applications</p>
						<p>7.Helpdesk support</p>
						<p>8.Management consulting</p>
						<p>9.Network design, implementation, administration and support</p>
						<p>10.Operating systems support</p>
						<p>11.Project management</p>
						<p>12.Project outsourcing</p>
						<p>13.Software installation and implementation</p>
						<p>14.Software quality assurance and testing</p>
						<p>15.Systems integration and conversions</p>
						<p>16.Technical writing and documentation</p>
					
								</div>
							</li>
							<li>
								<div class="card-front">
									<div class="text2">Software Development</div>
									<p>We continue to be the software developer of choice for many of America's top financial, manufacturing, non-profit and government entities.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">Software Development</div>
									<p>1.Web-based and Client/Server Solutions</p>
<p>2.Systems Analysis and design</p>
<p>3.Database Solutions</p>
<p>4.Quick Applications</p>
<p>5.Performance Enhancements</p>
<p>6.Mobile Applications</p>

<p><img src="images/software_development.jpg"></p>
								</div>
							</li>
							<li>
								<div class="card-front">
									<div class="text2">Mobile App Development</div>
									<p>Our mobile app developers are constantly pushing the boundaries of what is possible on mobile.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">Mobile App Development</div>
									<p>We develop for all common mobile and tablet platforms</p>

<p>1.iPhone</p>
<p>2.Android</p>
<p>3.iPad</p>
<p>4.Andriod tablet</p>
<p>5.BlackBerry</p>
<p>6.Windows Mobile </p>

<p>Quality Assurance Testing</p>
<p>An important part of development is testing every possible interaction with the application. AveTech's skilled QA team thoroughly tests all features before they are deployed to the public. AveTech isn't satisfied until the highest level of quality is attained.</p>
<p>Usability</p>
<p>Usability is critical to the success of a web site. Although AveTech builds applications that can perform any complex task, clean, user-friendly interface designs are also integrated. Your target audience will appreciate the difference they discover, resulting in repeat usage and a superior brand experience.</p>
								</div>
							</li>
<!-- 2 -->
							<li>
								<div class="card-front">
									<div class="text2">Staffing</div>
									<p>Innovative and efficient professionals drive today's evolving IT industry and the success of your company depends heavily on your ability to attract and retain these people.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">Staffing</div>
									<p>Innovative and efficient professionals drive today's evolving IT industry – and the success of your company depends heavily on your ability to attract and retain these people. Take the first step to connecting with exceptional talent by contacting us. Our experienced recruiters provide the staffing solutions you need to fill your key positions, drive business and stay competitive.</p>
									<p><strong><u>Our Services Include </u></strong></p>
									<p>Staff Augmentation</p>
									<p>Direct Hire</p>
									<p>Enterprise Solutions</p>
									<p>Health IT</p>
									<p>Guaranteed Delivery Program</p>
									<p>Project Management</p>
									<p>MSP</p><br/><br/>
									
									<p><strong><u>IT Staffing Services Provided to Leading Industries</u></strong></p>
									<p>Financial Services & Insurance</p>
									<p>Government</p>
									<p>Healthcare & Pharmaceutical</p>
									<p>Hospitality & Entertainment</p>
									<p>Manufacturing</p>
									<p>Retail / Technology / Telecommunications / Transportation / Utilities</p>
									
								</div>
							</li>
							<li>
								<div class="card-front">
									<div class="text2">News Room</div>
									<p align="center">Latest News from AveTech regarding Company,Stock,Projects and employees.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<%AdminDAO dao=new AdminDAO();
										List<NewsBean> list=(List)dao.getNews();
											%>
								<div class="all-content">
									<div class="text2">News for Today</div><br/>
									<p><img src="images/whats-new-banner.png" height="10"></p><br/>
									<%for(int i=0;i<5;i++){ NewsBean bean=list.get(i); %>
									   <p><%=bean.getNewsid() %> . <%=bean.getNews() %></p> 
									  
									<%} %>
								</div>
							</li>
							<li>
								<div class="card-front">
									<div class="text2">Software QA Services</div>
									<p>As a number one provider of full-cycle quality assurance and application testing we offer a diversified package of services delivered on different complexity levels with 360 degree quality.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">Software QA Services</div>
									
									<p><strong>As a number one provider of full-cycle quality assurance and application testing we offer a diversified package of services delivered on different complexity levels with 360° quality. We combine a well-tailored QA audit process along with innovative tools and methods to provide you with tangible results for your outstanding progress. We are using both Automated Testing And Manual Testing. </strong></p><br/>
									<p><strong><u>Our Services Include</u></strong></p><br/>
									<p>QA Consulting</p>
									<p>Full Lifecycle testing</p>
									<p>Test automation</p>
									<p>Mobile testing</p>
									<p>Documentation Services</p>
									<p>Pre-Certification</p>
									<p>Web Application Testing</p>
									<p><strong>Having 12 years experience we know how to overcome the specific challenges of Web application testing.</strong></p><br/>
									<p><img src="images/QA.jpg"></p>
								</div>
							</li>
							
<!-- 3 -->
							<li>
								<div class="card-front">
									<div class="text2">What's New!</div>
									<p>Latest Updates from AveTech regarding Company , Stock , Projects and employees .</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<%AdminDAO dao12=new AdminDAO();
										List<NewsBean> list12=(List)dao12.getNew();
											%>
								<div class="all-content">
									<div class="text2">What's New Today!</div><br/>
									<p><img src="images/whats-new-banner.png" height="10"></p><br/>
									<%for(int i=0;i<5;i++){ NewsBean bean=list12.get(i); %>
									   <p><%=bean.getNewsid() %> . <%=bean.getNews() %></p> 
									  
									<%} %>
								</div>
							</li>
							<li>
								<div class="card-front">
									<div class="text2">Benefits at AveTech</div>
									<p>AveTech career option removes barriers and gives you the platform to break into an industry that has seen unmatched growth in the last decade.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">Benefits at AveTech</div>
									<p>AveTech career option removes barriers and gives you the platform to break into an industry that has seen unmatched growth in the last decade. Or maybe there is a specific company you have your eye on. Let us propel your name to the top of the hiring list. Advance your career with on-the-job experience and additional skills training and certifications. You can do it all with AveTech.</p>
									<p>Our specialized recruiters match your skills and career goals to consulting opportunities that you'll find satisfying and rewarding. We leverage extensive client connections to get your foot in the door at Fortune 500 Companies. Once on assignment, we will continue to support you while you get first-hand knowledge about working there.</p>
									<p>At AveTech, we know that your potential can not be captured in a resume, job title or job description. With an understanding of your unique talents, experience and interests, we connect you to the right contract to positions to accelerate your professional success.</p><br/>
									<p><img src="images/joinus.jpg"></p>
								</div>
							</li>
							<li class="last">
								<div class="card-front">
									<div class="text2">24*7 Customer Support</div>
									<p>If you experience difficulty in anything regarding our company . You Can Contact Our Customer Support Anytime. We will serve you within 24 hours.</p>
								</div>
								<div class="card-back">
									<h2><a href="#">Click here</a></h2>
								</div>
								<!-- Content -->
								<div class="all-content">
									<div class="text2">24*7 Customer Support</div><br/>
									<p>Avenue Technology <br/>
3505 silverside rd suite,<br/>
#101 wilmington DE-19810.<br/></p>
<p><strong><a href="contactus.jsp"><font color="blue">Click Here To Contact Us !</font></a></strong></p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
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