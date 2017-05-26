<?php
include 'common.php';
include 'lib/Movie/View/movie_view.php';

use function Movie\View\display;
        ?>

        <?php echo display('header'); ?>

 <!-- Commented this out for the time being - may need to use the other links
 in the nav 
      <?php echo "<a href = 'login.php?login'>Login</a>";
        if (isset($_GET['login'])) {
            login();
        } ?>
        
        <?php echo "<br><a href = 'signup.php?signup'>Signup</a>";
        if (isset($_GET['signup'])) {
            signup();
        } ?>
        
        <?php echo "<br><a href = 'search.php?search'>Search</a>";
        if (isset($_GET['search'])) {
            search();
        } ?>
        
        <?php echo "<br><a href = 'comp.php?competition'>Competitions</a>";
        if (isset($_GET['comp'])) {
            search();
        } ?>
 -->
 
 <div class="container container-featured">
     <img src="https://usercontent2.hubstatic.com/13534699.jpg" alt="Alien 2017"/> 
 </div>
 
 <div class="container container-body">
        <?php \Movie\Db\movies($pdo); ?>
        <?php \Movie\Db\recent_blogs($pdo);?> 
 </div>
 
 <?php echo display('footer'); ?>
    </body>

</html>
