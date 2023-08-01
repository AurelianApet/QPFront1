<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="/images/icons/favicon.ico" type="image/x-icon">
    <link href="/Css/style.css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="/Js/jquery-1.7.min.js"></script>
    <script language="javascript" type="text/javascript" src="/Js/common.js"></script>
    <script language="javascript" type="text/javascript" src="/Js/main.js"></script>
    <script type="text/javascript" language="javascript">
        function recharge_imd(accounts)
        {
//            accounts = 1;
            var amounts = document.getElementById("tpui-funds-sum").value;
            var acc = document.getElementsByName("recharge-account");
            var acc1;
            for (var i = 0; i < acc.length; i++) {
                if (acc[i].checked == true)
                    acc1 = acc[i].value;
            }
            var pay_type = 1;
            if (acc1 == "zfb") {
                pay_type = 3;
            }
            else if (acc1 == "wx") {
                pay_type = 4;
            }
            var url = "pay_con_set.asp?user_accounts=" + accounts + "&amounts=" + amounts + "&flag=3&pay_type=" + pay_type;
            document.location = url;
        }
    </script>
    <title>
	    极彩
    </title>
</head>
<body>
    <div class="tp-ui-item tp-ui-dialog tp-ui-dialog-base" style="position: absolute; left: 0px; top: 0px; display: block;"><div class="tp-ui-sub tp-ui-dialog-inner"><div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置"><div class="tp-ui-sub tp-ui-dialog-title"><span>第三方充值</span></div><div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口"><a href="javascript:void(0);"><em>关闭</em></a></div></div><div class="tp-ui-sub tp-ui-dialog-content" style="width: 680px; height: auto;"><div id="recharge-order">
        <!--forms-table start-->
        <div class="forms-table uc-forms">

            <!--form-row start-->
            <div id="normalRechargeTr" class="row form-row" style="display: none;">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>账户类型:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">

                    <!--recharge-account-checker start-->
                    <div id="recharge-account-checker">
                        <ul>
                            <li>
                                <label class="rac-gsyh active">
                                    <div class="tp-ui-item tp-ui-forminput tp-ui-radio tp-ui-active"><div class="tp-ui-sub tp-ui-radio-base"><input type="radio" name="recharge-account" class="tpui-radio" value="gsyh" checked="checked"></div><div class="tp-ui-sub tp-ui-handle-link tp-ui-radio-handle"><a href="javascript:void(0);"><em>&nbsp;</em></a></div></div>
                                    <h4><i>中国工商银行</i></h4>
                                </label>
                            </li>
                            <li>
                                <label class="rac-cft">
                                    <div class="tp-ui-item tp-ui-forminput tp-ui-radio"><div class="tp-ui-sub tp-ui-radio-base"><input type="radio" name="recharge-account" class="tpui-radio" value="cft"></div><div class="tp-ui-sub tp-ui-handle-link tp-ui-radio-handle"><a href="javascript:void(0);"><em>&nbsp;</em></a></div></div>
                                    <h4><i>腾讯财付通</i></h4>
                                </label>
                            </li>
                            <li>
                                <label class="rac-zfb">
                                    <div class="tp-ui-item tp-ui-forminput tp-ui-radio"><div class="tp-ui-sub tp-ui-radio-base"><input type="radio" name="recharge-account" class="tpui-radio" value="zfb"></div><div class="tp-ui-sub tp-ui-handle-link tp-ui-radio-handle"><a href="javascript:void(0);"><em>&nbsp;</em></a></div></div>
                                    <h4><i>支付宝</i></h4>
                                </label>
                            </li>
                            <li style="display: none;"><!--打开pc微信支付，这边显示即可-->
                                <label class="rac-wx" style="background: #92c922;border-color: #78bd00;">
                                    <div class="tp-ui-item tp-ui-forminput tp-ui-radio"><div class="tp-ui-sub tp-ui-radio-base"><input type="radio" name="recharge-account" class="tpui-radio" value="wx"></div><div class="tp-ui-sub tp-ui-handle-link tp-ui-radio-handle"><a href="javascript:void(0);"><em>&nbsp;</em></a></div></div>
                                    <h4 style="background-image :none;font-size :18px;font-family :lisu;">
                                        <i style="margin-left: 12px;">微信支付</i>
                                    </h4>
                                </label>
                            </li>
                        </ul>
                    </div>
                    <!--recharge-account-checker end-->

                </div>
            </div>
            <div id="normalRechargeTr1" class="row form-row" style="display: block;">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>账户类型:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">

                    <!--recharge-account-checker start-->
                    <div id="recharge-account-checker1">
                        <ul>
                            <li>
                                <label class="rac-zfb">
                                    <input type="radio" name="recharge-account" class="tpui-radio" value="zfb" checked />
                                    <h4><i>支付宝</i></h4>
                                </label>
                            </li>
                            <li><!--打开pc微信支付，这边显示即可-->
                                <label class="rac-wx" style="background: #92c922;border-color: #78bd00;">
                                    <input type="radio" name="recharge-account" class="tpui-radio" value="wx" />
                                    <h4 style ="background-image :none;font-size :18px;font-family :lisu;">
                                        <i style="margin-left: 12px;">微信支付</i>
                                    </h4>
                                </label>
                            </li>
                        </ul>
                    </div>
                    <!--recharge-account-checker end-->
                </div>
            </div>
            <!--form-row end-->
            <!--form-row start-->
            <div class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>充值金额:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <div class="tp-ui-item tp-ui-forminput tp-ui-number tp-ui-number-base"><div class="tp-ui-sub tp-ui-number-refer">
                        <input class="myNumClass0" type="text" id="tpui-funds-sum" min="1" step="1" data-type="d" value="100"></div>
                        <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-addto"><button type="button"><em>+</em></button></div>
                        <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-reduce"><button type="button"><em>-</em></button></div></div>
                </div>
            </div>
            <!--form-row end-->
            <!--form-row start-->
            <div id="normalRechargeTr2" class="row form-row" style="display: none;">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>账号:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <div class="tp-ui-item tp-ui-forminput tp-ui-text tp-ui-text-base"><div class="tp-ui-sub tp-ui-text-base">
                        <input id="rechargeInfo" type="text" class="tpui-text" placeholder="卡号，ID或账户信息"></div></div>
                </div>
            </div>
            <div class="row form-row">
                <div class="column form-sub form-title b-25 mb-hidden">&nbsp;</div>
                <div class="column form-sub form-tips b-75 mb-0">
                    <p>
                        <lable style="color: red">温馨提示：</lable>
                        <br>
                        <lable style="color: red">注：如不充值，请不要点提交充值申请菜单。<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如恶意3次以上提交充值申请，直接会被注销账号。</lable>
                        <span id="rechargeBanktips">单笔充值金额范围:10元~无上限，手续费由平台承担.<br></span>
                    </p>
                </div>
            </div>
            <!--form-row end-->
            <!--form-row start-->
            <div class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>&nbsp;</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <div class="tp-ui-item tp-ui-forminput tp-ui-button-noselect tp-ui-button tp-ui-button-submit"><div class="tp-ui-sub tp-ui-button-base">
                        <input type="button" class="tpui-button" id="recharge-order-submit" value="提交充值申请" onclick="recharge_imd();"></div></div>
                    <div class="tp-ui-item tp-ui-forminput tp-ui-button-noselect tp-ui-button tp-ui-button-submit"><div class="tp-ui-sub tp-ui-button-base">
                        <input type="submit" class="tpui-button" data-type="submit" id="rechargeOrderCancelBtn" value="取消"></div></div>
                </div>
            </div>
            <!--form-row end-->
        </div>
        <!--forms-table end-->                    </div></div></div></div>
</body>
</html>
