<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color: #C4DFE6">


 <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-left">
                <img src="images/pantting/39.jpeg"alt="" />
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong> Judin's Art & Craft</strong></h1>
                            <p class="m-b-40">" Happiness is handmade & handmade is happiness... "</p>
                         
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/bamboo/2_1.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!--<h1 class="m-b-20"><strong>Welcome To <br> Judin's Art & Craft </strong></h1>-->
                            <p class="m-b-40">"The world always seems brighter <br>When you have just made something that wasn't there before"</p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-right">
                <img src="images/wooden/2.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                           <!-- <h1 class="m-b-20"><strong>Hurry up & go yourself into <br>Judin's Art & Craft world</strong></h1>-->
                            <p class="m-b-40">"  craft is one type of imagination <br>& the purpose of art is mystry..." </p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
   <br /><br />
   <!-- Start Categories  -->
   
   
   <div class="categories-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        &nbsp;<a class="btn hvr-hover" href="product.aspx">Wooden</a>
                        <img class="img-fluid" src="images/wooden/images (10).jpeg"alt="" /></div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/toy/34.jpg"alt="" />
                        <a class="btn hvr-hover" href="login.aspx">Toys</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/jute/1.jpg" alt="" />
                        <a class="btn hvr-hover" href="login.aspx">Jute</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/dreemc/2.jpg" alt="" />
                        <a class="btn hvr-hover" href="login.aspx">Dream-Catcher</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/pantting/37.jpg" alt="" />
                        <a class="btn hvr-hover" href="login.aspx">Painting</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid"  src="images/house/1.jpg" alt="" />
                        <a class="btn hvr-hover" href="login.aspx">House-Decor</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Categories -->
</center>
</asp:Content>

