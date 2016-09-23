<?php echo $header; ?>
<div class="item">
            <div class="container">
                
                <?php echo $content_top ?>
                <div class="product">
                    <div class="row">
                      <?php foreach ($products as $product) { 
                        ?>
                        <div class="col-md-4 col-sm-6">
                            <div class="box">
                            <?php foreach ($product['options'] as  $option): ?>
                                <?php if ($option['type'] == 'color'): ?>
                                <div class="color">
                                  <?php foreach ($option['product_option_value'] as $value): ?>
                                    <img src="<?php echo $value['image'] ?>" />
                                  <?php endforeach ?>
                                </div>
                              <?php endif ?>
                            <?php endforeach ?>
                            
                                
                                <!-- Button trigger modal -->
                                <img src="<?php echo $product['thumb']; ?>" class="img-responsive" data-toggle="modal" data-target="#myModal<?php echo $product['product_id']; ?>">
                                <h3 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                <h4 class="price"><?php echo $product['tax']; ?></h4>

                                <!-- Modal -->
                                <div class="modal fade" id="myModal<?php echo $product['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="row">

                                                <div class="col-md-7">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <div class="row">
                                                        <div class="col-md-9">
                                                            <img id="zoom_09" src="<?php echo $product['thumb'] ?>" data-zoom-image="<?php echo $product['thumb'] ?>" class="img-responsive">

                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="row">
                                                                <div id="gallery_09" >
                                                                <a href="#" class="elevatezoom-gallery" data-update="" data-image="<?php echo $product['thumb'] ?>" data-zoom-image="<?php echo $product['thumb'] ?>">
                                                                  <?php foreach ($product['images'] as $image) { ?>
                                                                  <a href="#" class="elevatezoom-gallery" data-update="" data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>">
                                                                    <img src="<?php echo $image['popup']; ?>" width="70"></a>
                                                                  <?php } ?>

                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="row">
                                                        <h1 class="head"><?php echo $product['name']; ?></h1>
                                                        <p class="style">
                                                          <?php echo $product['description']; ?>
                                                        </p>
                                                        <h4 class="price"><?php echo $product['tax']; ?></h4>
                                                        <!-- <h4>Category: Uniforms</h4> -->
                                                        <?php if ($product['options']) { ?>
            
            <?php foreach ($product['options'] as $option) { ?>
            <?php if ($option['type'] == 'color') { //print_r($option) ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>" data-content="<img src='<?php echo $option_value['image'] ?>'></span>  <span style='display:inline-block; width:100px;'>  <?php echo $option_value['name']; ?></span>">1
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
                                                        <!-- <div class="size"><i class="margin">size</i>  
                                                            <a class="btn btn-default btn-select">
                                                                <input type="hidden" class="btn-select-input" id="" name="" value="" />
                                                                <span class="btn-select-value">Select an Item</span>
                                                                <span class='btn-select-arrow glyphicon glyphicon-chevron-down'></span>
                                                                <ul>
                                                                    <li>l</li>
                                                                    <li class="selected">xl</li>
                                                                    <li>xxl</li>
                                                                    <li>xxxl</li>
                                                                </ul>
                                                            </a>
                                                        </div>
                                                        <div class="choose"> <i class="margin">color</i> 
                                                            <a class="btn btn-default btn-select">
                                                                <input type="hidden" class="btn-select-input" id="" name="" value="" />
                                                                <span class="btn-select-value">Select an Item</span>
                                                                <span class='btn-select-arrow glyphicon glyphicon-chevron-down'></span>
                                                                <ul>
                                                                    <li><img src="images/cc.png" /></li>
                                                                    <li class="selected"><img src="images/cc.png" /></li>
                                                                    <li><img src="images/cc.png" /></li>
                                                                    <li><img src="images/cc.png" /></li>
                                                                </ul>
                                                            </a>
                                                        </div> -->
                                                        <div class="quantitycontainer">
                    <label class="control-label" for="input-quantity"><?php echo $text_quantity; ?></label>
              <div class="input-group">
                  <span class="input-group-btn">
                      <button class="quantitybtn bg btn-minuse" type="button">-</button>
                  </span>
                  <input type="number" class="quantity" min="1" maxlength="3" value="<?php echo $product['minimum'] ?>" id="input-quantity" class="form-control" >
                  <span class="input-group-btn">
                      <button class="quantitybtn bg btn-pluss" type="button">+</button>
                  </span>
                </div>
                <input type="hidden" name="product_id" value="<?php echo $product['product_id'];; ?>" />
                </div><!-- /quantitycontainer -->
             
                                                        

                                                        <div class="add">
                                                            <a class="btn btn-default" onclick="cart.add('#myModal<?php echo $product['product_id']; ?>');" role="button"> 
                                                            <?php echo $button_cart; ?>
                                                            </a>
                                                            <a class="btn btn-default" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" role="button"><?php echo $button_wishlist; ?></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!---->


        
        <?php } ?>
                 
                        
                    </div>
                </div>
                        
            </div>
        </div>
<?php echo $footer; ?>
