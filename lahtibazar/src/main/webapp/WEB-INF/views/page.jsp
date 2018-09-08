<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <spring:url var="css" value="/resources/css" />
       <spring:url var="fonts" value="/resources/fonts" />
          <spring:url var="js" value="/resources/js" />
             <spring:url var="img" value="/resources/img" />
    
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>lahtibazar Shopping - ${title}</title>
    <script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${css}/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${css}/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${css}/owl.carousel.css">
    <link rel="stylesheet" href="${css}/style.css">
    <link rel="stylesheet" href="${css}/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <!-- start header area -->
   <%@include file="./shared/header.jsp" %>
     <!-- End header area -->
    <!-- Start site branding area -->
    <!-- logo area -->
    <%@include file="./shared/logo.jsp" %>
    <!-- End site branding area -->
    
    <!-- Start mainmenu area -->
    <%@include file="./shared/mainmenu.jsp" %>
     <!-- End mainmenu area -->
    
    <!-- upper slider offer area -->
    <%@include file="./shared/slider.jsp" %>
     <!-- End slider area -->
    <!-- Start promo area -->
    <%@include file="./shared/promo.jsp" %>
     <!-- End promo area -->
    <!-- start main content area -->
    
    <!-- loading the home page -->
    <c:if test="${userClickHome == true }">
    <%@include file="home.jsp" %>
    </c:if>
    
      <!-- loading the use click shop page -->
    <c:if test="${userClickShop== true }">
    <%@include file="shop.jsp" %>
    </c:if>
    
    <c:if test="${userClickSingleproduct== true}">
    <%@include file="singleproduct.jsp" %>
    </c:if>
    
      <c:if test="${userClickCart== true}">
    <%@include file="cart.jsp" %>
    </c:if>
     <!-- End main content area -->
    <!-- start brands area -->
    <!-- End brands area -->
    <%@include file="./shared/brands.jsp" %>
    <!-- Start product widget area -->
    <%@include file="./shared/pwidget.jsp" %>
     <!-- End product widget area -->
    <!-- top_footer- -->
    <%@include file="./shared/top_footer.jsp" %>
   <!-- End footer top area -->
    <!-- footer -->
    <%@include file="./shared/footer.jsp" %>
   <!-- End footer bottom area -->
   <!-- self coded javascripts -->
    <script src="${js}/myapp.js"></script>
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
     
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
       
    
    <script src="${js}/owl.carousel.min.js"></script>
    <script src="${js}/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="${js}/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="${js}/main.js"></script>

    <!-- Slider -->
    <script type="text/javascript" src="${js}/bxslider.min.js"></script>
	<script type="text/javascript" src="${js}/script.slider.js"></script>
	
	
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
  </body>
</html>