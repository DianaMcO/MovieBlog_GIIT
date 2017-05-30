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
 
 <div class="container container-buttons">
 <div class="row">
    <div class="col-sm-12 col-md-12">
     <form action="/enrol.php" method="post" enctype="multipart/form-data" >
        <input type="text" placeholder="Enter your email address" name="Email" />
        <button type=“submit” id=“submit” onclick=“alert(’Thanks’)”>Submit</button>
    </form>
    </div>  
    </div>
 </div>

 <div class="container-body">
     
       <?php
    \Movie\Db\getMovies($pdo);

    $movies = \Movie\Db\getMovies($pdo);

    foreach ($movies as $movie) {

        echo '<h1><a href="viewpost.php?id=' . $movie->id . '">' . $movie->name . ''
        . '</a></h1>';
        echo '<p> Cert' . $movie->certificate . '      ' . $movie->runTime . '    ' . $movie->year . '</p>';
        echo '<img src=" ' . $movie->image . ' " width="400"/>';
        echo '</div>';
    }
            \Movie\Db\recent_blogs($pdo);?> 
 </div>
 
 <?php echo display('footer'); ?>
    </body>

</html>
