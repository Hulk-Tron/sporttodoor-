<?php if ($home == 'yes'): ?>
  <div class="cont">
    <div class="container">
        <h1 class="head">ONLINE SHOP</h1>
        <ul class="list-inline">
          <?php foreach ($categorys as $category) { ?>
          <li>
                <div class="box text-center">
                    <a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a>
                    <h3 class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a> </h3>
                </div>
            </li>

  <?php } ?>
            
        </ul>
    </div>
</div><!---->
  <?php else: ?>
    <div class="top cont">
            <ul class="list-inline">
                <li>
                    <div class="box">
                        <div class="group">
                            <img src="<?php echo $categorys[0]['thumb']; ?>" alt="<?php echo $categorys[0]['name']; ?>" title="<?php echo $categorys[0]['name']; ?>" />
                            <h3 class="name"><a href="#"><?php echo $categorys[0]['name']; ?></a></h3>
                        </div>
                    </div>
                </li>
                <?php foreach ($categorys as $key => $category) { 
                  if ($key == 0) //or whatever
                    continue;    
                  ?>
                <li>
                    <div class="box text-center">
                        <img src="<?php echo $category['thumb']; ?>" />
                        <h3 class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h3>
                    </div>
                </li>
    <?php } ?>
            </ul>
        </div><!---->
<?php endif ?>
