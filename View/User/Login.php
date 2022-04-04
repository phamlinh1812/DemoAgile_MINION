<div style="width: 600px; margin: 10 auto; margin-top: 20px;border: solid; border-color: #6495ED; border-radius: 10px;">
	<center>
	<h2><a style="color: #ff6600;font-weight: bold;font-size: 25px; margin-top: 90px" href="index.php?mod=user&act=login">Đăng nhập hệ thống</a></h2>
     <p>
      <script language="javascript" src="js/function1.js"></script>
     <form method="post" action="index.php?mod=user&act=login" onsubmit="return IsLogin();" class="form">
        <p style="font-size: 18px"><label>Tên đăng nhập</label><input type="text" name="txtUserName" id="txtUserName" style="margin-left: 38px;" /></p>
        <p style="font-size: 18px"><label>Mật khẩu  </label><input type="password" name="txtPassWord" id="txtPassWord"  style="margin-left: 88px;" /></p>
        
        <p><label>&nbsp;</label><input type="submit" name="btnLogin" id="btnLogin" value="Đăng nhập" style="margin-left: 0px;font-weight:bold;background-color: #990033"/>
        <a style="color: #ff6600;" href="index.php?mod=user&act=forgotpassword"><b><u>Quên mật khẩu?</u></b></a></p>

        <p style="font-size: 20px; text-align: center; color: red; font-weight: bold;" id="error"></p>
    </form>
     </p>
    </center> 
</div> 
</div> 