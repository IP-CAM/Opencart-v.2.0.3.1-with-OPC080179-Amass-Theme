</div><!-- content inner div end -->
</section>
<!-- section code end -->

<footer id="footer-container">
<div class="footer-inner">
	<div id="footer">
		<div class="custom_footer_main">
			<?php echo $content_footer; ?>
		</div>
	  <?php if ($informations) { ?>
	  <div class="column">
		<h3><?php echo $text_information; ?></h3>
		<ul>
		  <?php foreach ($informations as $information) { ?>
		  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		  <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
	  </div>
	  <?php } ?>
	  <div class="column">
		<h3><?php echo $text_account; ?></h3>
		<ul>
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		</ul>
	  </div>
	  <?php echo $content_footer_contact; ?>
	 </div>
</div>
<div class="copyright-container">
	<div class="copyright-inner">
		<div id="bottom-copyright">
			<ul>
			   <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			   <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			   <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			   <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>	   
			   <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li> 
			   <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			   <li class="contact-last"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			</ul>
		</div>
	<!--
	OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
	Please donate via PayPal to donate@opencart.com
	//-->
	<div id="powered"><?php echo $powered; ?></div>
	<?php if (isset($this->request->get['route']) && $this->request->get['route'] != 'common/home') { ?>
			<div class="tm_footerlink" style="display:none;" >
			Theme By <a href="http://www.templatemela.com/" title="TemplateMela" target="_blank">TemplateMela</a>
		</div>
	 <?php } ?> 
	
	<!--
	OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
	Please donate via PayPal to donate@opencart.com
	//-->	 
	</div>
</div>
</footer>

</div>
<span class="grid_default_width" style="display: none; visibility: hidden;" ></span>
<span class="home_products_default_width" style="display:none; visibility:hidden"></span>
<span class="module_default_width" style="display:none; visibility:hidden"></span>
</body></html>