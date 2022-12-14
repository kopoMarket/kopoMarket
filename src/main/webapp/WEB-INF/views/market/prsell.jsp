<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kopo.poly.dto.NoticeDTO" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.dto.FoodDTO" %>
<%@ page import="java.util.ArrayList" %>

<%
//    session.setAttribute("SESSION_USER_ID", "USER01");

    List<FoodDTO> rList = (List<FoodDTO>) request.getAttribute("rList");


    if (rList == null) {
        rList = new ArrayList<FoodDTO>();

    }

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>게시판 글보기</title>
<%--    <script type="text/javascript">--%>

<%--        //상세보기 이동--%>
<%--        function doDetail(seq) {--%>
<%--            location.href = "" + email;--%>
<%--        }--%>

<%--    </script>--%>

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


<%--    js--%>
    <script src="ogani-master/js/jquery-3.3.1.min.js"></script>
    <script src="ogani-master/js/bootstrap.min.js"></script>
    <script src="ogani-master/js/jquery.nice-select.min.js"></script>
    <script src="ogani-master/js/jquery-ui.min.js"></script>
    <script src="ogani-master/js/jquery.slicknav.js"></script>
    <script src="ogani-master/js/mixitup.min.js"></script>
    <script src="ogani-master/js/owl.carousel.min.js"></script>
    <script src="ogani-master/js/main.js"></script>




</head>
<body>
<!-- Header Section Begin -->
<%@include file="../includes/header.jsp"%>

<%--<table border="1" width="100%">--%>



<%--<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12 text-center">--%>
<%--                <div class="breadcrumb__text">--%>
<%--                    <h2>판매자 상품 조회</h2>--%>
<%--                    <!----%>
<%--                                            <div class="breadcrumb__option">--%>
<%--                                                <a href="./index.html">신선한</a>--%>
<%--                                                <span>상품을</span>--%>
<%--                                            </div>--%>
<%--                    -->--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>

                        <tr>
                            <th class="shoping__product">상품</th>
                            <th>가격</th>
                            <th>수량</th>
                            <th>유통기한</th>
                            <th></th>
                        </tr>
                        </thead>






                        <tbody>

                        <% for (int i =0; i<rList.size(); i++)
                        {
                        %>

                        <%--                            <img src="img/cart/cart-1.jpg" alt=""> 이미지 넣기--%>
                        <tr>
                            <td class="shoping__cart__item"> <h5><%=
                            rList.get(i).getP_name()%> </h5></td>


                            <td class="shoping__cart__price"> <%= rList.get(i).getP_price()%></td>



<%--                            수량 text 상자로--%>
                            <form name="f" method="post" action="/market/sell_main_up">
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="<%= rList.get(i).getP_sell()%>">
                                    </div>
                                </div>
                            </td>


                            </form>





                            <td class="shoping__cart__total"><%= rList.get(i).getP_period()%></td>
                        </tr>
                        <% } %>
                        </tbody>


                    </table>





                </div>
            </div>
        </div>






        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
<%--                    <a href="/market/insert" class="primary-btn cart-btn">물품등록</a>--%>
                    <a href="/market/insert"  class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                        물품등록</a>
                </div>
            </div>
            <!--
                            <div class="col-lg-6">
                                <div class="shoping__continue">
                                    <div class="shoping__discount">
                                        <h5>Discount Codes</h5>
                                        <form action="#">
                                            <input type="text" placeholder="Enter your coupon code">
                                            <button type="submit" class="site-btn">APPLY COUPON</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="shoping__checkout">
                                    <h5>Cart Total</h5>
                                    <ul>
                                        <li>Subtotal <span>$454.98</span></li>
                                        <li>Total <span>$454.98</span></li>
                                    </ul>
                                    <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
                                </div>
                            </div>
            -->
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->










<!-- Footer Section Begin -->
<%@include file="../includes/footer.jsp"%>
<!-- Footer Section End -->
</body>
</html>