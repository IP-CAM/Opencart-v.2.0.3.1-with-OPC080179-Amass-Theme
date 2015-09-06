<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie6" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 7]><html class="ie7" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 8]><html class="ie8" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><!--<![endif]-->
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<!-- Palm -->
<meta name="HandheldFriendly" content="True" />
<!-- Windows -->
<meta name="MobileOptimized" content="320" />
<!-- Safari, Android, BB, Opera -->
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<!-- Use the .htaccess and remove these lines to avoid edge case issues. -->

<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!-- Megnor www.templatemela.com - Start-->
<?php if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
$http_type = "https:";} else {$http_type = "http:";} 
 ?><link href='<?php echo $http_type;?>//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/tm_flexslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/lightbox.css" />
<?php if($direction=='rtl'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/rtl.css">
<?php }?>
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/html5.js"></script><![endif]-->
<!-- Megnor www.templatemela.com  - End -->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<!-- Megnor www.templatemela.com - Start -->
<script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/scrolltop.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.formalize.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/cloudzoom.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/fancybox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/lightbox/lightbox-2.6.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/tm_jquery.flexslider.min.js"></script>
<!-- Megnor www.templatemela.com - End -->

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if lt IE 7]>
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {<?php foreach ($stores as $store) { ?>$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');<?php } ?>});//--></script>
<?php } ?>

<?php echo $google_analytics; ?>
<!-- TemplateMela www.templatemela.com - Start -->
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/respond.min.js"></script><![endif]-->
<!-- TemplateMela www.templatemela.com - End -->
</head>
<body class="<?php echo $body_class; ?>">
<div id="container">

<header id="header-container">
	<div id="header">
		<div class="header-left">  <!--megnor 'header-left' start -->
			
			<?php if ($logo) { ?>
				<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>			
			<?php } ?>
		
		</div>  <!--megnor 'header-left' end -->	  
		<div class="header-right">  <!--megnor 'header-right' start -->
		<?php echo $language; ?>
		<?php echo $currency; ?>
		<?php echo $content_header_callus; ?>
				<!--megnor added -->
		<div class="tm_headerlinkmenu">
				<div class="tm_headerlinks_inner"><div class="headertoggle_img">&nbsp;</div></div>
				<ul class="header_links">
			 	 <li> <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>" id="wishlist-total-tm"><?php echo $text_wishlist; ?></a></li>
				</ul> 
		</div>
		   <div class="welcome-links">
				<div class="links">												
					<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
					<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
				</div>
				<div id="welcome">
				<?php if (!$logged) { ?>
						<?php echo $text_welcome; ?>
					<?php } else { ?>
						<?php echo $text_logged; ?>
					<?php } ?>		
				</div>
			</div>
			<?php echo $cart; ?>
			<div id="search">
				<div class="button-search"></div>
				<input type="text" name="search" onClick="this.placeholder = '';" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div>							
		</div> <!--megnor 'header-right' end -->	   
	</div>
</header>
  
<!-- ================================ Start Mega menu Navigation =================== -->

<div class="menu_top">
<div class="menu_top_inner">

<?php if ($categories) { ?>

<nav class="nav-container" role="navigation">


<div id="menu" class="main-menu">

<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>

  <ul class="main-navigation">
  	
    <?php foreach ($categories as $category_1) { ?>
		<li class="level0">
			<a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
  			 <?php if ($category_1['children']) { ?>
			   <?php $i = count($category_1['children']); ?>
					<span class="active_menu"></span>
					<div class="categorybg">
				<!--	<span class="active_menu"></span>-->
						 <div class="categoryinner">
						 
								<?php $i=1; ?>
								<?php foreach ($category_1['children'] as $category_2) { ?>
								<ul>
								<li class="categorycolumn"><b><a class="submenu1" href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a></b>
								
								  <?php if($category_2['children']) { ?>
									<?php $j = count($category_2['children']); ?>
									<?php if($j<=10) { ?>
									
									<div class="cate_inner_bg">
									  <ul>
										 <?php foreach ($category_2['children'] as $category_3) { ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
										 <?php } ?>
									  </ul>
									</div>
								
									<?php } else { ?>
									
									<div>
									  <ul>
									  <?php $j=0; ?>
										 <?php foreach ($category_2['children'] as $category_3) { ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
										 <?php if (++$j == 10) ?>
										 <?php } ?>
										 <li style="padding-right:6px;"><a class="submenu2" href="<?php echo $category_2['href']; ?>">More....</a></li>
									  </ul>
									</div>
									<?php } ?>
									
								</li>
								<?php } ?>
								</ul>
								<?php } ?>
					
		
							
						</div>
					</div>
				
				<?php } ?>
	  		<?php } ?>
	  	</li> 
  </ul>
  
</div>



</nav>

<?php } ?>

<!--  =============================================== Mobile menu start  =============================================  -->
<div id="res-menu" class="main-menu nav-container1">
<div id="res-menu1" class="main-menu1 nav-container2">
	<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
    <ul class="main-navigation">
      <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>										
				<li>
				<?php if(count($category['children'][$i]['children'])>0){ ?>
					<a href="<?php echo $category['children'][$i]['href']; ?>" class="activSub" <?php /*?>onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'<?php */?>><?php echo $category['children'][$i]['name'];?></a> 					
				<?php } else { ?>				
					<a href="<?php echo $category['children'][$i]['href']; ?>" <?php /*?>onmouseover='JavaScript:closeSubMenu()'<?php */?> ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>

				<?php if ($category['children'][$i]['children']) { ?>
				<?php /*?><div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>"><?php */?>
				<ul>
				<?php for ($wi = 0; $wi < count($category['children'][$i]['children']); $wi++) { ?>
					<li><a href="<?php echo $category['children'][$i]['children'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children'][$wi]['name']; ?></a></li>
				 <?php } ?>
				</ul>
				<?php /*?></div><?php */?>
			  <?php } ?>		  
			</li>		
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>
    <?php } ?>
    </ul>
	</div>

</div>
<!--  ================================ Mobile menu end   ======================================   --> 


</div>
</div>  
<!-- ================================ end Mega menu Navigation =================== -->
    
 
<!-- section code start -->
<section id='content-wrapper'>

<div class="content-inner">

<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

<div id="notification"></div>