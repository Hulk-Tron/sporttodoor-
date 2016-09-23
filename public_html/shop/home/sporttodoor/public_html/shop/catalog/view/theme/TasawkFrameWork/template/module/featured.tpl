<div class="col-md-6">
    <div class="mobile">
        <h4 class="head"><?php echo $heading_title; ?></h4>
        <div class="slider-sales">
            <div id="FEATURED" class="owl-carousel owl-theme">
              <?php foreach ($products as $product) { ?>
               <div class="item">
                    <div class="product">
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                        <div class="pay">
                            <a href="<?php echo $product['href']; ?>" class=" hvr-bounce-to-left"><i class="fa fa-refresh"></i></a>
                            <a onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class=" hvr-bounce-to-top"><i class="fa fa-heart"></i></a>
                            <a onclick="cart.add('<?php echo $product['product_id']; ?>');" class=" hvr-bounce-to-right"><?php echo $button_cart; ?><i class="fa fa-shopping-cart"></i></a>
                        </div>
                        <h3 class="title"><?php echo $product['name']; ?></h3>
                        <?php if ($product['price']) { ?>
        <h4 class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
        </h4>
        <?php } ?>
                         <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
                    </div>
                </div><!---->
  <?php } ?>
            </div>
        </div>
    </div>
</div><!---->