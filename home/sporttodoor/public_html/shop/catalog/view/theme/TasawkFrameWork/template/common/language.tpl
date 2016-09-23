<?php if (count($languages) > 1) { ?>
<li>
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
  
                                    <?php foreach ($languages as $language) { ?>
                                    <?php if ($language['code'] !== $code): ?>
                                    	<button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /></button>
                                    <?php endif ?>
     
      <?php } ?>
                                
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</li>
<?php } ?>
