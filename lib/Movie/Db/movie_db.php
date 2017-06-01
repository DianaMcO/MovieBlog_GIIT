<?php

namespace Movie\Db;

//USER FUNCTIONS
function create_hash($password) {
    $salt = rand(0, 1000);
    return $hash = crypt($password, $salt);
}

function signup($pdo, $username, $password, $email, $role) {

    $hashedpassword = create_hash($password);

    $user = read_user($pdo, $username, $password);


if (empty($user['username'])) {
        //insert into database
     $stmt = $pdo->prepare('INSERT INTO blog_members (username,password,email,roleID) VALUES (:username, :password, :email, :roleID)');
     $stmt->execute([':username' => $username, ':password' => $hashedpassword, ':email' => $email, ':roleID' => $role]);
        //redirect to index page
     $_SESSION['roleID'] = $role;
     $_SESSION['login_user'] = $username;

        header('Location: index.php');
    } 
    else {
        echo 'This user already exists';
    }
}

    function delete_user($pdo, $username) {//deletes a user
        print_r($username);
        $stmt = $pdo->prepare("DELETE FROM blog_members WHERE username = :username");
        $stmt->execute([':username' => $username]);
        header('Location: index.php');
    }

    function read_user($pdo, $username) {//selects a user
        $stmt = $pdo->prepare("SELECT * FROM blog_members WHERE username = :username");
        $stmt->execute(['username' => $username]);
        return $stmt->fetch();
    }

