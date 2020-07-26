<script>
$(document).ready(function() {
	$('.bestsellers-scroll').bxSlider({
		mode:'vertical',
		minSlides: 4,
		maxSlides: 4,
		slideWidth: 270,
		nextText: '<i class="material-design-drop27"></i>',
		prevText: '<i class="material-design-drop25"></i>',
		nextSelector: '#bestsellers-next',
		prevSelector: '#bestsellers-prev',
		pager:false,
	});
});
</script>
<div class="box bestsellers">
	<div class="box-heading">
		<div class="nav-scroll">
			<span id="bestsellers-prev"><a  href=""></a></span>  
			<span id="bestsellers-next"><a  href=""></a></span>
		</div>
		<h3><?php echo $heading_title; ?></h3>
	</div>
	<div class="box-content">
		<div class="product-layout">
			<div class="bestsellers-scroll">
			<?php $t=0; foreach ($products as $product) { $t++ ?>
			<div>
				<div class="product-thumb transition">
					<div class="image">
						<a href="<?php echo $product['href']; ?>">
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
						</a>
					</div>
					<div class="caption">
						<?php if ($product['price']) { ?>
						<div class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-new">
								<?php echo $product['special']; ?>
							</span>
							<span class="price-old">
								<?php echo $product['price']; ?>
							</span>
							<?php } ?>
							<?php if ($product['tax']) { ?>
							<span class="price-tax">
								<?php echo $text_tax; ?> <?php echo $product['tax']; ?>
							</span>
							<?php } ?>
						</div>
						<?php } ?>
						<div class="name">
							<a href="<?php echo $product['href']; ?>">
								<?php echo $product['name']; ?>
							</a>
						</div>
						<?php if ($product['rating']) { ?>
						<div class="rating">
							<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($product['rating'] < $i) { ?>
							<span class="fa fa-stack">
								<i class="fa fa-star-o fa-stack-2x"></i>
							</span>
							<?php } else { ?>
							<span class="fa fa-stack">
								<i class="fa fa-star fa-stack-2x"></i>
								<i class="fa fa-star-o fa-stack-2x"></i>
							</span>
							<?php } ?>
							<?php } ?>
						</div>
						<?php } ?>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<?php } ?>
			</div>
		</div>
	</div>
</div>