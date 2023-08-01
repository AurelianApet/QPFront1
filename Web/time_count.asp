<%
    response.expires=-1
    Dim Conn, ConnStr
    ConnStr = "Provider=Sqloledb;Password=ximen12365abcD;Persist Security Info=True;User ID=sa;Initial Catalog=QPTreasureDB;Data Source=127.0.0.1, 1433;"
   	Set Conn = Server.CreateObject("ADODB.Connection")
	Conn.open ConnStr
    Dim sql, no
    no = request.QueryString("no")
    tm = request.QueryString("tm")
    min = request.QueryString("min")
    sql = "select accept from QPTreasureDB.dbo.ChargeManage where no=" & no
    Set rs = Conn.Execute(sql)
    Dim result
    result = rs.Fields(0)
    if result = 0 then
%>                   
        <div class="tp-ui-sub tp-ui-dialog-inner" id="Time_Result">
            <div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置">
                <div class="tp-ui-sub tp-ui-dialog-title">
                    <span>订单详情</span></div>
                <div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口">
                    <a onclick="window_close();"><em>关闭</em></a></div></div>
            <div class="tp-ui-sub tp-ui-dialog-content" style="width: 520px; height: auto;"><div id="recharge-order-refer">
                        <!--recharge-tips start-->
                        <div class="module" id="recharge-tips">
                            <span class="fc-green">请尽快充值！距离超时：</span><span id="rt-cutdown"><div id="time_count"><%=tm%> 分 <%=min%> 秒</div></span>
                        </div>
                        <!--recharge-tips end-->
                        <!--table start-->
                        
                            <div id="rechargeInfoId" class="module table">
                                <table>
                                    <tbody id="normalTBodyId">
                                        <tr>
                                            <td><span></span></td>
                                            <td class="ta-left"><span id="rc-bankname"><div id="result">Just a minute....</div></span></td>
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
<%
    elseif result = 1 then
%>
        <div class="tp-ui-sub tp-ui-dialog-inner" id="Time_Result">
            <div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置">
                <div class="tp-ui-sub tp-ui-dialog-title">
                    <span>订单详情</span></div>
                <div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口">
                    <a onclick="window_close();"><em>关闭</em></a></div></div>
            <div class="tp-ui-sub tp-ui-dialog-content" style="width: 520px; height: auto;"><div id="recharge-order-refer">
                            <div id="rechargeInfoId" class="module table">
                                <table>
                                    <tbody id="normalTBodyId">
                                        <tr>
                                            <td><span></span></td>
                                            <td class="ta-left"><span id="rc-bankname"><div id="result">Accept!</div></span></td>
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
<%
        elseif result = 2 then
%>
        <div class="tp-ui-sub tp-ui-dialog-inner" id="Time_Result">
            <div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置">
                <div class="tp-ui-sub tp-ui-dialog-title">
                    <span>订单详情</span></div>
                <div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口">
                    <a onclick="window_close();"><em>关闭</em></a></div></div>
            <div class="tp-ui-sub tp-ui-dialog-content" style="width: 520px; height: auto;"><div id="recharge-order-refer">
                            <div id="rechargeInfoId" class="module table">
                                <table>
                                    <tbody id="normalTBodyId">
                                        <tr>
                                            <td><span></span></td>
                                            <td class="ta-left"><span id="rc-bankname"><div id="result">Wait!</div></span></td>
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
<%
        else
%>
        <div class="tp-ui-sub tp-ui-dialog-inner" id="Time_Result">
            <div class="tp-ui-sub tp-ui-dialog-head" title="按住拖动可更改窗口位置">
                <div class="tp-ui-sub tp-ui-dialog-title">
                    <span>订单详情</span></div>
                <div class="tp-ui-sub tp-ui-handle-link tp-ui-dialog-close" title="点击关闭窗口">
                    <a onclick="window_close();"><em>关闭</em></a></div></div>
            <div class="tp-ui-sub tp-ui-dialog-content" style="width: 520px; height: auto;"><div id="recharge-order-refer">
                            <div id="rechargeInfoId" class="module table">
                                <table>
                                    <tbody id="normalTBodyId">
                                        <tr>
                                            <td><span></span></td>
                                            <td class="ta-left"><span id="rc-bankname"><div id="result">Cancel!</div></span></td>
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
<%
        end if
%>
