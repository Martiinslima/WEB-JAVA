<%-- 
    Document   : ListarUsuarios
    Created on : 04/04/2019, 10:17:35
    Author     : internet
--%>

<%@page import="br.com.electro.model.Compra"%>
<%@page import="java.lang.Object"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="br.com.electro.model.Usuario" %>
<% List<Object> lstCompra = (List<Object>) request.getAttribute("lstCompra"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +55 11 9-7070 7070</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> android@android.co</a></li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> Rua dos bobo, 0 </a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><a href="#"><i class="fa fa-dollar"></i> BRRR HUE</a></li>
                        <li><a href="login.jsp"><i class="fa fa-user-o"></i> Minha Conta</a></li>
                    </ul>
                </div>
            </div>
            <!-- /TOP HEADER -->

            <!-- MAIN HEADER -->
            <div id="header">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- LOGO -->
                        <div class="col-md-3">
                            <div class="header-logo">
                                <a href="testa.html" class="logo">
                                    <img src="./img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->
                        <div class="col-md-6">
                            <div class="header-search">
                                <form>
                                    <select class="input-select">
                                        <option value="0">Categorias</option>
                                        <option value="1">Promoções</option>
                                        <option value="2">Celulares</option>
                                    </select>
                                    <input class="input" placeholder="Pesquisar">
                                    <button class="search-btn">Search</button>
                                </form>
                            </div>
                        </div>
                        <!-- /SEARCH BAR -->

                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Wishlist -->
                                <div>
                                    <a href="#">
                                        <i class="fa fa-heart-o"></i>
                                        <span>Favoritos</span>
                                        <div class="qty">0</div>
                                    </a>
                                </div>
                                <!-- /Wishlist -->

                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>Carrinho</span>
                                        <div class="qty">1</div>
                                    </a><div class="cart-dropdown">
                                        <div class="cart-list">

                                            <!-- listaCarrinho
            
            <div class="product-widget">
                                                                    <div class="product-img">
                                                                            <img src="./img/product01.png" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                                            <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                                                    </div>
                                                                    <button class="delete"><i class="fa fa-close"></i></button>
                                                            </div>
                
                                                            <div class="product-widget">
                                                                    <div class="product-img">
                                                                            <img src="./img/product02.png" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                                            <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
                                                                    </div>
                                                                    <button class="delete"><i class="fa fa-close"></i></button>
                                                            </div>
                                                    </div>
                                                    <div class="cart-summary">
                                                            <small>3 Item(s) selected</small>
                                                            <h5>SUBTOTAL: $2940.00</h5>
                                                    </div>
                                            -->

                                            <div class="cart-btns">
                                                <a href="CadCompra">Carrinho</a>
                                                <a href="testa.html">Novidades  <i class="fa fa-arrow-circle-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Cart -->

                                    <!-- Menu Toogle -->
                                    <div class="menu-toggle">
                                        <a href="#">
                                            <i class="fa fa-bars"></i>
                                            <span>Menu</span>
                                        </a>
                                    </div>
                                    <!-- /Menu Toogle -->
                                </div>
                            </div>
                            <!-- /ACCOUNT -->
                        </div>
                        <!-- row -->
                    </div>
                    <!-- container -->
                </div>
                <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li class="active"><a href="testa.html">Home</a></li>
                        <li><a href="testa.html">Promoções</a></li>
                        <li><a href="testa.html">Celulares</a></li>
                        <!-- <li><a href="#">Cat 4</a></li>
                        <li><a href="#">Cat 5</a></li>
                        <li><a href="#">Cat 6</a></li>-->
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->
        
        <div class="newsletter"> <p> <strong> Carrinho / Lista de compras </strong></p> <br></div>
        
        <div style="text-align: center;">
            <%
                if (lstCompra != null) {
                    for (Object obj : lstCompra) {
                        if (obj instanceof Compra) {
                            
                            out.println("Nome: ");
                            out.println(((Compra) obj).getNome());
                            out.println("  |  ");
                            
                            out.println("Quantidade: ");
                            out.println(((Compra) obj).getQuantidade());
                            out.println("  |  ");
                            
                            out.println("Valor Total: ");
                            out.println(((Compra) obj).getPreco());
                            out.println("<br>");

                        }
                    }
                }
            %>
        </div>

        <!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Inscreva-se e receba nossas promoções pela <strong>Electro Letter</strong></p>
							<form>
								<input class="input" type="email" placeholder="Insira seu Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Inscrever</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="http://www.insatgram.com"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="http://www.pinterest.com"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Sobre a Electro</h3>
								<p>Somos um grupo de desempregados que tentam lucrar vendendo uns pc que cairam do caminhão.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>Rua dos bobo, 0</a></li>
									<li><a href="#"><i class="fa fa-phone"></i> +55 11 9-7070 7070</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>android@andoroid.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categorias</h3>
								<ul class="footer-links">
									<li><a href="#">Lançamentos da Electro</a></li>
									<li><a href="#">Promoções da Electro</a></li>
									<li><a href="#">Celulares da Electro</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Imformações</h3>
								<ul class="footer-links">
									<li><a href="#">Sobre Electro</a></li>
									<li><a href="#">Contato da Electro</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">Minha Conta</a></li>
									<li><a href="#">Carrinho de compras</a></li>
									<li><a href="#">Lista de Favoritos</a></li>
									<li><a href="#">Rastreie sua entrega</a></li>
									<li><a href="#">FAQ</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
