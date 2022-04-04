<?php
include_once("DataProvider.php");
include_once("OrderItem.php");
class Order{
	private $da;
	function __construct(){
		$this->da = new DataProvider();
	}
	function getOrders(){
		$sql = "Select * from orders o join users u on o.UserID = u.UserID";
		return $this->da->FetchAll($sql);
	}
	function InsertOrder($userID,$nguoinhan,$address,$phone,$ngaynhan,$mode){
		$sql="Insert into orders(UserID,AddedDate,namere,Address,Phone,reDay,Mode) values('$userID',now(),'$nguoinhan','$address','$phone','$ngaynhan',N'$mode')";
		return $this->da->ExecuteQueryInsert($sql);
	}
	function UpdateSum($orderID,$sum){
		$sql = "Update orders set Sum = $sum where OrderID = $orderID";
		return $this->da->ExecuteQuery($sql);	
	} 


	function DeleteOrder($orderID){
		$item = new OrderItem();
		$item->DeleteOrderItem($orderID);
		$sql="Delete from orders where OrderID=$orderID";
		return $this->da->ExecuteQuery($sql);
	}
	function __destruct(){
		unset($this->da);
	}
}
?>