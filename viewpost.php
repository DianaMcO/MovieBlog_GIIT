<?php

include 'common.php';
include 'lib/Movie/View/movie_view.php';

use function Movie\View\display;
use function Movie\Db\viewpost;


echo display('header'); 
?>

<div class="container">
        <?php viewpost($pdo);
        $postID = ($_SESSION['postID']); ?>
</div>

<div class="container container-body">
                <h2>Comments</h2>
<?php
\Movie\Db\comments($pdo, $postID); ?>

</div>

<?php

if (!empty($_SESSION['login_user'])) {
    echo "<br><button type='button'><a href = 'comments.php?comment'>Comments</a></button>";
    if (isset($_GET['comments'])) {
        addcomments();
    }
}

echo display('footer');

