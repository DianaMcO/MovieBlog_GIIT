
<?php if($_SERVER['REQUEST_METHOD'] == 'POST') {
	Cart\Upload\upload_file();
}
?>


<!doctype html>
<html>
<head><title>Our Blog</title></head>
<body>

<h1>Subscribe</h1>

<?php echo Cart\View\display('uploadform'); ?>
