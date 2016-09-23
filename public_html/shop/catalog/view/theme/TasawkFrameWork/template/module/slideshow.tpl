<div class="slider">
    <div class="">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                 <?php 
            $count = 0;
            foreach ($banners as $banner) { ?>
                <li data-target="#carousel-example-generic" data-slide-to="<?php echo $count  ?>"<?php if ($count == 1): ?>class="active"<?php endif ?> ></li>
        <?php $count++; } ?>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <?php 
$count = 0;
foreach ($banners as $banner) { ?>
<!-- <li><a><img src="" ></a></li> -->
<div class="item <?php if ($count == 1): ?> active <?php endif ?>">
    <img src="<?php echo $banner['image']; ?>" alt="">
    <div class="carousel-caption">
        
    </div>
</div>

<?php $count++; } ?>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div><!-- end slider -->