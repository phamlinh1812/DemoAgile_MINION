<br>
<center><h2 class="section-title">Tất cả sản phẩm</h2></center>
<br>
<center>
  <form method="post" action="index.php?mod=products&act=allproducts">
    <span style="font-size: 20px;">Sắp xếp theo</span>
    <select style="font-size: 20px" name="selectPrice" id="cbbGia">
          <option value="all" selected="selected">--Tất cả sản phẩm--</option>
          <option value="asc">Giá tăng dần</option>
          <option value="des">Giá giảm dần</option>
    </select>
    <button type="submit" name="btnOK" style="font-size: 15px; border-radius: 10px; margin-left: 5px">Ok</button>
    </form>
</center>
<br>
<div class="main-ver2">
  <div class="zigzag-bottom"></div>
      <div class="container">
        <div class="row">
          <div class="owl-carousel fsihots owl-loaded owl-drag"> 

          

<?php
  foreach($rs as $row){
    // $chuoi = <<<EOD
      echo  "<div class=\"owl-item active\"  style=\"width: 250px;\">";
      echo  "<div class=\"item center\" style=\"text-align:center\">" ;
      echo    "<p class=\"fs-icimg\">";
      echo      "<img class=\"lazy\" src=\"Upload/{$row['ImageUrl']}\" title=\"{$row['ProductName']}\">";
      echo    "</p>";

      echo        "<p><a style=\"font-size: 16px; font-weight:bold;\" href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">{$row['ProductName']}</a></p>";
      echo        "<p style=\"color: #5A88CA;font-size: 16px; font-weight:bold;\">Giá: ".number_format($row['Price'],0)." VND</p>";

      echo      "<div class=\"button\">";
      echo        "<a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">";
      echo        "<button type=\"button\" class=\"btn btn-info\" id>CHI TIẾT</button>";
      echo        "</a>";
      echo        "<a href=\"Controller/Cart/Add.php?id={$row['ProductID']}\"  onclick=\"return insertCart({$row['ProductID']})\">";
      echo          "<button type=\"button\" class=\"btn btn-info\">THÊM <i  class=\"fa fa-shopping-cart\"></i></button>";
      echo        "</a>";
      echo      "</div>";
      echo    "</div>";
      echo  "</div>";
   
            // echo $chuoi;
  }
?>
            
          </div>
      </div> 
    </div> 
   </div> 


<br>
<?php
  if($findPage>1){
    echo "<div><center>".Pages::PreNext($_GET['page'],"?mod=products&act=allproducts&",$findPage)."</center></div>";
  }
?>
 