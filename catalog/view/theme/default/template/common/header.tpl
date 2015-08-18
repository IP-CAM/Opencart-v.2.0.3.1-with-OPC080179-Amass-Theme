<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ElasticSlideshow/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ElasticSlideshow/css/style.css" />
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php echo $google_analytics; ?>

    <script type="text/javascript" src="catalog/view/javascript/jquery/ElasticSlideshow/js/jquery.eislideshow.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ElasticSlideshow/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        $(function() {
            $('#ei-slider').eislideshow({
                animation			: 'center',
                autoplay			: true,
                slideshow_interval	: 3000,
                titlesFactor		: 0
            });
        });
    </script>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
    <div class="container">
        <?php echo $currency; ?>
        <?php echo $language; ?>
        <div id="top-links" class="nav pull-right">
            <ul class="list-inline">
                <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span
                            class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
                <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"
                                        class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span
                                class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span
                                class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <?php if ($logged) { ?>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                        <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                        <?php } else { ?>
                        <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                        <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                        <?php } ?>
                    </ul>
                </li>
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i
                                class="fa fa-heart"></i> <span
                                class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i
                                class="fa fa-shopping-cart"></i> <span
                                class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
                <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i>
                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <div id="logo-bar">
        <img class="logo-img" src="catalog/view/theme/default/image/Logo.png" alt="Logo Gold Sports">
        <?php if ($categories) { ?>
        <div class="header-container">
            <div id="menu" class="navbar">
                <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <?php foreach ($categories as $category) { ?>
                        <?php if ($category['children']) { ?>
                        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"
                                                data-toggle="dropdown"><?php echo $category['name']; ?></a>

                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                    <ul class="list-unstyled">
                                        <?php foreach ($children as $child) { ?>
                                        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                    <?php } ?>
                                </div>
                                <a href="<?php echo $category['href']; ?>"
                                   class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></div>
                        </li>
                        <?php } else { ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
    <div class="wrapper">
        <div id="ei-slider" class="ei-slider">
            <ul class="ei-slider-large">
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/6.jpg" alt="image06"/>
                    <div class="ei-title">
                        <h2>Passionate</h2>
                        <h3>Seeker</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/1.jpg" alt="image01" />
                    <div class="ei-title">
                        <h2>Creative</h2>
                        <h3>Duet</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/2.jpg" alt="image02" />
                    <div class="ei-title">
                        <h2>Friendly</h2>
                        <h3>Devil</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/3.jpg" alt="image03"/>
                    <div class="ei-title">
                        <h2>Tranquilent</h2>
                        <h3>Compatriot</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/4.jpg" alt="image04"/>
                    <div class="ei-title">
                        <h2>Insecure</h2>
                        <h3>Hussler</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/5.jpg" alt="image05"/>
                    <div class="ei-title">
                        <h2>Loving</h2>
                        <h3>Rebel</h3>
                    </div>
                </li>
                <li>
                    <img src="catalog/view/javascript/jquery/ElasticSlideshow/images/large/7.jpg" alt="image07"/>
                    <div class="ei-title">
                        <h2>Crazy</h2>
                        <h3>Friend</h3>
                    </div>
                </li>
            </ul><!-- ei-slider-large -->
            <ul class="ei-slider-thumbs">
                <li class="ei-slider-element">Current</li>
                <li><a href="#">Slide 6</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/6.jpg" alt="thumb06" /></li>
                <li><a href="#">Slide 1</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/1.jpg" alt="thumb01" /></li>
                <li><a href="#">Slide 2</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/2.jpg" alt="thumb02" /></li>
                <li><a href="#">Slide 3</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/3.jpg" alt="thumb03" /></li>
                <li><a href="#">Slide 4</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/4.jpg" alt="thumb04" /></li>
                <li><a href="#">Slide 5</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/5.jpg" alt="thumb05" /></li>
                <li><a href="#">Slide 7</a><img src="catalog/view/javascript/jquery/ElasticSlideshow/images/thumbs/7.jpg" alt="thumb07" /></li>
            </ul><!-- ei-slider-thumbs -->
        </div><!-- ei-slider -->
    </div>
</header>




<header>
    <div class="container">
        <div class="row">

            <div class="col-sm-5"><?php echo $search; ?>
            </div>
            <div class="col-sm-3"><?php echo $cart; ?></div>
        </div>
    </div>
</header>

