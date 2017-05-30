<?php
include 'common.php';
include 'lib/Movie/View/movie_view.php';

use function Movie\View\display;
<<<<<<< HEAD
use function Movie\Db\viewcategory;
        
echo display('header'); ?>

 <div class="container">
        <?php viewcategory($pdo); ?>
 </div>
        
         <?php echo display('footer'); ?>
=======
?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Movie Reviews</title>
    </head>

    <body>

        <?php echo display('header'); ?>

        <div class="container">
            <?php \Movie\Db\viewcategory($pdo); ?>
        </div>

        <?php echo display('footer'); ?>
    </body>
>>>>>>> 7fd6ddbf60a032000cf13c308e8425c8557d6958


