<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="ogani-master/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/style.css" type="text/css">


    <!--    registration css-->
    <link rel="stylesheet" href="/comport-master/assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="/comport-master/assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="/comport-master/assets/fonts/flat-icon/flaticon.css">
    <link rel="stylesheet" href="/comport-master/assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="/comport-master/assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="/comport-master/assets/css/nice-select.css">
    <link rel="stylesheet" href="/comport-master/assets/css/style.css">


    <style>
        .signup2 {

            height: 600px;
            text-align: center;
        }
        .signupbutton {
            color: #ffffff;
            font-size: 12.8px;
            background: #F8B600;
            margin: 10px 10px 0px 0px;
            padding: 0px 30px;
            height: 30px;
            width: 160px;
            border-radius: 20px;
        }
        .signup2.nice-select


    </style>

    <script type="text/javascript">
        //???????????? ????????? ????????? ????????????
        function doRegUserCheck(f){
            if (f.user_email.value === ""){
                alert("???????????? ???????????????");
                f.user_email.focus();
                return false;
            }

            if (f.pwd_user.value === ""){
                alert("??????????????? ???????????????");
                f.pwd_user.focus();
                return false;
            }
            if (f.pwd2_user.value === ""){
                alert("??????????????? ???????????????");
                f.pwd2_user.focus();
                return false;
            }
            //???????????? ??????
            if (f.pwd_user.value !== f.pwd2_user.value){
                alert("??????????????? ????????????????????? ???????????? ????????????.")
                f.password.focus();
                return false;
            }

            if (f.name_user.value === ""){
                alert("????????? ???????????????");
                f.name_user.focus();
                return false;
            }
            if (f.gender.value === ""){
                alert("????????? ???????????????");
                f.gender.focus();
                return false;
            }
            if (f.age_user.value === ""){
                alert("????????? ???????????????");
                f.age_user.focus();
                return false;
            }
            if (f.type_veganism.value === ""){
                alert("???????????? ???????????????");
                f.type_veganism.focus();
                return false;
            }

        }
    </script>


</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="/ogani-master/img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="/ogani-master/img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="/login/login"><i class="fa fa-user"></i> Login</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.html">Home</a></li>
            <li><a href="./shop-grid.html">Shop</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.html">Shop Details</a></li>
                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                    <li><a href="./checkout.html">Check Out</a></li>
                    <li><a href="./blog-details.html">Blog Details</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">Blog</a></li>
            <li><a href="./contact.html">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="../includes/header.jsp"%>
<!-- Header Section End -->



<!--  section ????????? ??????  ????????? ?????? -->


<section class="pricing-table section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-top text-center">
                    <h2>?????? ?????? ???????????? </h2>
                    <p>gormless cheeky bugger he nicked it golly gosh a arse show off show off</p>
                </div>
            </div>
        </div>

        <!--            ???????????? ?????? ??? ????????????   -->
        <div>
            <div class="signup2">
                <form name="f" method="post" action="/signup/insertUserInfo" onsubmit="return doRegUserCheck(this);">
                    ?????????, ????????????, ?????????, ??????, ??????, ????????????, ???????????? <br><%-- onfocus ???????????? ?????? --%>
                    <input type="email" name="email_user" placeholder="E-mail" onfocus="this.placeholder = ''" onblur="this.placeholder = 'E-Mail'" required><br><br>
                    <input type="password" name="pwd_user" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required><br><br>
                    <input type="password" name="pwd2_user" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'" required><br><br>
                    <input type="text" name="name_user" placeholder="Name"onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'" required><br><br>
                    <input type="radio" name="gender" value="man"> ??? &nbsp;&nbsp;&nbsp;
                    <input type="radio" name="gender" value="woman"> ???<br><br>
                    <input type="text" name="age_user" placeholder="Age"onfocus="this.placeholder = ''" onblur="this.placeholder = 'Age'" required> <br><br>

                    ????????????<br><br>
                    <div style="padding-left: 44%;">
                        <select name="type_veganism">
                            <option value="noVegan"> ???????????? ?????? </option>
                            <option value="vegan"> ?????? Vegan </option>
                            <option value="lacto"> ?????? Lacto </option>
                            <option value="ovo"> ?????? Ovo </option>
                            <option value="lacto-ovo"> ??????-?????? Lacto-Ovo </option>
                            <option value="pesco"> ????????? Pesco </option>
                            <option value="pollo"> ?????? Pollo </option>
                            <option value="flexitarian"> ?????????????????? Flexitarian </option>
                        </select>
                    </div>

                    <br><br>
                    <button type="submit" class="signupbutton"> ???????????? </button>

                </form>
            </div>
        </div>




    </div>
</section>
<!-- Pricing Table End -->









<!-- Footer Section Begin -->
<%@include file="../includes/footer.jsp"%>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="ogani-master/js/jquery-3.3.1.min.js"></script>
<script src="ogani-master/js/bootstrap.min.js"></script>
<script src="ogani-master/js/jquery.nice-select.min.js"></script>
<script src="ogani-master/js/jquery-ui.min.js"></script>
<script src="ogani-master/js/jquery.slicknav.js"></script>
<script src="ogani-master/js/mixitup.min.js"></script>
<script src="ogani-master/js/owl.carousel.min.js"></script>
<script src="ogani-master/js/main.js"></script>



</body>

</html>