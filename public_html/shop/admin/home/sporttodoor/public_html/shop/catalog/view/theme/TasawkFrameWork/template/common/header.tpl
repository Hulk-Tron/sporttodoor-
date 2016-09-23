<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- OWL SLIDER -->
        <link href="catalog/view/theme/TasawkFrameWork/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="catalog/view/theme/TasawkFrameWork/css/owl.theme.css" rel="stylesheet" type="text/css"/>
        <link href="catalog/view/theme/TasawkFrameWork/css/owl.transitions.css" rel="stylesheet" type="text/css"/>
        <link href="catalog/view/theme/TasawkFrameWork/css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link href="catalog/view/theme/TasawkFrameWork/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="catalog/view/theme/TasawkFrameWork/css/bootstrap-select.css">

<!-- Latest compiled and minified JavaScript -->


<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/TasawkFrameWork/css/bootstrap.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/TasawkFrameWork/css/bootstrap-rtl.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/TasawkFrameWork/stylesheet/stylesheet-a.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/TasawkFrameWork/css/bootstrap.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/TasawkFrameWork/stylesheet/stylesheet.css" rel="stylesheet">
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link href="catalog/view/theme/TasawkFrameWork/style.css" rel="stylesheet">
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/TasawkFrameWork/ar.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/TasawkFrameWork/en.css" rel="stylesheet">
<?php } ?>
<link href="catalog/view/theme/TasawkFrameWork/css/media.css" rel="stylesheet">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<!-- JavaScript -->
        <script type="text/javascript" src="catalog/view/theme/TasawkFrameWork/js/jquery.min.js"></script>
        <script type="text/javascript" src="catalog/view/theme/TasawkFrameWork/js/bootstrap.min.js"></script>
        <script src="catalog/view/theme/TasawkFrameWork/js/owl.carousel.js" type="text/javascript"></script>
        <script type="text/javascript" src="catalog/view/theme/TasawkFrameWork/js/wow.min.js"></script>
        <script src="catalog/view/theme/TasawkFrameWork/js/jquery.nicescroll.min.js" type="text/javascript"></script>
        <script src="catalog/view/theme/TasawkFrameWork/js/jquery.elevatezoom.js" type="text/javascript"></script>
        <script src="catalog/view/theme/TasawkFrameWork/js/sweetalert.min.js" type="text/javascript"></script>
        <script src="catalog/view/theme/TasawkFrameWork/js/bootstrap-select.js"></script>
        <script type="text/javascript" src="catalog/view/theme/TasawkFrameWork/js/default.js"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="container">
<header>
    <div class="menu">
        <nav class="navbar navbar-default">
            
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
            <a href="<?php echo $home ?>">logo</a>
        </div>
        <div class="ar-logo">
                    <a><img src="catalog/language/ar/ar.png"></a>
                </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="menu">

                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="<?php echo $home ?>"><?php if ($direction == 'rtl') { ?>الرئيسية<?php } else { ?>HOME<?php } ?></a></li>
                        <li><a href="index.php?route=information/information&information_id=7"><?php if ($direction == 'rtl') { ?>التسويق الالكترونى<?php } else { ?>ONLINE SHOPPING<?php } ?></a></li>
                        <li><a href="index.php?route=information/information&information_id=8"><?php if ($direction == 'rtl') { ?>التدريب الذاتى<?php } else { ?>PERSONAL TRAINING<?php } ?></a></li>
                        <li><a href="<?php echo $contact ?>"><?php if ($direction == 'rtl') { ?>اتصل بنا<?php } else { ?>Contact Us<?php } ?></a></li>
                        <li><a href="<?php echo $shopping_cart ?>"><?php echo $text_shopping_cart ?></a></li>
                        <?php if ($logged): ?>
                            <li><a href="index.php?route=account/account">my account</a></li>
                        <?php endif ?>

                        <?php if ($logged): ?>
                            <li><a href="<?php echo $logout ?>">SIGN OUT</a></li>
                            <?php else: ?>
                                <li><a href="<?php echo $login ?>"><?php echo $text_login ?></a></li>
                        <?php endif ?>
						
                    </ul>
                    
                </div>
         
                
                
        </nav>
        
    </div><!-- end menu -->
</header>
</div>