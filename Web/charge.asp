<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%
        if Session("UserName") <> "" then
    %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="shortcut icon" href="/images/icons/favicon.ico" type="image/x-icon">
    <link href="/Css/style.css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="/Js/jquery-1.7.min.js"></script>
    <script language="javascript" type="text/javascript" src="/Js/common.js"></script>
    <script language="javascript" type="text/javascript" src="/Js/common1.js"></script>
    <script language="javascript" type="text/javascript" src="/Js/main.js"></script>
    <script type="text/javascript" language="javascript">
        function window_close() {
            //            self.opener = self;
            window.close();
        }
        function Recharge(accounts)
        {
            accounts = 1;
            var acc = document.getElementsByName("recharge-account");
            var acc1;
            for(var i = 0; i < acc.length; i ++)
            {
                if (acc[i].checked == true)
                    acc1 = acc[i].value;
            }
            var pay_type = 1;
            if (acc1 == "gsyh")
            {
                pay_type = 1;
            }
            else if (acc1 == "cft")
            {
                pay_type = 2;
            }
            else if (acc1 == "zfb")
            {
                pay_type = 3;
            }
            else if (acc1 == "wx")
            {
                pay_type = 4;
            }
            var card_number = document.getElementById("rechargeInfo").value;
            var url = "pay_con_set.asp?user_accounts='" + accounts + "'&amounts=" + document.getElementById("tpui-funds-sum").value + "&flag=1&pay_type=" + pay_type + "&card_number=" + card_number;
            document.location = url;
        }
        function plusone()
        {
            document.getElementById("tpui-funds-sum").value = Number(document.getElementById("tpui-funds-sum").value) + 1;
        }
        function minusone()
        {
            document.getElementById("tpui-funds-sum").value = document.getElementById("tpui-funds-sum").value - 1;
        }
    </script>
    <title>充值</title>
</head>
<body>
    <br />
    <br />
        <div id="recharge-order" title="普通充值">

        <!--forms-table start-->
        <div class="forms-table uc-forms">
            <!--form-row start-->
            <div id="normalRechargeTr" class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>账户类型:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">

                    <!--recharge-account-checker start-->
                    <div id="recharge-account-checker">
                        <ul>
                            <li>
                                <label class="rac-gsyh">
                                    <input type="radio" name="recharge-account" class="tpui-radio" value="gsyh" checked />
                                    <h4><i>中国工商银行</i></h4>
                                </label>
                            </li>
                            <li>
                                <label class="rac-cft">
                                    <input type="radio" name="recharge-account" class="tpui-radio" value="cft" />
                                    <h4><i>腾讯财付通</i></h4>
                                </label>
                            </li>
                            <li>
                                <label class="rac-zfb">
                                    <input type="radio" name="recharge-account" class="tpui-radio" value="zfb" />
                                    <h4><i>支付宝</i></h4>
                                </label>
                            </li>
                            <li  style="display: none;"><!--打开pc微信支付，这边显示即可-->
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
            <br />
            <br />
            <!--form-row end-->
            <!--form-row start-->
            <div class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>充值金额:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <div class="tp-ui-item tp-ui-forminput tp-ui-number tp-ui-number-base"><div class="tp-ui-sub tp-ui-number-refer">
                        <input class="myNumClass0" type="text" id="tpui-funds-sum" min="1" step="1" data-type="d" value="100"></div>
                        <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-addto"><button onclick="plusone();" type="button"><em>+</em></button></div>
                        <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-reduce"><button onclick="minusone();" type="button"><em>-</em></button></div></div>
                </div>
            </div>
            <br />
            <br />
            <div id="normalRechargeTr2" class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>账号:</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <input id="rechargeInfo" type="text" class="tpui-text" placeholder="卡号" />
                </div>
            </div>
            <br />
            <br />
            <div class="row form-row">
                <div class="column form-sub form-title b-25 mb-0">
                    <label>&nbsp;</label>
                </div>
                <div class="column form-sub form-input b-75 mb-0">
                    <input type="button" class="tpui-button" value="提交充值申请" onclick="Recharge('<%=Session("UserName")%>');">
                    <input type="button" onclick="window_close();" class="tpui-button" id="rechargeOrderCancelBtn" value="取消">
                </div>
            </div>
            <!--form-row end-->

        </div>
        <!--forms-table end-->

    </div>
    <!--recharge-order-dialog end-->
</body>
<%
    else
%>
<script>
                window.close();
</script>
<%
    end if
%>
</html>
