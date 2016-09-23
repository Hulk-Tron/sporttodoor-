<div class="banner wow fadeIn" data-wow-duration="1s" data-wow-delay="1s">
<?php 
       $count = count($banners);
       foreach ($banners as $banner) { ?>
       <?php if ($count == 1): ?>
         <div class="col-md-12 col-xs-12">
       <?php endif ?>
       <?php if ($count == 2): ?>
         <div class="col-md-6 col-xs-12">
       <?php endif ?>
       <?php if ($count == 3): ?>
         <div class="col-md-4 col-xs-12">
       <?php endif ?>
       <?php if ($count == 4): ?>
         <div class="col-md-3 col-xs-12">
       <?php endif ?>
       <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="" class="banner_image img-responsive" /></a>
      
    </div>
    <?php } ?>
  </div><!-- end banner -->