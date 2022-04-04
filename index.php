<head><link REL="SHORTCUT ICON" HREF="Images/Icon.ico"></head>
<?php
    include_once("View/Header.php");
?>
 
</style>   
    <!--Start Main-->

    <?php
        if(!isset($_GET['mod'])){
            include_once ("View/Carousel.php");
        }
        if(isset($_GET['mod'])){
            $a = ucfirst($_GET['mod']);
            $b = ucfirst($_GET['act']);

            include_once("Controller/".$a."/".$b.".php");
        }

		
	?>
     <!--End Main-->
    
    <?php
    if(@ucfirst($_GET['act'])!="Aboutus"){
        include_once("Controller/Products/New.php");
    }
    ?>
    
    <!--Start Footer-->
    <?php
            include_once("View/Footer.php");
    ?>

<?php
    ob_end_flush();
?>
