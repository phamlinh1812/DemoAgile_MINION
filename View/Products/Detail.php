<br>
<center><h2 class="section-title">Chi Tiết Sản Phẩm</h2></center>
              
 <?php
 include_once("View/Products/Showleft.php");
 ?>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src=<?php echo "Upload/{$res['ImageUrl']}";?>>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name"><?php echo $res['ProductName'];?></h2>
                                    <div class="product-inner-price">
                                        <ins>Giá: <?php echo number_format($res['Price'],0);?> VND</ins>
                                    </div>    
                                    
                                    
                                        <button href="Controller/Cart/Add.php?id={$row['ProductID']}"  onclick="return insertCart(<?php echo"{$res['ProductID']}";?>)" class="add_to_cart_button" type="submit">THÊM VÀO GIỎ HÀNG</button>
                                   
                                    
                                    <div class="product-inner-category">  
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Mô tả</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Thông tin chi tiết</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <?php echo $res['Description'];?>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <?php echo $res['Body'] ?>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Sản phẩm liên quan</h2>
                            <div class="related-products-carousel">

<?php


foreach ($resOther as $row) {

        echo    "<div class=\"single-product\">";
        echo    "<div  style=\"text-align:center\">"   ;

        echo        "<div class=\"product-f-image\">";
        echo            "<img src=\"upload/{$row['ImageUrl']}\" alt=\"\" style=\"height:280px;\">";
        echo            "<div class=\"product-hover\">";
        echo                "<a href=\"Controller/Cart/Add.php?id={$row['ProductID']}\" onclick=\"return insertCart({$row['ProductID']})\" class=\"add-to-cart-link\"><i class=\"fa fa-shopping-cart\"></i> THÊM VÀO GIỎ HÀNG</a>";
        echo                "<a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\" class=\"view-details-link\"><i class=\"fa fa-link\"></i>Thông tin chi tiết</a>";
        echo           "</div>
                    </div>";

        echo    "<h2><a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">{$row['ProductName']}</a></h2>";
        echo    "<p>Giá: ".number_format($row["Price"],0)."VND</p>";
        echo     "</div>";
                echo     "</div>";

}

?>
                            </div>             
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>

