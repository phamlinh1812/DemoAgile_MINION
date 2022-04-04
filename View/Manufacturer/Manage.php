<br>	
<div style="width: 900px; float: right; margin-right: 170px;">
<center><h2><a style="color: #ff6600;font-weight: bold;font-size: 30px" href="admin.php?mod=manufacturer&act=manage">Quản lý chủ đề</a></h2></center>
	<button style="background-color: #990033; border-radius: 5px; padding: 5px; margin: 5px;"><a style="color: #fff;font-size: 15spx" href="admin.php?mod=manufacturer&act=insert">Thêm</a></button>
	<table class="table table-bordered">
	<thead>
		<tr>
		<th scope="col">Số thứ tự</th>
		<th scope="col">Mã Chủ đề</th>
		<th scope="col">Tên Chủ đề</th>
		<th scope="col">Xóa</th>
		<th scope="col">Sửa</th>
		</tr>
	</thead>
	<tbody>
		<?php 
		$index = 1;
		foreach ($ret as $row) { ?>
			<tr>
				<th scope="row"><?= $index ?></th>
				<td><?= $row['ManufacturerID'] ?></td>
				<td><?= $row['ManufacturerName'] ?></td>
				<td><?= "<a href=\"admin.php?mod=manufacturer&act=delete&id=$row[ManufacturerID]\" onclick=\"return IsDelete()\">" ?><img src="Images/Delete.gif" /></a></td>
				<td><?= "<a href=\"admin.php?mod=manufacturer&act=edit&id=$row[ManufacturerID]\">" ?><img src="Images/Edit.gif" /></a></td>
			</tr>
			<?php $index++;
		} ?>
	</tbody>
	</table>
<br>
</div> 