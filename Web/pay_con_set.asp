<%
    Dim user_account, money_amounts, game_amounts, pay_type, card_number
    user_account = request.QueryString("user_accounts")
    pay_type = request.QueryString("pay_type")
    flag = request.QueryString("flag")
    Dim Conn, ConnStr
    ConnStr = "Provider=Sqloledb;Password=ximen12365abcD;Persist Security Info=True;User ID=sa;Initial Catalog=QPTreasureDB;Data Source=127.0.0.1, 1433;"
   	Set Conn = Server.CreateObject("ADODB.Connection")
	Conn.open ConnStr
    Dim no
    Dim req_datetime, req_date
    req_datetime = Year(Date) & "-" & Month(Date) & "-" & Day(date) & " " & FormatDateTime(Time,4) & ":" & Second(Time)
'    response.Write(req_datetime)
    req_date = Year(Date) & "-" & Month(Date) & "-" & Day(date)
'    response.Write(req_date)
    if(flag = 1) then
        card_number = request.QueryString("card_number")
        money_amounts = request.QueryString("amounts")
        game_amounts = money_amounts * 100
        Set rs = Conn.Execute("select MAX(no) from QPTreasureDB.dbo.ChargeManage")
        if Not rs.EOF then
            no = rs.Fields(0) + 1
        else
            no = 1
        end if
'    response.Write("insert into QPTreasureDB.dbo.ChargeManage values(" & no & "," & user_account & "," & "1,0," & money_amounts & "," & game_amounts & ",0," & pay_type & "," & "'" & card_number & "')")
        Set rs = Conn.Execute("insert into QPTreasureDB.dbo.ChargeManage values(" & no & "," & user_account & "," & "1,0," & money_amounts & "," & game_amounts & ",0," & pay_type & "," & "'" & card_number & "'," & flag & ", 0,'" & req_date & "','" & req_datetime & "')")
'        rs.Close
        Set rs = Nothing
    elseif (flag = 2) then
        card_number = request.QueryString("card_number")
        game_amounts = request.QueryString("amounts")
        money_amounts = game_amounts / 100
        Set rs = Conn.Execute("select MAX(no) from QPTreasureDB.dbo.ChargeManage")
        if Not rs.EOF then
            no = rs.Fields(0) + 1
        else
            no = 1
        end if
'        response.Write("insert into QPTreasureDB.dbo.ChargeManage values(" & no & "," & user_account & "," & "0,1," & money_amounts & "," & game_amounts & ",0," & pay_type & "," & "'" & card_number & "')")
        Set rs = Conn.Execute("insert into QPTreasureDB.dbo.ChargeManage values(" & no & "," & user_account & "," & "0,1," & money_amounts & "," & game_amounts & ",0," & pay_type & "," & "'" & card_number & "'," & flag & ", 0,'" & req_date & "','" & req_datetime & "')")
'        rs.Close
        Set rs = Nothing
    elseif (flag = 3) then
        money_amounts = request.QueryString("amounts")
        game_amounts = money_amounts * 100
        Set rs = Conn.Execute("select MAX(no) from QPTreasureDB.dbo.ChargeManage")
        if Not rs.EOF then
            no = rs.Fields(0) + 1
        else
            no = 1
        end if
        card_number = 0
        Set rs = Conn.Execute("insert into QPTreasureDB.dbo.ChargeManage values(" & no & "," & user_account & "," & "1,0," & money_amounts & "," & game_amounts & ",0," & pay_type & "," & "'" & card_number & "'," & flag & ", 0,'" & req_date & "','" & req_datetime & "')")
'        rs.Close
        Set rs = Nothing
    else
    end if
    Conn.Close
    Set Conn = Nothing
    response.Redirect("standby.asp?no=" & no)        
%>