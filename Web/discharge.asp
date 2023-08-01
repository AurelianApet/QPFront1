<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%
        if Session("UserName") <> "" then
    %>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"><meta name="renderer" content="webkit" title="360浏览器强制开启急速模式-webkit内核">
    <meta charset="UTF-8">
    <title>极彩-极速赛车</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="/images/icons/favicon.ico" type="image/x-icon"><link href="/css/style.css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="/js/jquery-1.7.min.js"></script>
    <script language="javascript" type="text/javascript" src="/js/common.js"></script>
    <script language="javascript" type="text/javascript" src="/js/main.js"></script>
    <script type="text/javascript" language="javascript">
        function discharge(accounts) {
            accounts = 1;
            var amounts = document.getElementById("WithDraw_Money").value;
            var card_number = document.getElementById("WithDraw_FundPassword").value;
            var url = "pay_con_set.asp?user_accounts='" + accounts + "'&amounts=" + amounts + "&flag=2&pay_type=0" + "&card_number='" + card_number + "'";
            document.location = url;
        }
        function plusone() {
            document.getElementById("WithDraw_Money").value = Number(document.getElementById("WithDraw_Money").value) + 1;
        }
        function minusone() {
            document.getElementById("WithDraw_Money").value = document.getElementById("WithDraw_Money").value - 1;
        }
    </script>
</head>
<body>
    <div class="tab-content">

                            <!--forms-table start-->
                            <div class="forms-table uc-forms">
                                
                                <div class="row form-row">
                                    <div class="column form-sub form-title b-25 mb-0">
                                        <label></label>
                                    </div>
                                    <div class="column form-sub form-input b-75 mb-0" id="withdraw_AvailablePoint"><span class="fw-text"></span></div>
                                </div>
                                <!--form-row end-->
                                    <!--form-row start-->
                                    <div class="row form-row">
                                        <div class="column form-sub form-title b-25 mb-0">
                                            <label>提现金额：</label>
                                        </div>
                                        <div class="column form-sub form-input b-75 mb-0">
                                            <div class="tp-ui-item tp-ui-forminput tp-ui-number tp-ui-number-base"><div class="tp-ui-sub tp-ui-number-refer">
                                                <input type="text" id="WithDraw_Money" class="myNumClass0" min="100" max="5000000" step="1" data-type="d" value="100"></div>
                                                <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-addto"><button onclick="plusone();" type="button"><em>+</em></button></div>
                                                <div class="tp-ui-sub tp-ui-handle-button tp-ui-number-option tp-ui-number-reduce"><button type="button" onclick="minusone();"><em>-</em></button></div></div>
 <!--                                           <label>* 最小提现金额<span style="color: red"> ¥ 100.00 </span>元 *</label> 
     -->
                                        </div>
                                    </div>
                                <br />
                                <br />
                                    <!--form-row end-->
                                    <!--form-row start-->
                                    <div class="row form-row">
                                        <div class="column form-sub form-title b-25 mb-0">
                                            <label>账号：</label>
                                        </div>
                                        <div class="column form-sub form-input b-75 mb-0">
                                            <div class="tp-ui-item tp-ui-forminput tp-ui-text tp-ui-text-base"><div class="tp-ui-sub tp-ui-text-base">
                                                <input type="password" id="WithDraw_FundPassword" class="tpui-text" placeholder="卡号"></div></div>
                                        </div>
                                    </div>
                                <br />
                                <br />
                                    <!--form-row end-->
                                    <!--form-row start-->
                                    <!--form-row start-->
                                    <div class="row form-row">
                                        <div class="column form-sub form-title b-25 mb-0">
                                            <label>&nbsp;</label>
                                        </div>
                                        <div class="column form-sub form-input b-75 mb-0">
                                            <label>&nbsp;&nbsp;&nbsp;</label>
                                            <div class="tp-ui-item tp-ui-forminput tp-ui-button-noselect tp-ui-button tp-ui-button-submit"><div class="tp-ui-sub tp-ui-button-base">
                                                <input type="button" class="tpui-button" id="withdraw_submit" value="提交提现申请" onclick="discharge('<%=Session("UserName")%>');"></div></div>
                                        </div>
                                    </div>
                                    <!--form-row end-->
                                    <div class="complete complete-warning">
                                        <div class="complete-sub title" id="withdraw_tips"><h4>单次提现金额最低100元，最高100000元</h4></div>
                                    </div>
                            </div>
                                <br />
                                <br />
                            <!--forms-table end-->
                        </div>
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
