﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="ShoesStore.Merchant.signin" %>



<!DOCTYPE html>
<html lang="en" dir="ltr">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <title>The Shuz</title>
    <link rel="icon" type="image/png" href="images/shoeicon.png">
    <!-- fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i">
    <!-- css -->
    <link rel="stylesheet" href="vendor/bootstrap-4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/owl-carousel-2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- js -->
    <script src="vendor/jquery-3.3.1/jquery.min.js"></script>
    <script src="vendor/bootstrap-4.2.1/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/owl-carousel-2.3.4/owl.carousel.min.js"></script>
    <script src="vendor/nouislider-12.1.0/nouislider.min.js"></script>
    <script src="js/number.js"></script>
    <script src="js/main.js"></script>
    <script src="vendor/svg4everybody-2.1.9/svg4everybody.min.js"></script>
    <script>svg4everybody();</script>
    <!-- font - fontawesome -->
    <link rel="stylesheet" href="vendor/fontawesome-5.6.1/css/all.min.css">
    <!-- font - stroyka -->
    <link rel="stylesheet" href="fonts/stroyka/stroyka.css">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-97489509-6"></script>
    <script>window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'UA-97489509-6');</script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- site -->
        <div class="site">
            <!-- mobile site__header -->
            <header class="site__header d-lg-none">
                <div class="mobile-header mobile-header--sticky mobile-header--stuck">
                    <div class="mobile-header__panel">
                        <div class="container">
                            <div class="mobile-header__body">
                                <button class="mobile-header__menu-button">
                                    <svg width="18px" height="14px">
                                        <use xlink:href="images/sprite.svg#menu-18x14"></use></svg></button>
                                <a class="mobile-header__logo" href="index-2.aspx">

                                    <svg xmlns="http://www.w3.org/2000/svg" width="120px" height="20px">
                                        <!--<path d="M118.5,20h-1.1c-0.6,0-1.2-0.4-1.4-1l-1.5-4h-6.1l-1.5,4c-0.2,0.6-0.8,1-1.4,1h-1.1c-1,0-1.8-1-1.4-2l1.1-3
                                l1.5-4l3.6-10c0.2-0.6,0.8-1,1.4-1h1.6c0.6,0,1.2,0.4,1.4,1l3.6,10l1.5,4l1.1,3C120.3,19,119.5,20,118.5,20z M111.5,6.6l-1.6,4.4
                                h3.2L111.5,6.6z M99.5,20h-1.4c-0.4,0-0.7-0.2-0.9-0.5L94,14l-2,3.5v1c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                C88,0.7,88.7,0,89.5,0h1C91.3,0,92,0.7,92,1.5v8L94,6l3.2-5.5C97.4,0.2,97.7,0,98.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3L96.3,10l4.5,7.8
                                C101.4,18.8,100.7,20,99.5,20z M80.3,11.8L80,12.3v6.2c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-6.2l-0.3-0.5l-5.5-9.5
                                c-0.6-1,0.2-2.3,1.3-2.3h1.4c0.4,0,0.7,0.2,0.9,0.5L76,4.3l2,3.5l2-3.5l2.2-3.8C82.4,0.2,82.7,0,83.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3
                                L80.3,11.8z M60,20c-5.5,0-10-4.5-10-10S54.5,0,60,0s10,4.5,10,10S65.5,20,60,20z M60,4c-3.3,0-6,2.7-6,6s2.7,6,6,6s6-2.7,6-6
                                S63.3,4,60,4z M47.8,17.8c0.6,1-0.2,2.3-1.3,2.3h-2L41,14h-4v4.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                C33,0.7,33.7,0,34.5,0H41c0.3,0,0.7,0,1,0.1c3.4,0.5,6,3.4,6,6.9c0,2.4-1.2,4.5-3.1,5.8L47.8,17.8z M42,4.2C41.7,4.1,41.3,4,41,4h-3
                                c-0.6,0-1,0.4-1,1v4c0,0.6,0.4,1,1,1h3c0.3,0,0.7-0.1,1-0.2c0.3-0.1,0.6-0.3,0.9-0.5C43.6,8.8,44,7.9,44,7C44,5.7,43.2,4.6,42,4.2z
                                 M29.5,4H25v14.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5V4h-4.5C15.7,4,15,3.3,15,2.5v-1C15,0.7,15.7,0,16.5,0h13
                                C30.3,0,31,0.7,31,1.5v1C31,3.3,30.3,4,29.5,4z M6.5,20c-2.8,0-5.5-1.7-6.4-4c-0.4-1,0.3-2,1.3-2h1c0.5,0,0.9,0.3,1.2,0.7
                                c0.2,0.3,0.4,0.6,0.8,0.8C4.9,15.8,5.8,16,6.5,16c1.5,0,2.8-0.9,2.8-2c0-0.7-0.5-1.3-1.2-1.6C7.4,12,7,11,7.4,10.3l0.4-0.9
                                c0.4-0.7,1.2-1,1.8-0.6c0.6,0.3,1.2,0.7,1.6,1.2c1,1.1,1.7,2.5,1.7,4C13,17.3,10.1,20,6.5,20z M11.6,6h-1c-0.5,0-0.9-0.3-1.2-0.7
                                C9.2,4.9,8.9,4.7,8.6,4.5C8.1,4.2,7.2,4,6.5,4C5,4,3.7,4.9,3.7,6c0,0.7,0.5,1.3,1.2,1.6C5.6,8,6,9,5.6,9.7l-0.4,0.9
                                c-0.4,0.7-1.2,1-1.8,0.6c-0.6-0.3-1.2-0.7-1.6-1.2C0.6,8.9,0,7.5,0,6c0-3.3,2.9-6,6.5-6c2.8,0,5.5,1.7,6.4,4C13.3,4.9,12.6,6,11.6,6
                                z"></path> -->
                                    </svg>
                                </a>
                                <div class="mobile-header__search">
                                    <form class="mobile-header__search-form" action="#">
                                        <input class="mobile-header__search-input" name="search" placeholder="Search over 10,000 products" aria-label="Site search" type="text" autocomplete="off">
                                        <button class="mobile-header__search-button mobile-header__search-button--submit" type="submit">
                                            <svg width="20px" height="20px">
                                                <use xlink:href="images/sprite.svg#search-20"></use></svg></button>
                                        <button class="mobile-header__search-button mobile-header__search-button--close" type="button">
                                            <svg width="20px" height="20px">
                                                <use xlink:href="images/sprite.svg#cross-20"></use></svg></button><div class="mobile-header__search-body"></div>
                                    </form>
                                </div>
                                <div class="mobile-header__indicators">
                                    <div class="indicator indicator--mobile-search indicator--mobile d-sm-none">
                                        <button class="indicator__button"><span class="indicator__area">
                                            <svg width="20px" height="20px">
                                                <use xlink:href="images/sprite.svg#search-20"></use></svg></span></button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- mobile site__header / end -->
            <!-- desktop site__header -->
            <header class="site__header d-lg-block d-none">
                <div class="site-header">
                    <!-- .topbar -->
                    <!-- .topbar / end -->
                    <div class="site-header__nav-panel">
                        <div class="nav-panel">
                            <div class="nav-panel__container container">
                                <div class="nav-panel__row">
                                    <div class="nav-panel__logo">
                                        <a href="index-2.aspx">
                                            <img src="images/shuz.png" style="height: 70px">
                                            <!--Chỗ Này Để Logo-->

                                        </a>
                                    </div>
                                    <!-- .nav-links -->
                                    <div class="nav-panel__nav-links nav-links">
                                        <ul class="nav-links__list">
                                            <li class="nav-links__item nav-links__item--with-submenu"><a href="index-2.aspx"><span>Home
                                                </span></a><div class="nav-links__menu"></div>
                                            </li>
                                            <div class="nav-links__megamenu nav-links__megamenu--size--nl">
                                                <!-- .megamenu -->
                                                <div class="megamenu">
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <ul class="megamenu__links megamenu__links--level--0">
                                                                <li class="megamenu__item megamenu__item--with-submenu"><a href="#">Power Tools</a><ul class="megamenu__links megamenu__links--level--1">
                                                                    <li class="megamenu__item"><a href="#">Engravers</a></li>
                                                                    <li class="megamenu__item"><a href="#">Wrenches</a></li>
                                                                    <li class="megamenu__item"><a href="#">Wall Chaser</a></li>
                                                                    <li class="megamenu__item"><a href="#">Pneumatic Tools</a></li>
                                                                </ul>
                                                                </li>
                                                                <li class="megamenu__item megamenu__item--with-submenu"><a href="#">Machine Tools</a><ul class="megamenu__links megamenu__links--level--1">
                                                                    <li class="megamenu__item"><a href="#">Thread Cutting</a></li>
                                                                    <li class="megamenu__item"><a href="#">Chip Blowers</a></li>
                                                                    <li class="megamenu__item"><a href="#">Sharpening Machines</a></li>
                                                                    <li class="megamenu__item"><a href="#">Pipe Cutters</a></li>
                                                                    <li class="megamenu__item"><a href="#">Slotting machines</a></li>
                                                                    <li class="megamenu__item"><a href="#">Lathes</a></li>
                                                                </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-6">
                                                            <ul class="megamenu__links megamenu__links--level--0">
                                                                <li class="megamenu__item megamenu__item--with-submenu"><a href="#">Hand Tools</a><ul class="megamenu__links megamenu__links--level--1">
                                                                    <li class="megamenu__item"><a href="#">Screwdrivers</a></li>
                                                                    <li class="megamenu__item"><a href="#">Handsaws</a></li>
                                                                    <li class="megamenu__item"><a href="#">Knives</a></li>
                                                                    <li class="megamenu__item"><a href="#">Axes</a></li>
                                                                    <li class="megamenu__item"><a href="#">Multitools</a></li>
                                                                    <li class="megamenu__item"><a href="#">Paint Tools</a></li>
                                                                </ul>
                                                                </li>
                                                                <li class="megamenu__item megamenu__item--with-submenu"><a href="#">Garden Equipment</a><ul class="megamenu__links megamenu__links--level--1">
                                                                    <li class="megamenu__item"><a href="#">Motor Pumps</a></li>
                                                                    <li class="megamenu__item"><a href="#">Chainsaws</a></li>
                                                                    <li class="megamenu__item"><a href="#">Electric Saws</a></li>
                                                                    <li class="megamenu__item"><a href="#">Brush Cutters</a></li>
                                                                </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- .megamenu / end -->
                                            </div>
                                            </li><li class="nav-links__item nav-links__item--with-submenu"><a href="merchant.aspx"><span>Personal Page
                                                </span></a><div class="nav-links__menu">
                                                        <!-- .menu -->
                                                        <ul class="menu menu--layout--classic">
                                                            <li><a href="shop-grid-3-columns-sidebar.aspx">Shop Grid
                                                                <svg class="menu__arrow" width="6px" height="9px">
                                                                    <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use></svg></a><div class="menu__submenu">
                                                                        <!-- .menu -->
                                                                        <ul class="menu menu--layout--classic">
                                                                            <li><a href="shop-grid-3-columns-sidebar.aspx">3 Columns Sidebar</a></li>
                                                                            <li><a href="shop-grid-4-columns-full.aspx">4 Columns Full</a></li>
                                                                            <li><a href="shop-grid-5-columns-full.aspx">5 Columns Full</a></li>
                                                                        </ul>
                                                                        <!-- .menu / end -->
                                                                    </div>
                                                            </li>
                                                            <li><a href="shop-list.aspx">Shop List</a></li>
                                                            <li><a href="shop-right-sidebar.aspx">Shop Right Sidebar</a></li>
                                                            <li><a href="product.aspx">Product
                                                                <svg class="menu__arrow" width="6px" height="9px">
                                                                    <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use></svg></a><div class="menu__submenu">
                                                                        <!-- .menu -->
                                                                        <ul class="menu menu--layout--classic">
                                                                            <li><a href="product.aspx">Product</a></li>
                                                                            <li><a href="product-alt.aspx">Product Alt</a></li>
                                                                            <li><a href="product-sidebar.aspx">Product Sidebar</a></li>
                                                                        </ul>
                                                                        <!-- .menu / end -->
                                                                    </div>
                                                            </li>
                                                            <li><a href="cart.aspx">Cart</a></li>
                                                            <li><a href="checkout.aspx">Checkout</a></li>
                                                            <li><a href="wishlist.aspx">Wishlist</a></li>
                                                            <li><a href="compare.aspx">Compare</a></li>
                                                            <li><a href="account.aspx">My Account</a></li>
                                                            <li><a href="track-order.aspx">Track Order</a></li>
                                                        </ul>
                                                        <!-- .menu / end -->
                                                    </div>
                                            </li>
                                            <li class="nav-links__item nav-links__item--with-submenu"><a href="sub.aspx"><span>Sub
                                                </span></a><div class="nav-links__menu">
                                                        <!-- .menu -->
                                                        <ul class="menu menu--layout--classic">
                                                            <li><a href="blog-classic.aspx">Blog Classic</a></li>
                                                            <li><a href="blog-grid.aspx">Blog Grid</a></li>
                                                            <li><a href="blog-list.aspx">Blog List</a></li>
                                                            <li><a href="blog-left-sidebar.aspx">Blog Left Sidebar</a></li>
                                                            <li><a href="post.aspx">Post Page</a></li>
                                                            <li><a href="post-without-sidebar.aspx">Post Without Sidebar</a></li>
                                                        </ul>
                                                        <!-- .menu / end -->
                                                    </div>
                                            </li>
                                            <li class="nav-links__item nav-links__item--with-submenu"><a href="signin.aspx"><span>Sign In
                                                </span></a><div class="nav-links__menu">
                                                        <!-- .menu -->
                                                        <ul class="menu menu--layout--classic">
                                                            <li><a href="about-us.aspx">About Us</a></li>
                                                            <li><a href="contact-us.aspx">Contact Us</a></li>
                                                            <li><a href="contact-us-alt.aspx">Contact Us Alt</a></li>
                                                            <li><a href="404.aspx">404</a></li>
                                                            <li><a href="terms-and-conditions.aspx">Terms And Conditions</a></li>
                                                            <li><a href="faq.aspx">FAQ</a></li>
                                                            <li><a href="components.aspx">Components</a></li>
                                                            <li><a href="typography.aspx">Typography</a></li>
                                                        </ul>
                                                        <!-- .menu / end -->
                                                    </div>
                                            </li>
                                            <li class="nav-links__item"><a href="contact-us.aspx"><span>Contact Us</span></a></li>
                                            <li class="nav-links__item"></li>
                                        </ul>
                                    </div>
                                    <!-- .nav-links / end -->
                                    <div class="nav-panel__indicators">
                                        <div class="indicator indicator--trigger--click">
                                            <div class="indicator__dropdown">
                                                <!-- .dropcart -->
                                                <div class="dropcart">
                                                    <div class="dropcart__products-list">
                                                        <div class="dropcart__product">
                                                            <div class="dropcart__product-image"><a href="product.aspx">
                                                                <img src="images/products/product-1.jpg" alt=""></a></div>
                                                            <div class="dropcart__product-info">
                                                                <div class="dropcart__product-name"><a href="product.aspx">Electric Planer Brandix KL370090G 300 Watts</a></div>
                                                                <ul class="dropcart__product-options">
                                                                    <li>Color: Yellow</li>
                                                                    <li>Material: Aluminium</li>
                                                                </ul>
                                                                <div class="dropcart__product-meta"><span class="dropcart__product-quantity">2</span> x <span class="dropcart__product-price">$699.00</span></div>
                                                            </div>
                                                            <button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon">
                                                                <svg width="10px" height="10px">
                                                                    <use xlink:href="images/sprite.svg#cross-10"></use></svg></button></div>
                                                        <div class="dropcart__product">
                                                            <div class="dropcart__product-image"><a href="product.aspx">
                                                                <img src="images/products/product-2.jpg" alt=""></a></div>
                                                            <div class="dropcart__product-info">
                                                                <div class="dropcart__product-name"><a href="product.aspx">Undefined Tool IRadix DPS3000SY 2700 watts</a></div>
                                                                <div class="dropcart__product-meta"><span class="dropcart__product-quantity">1</span> x <span class="dropcart__product-price">$849.00</span></div>
                                                            </div>
                                                            <button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon">
                                                                <svg width="10px" height="10px">
                                                                    <use xlink:href="images/sprite.svg#cross-10"></use></svg></button></div>
                                                        <div class="dropcart__product">
                                                            <div class="dropcart__product-image"><a href="product.aspx">
                                                                <img src="images/products/product-5.jpg" alt=""></a></div>
                                                            <div class="dropcart__product-info">
                                                                <div class="dropcart__product-name"><a href="product.aspx">Brandix Router Power Tool 2017ERXPK</a></div>
                                                                <ul class="dropcart__product-options">
                                                                    <li>Color: True Red</li>
                                                                </ul>
                                                                <div class="dropcart__product-meta"><span class="dropcart__product-quantity">3</span> x <span class="dropcart__product-price">$1,210.00</span></div>
                                                            </div>
                                                            <button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon">
                                                                <svg width="10px" height="10px">
                                                                    <use xlink:href="images/sprite.svg#cross-10"></use></svg></button></div>
                                                    </div>
                                                    <div class="dropcart__totals">
                                                        <table>
                                                            <tr>
                                                                <th>Subtotal</th>
                                                                <td>$5,877.00</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Shipping</th>
                                                                <td>$25.00</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Tax</th>
                                                                <td>$0.00</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Total</th>
                                                                <td>$5,902.00</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="dropcart__buttons"><a class="btn btn-secondary" href="cart.aspx">View Cart</a> <a class="btn btn-primary" href="checkout.aspx">Checkout</a></div>
                                                </div>
                                                <!-- .dropcart / end -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- desktop site__header / end -->
            <!-- site__body -->
            <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
            <div class="container">
                <br>
                <p class="text-center">More bootstrap 4 components on <a href="http://webublogoverflow.com/">webublogoverflow.com</a></p>
                <hr>
                <div class="row">
                    <aside class="col-sm-4">
                        <p>with us</p>
                        <div class="card">
                            <article class="card-body">
                                <a href="" class="float-right btn btn-outline-primary">Sign up</a>
                                <h4 class="card-title mb-4 mt-1">Choose us</h4>
                                <form>
                                    <div class="form-group">
                                        <label>Your email</label>
                                        <input name="" class="form-control" placeholder="Email" type="email">
                                    </div>
                                    <!-- form-group// -->
                                    <div class="form-group">
                                        <a class="float-right" href="#">Forgot?</a>
                                        <label>Your password</label>
                                        <input class="form-control" placeholder="******" type="password">
                                    </div>
                                    <!-- form-group// -->
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">
                                                Save password </label>
                                        </div>
                                        <!-- checkbox .// -->
                                    </div>
                                    <!-- form-group// -->
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block">Login  </button>
                                    </div>
                                    <!-- form-group// -->
                                </form>
                            </article>
                        </div>
                        <!-- card.// -->
                    </aside>
                    <!-- col.// -->
                    <aside class="col-sm-4">
                        <p>Inter in</p>
                        <div class="card">
                            <article class="card-body">
                                <a href="" class="float-right btn btn-outline-primary">Sign up</a>
                                <h4 class="card-title mb-4 mt-1">Sign in</h4>
                                <p>
                                    <a href="" class="btn btn-block btn-outline-info"><i class="fab fa-twitter"></i>Login via Twitter</a>
                                    <a href="" class="btn btn-block btn-outline-primary"><i class="fab fa-facebook-f"></i>Login via facebook</a>
                                </p>
                                <hr>
                                <form>
                                    <div class="form-group">
                                        <input name="" class="form-control" placeholder="Email or login" type="email">
                                    </div>
                                    <!-- form-group// -->
                                    <div class="form-group">
                                        <input class="form-control" placeholder="******" type="password">
                                    </div>
                                    <!-- form-group// -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary btn-block">Login  </button>
                                            </div>
                                            <!-- form-group// -->
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <a class="small" href="#">Forgot password?</a>
                                        </div>
                                    </div>
                                    <!-- .row// -->
                                </form>
                            </article>
                        </div>
                        <!-- card.// -->
                    </aside>
                    <!-- col.// -->
                    <aside class="col-sm-4">
                        <p>Our map</p>
                        <div class="card">
                            <article class="card-body">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d15916.085640414378!2d33.185751550000006!3d-4.2160796!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2stz!4v1538627227928" width="320" height="330" frameborder="0" style="border: 0" allowfullscreen></iframe>
                            </article>
                        </div>
                        <!-- card.// -->
                    </aside>
                    <!-- col.// -->
                </div>
                <!-- row.// -->
            </div>
            <!--container end.//-->
            <br>
            <br>
            <br>


            <!-- site__body / end -->
            <!-- site__footer -->
            <footer class="site__footer">
                <div class="site-footer">
                    <div class="container">
                        <div class="site-footer__widgets">
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-4">
                                    <div class="site-footer__widget footer-contacts">
                                        <h5 class="footer-contacts__title">Contact Us</h5>
                                        <div class="footer-contacts__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in feugiat lorem. Pellentque ac placerat tellus.</div>
                                        <ul class="footer-contacts__contacts">
                                            <li><i class="footer-contacts__icon fas fa-globe-americas"></i>715 Fake Street, New York 10021 USA</li>
                                            <li><i class="footer-contacts__icon far fa-envelope"></i>stroyka@example.com</li>
                                            <li><i class="footer-contacts__icon fas fa-mobile-alt"></i>(800) 060-0730, (800) 060-0730</li>
                                            <li><i class="footer-contacts__icon far fa-clock"></i>Mon-Sat 10:00pm - 7:00pm</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-6 col-md-3 col-lg-2">
                                    <div class="site-footer__widget footer-links">
                                        <h5 class="footer-links__title">Information</h5>
                                        <ul class="footer-links__list">
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">About Us</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Delivery Information</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Privacy Policy</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Brands</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Contact Us</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Returns</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Site Map</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-6 col-md-3 col-lg-2">
                                    <div class="site-footer__widget footer-links">
                                        <h5 class="footer-links__title">My Account</h5>
                                        <ul class="footer-links__list">
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Store Location</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Order History</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Wish List</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Newsletter</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Specials</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Gift Certificates</a></li>
                                            <li class="footer-links__item"><a href="#" class="footer-links__link">Affiliate</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-12 col-md-12 col-lg-4">
                                    <div class="site-footer__widget footer-newsletter">
                                        <h5 class="footer-newsletter__title">Newsletter</h5>
                                        <div class="footer-newsletter__text">Praesent pellentesque volutpat ex, vitae auctor lorem pulvinar mollis felis at lacinia.</div>
                                        <form action="#" class="footer-newsletter__form">
                                            <label class="sr-only" for="footer-newsletter-address">Email Address</label>
                                            <input type="text" class="footer-newsletter__form-input form-control" id="footer-newsletter-address" placeholder="Email Address...">
                                            <button class="footer-newsletter__form-button btn btn-primary">Subscribe</button></form>
                                        <div class="footer-newsletter__text footer-newsletter__text--social">Follow us on social networks</div>
                                        <ul class="footer-newsletter__social-links">
                                            <li class="footer-newsletter__social-link footer-newsletter__social-link--facebook"><a href="https://themeforest.net/user/kos9" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                            <li class="footer-newsletter__social-link footer-newsletter__social-link--twitter"><a href="https://themeforest.net/user/kos9" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                            <li class="footer-newsletter__social-link footer-newsletter__social-link--youtube"><a href="https://themeforest.net/user/kos9" target="_blank"><i class="fab fa-youtube"></i></a></li>
                                            <li class="footer-newsletter__social-link footer-newsletter__social-link--instagram"><a href="https://themeforest.net/user/kos9" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                            <li class="footer-newsletter__social-link footer-newsletter__social-link--rss"><a href="https://themeforest.net/user/kos9" target="_blank"><i class="fas fa-rss"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="site-footer__bottom">
                            <div class="site-footer__copyright"><a href="templatespoint.net" target="_blank">Templates Point</a></div>
                            <div class="site-footer__payments">
                                <img src="images/payments.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- site__footer / end -->
        </div>
        <!-- site / end -->
    </form>

</body>
</html>