//MOVIE FUNCTIONS

    function addMovie($pdo, $name, $year, $certificate, $runTime, $image) {//adds a post
        try {
            //insert into database
            $stmt = $pdo->prepare('INSERT INTO movies (name,year,certificate,runTime, image) VALUES (:name ,:year, :certificate, :runTime, :image)');
            $stmt->execute([':name' => $name, ':year' => $year, ':certificate' => $certificate, ':runTime' => $runTime, ':image' => $image]);
            //redirect to index page
            header('Location: index.php');
            exit;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    function getMovies($pdo) {   //Lists all the movies in the database
        $movieArray = [];


        try {
            $stmt = $pdo->query("SELECT * FROM movies");
        } catch (PDOException $e) {
            echo $e->getMessage();
            $error = $e->errorInfo();   //          check error
            die();
        }
        $stmt->execute();


        while ($rows = $stmt->fetch()) {
            $myMovie = new \Movie($rows['movieID'], $rows['name'], $rows['year'], $rows['certificate'], $rows['runTime'], $rows['image']);
            array_push($movieArray, $myMovie);
        }
        return $movieArray;
    }

//BLOG FUNCTIONS

    function blogs($pdo, $title, $desc, $content, $movieID, $ratingID) {//adds a post
        try {
            //insert into database
            $stmt = $pdo->prepare('INSERT INTO blog_posts (title,description,content,date,movieID,ratingID) VALUES (:title, :description, :content, :date, :movieID, :ratingID)');
            $stmt->execute([':title' => $title, ':description' => $desc, ':content' => $content, ':date' => date('Y-m-d H:i:s'), ':movieID' => $movieID, ':ratingID' => $ratingID]);
            //redirect to index page
            header('Location: index.php');
            exit;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    function search($pdo, $name) {//search for movie & connected blog with the name typed in search
        try {
            $stmt = $pdo->query("SELECT * FROM blog_posts b, movies m WHERE b.movieID = m.movieID and m.name LIKE '%$name%'"); //lists posts from search
            while ($row = $stmt->fetch()) {
                echo '<div>';
                echo '<h1><a href="viewpost.php?id=' . $row['movieID'] . '">' . $row['name'] . '</a></h1>';
                echo '<p> Cert' . $row['certificate'] . '      ' . $row['runTime'] . '    ' . $row['year'] . '</p>';
                echo '<img src=" ' . $row['image'] . ' " width="400"/>';
                echo '</div>';
                echo '<div>';
                echo '<h1><a href="viewpost.php?id=' . $row['postID'] . '">' . $row['title'] . '</a></h1>';
                echo '<p>Posted on ' . date('jS M Y H:i:s', strtotime($row['date'])) . '</p>';
                echo '<p>' . $row['description'] . '</p>';
                echo '<p><a href="viewpost.php?id=' . $row['postID'] . '">Read More</a></p>';
                echo '</div>';
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    function recent_blogs($pdo) {
        try {
            $stmt = $pdo->query('SELECT postID, title, description, content, date, ratingID, blog_posts.movieID, movies.image, movies.movieID FROM blog_posts, movies WHERE movies.movieID = blog_posts.movieID ORDER BY postID DESC'); //lists posts from 
            while ($row = $stmt->fetch()) {
                echo '<div class="container container-recent">';
                echo '<img class="recentblog-image" src=" '. $row['image'] . ' " width="400"/>';
                echo '<h1 class="recentblog-title"><a href="viewpost.php?id=' . $row['postID'] . '">' . $row['title'] . '</a></h1>';
                echo '<p>Posted on ' . date('jS M Y H:i:s', strtotime($row['date'])) . " - Rating " . $row['ratingID'] . '</p>';
                echo '<p>' . $row['description'] . '</p>';
                echo '<p><a href="viewpost.php?id=' . $row['postID'] . '">Read More</a></p>';
                echo '</div>';  
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

 function viewpost($pdo) {
    try {
        $stmt = $pdo->prepare // changed the select statement so it displays image and video for each post
        ('SELECT postID, title, description, content, date, ratingID, blog_posts.movieID, movies.movieID, movies.image, movies.video FROM blog_posts, movies WHERE postID = :postID AND blog_posts.movieID = movies.movieID');
        $stmt->execute([':postID' => $_GET['id']]);
        $row = $stmt->fetch();
        $video = '<span class="video-wrapper"><iframe width="560" height="315" src="' . $row['video'] . '" frameborder="0" allowfullscreen></iframe></span>';

        echo '<h1>' . $row['title'] . '</h1>';
        echo '<p>Posted on ' . date('jS M Y', strtotime($row['date'])) . " - Rating " . $row['ratingID'] . '</p>';
        echo '<img src=" '. $row['image'] . ' " width="400"/>';
        $test = str_replace('{{video}}', $video, $row['content']);
        echo '<p>' . $row['description'] . '</p>';
        echo '<p>' . $test . '</p>';
        $_SESSION['postID'] = $row['postID'];
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}
    
    // CATEGORY FUNCTIONS
    
function viewcategory($pdo) {
    try {
        $stmt = $pdo->query('SELECT * FROM category');
        while ($row = $stmt->fetch()) {
            echo '<div>';
            echo '<p><a href="viewcategory.php?id=' . $row['catID'] . '">' . $row['name']. '</a></p>';
            echo '</div>';
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
/*    
function viewcategory_posts ($pdo) {
    try { 
        $stmt = $pdo->query
        ('SELECT * FROM 
         category, movie_categories, blog_posts, movies
         WHERE movie_categories.catID = category.catID AND movie_categories.movieID = blog_posts.movieID');
        
        while ($row = $stmt->fetch()) {
            echo '<h1><a href="viewpost.php?id=' . $row['postID'] . '">' . $row['title'] . '</a></h1>';
            echo '<img src=" '. $row['image'] . ' " width="400"/>';
            echo '<p>Posted on ' . date('jS M Y H:i:s', strtotime($row['date'])) . " - Rating " . $row['ratingID'] . '</p>';
            echo '<p>' . $row['description'] . '</p>';
            echo '<p><a href="viewpost.php?id=' . $row['postID'] . '">Read More</a></p>';           
            $_SESSION['name'] = $row['name'];
        }          
    } catch (PDOException $e) {
        echo $e->getMessage();
    }    
}
 */
            /*SELECT movies.movieID, movies.name, movies.image, movies.certificate, movies.year, blog_posts.postID, blog_posts.movieID, blog_posts.title, blog_posts.description, blog_posts.date, blog_posts.ratingID, movie_categories.movieID, movie_categories.catID, category.catID FROM blog_posts JOIN movies on movies.movieID = blog_posts.movieID
            JOIN movie_categories on movie_categories.movieID = movies.movieID 
            JOIN category on category.catID = movie_categories.catID
            WHERE movie_categories.catID = category.catID
            */
    
 function viewcategory_posts ($pdo) {
    try { 
        $stmt = $pdo->query
        ('SELECT * FROM blog_posts JOIN (movie_categories join category USING (catID)) USING (movieID)');
        $row = $stmt->fetch();
        if ($_GET['id'] == $row['catID']) {
            echo '<h1><a href="viewpost.php?id=' . $row['postID'] . '">' . $row['title'] . '</a></h1>';
            echo '<img class="recentblog-image src=" '. $row['image'] . ' " width="400"/>';
            echo '<p>Posted on ' . date('jS M Y H:i:s', strtotime($row['date'])) . " - Rating " . $row['ratingID'] . '</p>';
            echo '<p>' . $row['description'] . '</p>';
            echo '<p><a href="viewpost.php?id=' . $row['postID'] . '">Read More</a></p>';           
            $_SESSION['catID'] = $row['catID'];         
        }else {
            echo "No posts in this category";
        }
    }catch (PDOException $e) {
        echo $e->getMessage();
    }    
}
    
    
    

//Comments FUNCTIONS

    function addcomments($pdo, $comment, $member, $postID) {//adds a post
        try {
            //insert into database
            $stmt = $pdo->prepare('INSERT INTO comments (comment, date, member, postID) VALUES (:comment, :date, :member, :postID)');
            $stmt->execute([':comment' => $comment, ':date' => date('Y-m-d H:i:s'), ':member' => $member, ':postID' => $postID]);
            //redirect to index page
            $_SESSION[$postID];
            header('Location: index.php');
            exit;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    function comments($pdo, $postID) {

        try {
            $stmt = $pdo->prepare('SELECT * FROM comments WHERE postID = :postID'); //lists posts from 
            $stmt->execute(['postID' => $postID]);
            while ($row = $stmt->fetch()) {

                echo '<div>';
                echo '<p>Posted on ' . date('jS M Y H:i:s', strtotime($row['date'])) . '  by ' . $row['member'] . '</p>';
                echo '<p>' . $row['comment'] . '</p>';
                echo '</div>';
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    