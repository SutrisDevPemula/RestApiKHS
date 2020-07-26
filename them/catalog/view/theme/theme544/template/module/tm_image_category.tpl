<div class="box image_category">
	<div class="box-content">
		<div class="box-category">
			<ul class="category_menu">
			<?php foreach ($categories as $category) { ?>
			<li class="col-sm-">
				
				<div class="image"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></div>
				<div class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
				<div class="view_all"><a href="<?php echo $category['href']; ?>"><?php echo $text_all; ?></a></div>
			</li>
			<?php } ?>
			</ul>
		</div>
	<div class="clear"></div>
	</div>
</div>


