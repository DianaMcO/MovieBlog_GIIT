<?php
include 'common.php';
include 'lib/Movie/View/movie_view.php';

use function Movie\View\display;
use function Movie\Db\viewcategory;

echo display('header');
?>
<div class="container container-body">
     
<div class="container-posts">
    <?php
    
    viewcategory($pdo);

    \Movie\Db\viewcategory_posts($pdo);
    ;
    ?>

</div>
</div>

<?php echo display('footer'); ?>
