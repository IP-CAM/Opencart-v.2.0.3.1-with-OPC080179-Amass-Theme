<div class="hometab">
<div id="tabs-<?php echo $module; ?>" class="htabs">
  <ul class='etabs'>
	<li class='tab'>
		<?php if($featured_products){ ?>
			<a href="#tab-featured-<?php echo $module; ?>"><?php echo $tab_featured; ?></a>
		<?php } ?>
	</li>
	<li class='tab'>
		<?php if($bestseller_products){ ?>
		<a href="#tab-bestseller"><?php echo $tab_bestseller; ?></a>
		<?php } ?>
	</li>
	<li class='tab'>
		<?php if($latest_products){ ?>
			<a href="#tab-latest"><?php echo $tab_latest; ?></a>
		<?php } ?>
	</li>
	</ul>
 </div>

<?php if($featured_products){ ?>
  <div id="tab-featured-<?php echo $module; ?>" class="tab-content">
	 <!-- Megnor Start -->
	<?php 
		$sliderFor = 9;
		$productCount = sizeof($featured_products); 
	?>
    	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>featured-carousel<?php }else{?>featured-grid<?php }?>">
	<!-- Megnor End -->	
      <?php foreach ($featured_products as $product) { ?>
	    <div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
			<div class="product-block">
				<div class="product-block-inner">
					<?php if ($product['thumb']) { ?>
						<div class="image">
							<a href="<?php echo $product['href']; ?>">
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
							</a>
						</div>
					<?php } ?>
					<?php if (!$product['special']) { ?>       
						 <?php } else { ?>
						<span class="saleicon sale">Sale</span>         
						 <?php } ?>
						 <div class="product_category_title"><?php echo $product['category_title']; ?>  - </div>
						<div class="name">
							<?php if (strlen($product['name']) > '22') { ?>
									<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo substr($product['name'], 0, 22)."..."; ?></a>
							 <?php } else { ?>
									<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							 <?php } ?>
						</div>
						<div class="product_info">
							<?php if ($product['price']) { ?>
									<div class="price">
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
									<span class="price-old"><?php echo $product['price']; ?></span> 
									<span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
								</div>
							<?php } ?>
								<div class="cart_rating">
									<?php if ($product['rating']) { ?>
									<div class="rating">
										<img src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
									</div>
							<?php } ?>
									<div class="cart">
										<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
									</div>
								</div>
									
						</div>
      			</div>
			</div>
		</div>
      <?php } ?>
    </div>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="btn prev">&nbsp;</a>
			<a class="btn next">&nbsp;</a>
		</div>	
	<?php endif; ?>	
 </div>
		 <span class="featured_default_width" style="display:none; visibility:hidden"></span>
<?php } ?>

<?php if($bestseller_products){ ?>
 <div id="tab-bestseller" class="tab-content">
 	 <!-- Megnor Start -->
	<?php 
		$sliderFor = 9;
		$productCount = sizeof($bestseller_products); 
	?>
    	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>bestseller-carousel<?php }else{?>bestseller-grid<?php }?>">
	<!-- Megnor End -->	
      <?php foreach ($bestseller_products as $product) { ?>
	  	<div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
		<div class="product-block">
			<div class="product-block-inner">
			
			<?php if ($product['thumb']) { ?>
			<div class="image">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
			</div>
			<?php } ?>
			<?php if (!$product['special']) { ?>       
			 <?php } else { ?>
			<span class="saleicon sale">Sale</span>         
			 <?php } ?>	
			 	<div class="product_category_title"><?php echo $product['category_title']; ?>  - </div>
			 <div class="name">
			 	<?php if (strlen($product['name']) > '22') { ?>
						<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo substr($product['name'], 0, 22)."..."; ?></a>
				 <?php } else { ?>
						<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				 <?php } ?>
			 </div>
			 <div class="product_info">	
			<?php if ($product['price']) { ?>
			<div class="price">
			  <?php if (!$product['special']) { ?>
			 
			  <?php echo $product['price']; ?>
			  <?php } else { ?>
			  <span class="price-old"><?php echo $product['price']; ?></span> 
			  <span class="price-new"><?php echo $product['special']; ?></span>
			  <?php } ?>
			</div>
			<?php } ?>
			<div class="cart_rating">
			<?php if ($product['rating']) { ?>
			<div class="rating">
				<img src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
			</div>
			<?php } ?>
			<div class="cart">
			<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
			</div>
			
			</div>
			</div>
		</div>
		</div>
      <?php } ?>
    </div>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="btn prev">&nbsp;</a>
			<a class="btn next">&nbsp;</a>
		</div>	
	<?php endif; ?>	
 </div>
  		<span class="bestseller_default_width" style="display:none; visibility:hidden"></span>
<?php } ?>


<?php if($latest_products){ ?>
 <div id="tab-latest" class="tab-content">
 	 <!-- Megnor Start -->
	<?php 
		$sliderFor = 9;
		$productCount = sizeof($latest_products); 
	?>
    	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>latest-carousel<?php }else{?>latest-grid<?php }?>">
	<!-- Megnor End -->	
      <?php foreach ($latest_products as $product) { ?>
	  	<div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
		<div class="product-block">
			<div class="product-block-inner">
			
			<?php if ($product['thumb']) { ?>
			<div class="image">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
			</div>
			<?php } ?>
			<?php if (!$product['special']) { ?>       
			 <?php } else { ?>
			<span class="saleicon sale">Sale</span>         
			 <?php } ?>		
			 <div class="product_category_title"><?php echo $product['category_title']; ?>  - </div>
			 <div class="name">
			 	<?php if (strlen($product['name']) > '22') { ?>
						<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo substr($product['name'], 0, 22)."..."; ?></a>
				 <?php } else { ?>
						<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				 <?php } ?>
			 </div>
			 <div class="product_info">	
			<?php if ($product['price']) { ?>
			<div class="price">
			  <?php if (!$product['special']) { ?>
			  <?php echo $product['price']; ?>
			  <?php } else { ?>
			  <span class="price-old"><?php echo $product['price']; ?></span> 
			  <span class="price-new"><?php echo $product['special']; ?></span>
			  <?php } ?>
			</div>
			<?php } ?>
			<div class="cart_rating">
			<?php if ($product['rating']) { ?>
			<div class="rating">
				<img src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
			</div>
			<?php } ?>
			<div class="cart">
			<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
			
			</div>
			</div>
			</div>
		</div>
		</div>
      <?php } ?>
    </div>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="btn prev">&nbsp;</a>
			<a class="btn next">&nbsp;</a>
		</div>	
	<?php endif; ?>	
 </div>
  		<span class="latest_default_width" style="display:none; visibility:hidden"></span>
 
<?php } ?>

</div>

<script type="text/javascript">
$('#tabs-<?php echo $module; ?> a').tabs();
</script> 