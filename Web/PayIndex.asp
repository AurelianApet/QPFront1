﻿<!--#include file="Inc/CommonFun.asp" -->
<!--#include file="Inc/Conn.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <meta name="Description" content="<%=CxGame.WebTitle %>" />
    <meta name="Keywords" content="<%=CxGame.WebTitle %>" />
    <meta name="rating" content="general" />
    <meta name="robots" content="all" />
    <title><%=CxGame.WebTitle %></title>
    <link rel="stylesheet" type="text/css" href="Css/layout.css" />
    <link rel="stylesheet" type="text/css" href="Css/global.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <link rel="stylesheet" type="text/css" href="Css/cz_layout.css" />
</head>
<body>
<%CxGame.Channel = "Pay"  %>
<!--#include file="Themes/Common_Header.asp" -->
<!--页面主体开始-->
<div class="main" style="margin-top:8px;">
	<!--左边部分开始-->
	<!--#include file="Themes/Common_Sidebar_A.asp" -->
	<!--左边部分结束-->
	<!--右边部分开始-->
	<div class="mainRight1">
		<!--充值通道开始-->
		<div class="recharge">
			<div class="recharge1 bold hui3">充值通道</div>

			<div class="rechargeBg">
				<ul>
				    <li><a id="rm-less" data-model="0"  onclick="window.open('charge.asp', '充值', 'height=500,width=700,toolbar=0,menubar=0,location=0'); window.moveTo(300, 300);">
                        <img src="Images/recharge1.png" /></a></li>
                    <br /><br /><br /><br /><br />
				    <li><div class="sk"></div><span><input type="button" value="充值说明" class="bnt lan bold mtop10" hidefocus="true"/><input type="button" value="立即充值"  class="bnt lan bold mtop10" onclick= "location.href='PayCardFill.asp';" hidefocus="true"/></span> </li>
				    <li><div class="kq"></div><span><input type="button" value="充值说明" class="bnt lan bold mtop10" hidefocus="true"/><input type="button" value="立即充值"  class="bnt lan bold mtop10" onclick= "location.href='PayOnlineFill.asp';"  hidefocus="true"/></span> </li>
				    <li><div class="yb"></div><span><input type="button" value="充值说明" class="bnt lan bold mtop10" hidefocus="true"/><input type="button" value="立即充值"  class="bnt lan bold mtop10" onclick= "location.href='PayOnlineFill.asp';"  hidefocus="true"/></span> </li>								
                </ul>
    			<div class="clear"></div>
			</div>

			<div class="recharge1 bold hui3">兑换通道</div>
			<div class="rechargeBg">
				<ul>
				    <li><div class=""></div><span><a onclick="window.open('discharge.asp', '兑换通道', 'height=490,width=700');"><img src="Images/discharge.png" /></a></span> </li>
                </ul>
    			<div class="clear"></div>
			</div>

			<div class="recharge2"><div class="clear"></div></div>
    		<div class="clear"></div>
		</div>

		<!--充值通道结束-->
		
		<!--会员特权开始-->
		<div class="recharge mtop10">
			<div class="recharge1 bold hui3">会员特权</div><div class="clear"></div>
		  <div class="rechargeBg">
				<div class="tequan"></div><br />

			</div>
			<div class="recharge2"><div class="clear"></div></div>
		<div class="clear"></div>
		</div>
		<!--会员特权结束-->
     
    <div class="ohui">
       
      工商银行卡号:<span style="color:red; font-weight:bold; cursor:pointer" onclick="fabu()"> 8888088886888888</span>，账户名：孙克
      <br>支付宝:<span style="color:red; font-weight:bold; cursor:pointer" onclick="fabu()"> xxxx@qq.com</span> 开心
    
    </div>
		<!--会员优势开始-->
		<div class="clear"></div>
		<div class="recharge mtop10">
			<div class="recharge1 bold hui3">会员优势</div>
		    <div class="rechargeBg">
		  	<div class="youshi">
				<div><a href="javascript:void(0)" class="tx" hidefocus="true"></a></div>
				<div><a href="javascript:void(0)" class="pb" hidefocus="true"></a></div>
				<div><a href="javascript:void(0)" class="tr" hidefocus="true"></a></div>
				<div><a href="javascript:void(0)" class="mf" hidefocus="true"></a></div>
         
            
			</div>
          
		  <div class="clear"></div>	<br />	<br />	  
		  </div>
			<div class="recharge2"><div class="clear"></div></div>
		<div class="clear"></div>
		</div>
		<!--会员优势 结束-->
	 
        
	<div class="clear"></div>
	</div>
	<!--右边部分结束-->
<div class="clear"></div>
</div>
<!--页面主体结束-->
<!--#include file="Themes/Common_Footer.asp" -->
</body>
</html>
