<h3><?php echo $heading_title; ?></h3>
<div id="featured_categories<?php echo $module; ?>" class="row owl-carousel">
  <?php foreach ($categorys as $category) { ?>
  <div style="margin-right:12px;" class="item">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
        <p><?php echo $category['description']; ?></p>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#featured_categories<?php echo $module; ?>').owlCarousel({
	items: 4,
	navigation: true,
	margin:10,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>
<style>
#featured_categories<?php echo $module; ?> .owl-wrapper-outer {
    border:none;
    border-radius: none;
    box-shadow:none;
}
</style>