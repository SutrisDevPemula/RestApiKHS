<div class="box_man">
	<?php if ($manufacturers) { ?>
	<ul>
	  <?php foreach ($manufacturers as $manufacturer) {   ?>
	  <li><a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a></li>
		
		<?php } ?>
	</ul>
	<?php } ?>
	<div class="clear"></div>
</div>
