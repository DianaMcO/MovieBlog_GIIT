<?php
include 'common.php';
include 'lib/Movie/View/movie_view.php';
include 'lib/Movie/Db/CommentClass.php';

use function Movie\View\display;
use function Movie\Db\viewpost;

echo display('header');
?>

<div class="container">
    <?php
    viewpost($pdo);
    $postID = ($_SESSION['postID']);
    ?>


<div class="container container-body">
    <div class="container-recent">
    <h5>Comments</h5>
    <?php
    $comments = \Movie\Db\comments($pdo, $postID);

    foreach ($comments as $comment) {
        echo "<div class='container container-posts' style='border-style: groove'>";
        echo '<div>';
        echo '<p> Posted on ' . $comment->date . '   by ' . $comment->member . '</p>';
        echo '<p>' . $comment->comment . '<p>';
        echo '</div>';
        echo "</div>";
    }


    if (!empty($_SESSION['login_user'])) {
        echo "<br><button type='button'><a href = 'comments.php?comment'>Comments</a></button>";
        if (isset($_GET['comments'])) {

            $newComment->addcomments();
        }
    }
    echo "</div>";?>
    </div>
    </div>
   <?php echo display('footer'); ?>

    