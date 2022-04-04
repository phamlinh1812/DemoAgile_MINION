<br>
<div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <!-- <div class="col-md-12"> -->
                    <div class="latest-product">
                        <center><h2  class="section-title">SẢN PHẨM MỚI</h2></center>
                        <div class="product-carousel">



<?php
    foreach($rs as $row){
        // $chuoi = <<<EOD
                           
                echo "<div class=\"single-product\">";
                echo    "<div class=\"product-f-image\">";
                echo        "<img src=\"Upload/{$row['ImageUrl']}\" style=\"height:280px;\">";
                echo        "<div class=\"product-hover\">";
                echo            "<a  href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\" class=\"view-details-link\"><i class=\"fa fa-link\"></i>CHI TIẾT</a>";
                echo           "<a href=\"Controller/Cart/Add.php?id={$row['ProductID']}\" onclick=\"return insertCart({$row['ProductID']})\" class=\"add-to-cart-link\"><i  class=\"fa fa-shopping-cart\"></i>THÊM VÀO GIỎ HÀNG</a>";          
                echo       "</div>";
                echo   "</div>";
                    
                echo    "<h2><a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">{$row['ProductName']}</a></h2>";
                echo    "<p>Giá: ".number_format($row["Price"],0)."VND</p>";
                echo "</div>";

    }
    
?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
