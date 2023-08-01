<%
    Dim no
    no = request.QueryString("no")
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1"><meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"><meta name="renderer" content="webkit" title="360浏览器强制开启急速模式-webkit内核">
    <meta charset="UTF-8">
</head>
    <link rel="shortcut icon" href="/images/icons/favicon.ico" type="image/x-icon"><link href="/css/style.css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="/js/jquery-1.7.min.js"></script>
    <script language="javascript" type="text/javascript" src="/js/common.js"></script>
    <script language="javascript" type="text/javascript" src="/js/common1.js"></script>
    <script language="javascript" type="text/javascript" src="/js/main.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script language="javascript">
    function window_close()
    {
//            self.opener = self;
        window.close();
    }
    window.resizeTo(550, 290);
    var tm = 30, min = 0;
    function showResult(tm, min) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("Time_Result").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "time_count.asp?no=" + '<%=no%>' + "&tm=" + tm + "&min=" + min, true);
        xmlhttp.send();
    }
    $(document).ready(
            function() {
                setInterval(function () {
                    if (min == 0 && tm != 0)
                    {
                        tm--;
                        min = 60;
                    }
                    if (min > 0)
                    {
                        min--;
                    }
                    showResult(tm, min);
                }, 1000);
            });
</script>
<title>等待</title>
<body>
    <div class="tp-ui-item tp-ui-dialog tp-ui-dialog-base" style="position: absolute; left: 0; top: 0; display: block;">
        <div class="tp-ui-sub tp-ui-dialog-inner" id="Time_Result">
            <div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置">
                <div class="tp-ui-sub tp-ui-dialog-title">
                    <span>订单详情</span></div>
                <div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口">
                    <a onclick="window_close();"><em>关闭</em></a></div></div>
            <div class="tp-ui-sub tp-ui-dialog-content" style="width: 520px; height: auto;"><div id="recharge-order-refer">
                        <!--recharge-tips start-->
                        <div class="module" id="recharge-tips">
                            <span class="fc-green">请尽快充值！距离超时：</span><span id="rt-cutdown"><div id="time_count">30 分 0 秒</div></span>
                        </div>
                        <!--recharge-tips end-->
                        <!--table start-->
                        
                            <div id="rechargeInfoId" class="module table">
                                <table>
                                    <tbody id="normalTBodyId">
                                        <tr>
                                            <td><span></span></td>
                                            <td class="ta-left"><span id="rc-bankname"><div id="result">Wait</div></span></td>
                                        </tr>
                                    </tbody>
                                    <tbody id="wxTBodyId" style="display: none;">
                                        <tr>
                                            <td><img id="wxPayImgId" src="" style="width: 200px;height: 200px;"></td>
                                        </tr>
                                    </tbody>
                                </table>
                        <div class="module button-group button-group-hor">
                            <div class="tp-ui-item tp-ui-forminput tp-ui-button-noselect tp-ui-button tp-ui-button-default"><div class="tp-ui-sub tp-ui-button-base">
                                <button id="recharge-order-close" onclick="window_close();">关闭</button></div></div>
                        </div>
                    </div>
                  </div>
                </div>
            </div>
</body>
</html>
